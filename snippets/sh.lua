---@diagnostic disable: undefined-global

return {
    -- manually triggered snippets

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

}
