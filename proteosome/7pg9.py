
import sys
import os
# Development: Force local ionerdss package to ensure core engine patches are applied!
#sys.path.insert(0, os.path.abspath('.'))

from ionerdss.model.pdb.main import PDBModelBuilder
from ionerdss.model.pdb.hyperparameters import PDBModelHyperparameters
from ionerdss.model.pdb.parser import PDBParser

import subprocess
import os

pdb_id = "7pg9"

# Use local file
model = PDBModelBuilder(source=pdb_id)

# Enable ODE auto-pipeline with new System-compatible generator
hyperparams = PDBModelHyperparameters(
    interface_detect_distance_cutoff=2,#1.5
    interface_detect_n_residue_cutoff=25,#5
    chain_grouping_seq_threshold=0.5,

    # nerdss
    nerdss_total_molecule_count = 100,
    nerdss_n_itr = 100000,
    nerdss_overlap_sep_limit = 1.0, # INCREASED from 2.0 to block helical spiral polymerization!
    # V = 400 / (6.0221408e+23) / (1e-5) / 1000 m^3
    # L = V^(1/3) = 8.72508558e-7 m = 8.72508558e+2 m
    nerdss_water_box=[405, 405, 405],

    ### Enable spherical alignment
    # i.e. Project all molecules onto best-fit spheres centered
    # on the most abundant element's center
    #is_on_sphere=True,
    
    
    # ODE Pipeline Configuration
    ode_enabled=True,            # Now using System-compatible generator!
    ode_time_span=None,   # Auto-calculated based on NERDSS simulation time
    ode_solver_method="BDF",     # Solver for stiff systems
    ode_plot=True,               # Generate plots
    ode_save_csv=True            # Save data to CSV
)

##
# Step 2: Build system (now includes ODE calculation)
# Build NERDSS system and output NERDSS parameter files
print("\nBuilding system with ODE auto-pipeline enabled...\n")
model.build_system(workspace_path=f"{pdb_id}_dir",
                   hyperparams=hyperparams,
                   )


## Run NERDSS simulation
print("\nNow running NERDSS simulation...\n")
# Change directory and run NERDSS simulation
nerdss_dir = f"{pdb_id}_dir/nerdss_files"
nerdss_cmd = "~/Workspace/nerdss_development/bin/nerdss -f parms.inp"

# Change to the directory and run the command
subprocess.run(nerdss_cmd, shell=True, cwd=nerdss_dir, executable='/bin/bash')
