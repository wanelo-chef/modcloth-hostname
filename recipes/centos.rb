#
# Cookbook Name:: modcloth-hostname
# Recipe:: ubuntu
#
# Copyright ModCloth, Inc.
#
# All rights reserved - Do Not Redistribute
#

execute "set hostname to node name" do
  command "hostname #{node.name}"
end

execute "Setting Hostname" do
  command "sed -i -e 's/HOSTNAME\=localhost.localdomain/HOSTNAME\=#{node.name}/g' /etc/sysconfig/network"
end
