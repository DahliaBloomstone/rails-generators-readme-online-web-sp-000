class AccountsController < ApplicationController
end


#rails g controller admin dashboard stats financials settings --no-test-framework


<<-HEREDOC
create  app/controllers/admin_controller.rb
 route  get 'admin/settings'
 route  get 'admin/financials'
 route  get 'admin/stats'
 route  get 'admin/dashboard'
invoke  erb
create    app/views/admin
create    app/views/admin/dashboard.html.erb
create    app/views/admin/stats.html.erb
create    app/views/admin/financials.html.erb
create    app/views/admin/settings.html.erb
invoke  helper
create    app/helpers/admin_helper.rb
invoke  assets
invoke    coffee
create      app/assets/javascripts/admin.js.coffee
invoke    scss
create      app/assets/stylesheets/admin.css.scss

So what got added here? Below is a list that is a little more high level:

A controller file that will inherit from ApplicationController

A set of routes to each of the generator arguments: dashboard, stats, financials, and settings

A new directory for all of the view templates along with a view template file for each of the controller actions that we declared in the generator command

A view helper method file

A Coffeescript file for specific JavaScripts for that controller

An scss file for the styles for the controller
HEREDOC



<<-STUFF
rails g resource Account name:string payment_status:string --no-test-framework
invoke  active_record
create    db/migrate/20170712011124_create_accounts.rb
create    app/models/account.rb
invoke  controller
create    app/controllers/accounts_controller.rb
invoke    erb
create      app/views/accounts
invoke    helper
create      app/helpers/accounts_helper.rb
invoke    assets
invoke      coffee
create        app/assets/javascripts/accounts.js.coffee
invoke      scss
create        app/assets/stylesheets/accounts.css.scss
invoke  resource_route
 route    resources :accounts
 A migration file that will create a new database table for the attributes passed to it in the generator

A model file that inherits from ApplicationRecord (as of Rails 5; see Note above)

A controller file that inherits from ApplicationController

A view directory, but no view template files

A view helper file

A Coffeescript file for specific JavaScripts for that controller

A scss file for the styles for the controller

A full resources call in the routes.rb file
STUFF
