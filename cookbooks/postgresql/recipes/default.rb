#
# Cookbook:: postgresql
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.
#
#
package 'postgresql-server' do
        notifies :run, 'execute[postgresql-int]'
end

execute 'postgressql-init' do
        command 'postgresql-setup initdb'
        action :nothing
end

service 'postgresql' do
    action [:enable, :start]
end
