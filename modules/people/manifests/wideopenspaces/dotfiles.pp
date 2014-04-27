class people::wideopenspaces::dotfiles {
 #  # My dotfile repository
 #  repository { "${my_sourcedir}/dotfiles":
 #    source => 'git@github.com:wideopenspaces/dotfiles.git',
 #  }

 #  file { "/Users/${my_username}/.zshrc":
 #    ensure  => link,
 #    mode    => '0644',
 #    target  => "${my_sourcedir}/dotfiles/.zshrc",
 #    require => Repository["${my_sourcedir}/dotfiles"],
 #  }

 # file { "/Users/${my_username}/.gitconfig":
 #    ensure  => link,
 #    mode    => '0644',
 #    target  => "${my_sourcedir}/dotfiles/.gitconfig",
 #    require => Repository["${my_sourcedir}/dotfiles"],
 #  }
}