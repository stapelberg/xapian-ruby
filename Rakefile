
# Download the xapian-bindings tarball, extract it, and drop this file in there.
# Then run rake build.
#
# Alternately, gem install xapian. It's on Gemcutter.

require 'rubygems'
require 'rake'
require 'rubygems/ext'

begin
  require 'jeweler'
  Jeweler::Tasks.new do |gem|
    gem.name = "xapian"
    gem.version = '1.0.18'
    gem.summary = %Q{xapian bindings for Ruby}
    gem.description = %Q{xapian bindings for Ruby}
    gem.email = "tom@holizz.com"
    gem.homepage = "http://gitorious.org/holizz-projects/xapian-ruby"
    gem.authors = ["Tom Adams"]

    #TODO: libtool must be generated by ./configure --with-ruby
    gem.files += Dir.glob(%w[
      libtool

      **/Makefile.*
      config.guess
      config.h.in
      config.sub
      configure
      csharp/AssemblyInfo.cs.in
      depcomp
      install-sh
      missing
      python/generate-python-exceptions.in
      ruby/**/*
      tcl8/pkgIndex.tcl.in
      xapian-bindings.spec.in
      xapian-version.h.in
      xapian.i
    ])

    gem.extensions << 'extconf.rb'
  end
rescue LoadError
  puts "Jeweler (or a dependency) not available. Install it with: sudo gem install jeweler"
end

Jeweler::GemcutterTasks.new
