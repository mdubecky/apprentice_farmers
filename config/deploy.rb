set :application, "apprentice_farmers"
set :repository,  " . "
set :scm, :git
set :deploy_via, :copy
set :user, :mdubecky
set :deploy_to, "/var/www/#{application}"
set :use_sudo, false
# Or: `accurev`, `bzr`, `cvs`, `darcs`, `git`, `mercurial`, `perforce`, `subversion` or `none`

role :web, "50.116.61.107"                          # Your HTTP server, Apache/etc
role :app, "50.116.61.107"                          # This may be the same as your `Web` server
role :db,  "50.116.61.107", :primary => true # This is where Rails migrations will run

# if you want to clean up old releases on each deploy uncomment this:
# after "deploy:restart", "deploy:cleanup"

# if you're still using the script/reaper helper you will need
# these http://github.com/rails/irs_process_scripts

# If you are using Passenger mod_rails uncomment this:
 namespace :deploy do
   task :start do ; end
   task :stop do ; end
   task :restart, :roles => :app, :except => { :no_release => true } do
     run "#{try_sudo} touch #{File.join(current_path,'tmp','restart.txt')}"
   end
 end
