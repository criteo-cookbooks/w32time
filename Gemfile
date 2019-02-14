source 'https://rubygems.org'

gem 'berkshelf'
gem 'chef'
gem 'chef-zero-scheduled-task'
gem 'chefspec'
gem 'foodcritic'
gem 'kitchen-vagrant'
gem 'rake'

gem 'kitchen-transport-speedy'
group :ec2 do
  gem 'dotenv'
  gem 'kitchen-ec2', git: 'https://github.com/criteo-forks/kitchen-ec2.git', branch: 'criteo'
  gem 'test-kitchen'
  gem 'winrm',       '>= 1.6'
  gem 'winrm-elevated', '~> 1.0'
  gem 'winrm-fs', '>= 0.3'
end

# Other gems should go after this comment
gem 'rubocop', '=0.64.0'
