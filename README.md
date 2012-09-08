apprentice_farmers
==================
Setup :

1. RVM should pick up the .rvmrc but if not verify you are on ruby version 1.9.3-p125
2. Install gems : `bundle install`
3. Annotate models : `bundle exec annotate -p before`
4. setup db : copy database.yml.example to database.yml, add your db info
5. run migrations `rake:db migrate` (`rake db:reset` to rebuild from scratch)
6. Launch dev server with `thin start`

Deployment done through capistrano :

to dev (linode) => `cap dev deploy`  
to prod  => `cap prod deploy`  

