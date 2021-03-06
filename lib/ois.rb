#!/usr/bin/env ruby

OGRE_RB_ROOT = File.expand_path(File.join("..", ".."))

if ENV["LD_LIBRARY_PATH"] !~ /ois/
  ENV["LD_LIBRARY_PATH"] = [File.join(OGRE_RB_ROOT, "lib", "ois", "lib"),
                            ENV["LD_LIBRARY_PATH"]].join(":")
  exec("#{$0} #{ARGV.join(" ")}")
end

require File.join(OGRE_RB_ROOT, "lib", "ois", "ois")
