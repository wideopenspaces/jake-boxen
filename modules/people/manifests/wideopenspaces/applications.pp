class people::wideopenspaces::applications {
  $my_username  = $::luser
  $my_homedir   = "/Users/${my_username}"

  # iTerm2
  include iterm2::dev
  include iterm2::colors::solarized_light
  include iterm2::colors::solarized_dark
  include iterm2::colors::arthur

  # Some more

  include hipchat
  include alfred
  include flux::beta
  include github_for_mac
  include onepassword
  include dropbox
  include chrome
  include transmission
  include macvim
  include btsync
  include slack
  include evernote
  include spotify

  # window management

  include slate

  # Sublime Text 2

  include sublime_text_2
  sublime_text_2::package { 'Emmet':
    source => 'sergeche/emmet-sublime'
  }

  repository { 'package-control':
    source => 'wbond/sublime_package_control',
    path   => "${my_homedir}/Library/Application Support/Sublime Text 2/Packages/Package Control"
  }
}