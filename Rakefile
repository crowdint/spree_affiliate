# encoding: utf-8
require 'rubygems'
require 'rake'
require 'rake/testtask'

desc "Default Task"
task :default => [ :spec ]

require 'rspec/core/rake_task'
RSpec::Core::RakeTask.new

require 'cucumber/rake/task'
Cucumber::Rake::Task.new do |t|
  t.cucumber_opts = %w{--format pretty}
end

desc "Regenerates a rails 3 app for testing"
task :test_app do
  SPREE_PATH = ENV['SPREE_PATH']
  ENV['LIB_NAME'] = 'spree_affiliate'
  raise "SPREE_PATH should be specified" unless SPREE_PATH

  require 'rails'
  require 'rails/generators'
  require 'active_support/core_ext/hash/slice'
  require 'generators/spree/dummy/dummy_generator'
  require 'spree/core/version'
  require 'generators/spree/install/install_generator'

  class AuthTestAppGenerator < Spree::DummyGenerator
    def install_gems
      system("cd spec/dummy && rake spree_core:install")
      system("cd spec/dummy && rake spree_auth:install")
      generate 'spree_store_credits:install -f'
      generate 'spree_affiliate:install -f'
    end
  end

  AuthTestAppGenerator.start
  Spree::InstallGenerator.start ["--lib_name=#{ENV['LIB_NAME']}", "--auto-accept", "--migrate=false", "--seed=false", "--sample=false", "--quiet"]
end

namespace :test_app do
  desc 'Rebuild test and cucumber databases'
  task :rebuild_dbs do
    system("cd spec/test_app && rake db:drop db:migrate RAILS_ENV=test && rake db:drop db:migrate RAILS_ENV=cucumber")
  end
end
