return {
	"Saghen/blink.cmp",
	-- dependencies = { "" },
	cond = true,
	version = "1.*",
	opts = {
		keymap = { preset = "super-tab" },
		completion = {
			list = {
				selection = { preselect = true, auto_insert = false },
			},
			menu = {
				draw = {
					columns = {
						{ "label", "label_description", gap = 1 },
						{ "kind_icon", "kind", gap = 1 },
					},
				},
			},
			documentation = {
				auto_show = true,
				auto_show_delay_ms = 750,
			},
		},
		cmdline = { enabled = false },
	},
}
