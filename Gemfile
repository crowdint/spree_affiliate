source 'http://rubygems.org'

# In order to test the full integration of the gems in basing the integration on
# this commit of spree
gem 'spree',
  git: 'https://github.com/spree/spree.git',
  ref: '69fc8a14e22c4631c520b5394afbede9a5ebce46'

# This gem has green tests and is correctly working on my repo's master
gem 'spree_email_to_friend',
  git: 'git@github.com:chischaschos/spree_email_to_friend.git'

# Latest version is correctly working
gem 'spree_store_credits',
  git: 'git://github.com/spree/spree_store_credits.git'

group :test do
  gem 'ffaker'
end

if RUBY_VERSION < "1.9"
  gem "ruby-debug"
else
  gem "ruby-debug19"
end

gemspec
