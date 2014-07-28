# This file is only loaded for the test environment (aka shop)

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

# Deploy settings

# Fetch only the changes since the last
set :deploy_via, :remote_cache

# This is the server user account
set :user, "root"

# Stage specific tasks
#after "deploy:update_code", "shared:public_html"
