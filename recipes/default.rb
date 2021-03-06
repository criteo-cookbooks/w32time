#
# Cookbook Name:: w32time
# Recipe:: default
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

# This recipe will Configure w32time service to use ntp

# Make sure w32time service is running
windows_service 'w32time' do
  run_as_user 'NT AUTHORITY\LocalService' if ::Chef::VERSION.to_f >= 13.0
  action %i[enable start]
end

# Command to configure w32time service
manualpeerlist = node['w32time']['servers'].map { |srv| "#{srv},#{node['w32time']['flag']}" }.join(' ')
execute 'set ntp config' do
  command "w32tm /config /update /manualpeerlist:\"#{manualpeerlist}\" /syncfromflags:manual /reliable:yes"
  action :nothing
end

# If registry values are not up to date w32time is configured and restarted
registry_key 'HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\W32Time\Parameters' do
  values [{ name: 'NtpServer', type: :string, data: manualpeerlist },
          { name: 'Type', type: :string, data: node['w32time']['type'] }]
  action :create
  notifies :run, 'execute[set ntp config]', :immediately
  notifies :restart, 'windows_service[w32time]', :immediately
end
