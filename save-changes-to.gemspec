Gem::Specification.new do |s|
  s.name     = 'save-changes-to'
  s.version  = '1.0'
  s.summary  = 'Save changes to Rails models from params in one call.'
  s.homepage = 'http://codyrobbins.com/software/save-changes-to'
  s.author   = 'Cody Robbins'
  s.email    = 'cody@codyrobbins.com'

  s.post_install_message = '
-------------------------------------------------------------
Follow me on Twitter! http://twitter.com/codyrobbins
-------------------------------------------------------------

'

  s.files = `git ls-files`.split

  s.add_dependency('easier-instance-variable-access')
end