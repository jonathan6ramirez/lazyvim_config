return {
  "nvim-neo-tree/neo-tree.nvim",
  opts = {
    event_handlers = {
      {
        event = "neo_tree_buffer_enter",
        handler = function(arg)
          vim.cmd([[
              setlocal relativenumber
              ]])
        end,
      },
    },
    filesystem = {
      filtered_items = {
        visible = true,
        hide_hidden = false,
      },
      use_libuv_file_watcher = false,
      follow_current_file = true,
    },
    find_command = "fd --path-separator /", -- Use forward slashes
  },
}
