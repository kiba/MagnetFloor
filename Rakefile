require "json"

PROJECT = "MagneticFloor_0.1.4"

task :clean do |t|
  sh "rm -r " + PROJECT
  sh "rm -r " + PROJECT + ".zip"
end

task :build do |t|
  json = "info.json"
  plain = "CHANGES LICENSE README.md TODO.md"
  lua = "data.lua gui.lua control.lua test.lua"
  directories = "locale prototypes graphics migrations stdlib"
  list = [json,plain,lua,directories,PROJECT].join(" ")
	sh "mkdir " + PROJECT
  sh "cp -r " + list
  sh "zip -r " + PROJECT + ".zip " + PROJECT + " -x *.xcf* *.zip* *.DS_Store* *.kra*"
end

task :copy do |t|
  sh "cp " + PROJECT + ".zip ~/Library/Application\\ Support/factorio/test_mods/"
end

task :cycle => [:build,:copy,:clean]
