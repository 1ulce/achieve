server '52.196.153.74', user: 'app', roles: %w{app db web}
set :ssh_options, keys: '/Users/ch0chip/.ssh/app_aws_key'