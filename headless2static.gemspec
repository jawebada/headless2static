Gem::Specification.new do |s|
  s.name        = 'headless2static'
  s.version     = '1.0.1'
  s.date        = '2020-08-25'
  s.summary     = "the missing link between headless CMSs and static site generators"
  s.description = "headless2static generates static files from REST resource lists using a Liquid template."
  s.authors     = ["Jan Weil"]
  s.email       = 'jan.weil@web.de'
  s.executables << 'headless2static'
  s.homepage    = 'https://jawebada.github.io/headless2static/'
  s.license     = 'MIT'
  s.add_dependency "jekyll", "~>4.1.1"
  s.add_dependency "liquid", "~>4.0.3"
end
