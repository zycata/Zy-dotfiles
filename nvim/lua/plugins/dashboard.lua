local function get_header_from_file(filename)
  -- stdpath("config") points to your ~/.config/nvim folder
  local path = vim.fn.stdpath "config" .. "/" .. filename

  -- Check if file exists so Neovim doesn't crash if you delete it
  if vim.fn.filereadable(path) == 1 then
    local header = vim.fn.readfile(path)
    return table.concat(header, '\n')
  end

  -- Fallback if the file is missing
  return { "Header file not found at " .. path }
end

---@type LazySpec
return {
  "folke/snacks.nvim",
  priority = 1000,
  lazy = false,
  opts = {
    dashboard = {
      preset = {
        header = get_header_from_file('header.txt'),
        -- header = "hello world"
      },
      sections = {
        { section = "header" },
        { icon = " ", title = "Keymaps", section = "keys", indent = 2, padding = 1 },
        { icon = " ", title = "Recent Files", section = "recent_files", indent = 2, padding = 1 },
        { icon = " ", title = "Projects", section = "projects", indent = 2, padding = 1 },
        { section = "startup" },
      },
    },
  }
    
}