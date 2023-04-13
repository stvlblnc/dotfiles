local mason_ok, mason = pcall(require, "mason")
if not mason_ok then
  vim.notify("Error requiring mason")
  return
end

local mason_lspconfig_ok, mason_lspconfig = pcall(require, "mason-lspconfig")
if not mason_lspconfig_ok then
  vim.notify("Error requiring mason-lspconfig")
  return
end

local lspconfig_status_ok, lspconfig = pcall(require, "lspconfig")
if not lspconfig_status_ok then
   vim.notify("Error requiring lspconfig")
   return
end

local mason_null_ls_ok, mason_null_ls = pcall(require, "mason-null-ls")
if not mason_null_ls_ok then
  vim.notify("Error requiring mason-null-ls")
  return
end

mason.setup({
   ui = {
      border = "none",
      icons = {
         package_installed = "◍",
         package_pending = "◍",
         package_uninstalled = "◍",
      },
   },
   log_level = vim.log.levels.DEBUG,
   max_concurrent_installers = 4
})

local servers = {
   "lua_ls",
   "pyright"
}
mason_lspconfig.setup({
   ensure_installed = servers,
   automatic_installation = true
})

local opts = {}
for _, server in pairs(servers) do
   opts = {
      on_attach = require("user.lsp.handlers").on_attach,
      capabilities = require("user.lsp.handlers").capabilities
   }

   -- not required so far
   -- server = vim.split(server, "@")[1]

   local require_ok, conf_opts = pcall(require, "user.lsp.settings." .. server)
   if require_ok then
      opts = vim.tbl_deep_extend("force", conf_opts, opts)
   end

   lspconfig[server].setup(opts)
end

mason_null_ls.setup(
  {
    ensure_installed = {
      "stylua",
      "black",
      "cljstyle",
      "jq",
      "yamlfmt",
      "clj_kondo",
      "ruff",
      "jsonlint",
      "yamllint"
    }
  }
)
