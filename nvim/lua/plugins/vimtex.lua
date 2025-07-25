return {
    'lervag/vimtex',
	lazy = false,
    config = function()
        vim.g.vimtex_view_method = 'skim' -- Use Skim for viewing PDFs
        vim.g.vimtex_compiler_method = 'latexmk' -- Use latexmk for compiling

        -- Optional configurations for conceal and syntax
        vim.g.tex_conceal = 'abdmg'
        vim.g.vimtex_syntax_enabled = 1

        -- Example: Customize latexmk options
        vim.g.vimtex_compiler_latexmk = {
            build_dir = 'build', -- Store output in 'build' directory
            options = {
                '-pdf',
                '-shell-escape',
                '-interaction=nonstopmode',
                '-synctex=1','-outdir=.'
            },
        }

		vim.api.nvim_create_autocmd("BufWritePost", {
			pattern = "*.tex",
			command = "VimtexCompile"			})

    end,
}

