lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'date'
require 'bashly/version'

Gem::Specification.new do |s|
  s.name        = 'bashly'
  s.version     = Bashly::VERSION
  s.date        = Date.today.to_s
  s.summary     = "Bash Command Line Tool Generator"
  s.description = "Generate bash command line tools using YAML configuration"
  s.authors     = ["Danny Ben Shitrit"]
  s.email       = 'db@dannyben.com'
  s.files       = Dir['README.md', 'lib/**/*.*']
  s.executables = ['bashly']
  s.homepage    = 'https://github.com/dannyben/bashly'
  s.license     = 'MIT'
  s.required_ruby_version = ">= 2.3.0"

  s.add_runtime_dependency 'colsole', '~> 0.5'
  s.add_runtime_dependency 'mister_bin', '~> 0.6'
  s.add_runtime_dependency 'requires', '~> 0.1'
end
