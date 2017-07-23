#!/usr/bin/env ruby

require 'script_executor'
require 'colorize'

src = ARGV[0]
dst = ARGV[1]


executor = ScriptExecutor.new

executor.execute "cp -R -v #{src}/* #{dst}"
puts "Success! Folders moved!".colorize(:blue ).colorize( :background => :red)

# ./mv.rb ~/i3/ ~/
