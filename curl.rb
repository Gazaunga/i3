#!/usr/bin/env ruby

require 'net/http'
require 'uri'

uri = URI.parse("https://raw.githubusercontent.com/scopatz/nanorc/master/install.sh")
response = Net::HTTP.get_response(uri)

uri = URI.parse("https://spacevim.org/install.sh")
response = Net::HTTP.get_response(uri)

#response.code
#response.body
