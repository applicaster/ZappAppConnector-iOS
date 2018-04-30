Pod::Spec.new do |s|
  s.name  = "ZappAppConnector"
  s.version = '__version__'
  s.platform  = :ios, '9.0'
  s.summary = "ZappAppConnector"
  s.description = "ZappAppConnector container."
  s.homepage  = "https://github.com/applicaster/ZappAppConnector-iOS"
  s.license = 'CMPS'
  s.author  = { "cmps" => "Applicaster LTD." }

  s.source = {
    "http" => "__source_url__"
  }

  s.vendored_frameworks = 'ZappAppConnector.framework'

  s.requires_arc = true

  s.xcconfig = {
    'SWIFT_VERSION' => '4.1'
  }

  s.dependency 'ZappPlugins', '~> 2.3.0'
end
