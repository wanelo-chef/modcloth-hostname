#
# Cookbook Name:: hostname
# Recipe:: smartos
#
# Copyright ModCloth, Inc.
#
# All rights reserved - Do Not Redistribute
#

execute "set hostname to node name" do
  command "hostname #{node.name}"
end

template "/etc/inet/hosts" do
  source "hosts.erb"
  mode "0644"
end

template "/etc/nodename" do
  source "nodename.erb"
  mode "0644"
end
