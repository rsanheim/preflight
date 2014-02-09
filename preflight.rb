#!/usr/bin/env ruby
#/
#/ usage: ./preflight
#/


require 'pathname'

dir = Pathname("~/github/github").expand_path
command = "git --git-dir=#{dir}/.git --work-tree=#{dir} fetch"
puts command
result = system command
puts result
