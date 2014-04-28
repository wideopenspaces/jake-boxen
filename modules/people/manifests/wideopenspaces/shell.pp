class people::wideopenspaces::shell {
  include zsh
  include ohmyzsh

  include tmux

  # iTerm2
  include iterm2::dev
  include iterm2::colors::solarized_light
  include iterm2::colors::solarized_dark
  include iterm2::colors::arthur
}