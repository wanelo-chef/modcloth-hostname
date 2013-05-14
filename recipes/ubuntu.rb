#
# Cookbook Name:: hostname
# Recipe:: ubuntu
#
# Copyright ModCloth, Inc.
#
# All rights reserved - Do Not Redistribute
#

execute "set hostname to node name" do
  command "hostname #{node.name}"
end

template "/etc/hosts" do
  source "hosts.erb"
  mode "0644"
end

template "/etc/hostname" do
  source "nodename.erb"
  mode "0644"
end

