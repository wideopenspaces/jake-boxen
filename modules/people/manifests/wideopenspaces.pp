# class people::jstetser {
#   git::config::global {
#     'user.name':    value => 'Jacob Stetser';
#     'user.email':   value => 'jake@wideopenspac.es';
    
#     'alias.br':     value => 'branch';
#     'alias.ci':     value => 'commit';
#     'alias.cia':    value => 'commit --amend';
#     'alias.co':     value => 'checkout';
#     'alias.cp':     value => 'cherry-pick';
#     'alias.di':     value => 'diff';
#     'alias.lg':     value => "log --color --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit";  
#     'alias.preview': value => 'fetch ; git diff HEAD...origin';
#     'alias.rb':     value => 'rebase';
#     'alias.rbc':    value => 'rebase --continue';
#     'alias.rbs':    value => 'rebase --skip';
#     'alias.rl':     value => 'reflog';
#     'alias.rp':     value => 'remote prune';
#     'alias.rs':     value => 'remote show';
#     'alias.rt':     value => 'remote';
#     'alias.ru':     value => 'remote update';
#     'alias.sb':     value => 'show-branch';
#     'alias.sh':     value => 'show --name-only --pretty="format:"';
#     'alias.sm':     value => 'submodule';
#     'alias.st':     value => 'status';
#     'alias.staged': value => 'diff --cached';
#     'alias.wc':     value => 'whatchanged';
#     'alias.pimp':   value => 'pull; git merge master; git push';
#   }
# }

class people::wideopenspaces {
  include people::wideopenspaces::osx
  include people::wideopenspaces::shell
  include people::wideopenspaces::dotfiles
  include people::wideopenspaces::applications
  include people::wideopenspaces::servers
} 