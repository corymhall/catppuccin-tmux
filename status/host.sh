show_host() {
  local index icon color text module background position

  tmux_batch_setup_status_module "host"
  run_tmux_batch_commands

  index=$1
  position=$2
  icon=$(get_tmux_batch_option "@catppuccin_host_icon" "󰒋")
  color=$(get_tmux_batch_option "@catppuccin_host_color" "$thm_magenta")
  text=$(get_tmux_batch_option "@catppuccin_host_text" "#H")
  background=$(get_tmux_batch_option "@catppuccin_host_background" "$thm_black")

  module=$(build_status_module "$index" "$icon" "$color" "$text" "$background" "$position")

  echo "$module"
}
