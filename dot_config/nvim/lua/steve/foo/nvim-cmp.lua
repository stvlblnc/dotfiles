return {
  "hrsh7th/nvim-cmp",
  event = "InsertEnter",
  dependencies = {
    "hrsh7th/cmp-buffer",  -- source for text in buffer
    "hrsh7th/cmp-path",  -- source for file system paths
    "L3MON4D3/LuaSnip",  -- snippet engine
    "saadparwaiz1/cmp_luasnip",  -- for autocompletion
    "rafamadriz/friendly-snippets",  -- friendly snippets
    "onsails/lspkind.nvim",  -- vs-code like pictograms
  },
  config = function()
    local cmp = require("cmp")
    local luasnip = require("luasnip")
    local lspkind = require("lspkind")

    -- loads vscode style snippets from installed plugins (e.g. friendly-snippets)
    require("luasnip.loaders.from_vscode").lazy_load()

    --   פּ ﯟ   some other good icons
    local kind_icons = {
      Text = "",
      Method = "m",
      Function = "",
      Constructor = "",
      Field = "",
      Variable = "",
      Class = "",
      Interface = "",
      Module = "",
      Property = "",
      Unit = "",
      Value = "",
      Enum = "",
      Keyword = "",
      Snippet = "",
      Color = "",
      File = "",
      Reference = "",
      Folder = "",
      EnumMember = "",
      Constant = "",
      Struct = "",
      Event = "",
      Operator = "",
      TypeParameter = "",
    }

    cmp.setup({
      completion = {
        completeopt = "menu,menuone,preview,noselect,noinsert",
      },
      snippet = {
        expand = function(args)
          luasnip.lsp_expand(args.body)
        end,
      },
      mapping = cmp.mapping.preset.insert({
        ["<C-k>"] = cmp.mapping.select_prev_item(),
        ["<C-j>"] = cmp.mapping.select_next_item(),
        ["<C-b>"] = cmp.mapping.scroll_docs(-4),
        ["<C-f>"] = cmp.mapping.scroll_docs(4),
        ["<C-Space>"] = cmp.mapping.complete(),  -- show completion suggestions
        ["<C-e>"] = cmp.mapping.abort(),  -- close completion window
        ["<CR>"] = cmp.mapping.confirm({ select = false }),  -- close completion window
      }),
      sources = cmp.config.sources({
        { name = "conjure" },
        { name = "nvim_lsp" },
        { name = "nvim_cmp" },
        { name = "nvim_lua" },
        { name = "luasnip" },
        { name = "buffer" },
        { name = "path" },
      }),
      formatting = {
        fields = { "kind", "abbr", "menu" },
        format = function(entry, vim_item)
          -- Kind icons
          vim_item.kind = string.format("%s", kind_icons[vim_item.kind])
          -- vim_item.kind = string.format('%s %s', kind_icons[vim_item.kind], vim_item.kind) -- This concatonates the icons with the name of the item kind
          vim_item.menu = ({
            nvim_lsp = "[LSP]",
            nvim_conjure = "[CLJ]",
            nvim_lua = "[LUA]",
            luasnip = "[Snippet]",
            buffer = "[Buffer]",
            path = "[Path]",
          })[entry.source.name]
          return vim_item
        end,
      },
      confirm_opts = {
        behavior = cmp.ConfirmBehavior.Replace,
        select = false,
      },
      window = {
        documentation = cmp.config.window.bordered(),
      },
      experimental = {
        ghost_text = false,
        native_menu = false,
      },
    })
  end,
}

-- local cmp_src_menu_items = {
--    buffer = "buff",
--    conjure = "conj",
--    nvim_lsp = "lsp",
--    luasnip = "lsnp"
-- }
--
-- local check_backspace = function()
--   local col = vim.fn.col "." - 1
--   return col == 0 or vim.fn.getline("."):sub(col, col):match "%s"
-- end

