class people::wideopenspaces::applications {
  $my_username  = $::luser
  $my_homedir   = "/Users/${my_username}"

  # Collaboration
  include hipchat
  include slack
  include cloudapp
  include dropbox

  # utilities
  include alfred
  include flux::beta
  include onepassword
  include btsync

  # browsers
  include chrome

  # Note taking
  include evernote

  # Entertainment
  include spotify
  include beamer

  # file sharing
  include transmission

  # window management

  # TBD! 

  # Text Editors
  include atom

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