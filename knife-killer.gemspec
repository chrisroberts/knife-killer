$LOAD_PATH.unshift File.expand_path(File.dirname(__FILE__)) + '/lib/'
require 'knife-killer/version'
Gem::Specification.new do |s|
  s.name = 'knife-killer'
  s.version = KnifeKiller::VERSION.version
  s.summary = 'Knife cleanup helper'
  s.author = 'Chris Roberts'
  s.email = 'code@chrisroberts.org'
  s.homepage = 'http://github.com/chrisroberts/knife-killer'
  s.description = 'Knife cleanup helper'
  s.license = 'Apache 2.0'
  s.require_path = 'lib'
  s.add_dependency 'chef'
  s.files = Dir['lib/**/*'] + %w(knife-killer.gemspec README.md CHANGELOG.md LICENSE)
end
