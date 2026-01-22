return {
  'lervag/vimtex',
  lazy = false,
  config = function()
    vim.g.vimtex_view_method = 'zathura'
    -- vim.g.vimtex_view_general_executable = 'zathura'
    vim.g.vimtex_view_general_options = [[@pdf]]
    vim.g.vimtex_view_automatic = 0
    vim.g.vimtex_view_forward_search_on_start = 0

    vim.g.vimtex_compiler_latexmk = {
      out_dir = 'build',
      continuous = 1,
    }

    local augroup = vim.api.nvim_create_augroup("VimtexLogic", { clear = true })
    vim.api.nvim_create_autocmd("FileType", {
      group = augroup,
      pattern = "tex",
      callback = function()
        if not vim.g.vimtex_started then
          vim.g.vimtex_started = true
          vim.cmd("VimtexCompile")
          vim.defer_fn(function()
            vim.cmd("VimtexView")
          end, 1000)
        end
      end,
    })
  end,
}
