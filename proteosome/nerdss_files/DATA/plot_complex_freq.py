import re
import numpy as np
import matplotlib.pyplot as plt


# ----------------------------
# Global plotting style
# ----------------------------
plt.rcParams["font.family"] = "Arial"
plt.rcParams["font.size"] = 20
plt.rcParams["axes.labelsize"] = 24
plt.rcParams["axes.titlesize"] = 24
plt.rcParams["xtick.labelsize"] = 20
plt.rcParams["ytick.labelsize"] = 20
plt.rcParams["legend.fontsize"] = 18


def compute_max_complex_size_with_target(snapshots, target="C", max_n=28):
    """
    For each timepoint, compute the maximum complex size n such that
    the complex contains at least one copy of `target`.

    Returns:
        times: shape (T,)
        max_size: shape (T,)
    """
    times = []
    max_size = np.zeros(len(snapshots), dtype=float)

    for t_idx, snap in enumerate(snapshots):
        times.append(snap["time"])
        curr_max = 0

        for entry in snap["lines"]:
            comp = entry["comp"]
            n = sum(comp.values())

            if n < 1 or n > max_n:
                continue

            if comp.get(target, 0) > 0:
                curr_max = max(curr_max, n)

        max_size[t_idx] = curr_max

    return np.array(times), max_size

def parse_histogram_dat(filename):
    """
    Parse histogram.dat into snapshots:
    [
        {
            "time": float,
            "lines": [
                {"mult": int, "comp": {"A0":2, "B1":1, ...}},
                ...
            ]
        },
        ...
    ]
    """
    snapshots = []
    current = None

    time_re = re.compile(r"^Time \(s\):\s*([0-9eE+.\-]+)")
    line_re = re.compile(r"^\s*(\d+)\s+(.*)$")
    pair_re = re.compile(r"([A-Za-z0-9]+):\s*([0-9]+)\.")

    with open(filename, "r") as f:
        for raw in f:
            line = raw.strip()
            if not line:
                continue

            m_time = time_re.match(line)
            if m_time:
                if current is not None:
                    snapshots.append(current)
                current = {"time": float(m_time.group(1)), "lines": []}
                continue

            m_line = line_re.match(line)
            if m_line and current is not None:
                mult = int(m_line.group(1))
                rest = m_line.group(2)

                comp = {}
                for species, count in pair_re.findall(rest):
                    comp[species] = int(count)

                current["lines"].append({"mult": mult, "comp": comp})

    if current is not None:
        snapshots.append(current)

    return snapshots


def target_distribution_over_nmers(snapshots, target="B1", max_n=28):
    """
    For each timepoint, compute probability distribution of the chosen target subunit
    over n-mers.

    Returns:
        times: shape (T,)
        dist:  shape (T, max_n), where dist[t, n-1] = P(target copy is in n-mer at time t)
        total_target_copies: shape (T,), total number of target copies at each time
    """
    times = []
    dist = np.zeros((len(snapshots), max_n), dtype=float)
    total_target_copies = np.zeros(len(snapshots), dtype=float)

    for t_idx, snap in enumerate(snapshots):
        times.append(snap["time"])

        counts_by_n = np.zeros(max_n, dtype=float)
        total = 0.0

        for entry in snap["lines"]:
            mult = entry["mult"]
            comp = entry["comp"]

            n = sum(comp.values())
            if n < 1 or n > max_n:
                continue

            c_target = comp.get(target, 0)
            if c_target == 0:
                continue

            contributed_copies = mult * c_target
            counts_by_n[n - 1] += contributed_copies
            total += contributed_copies

        total_target_copies[t_idx] = total
        if total > 0:
            dist[t_idx, :] = counts_by_n / total

    return np.array(times), dist, total_target_copies


def grouped_target_distribution_over_nmers(snapshots, targets=("B0", "B1"), max_n=28):
    """
    Same as above, but for a group of targets.
    """
    times = []
    dist = np.zeros((len(snapshots), max_n), dtype=float)
    total_target_copies = np.zeros(len(snapshots), dtype=float)

    for t_idx, snap in enumerate(snapshots):
        times.append(snap["time"])

        counts_by_n = np.zeros(max_n, dtype=float)
        total = 0.0

        for entry in snap["lines"]:
            mult = entry["mult"]
            comp = entry["comp"]

            n = sum(comp.values())
            if n < 1 or n > max_n:
                continue

            c_target = sum(comp.get(x, 0) for x in targets)
            if c_target == 0:
                continue

            contributed_copies = mult * c_target
            counts_by_n[n - 1] += contributed_copies
            total += contributed_copies

        total_target_copies[t_idx] = total
        if total > 0:
            dist[t_idx, :] = counts_by_n / total

    return np.array(times), dist, total_target_copies


def compute_mean_and_std(dist, total_target_copies):
    """
    Compute mean and standard deviation of complex size distribution.

    dist: shape (T, max_n+1), counts of target copies in n-mers
    total_target_copies: shape (T,)
    """
    n_vals = np.arange(1, dist.shape[1] + 1)

    mean_n = np.sum(dist * n_vals[None, :], axis=1)
    var_n = np.sum(dist * (n_vals[None, :] - mean_n[:, None]) ** 2, axis=1)

    se_n = np.zeros_like(mean_n)
    mask = total_target_copies > 0
    se_n[mask] = np.sqrt(var_n[mask] / total_target_copies[mask])

    mean_n_back = mean_n


    max_n = dist.shape[1] - 1
    n_vals = np.arange(max_n + 1, dtype=float)

    mean_n = np.zeros(dist.shape[0], dtype=float)
    std_n = np.zeros(dist.shape[0], dtype=float)

    for t in range(dist.shape[0]):
        total = float(total_target_copies[t])
        if total <= 0:
            continue

        weights = dist[t].astype(float)

        # keep the exact same mean definition as before
        mean = np.sum(n_vals * weights) / total

        # weighted variance with the same normalization
        var = np.sum(((n_vals - mean) ** 2) * weights) / total

        mean_n[t] = mean
        std_n[t] = np.sqrt(max(var, 0.0))

        n_vals = np.arange(1, dist.shape[1] + 1)

    

    return mean_n_back, std_n


def plot_distribution_heatmap(times, dist, target_label="B1", outname="target_distribution_heatmap.png"):
    fig, ax = plt.subplots(figsize=(5.5, 5))

    from matplotlib.colors import LogNorm

    # avoid zeros for log scale
    dist_plot = np.clip(dist, 1e-6, None)

    im = ax.imshow(
        dist_plot.T,
        aspect="auto",
        origin="lower",
        extent=[times[0], times[-1], 1, dist.shape[1]],
        norm=LogNorm(vmin=1e-4, vmax=1)
    )

    cbar = fig.colorbar(im, ax=ax)
    cbar.set_label(f"P({target_label} copy in n-mer)", fontsize=22, fontname="Arial")
    cbar.ax.tick_params(labelsize=18)

    ax.set_xlabel("Time (s)", fontname="Arial")
    ax.set_ylabel("Complex size n", fontname="Arial")
    #ax.set_title(f"Distribution of {target_label} over complex sizes", fontname="Arial")
    ax.tick_params(axis="both", which="major", labelsize=20, width=1.5, length=6)

    plt.tight_layout()
    plt.savefig(outname, dpi=600, bbox_inches="tight")
    plt.close(fig)


def plot_mean_size_with_se_and_max(times, mean_n, se_n, max_n_with_target,
                                   target_label="C",
                                   outname="target_mean_size.png"):
    fig, ax = plt.subplots(figsize=(5.5, 5))

    ax.errorbar(
        times,
        mean_n,
        yerr=se_n,
        fmt="none",
        elinewidth=1.2,
        alpha=0.1,
        capsize=2,
        zorder=1
    )

    ax.plot(
        times,
        mean_n,
        linewidth=2.5,
        label=f"Mean size with {target_label}",
        zorder=3,
    )

    ax.plot(
        times,
        max_n_with_target,
        linewidth=2.5,
        linestyle="--",
        label=f"Max size with {target_label}",
        zorder=2,
    )

    # ✅ Remove whitespace + enforce exact bounds
    ax.set_xlim(0, 4)
    ax.set_ylim(0, 30)
    ax.margins(x=0, y=0)

    ax.set_xlabel("Time (s)", fontname="Arial")
    ax.set_ylabel(f"Complex size containing {target_label}", fontname="Arial")
    ax.tick_params(axis="both", which="major", labelsize=20, width=1.5, length=6)
    ax.legend(frameon=False)

    plt.tight_layout(pad=0)
    plt.savefig(outname, dpi=600, bbox_inches="tight", pad_inches=0)
    plt.close(fig)


if __name__ == "__main__":
    filename = "histogram_complexes_time.dat"
    max_n = 28

    # -------- Pick one mode --------
    # Single target:
    target = "C"
    snapshots = parse_histogram_dat(filename)
    times, dist, total_target_copies = target_distribution_over_nmers(
        snapshots, target=target, max_n=max_n
    )
    target_label = target

    # Or grouped target:
    # snapshots = parse_histogram_dat(filename)
    # times, dist, total_target_copies = grouped_target_distribution_over_nmers(
    #     snapshots, targets=("B0", "B1"), max_n=max_n
    # )
    # target_label = "B0+B1"

    mean_n, se_n = compute_mean_and_std(dist, total_target_copies)
    _, max_n_with_target = compute_max_complex_size_with_target(
        snapshots, target=target_label if target_label != "B0+B1" else "B0", max_n=max_n
    )

    plot_distribution_heatmap(
        times,
        dist,
        target_label=target_label,
        outname=f"{target_label}_distribution_heatmap.png",
    )

    plot_mean_size_with_se_and_max(
        times,
        mean_n,
        se_n,
        max_n_with_target,
        target_label=target_label,
        outname=f"{target_label}_mean_size_with_se.png",
    )

    print(f"Saved: {target_label}_distribution_heatmap.png")
    print(f"Saved: {target_label}_mean_size_with_se.png")