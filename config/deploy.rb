# application name and your Webfaction login
set :application, 'mand_docs'
set :login, 'longjiang'

# full path to the git repo
set :repo_url, "https://github.com/longjiang/mand-docs.git"

# path to composer
SSHKit.config.command_map[:composer] = "php54 /home/#{fetch(:login)}/composer.phar"

# define which branch will be used for deployment
set :branch, :master

# deploy to
set :deploy_to, "/home/#{fetch(:login)}/webapps/#{fetch(:application)}"

# log level
set :log_level, :info

# linked files
set :linked_files, %w{.env}
set :linked_dirs, %w{web/app/uploads}