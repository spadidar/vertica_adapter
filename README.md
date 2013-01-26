# VerticaRailsAdapter

Vertica adapter for ActiveRecord. This adapter gives you the power of ActiveRecord for your Vertica connection. This adapter uses the [vertica gem](http://github.com/sprsquish/vertica).


## Installation

Add this line to your application's Gemfile:

    gem 'vertica_rails_adapter'

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install vertica_rails_adapter

## Usage

Create the basic connection to the vertica database (i.e. app/models/vertica_db.rb):

       module VerticaDb
             class Base < ActiveRecord::Base
               establish_connection(Settings[:vertica_prod])
             end
       end

       Dir['vertica_db/*.rb'].each { | f | require File.expand_path(f) }

Create a folder inside app/models/ (i.e. app/models/vertica_db/) and define your models there (users.rb):

       module VerticaDb
         class Yoda < VerticaDb::Base
	     set_table_name "users"
         end
       end


## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
