Gem::Specification.new do |s|
  s.name        = 'rbscreenshot'
  s.version     = '0.0.1'
  s.date        = '2014-07-06'
  s.summary     = "Take a screen shot with ruby in one line."
  s.description = "Take a screen shot with ruby in one line."
  s.authors     = ["Kai Inui"]
  s.email       = 'me@kaiinui.com'
  s.files       = ["lib/rbscreenshot.rb"]
  s.homepage    = 'https://github.com/kaiinui/rbscreenshot'
  s.license     = 'MIT'
  s.add_runtime_dependency 'capybara', '~> 2.4', '>= 2.4.1'
  s.add_runtime_dependency 'poltergeist', '~> 1.5', '>= 1.5.1'
end