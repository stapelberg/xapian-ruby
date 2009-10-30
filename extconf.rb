def system!(cmd)
  puts cmd
  system(cmd) or raise
end
system!('./configure --with-ruby')
system!('make')
system!('mkdir -p lib')
system!('cp ruby/.libs/_xapian.so lib')
system!('cp ruby/xapian.rb lib')
