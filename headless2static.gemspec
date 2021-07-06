Gem::Specification.new do |s|
  s.name        = 'headless2static'
  s.version     = '1.0.3'
  s.date        = '2021-07-06'
  s.summary     = 'the missing link between headless CMSs and static site generators'
  s.description = 'headless2static generates static files from REST resource lists using a Liquid template.'
  s.authors     = ['Jan Weil']
  s.email       = 'jan.weil@web.de'
  s.executables << 'headless2static'
  s.homepage    = 'https://jawebada.github.io/headless2static/'
  s.license     = 'MIT'
  s.add_dependency 'jekyll', '~>4.2.0'
  s.add_dependency 'liquid', '~>4.0.3'
  s.required_ruby_version = '>= 2.7'
end
