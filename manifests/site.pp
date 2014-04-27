require boxen::environment
require homebrew
require gcc

Exec {
  group       => 'staff',
  logoutput   => on_failure,
  user        => $boxen_user,

  path => [
    "${boxen::config::home}/rbenv/shims",
    "${boxen::config::home}/rbenv/bin",
    "${boxen::config::home}/rbenv/plugins/ruby-build/bin",
    "${boxen::config::home}/homebrew/bin",
    '/usr/bin',
    '/bin',
    '/usr/sbin',
    '/sbin'
  ],

  environment => [
    "HOMEBREW_CACHE=${homebrew::config::cachedir}",
    "HOME=/Users/${::boxen_user}"
  ]
}

File {
  group => 'staff',
  owner => $boxen_user
}

Package {
  provider => homebrew,
  require  => Class['homebrew']
}

Repository {
  provider => git,
  extra    => [
    '--recurse-submodules'
  ],
  require  => File["${boxen::config::bindir}/boxen-git-credential"],
  config   => {
    'credential.helper' => "${boxen::config::bindir}/boxen-git-credential"
  }
}

Service {
  provider => ghlaunchd
}

Homebrew::Formula <| |> -> Package <| |>

node default {
  # core modules, needed for most things
  include dnsmasq
  include git
  include hub
  include nginx

  # fail if FDE is not enabled
  if $::root_encrypted == 'no' {
    fail('Please enable full disk encryption and try again')
  }

  # node versions
  include nodejs::v0_6
  include nodejs::v0_8
  include nodejs::v0_10

  # default ruby versions
  ruby::version { '1.9.3': }
  ruby::version { '2.0.0': }
  ruby::version { '2.1.0': }
  ruby::version { '2.1.1': }

  # common, useful packages
  package {
    [
      'ack',
      'findutils',
      'gnu-tar'
    ]:
  }

  file { "${boxen::config::srcdir}/our-boxen":
    ensure => link,
    target => $boxen::config::repodir
  }
}

# Customizations

# OS X settings
include osx::dock::dim_hidden_apps
include osx::dock::autohide
include osx::global::expand_print_dialog
include osx::global::expand_save_dialog

osx::recovery_message { 'If this Mac is found, please call 303-520-9896': }

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

# window management

include slate

# Shell

include zsh
include ohmyzsh

# MySQL

include mysql

mysql::db { 'mydb': }

# Sublime Text 2

include sublime_text_2
sublime_text_2::package { 'Emmet':
  source => 'sergeche/emmet-sublime'
}

