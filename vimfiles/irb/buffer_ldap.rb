require 'rubygems'
require 'net/ldap'

ldap = Net::LDAP.new(
  :host => "192.168.0.50",
  :port => "389",
  :auth => {
    :method => :simple,
    :username => "colinc@corp.cbm.net",
    :password => "1hundred"
  }
)

ldap.bind

filter = Net::LDAP::Filter.eq( "cn", "Robert*" )
treebase = "dc=corp,dc=cbm,dc=net"
 
ldap.search( :base => treebase, :filter => filter )

