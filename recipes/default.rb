#
# Cookbook Name:: modcloth-hostname
# Recipe:: default
#
# Copyright ModCloth, Inc.
#
# All rights reserved - Do Not Redistribute
#

case node["platform"]
when 'smartos'
  include_recipe "modcloth-hostname::smartos"
when 'centos'
  include_recipe "modcloth-hostname::centos"
when 'ubuntu'
  include_recipe "modcloth-hostname::ubuntu"
end

ohai "reload" do
  action :reload
end
