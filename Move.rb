#!/usr/bin/env ruby

require ‘thor’
require 'script_executor'
require 'colorize'
require 'fileutils'

src = gets.chomp
dest = "gazbit/"

class Mover < Thor

desc “move …ARGS”, “Move all the files and folders in ARGS”
def move(*args)
FileUtils.cp_R("#{src}/*", "#{dest}" )
puts "Success! Folders moved!".colorize(:blue ).colorize( :background => :red)

end

Mover.start(ARGV)
