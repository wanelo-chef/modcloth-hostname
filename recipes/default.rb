#
# Cookbook Name:: hostname
# Recipe:: default
#
# Copyright ModCloth, Inc.
#
# All rights reserved - Do Not Redistribute
#

case node["platform"]
when 'smartos'
  include_recipe "hostname::smartos"
when 'centos'
  include_recipe "hostname::centos"
else 'ubuntu'
  include_recipe "hostname::ubuntu"
end

