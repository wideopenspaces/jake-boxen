class people::wideopenspaces::dotfiles {
  $my_username  = $::luser
  $my_homedir   = "/Users/${my_username}"
  $my_sourcedir = $::boxen_srcdir

  # My dotfile repository
  repository { "${my_sourcedir}/dotfiles":
    source => 'wideopenspaces/dotfiles.git',
  }

  file { "/Users/${my_username}/.zshrc":
    ensure  => link,
    mode    => '0644',
    target  => "${my_sourcedir}/dotfiles/.zshrc",
    require => Repository["${my_sourcedir}/dotfiles"],
  }

 file { "/Users/${my_username}/.gitconfig":
    ensure  => link,
    mode    => '0644',
    target  => "${my_sourcedir}/dotfiles/.gitconfig",
    require => Repository["${my_sourcedir}/dotfiles"],
  }

 file { "/Users/${my_username}/.profile":
    ensure  => link,
    mode    => '0644',
    target  => "${my_sourcedir}/dotfiles/.profile",
    require => Repository["${my_sourcedir}/dotfiles"],
  }
}