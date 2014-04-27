class people::wideopenspaces::osx {
  include osx::dock::dim_hidden_apps
  include osx::dock::autohide
  include osx::global::expand_print_dialog
  include osx::global::expand_save_dialog

  osx::recovery_message { 'If this Mac is found, please call 303-520-9896': }
}