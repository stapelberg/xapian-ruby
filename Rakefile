
# Download the xapian-bindings tarball, extract it, and drop this file in there.
# Then run rake build.
#TODO: work out how to make a gem that can be built at install time

require 'rubygems'
require 'rake'
require 'rubygems/ext'

begin
  require 'jeweler'
  Jeweler::Tasks.new do |gem|
    gem.name = "xapian"
    gem.version = '1.0.15'
    gem.summary = %Q{xapian bindings for Ruby}
    gem.description = %Q{xapian bindings for Ruby}
    gem.email = "tom@holizz.com"
    gem.homepage = "http://gitorious.org/holizz-projects/xapian-ruby"
    gem.authors = ["Tom Adams"]

    `./configure --with-ruby`
    `make`
    `mkdir -p lib`
    `cp ruby/.libs/_xapian.so lib`
    `cp ruby/xapian.rb lib`
    gem.files << 'lib/_xapian.so'
    gem.files << 'lib/xapian.rb'
  end
rescue LoadError
  puts "Jeweler (or a dependency) not available. Install it with: sudo gem install jeweler"
end
