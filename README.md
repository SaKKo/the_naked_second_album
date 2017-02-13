# NOTE

```
rails new the_naked_second_album --database postgresql
rake db:create

# Gemfile
# Add in dev
gem 'annotate'
# Add in top of the file
gem "paperclip", "~> 5.0.0"
gem "devise"

# Then run bundle install

# rails s (to start server)
# rails c (to start console)

rails g scaffold User first_name:text last_name:text
rails g scaffold Album name:text description:text user:references
rails g scaffold Image name:text description:text album:references

rails generate devise:install
rails generate devise User

# check migration of devise
# db/migrate/20170213035820_add_devise_to_users.rb

# add config to `config/environments/development.rb`

config.action_mailer.default_url_options = { host: 'localhost', port: 3000 }

# follow paperclip quick start
# 1. modify Image model
# 2. add migration
rails g migration AddImageFileToImage
# 3. add form element for file_field
# 4. modify controller
# 5. Show the image in show.html.erb

# Use authenticate_user! to force user login
# Use current_user to create user profile page
# create new album link
# add image to album
# remove album_id from album/form
# go to images controller and then created image should always be assigned to current @album

```


















a
