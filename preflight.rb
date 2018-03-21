#!/usr/bin/env ruby
#/
#/ usage: ./preflight
#/

require "pathname"
require "yaml"

class Preflight
  def root_dirs
    YAML.load_file(Pathname("~/.preflight").expand_path)["root_dirs"]
  end

  def run
    root_dirs.each do |root|
      path = Pathname(root).expand_path
      next unless path.exist?
      path.children.select { |path| path.directory? }.each do |path|
        command = "git --git-dir=#{path}/.git --work-tree=#{path} fetch"
        out = command
        success = system command
        result = success ? "success" : "error"
        puts "#{result} => #{command}"
      end
    end
  end
end

Preflight.new.run
