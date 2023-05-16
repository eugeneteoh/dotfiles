-- Pull in the wezterm API
local wezterm = require 'wezterm'
local mux = wezterm.mux

-- This table will hold the configuration.
local config = {}

-- In newer versions of wezterm, use the config_builder which will
-- help provide clearer error messages
if wezterm.config_builder then
  config = wezterm.config_builder()
end

-- Show which key table is active in the status area
wezterm.on("update-right-status", function(window, pane)
  local name = window:active_key_table()
  if name then
    name = " - " .. name
  end
  local zoomed = ""
  local domain = pane:get_domain_name()
  local panes = window:active_tab():panes_with_info()
  for _, p in ipairs(panes) do
    if p.pane:pane_id() == pane:pane_id() then
      if p.is_zoomed then
        zoomed = " - [Z]"
      end
    end
  end

  window:set_right_status(
    window:active_workspace()
      .. "/"
      .. #mux.get_workspace_names()
      .. " - ("
      .. domain
      .. ")"
      .. (name or "")
      .. zoomed
  )
end)

-- This is where you actually apply your config choices

config.audible_bell = 'Disabled'
config.use_ime = false
config.enable_scroll_bar = true
config.check_for_updates = false

-- and finally, return the configuration to wezterm
return config

