---@diagnostic disable: undefined-global

local conditions = require("luasnip.extras.conditions.expand")

return {
    -- manually triggered snippets

    s({trig = "args_loop", desc = "Loop through arguments"},
    {
        t({'for arg in "$@"; do', 
           '\tif [ -f "$arg" ]; then',
           '\t\t',}),
        i(1),
        t({' "$arg"',
           '\tfi',
           'done',})
       }
    ),

    s({trig = "line_loop", desc = "Loop through lines of a file."},
    {
        t({'cat ', }),
        i(1),
        t({' | while read line || [[ -n $line ]]; do',
           '\t# do something with $line here',
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


}, {
    -- autotriggered snippets

    s({trig = "#SBATCH", desc = "Slurm header"},
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
        }), 
        {condition = conditions.line_begin}
    ),

	s({trig = "#!/", desc = "shebang"},
        t({"#!/bin/bash", ""}), 
        {condition = conditions.line_begin}
    ),

	s({trig = "TIMESTAMP=", desc = "Set TIMESTAMP variable"},
        t({'TIMESTAMP=$(date +"%Y-%m-%d_%H:%M:%S")', ''}), 
        {condition = conditions.line_begin}
    ),

}
