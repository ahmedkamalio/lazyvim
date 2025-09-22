return {
	"neovim/nvim-lspconfig",
	dependencies = {
		"hrsh7th/cmp-nvim-lsp",
	},
	config = function()
		local cmp_nvim_lsp = require('cmp_nvim_lsp')
		local capabilities = cmp_nvim_lsp.default_capabilities()

		local on_attach = function(client, bufnr)
			local opts = { buffer = bufnr }
			vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)
			vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts)
			vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, opts)
			vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, opts)
			vim.keymap.set('n', '<space>rn', vim.lsp.buf.rename, opts)
			vim.keymap.set('n', '<space>ca', vim.lsp.buf.code_action, opts)
			vim.keymap.set('n', 'gr', vim.lsp.buf.references, opts)
		end

		-- Go
		vim.lsp.config.gopls = {
			cmd = { 'gopls' },
			filetypes = { 'go', 'gomod', 'gowork', 'gotmpl' },
			capabilities = capabilities,
			on_attach = on_attach,
			settings = {
				gopls = {
					completeUnimported = true,
					usePlaceholders = true,
					analyses = {
						unusedparams = true,
					},
				},
			},
		}

		-- Lua
		vim.lsp.config.lua_ls = {
			cmd = { 'lua-language-server' },
			filetypes = { 'lua' },
			capabilities = capabilities,
			on_attach = on_attach,
			settings = {
				Lua = {
					runtime = {
						version = "LuaJIT",
					},
					diagnostics = {
						globals = { "vim" },
					},
					workspace = {
						library = vim.api.nvim_get_runtime_file("", true),
						checkThirdParty = false,
					},
					telemetry = {
						enable = false,
					},
				},
			},
		}

		-- TypeScript/JavaScript
		vim.lsp.config.ts_server = {
			cmd = { 'typescript-language-server', '--stdio' },
			filetypes = { 'javascript', 'javascriptreact', 'typescript', 'typescriptreact' },
			capabilities = capabilities,
			on_attach = on_attach,
		}

		-- Python
		vim.lsp.config.pyright = {
			cmd = { 'pyright-langserver', '--stdio' },
			filetypes = { 'python' },
			capabilities = capabilities,
			on_attach = on_attach,
			settings = {
				python = {
					analysis = {
						autoSearchPaths = true,
						useLibraryCodeForTypes = true,
						diagnosticMode = "workspace",
					},
				},
			},
		}

		-- Rust
		vim.lsp.config.rust_analyzer = {
			cmd = { 'rust-analyzer' },
			filetypes = { 'rust' },
			capabilities = capabilities,
			on_attach = on_attach,
			settings = {
				["rust-analyzer"] = {
					cargo = {
						allFeatures = true,
					},
					checkOnSave = {
						command = "clippy",
					},
				},
			},
		}

		-- C/C++
		vim.lsp.config.clangd = {
			cmd = { 'clangd' },
			filetypes = { 'c', 'cpp', 'objc', 'objcpp', 'cuda', 'proto' },
			capabilities = capabilities,
			on_attach = on_attach,
		}

		-- JSON
		vim.lsp.config.jsonls = {
			cmd = { 'vscode-json-language-server', '--stdio' },
			filetypes = { 'json', 'jsonc' },
			capabilities = capabilities,
			on_attach = on_attach,
		}

		-- YAML
		vim.lsp.config.yamlls = {
			cmd = { 'yaml-language-server', '--stdio' },
			filetypes = { 'yaml', 'yaml.docker-compose', 'yaml.gitlab' },
			capabilities = capabilities,
			on_attach = on_attach,
		}
	end,
}
