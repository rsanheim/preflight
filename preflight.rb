#!/usr/bin/env ruby
#/
#/ usage: ./preflight
#/


require 'pathname'

dir = Pathname("~/src/3dna/nbuild").expand_path
command = "git --git-dir=#{dir}/.git --work-tree=#{dir} fetch"
out = command
success = system command
result = success ? "success" : "error"
puts "#{result} => #{command}"
