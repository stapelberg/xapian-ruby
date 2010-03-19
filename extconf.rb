require 'mkmf'

def system!(cmd)
  puts cmd
  system(cmd) or raise
end

# We need to pass the ruby version for systems which have multiple
# versions installed
ruby_path = File.join(Config::CONFIG['bindir'], Config::CONFIG['ruby_install_name'] + Config::CONFIG["EXEEXT"])
system!("./configure --with-ruby RUBY=#{ruby_path}")

# Ensure that all files will be build
system!(%Q{find ruby -name "*.cc" -exec touch '{}' \\;})

system!('make')
system!('mkdir -p lib')
system!('cp ruby/.libs/_xapian.so lib')
system!('cp ruby/xapian.rb lib')
