source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

gem 'rails', '~> 5.1.6'
gem 'puma', '~> 3.7'
gem 'sass-rails', '~> 5.0'
gem 'bootstrap', '~> 4.0.0'
gem 'uglifier', '>= 1.3.0'

group :development do
  gem 'listen'
end

gem 'coolpay_ruby', :git => 'git@github.com:PuGGee/coolpay_ruby.git'
