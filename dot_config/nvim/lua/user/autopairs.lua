local status_ok, autopairs = pcall(require, "nvim-autopairs")
if not status_ok then
	vim.notify("Error requiring autopairs")
	return
end

autopairs.setup({
	check_ts = true,
	disable_filetype = {
		"TelescopePrompt",
	},
	ts_config = {
		lua = { "string", "source" },
	},
})

local cmp_autopairs_ok, cmp_autopairs = require("nvim-autopairs.completion.cmp")
if not cmp_autopairs_ok then
	vim.notify("Error requiring nvim-autopairs completion")
	return
end

local cmp_status_ok, cmp = pcall(require("cmp"))
if not cmp_status_ok then
	return
end

cmp.event:on("confirm_done", cmp_autopairs.on_confirm_done())
