require 'bundler'
require 'rake'
require 'active_record'
# require 'tty/prompt'
Bundler.require

ActiveRecord::Base.establish_connection(adapter: 'sqlite3', database: 'db/development.db')
require_all 'lib'
