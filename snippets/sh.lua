---@diagnostic disable: undefined-global

return {
    -- manually triggered snippets

    s({trig = "file_loop", desc = "Loop through files passed as arguments"},
    {
        t({'for file in "$@"; do', 
           '\tif [ -f "$file" ]; then',
           '\t\t',}),
        i(1),
        t({' "$file"',
           '\tfi',
           'done',})
       }
    ),

    s({trig = "source miniconda", desc = "Enable using miniconda3 in script"},
    {
        t({ '# Allow conda in script',
            'source $HOME/miniconda3/etc/profile.d/conda.sh', 
            'conda activate ',
        }),
        i(1)
    }
    ),

    s({trig = "slurm", desc = "Slurm header"},
        t({ '#SBATCH --account=',
            '#SBATCH --job-name=',
            '#SBATCH --output=logs/job-%x_%j.out',
            '#SBATCH --error=logs/job-%x_%j.err',
            '#SBATCH --partition=',
            '#SBATCH --ntasks=1',
            '#SBATCH --cpus-per-task=4',
            '#SBATCH --time=12:00:00',
            '#SBATCH --mem=16G',
            '#SBATCH --mail-type=END',
            '#SBATCH --mail-user=',
        })
    ),

}, {
    -- autotriggered snippets

	s({trig = "#!/", desc = "shebang"},
        t({"#!/bin/bash", ""})
    ),

	s({trig = "TIMESTAMP=", desc = "Set TIMESTAMP variable"},
        t({'TIMESTAMP=$(date +"%Y-%m-%d_%H:%M:%S")', ''})
    ),

}
