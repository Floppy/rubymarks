Gem::Specification.new do |s|
  s.name = "rubymarks"
  s.version = "0.1.0"
  s.date = "2008-10-2"
  s.summary = "A Ruby gem (and Rails plugin) which generates URLs for social bookmarking services"
  s.email = "james@floppy.org.uk"
  s.homepage = "http://github.com/Floppy/rubymarks"
  s.has_rdoc = true
  s.authors = ["James Smith"]
  s.files = ["README", "COPYING"] 
  s.files += ['lib/rubymarks.rb', 'lib/rubymarks/services.rb']
  s.files += ['init.rb', 'rails/init.rb']
end
