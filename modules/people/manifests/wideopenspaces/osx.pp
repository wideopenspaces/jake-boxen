class people::wideopenspaces::osx {
  # Dock
  include osx::dock::dim_hidden_apps
  include osx::dock::clear_dock
  include osx::dock::autohide
  include osx::dock::icon_size

  class { 'osx::dock::position':
     position => 'bottom' # I like it on the bottom.
  }

  # Finder
  include osx::finder::unhide_library

  # Global
  include osx::global::expand_print_dialog
  include osx::global::expand_save_dialog

  include osx::software_update

  osx::recovery_message { 'If this Mac is found, please call 303-520-9896': }
}
