local null_ls_status_ok, null_ls = pcall(require, "null-ls")
if not null_ls_status_ok then
	return
end

-- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/formatting
local formatting = null_ls.builtins.formatting
-- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/diagnostics
local diagnostics = null_ls.builtins.diagnostics

null_ls.setup({
	debug = false,
	sources = {
		formatting.stylua,
		formatting.yapf, -- format python code.
		formatting.isort, -- sort out python import ...
		formatting.autopep8,
		formatting.shfmt,
		formatting.jq,
		formatting.markdownlint,
		formatting.taplo,
		diagnostics.flake8,
		diagnostics.alex,
		diagnostics.shellcheck,
	},
})
