-- ~/.config/nvim/lua/plugins/neo-tree.lua

return {
  "nvim-neo-tree/neo-tree.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "MunifTanjim/nui.nvim", -- Required for Neo-tree
  },
{
  "azratul/live-share.nvim",
  dependencies = {
    "jbyuki/instant.nvim",
  },
  config = function()
    vim.g.instant_username = "parv141206"
    require("live-share").setup({
 service_url = "D:\\service.url", -- Adjust path for Windows
      port_internal = 9999,
      max_attempts = 40, -- 10 seconds
      service = "serveo.net"
    })
  end
},
  {
    "Exafunction/codeium.nvim",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "hrsh7th/nvim-cmp",
    },
    config = function()
        require("codeium").setup({
        })
    end
  },
  branch = "v3.x",
  config = function()

    require("neo-tree").setup({
      close_if_last_window = false,
      popup_border_style = "rounded",
      enable_git_status = true,
      enable_diagnostics = true,
      open_files_do_not_replace_types = { "terminal", "trouble", "qf" },
      sort_case_insensitive = false,
      default_component_configs = {
        container = {
          enable_character_fade = true,
        },
        indent = {
          indent_size = 2,
          padding = 1,
          with_markers = true,
          indent_marker = "│",
          last_indent_marker = "└",
          highlight = "NeoTreeIndentMarker",
        },
        icon = {
          folder_closed = "",
          folder_open = "",
          folder_empty = "",
          provider = function(icon, node)
            local success, web_devicons = pcall(require, "nvim-web-devicons")
            if success then
              local devicon, hl = web_devicons.get_icon(node.name)
              icon.text = devicon or icon.text
              icon.highlight = hl or icon.highlight
            end
          end,
          highlight = "NeoTreeFileIcon",
        },
        name = {
          trailing_slash = false,
          use_git_status_colors = true,
          highlight = "NeoTreeFileName",
        },
      },
      window = {
        position = "left",
        width = 40,
        mappings = {
          ["<CR>"] = "open",
          ["<2-LeftMouse>"] = "open",
          ["d"] = "delete", -- Delete file/folder
          ["a"] = "add", -- Add file/folder
          ["r"] = "rename", -- Rename file/folder
          ["q"] = "close_window", -- Close Neo-tree window
        },
      },
    })
  end,
}
