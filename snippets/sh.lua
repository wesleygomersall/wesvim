---@diagnostic disable: undefined-global

return {
    -- manually triggered snippets

    s({trig = "slurm", desc = "Slurm header"},
        t({ '#SBATCH --account=',
            '#SBATCH --job-name=',
            '#SBATCH --output=logs/job_desc-%x_%j.out',
            '#SBATCH --error=logs/job_desc-%x_%j.err',
            '#SBATCH --partition=',
            '#SBATCH --ntasks=1',
            '#SBATCH --cpus-per-task=4',
            '#SBATCH --time=12:00:00',
            '#SBATCH --mem=16G',
            '#SBATCH --mail-user=16G',
            '#SBATCH --mem=16G',
            '#SBATCH --mail-type=END',
            '#SBATCH --mail-user=',
        })
    ),

}, {
    -- autotriggered snippets

	s({trig = "#!/b", desc = "shebang"},
        t("#!/bin/bash")
    ),

}
