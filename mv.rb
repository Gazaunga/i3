#!/usr/bin/env ruby

require 'script_executor'
require 'colorize'

#dir1 = gets
#home_folder = $HOME.gets

executor = ScriptExecutor.new

executor.execute "cp -R #{dir1}/* #{home_folder}"
puts "Success! Folders moved!".colorize(:blue ).colorize( :background => :red)


###
#FileUtils.mv_f('#{dirs}', '#{tmp_dir}')
