#
# Cookbook Name:: hostname
# Attributes:: default
#
# Copyright ModCloth, Inc.
#
# All rights reserved - Do Not Redistribute
#
default[:hostname][:ipaddress]            = `ifconfig -a | egrep '192.168\|10.[0-9]\|172.16' | grep inet | awk '{print $2}'`.strip.to_s

