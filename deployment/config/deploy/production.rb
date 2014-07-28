# This file is only loaded for the production environment
# Customize it and rename it as production.rb

# Where should the site deploy to?
set :deploy_to, "/var/www/#{application}"

# Now configure the servers for this environment

# OPTION 1

# role :web, "your web server IP address or hostname here"
# role :web, "second web server here"
# role :web, "third web server here, etc"

# role :memcached, "your memcached server IP address or hostname here"
# role :memcached, "second memcached server here, etc"

# OPTION 2

# If your web servers are the same as your memcached servers,
# comment out all the "role" lines and use "server" lines:

server "mistermachineshop.com", :app, :web, :db, :primary => true
# server "second web/memcached server here", :web, :memcached

# Fetch only the changes since the last
set :deploy_via, :copy

# If using :deploy_via, :copy - for when remote server can't access repository
set :copy_strategy, :export
set :copy_cache, true # for speeding up local checkouts
set :copy_compression, :gzip # or :zip or :bz2

# Server configuration
set :user, ""
#set :port, 2222

# Production specific tasks
#after "deploy:update_code", "shared:public_html"