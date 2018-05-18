#!/usr/bin/env ruby
#/
#/ usage: ./preflight
#/

require "pathname"
require "yaml"

class Preflight
  CONFIG_FILE = Pathname("~/.preflight").expand_path
  DEFAULT_CONFIG = {
    "root_dirs" => ["~/src"]
  }

  def config
    if CONFIG_FILE.exist?
      YAML.load_file(CONFIG_FILE)
    else
      DEFAULT_CONFIG
    end
  end

  def root_dirs
    config["root_dirs"]
  end

  def run
    root_dirs.sort.each do |root|
      path = Pathname(root).expand_path
      next unless path.exist?
      path.children.sort.select { |path| path.directory? }.each do |path|
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
