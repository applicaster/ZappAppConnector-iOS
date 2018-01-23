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
      :git => "git@github.com:applicaster/ZappAppConnector-iOS.git",
      :tag => s.version.to_s
  }

  s.public_header_files = 'ZappAppConnector/**/*.h'
  s.source_files = ['ZappAppConnector/**/*.{h,m,swift}']
  s.exclude_files = ['ZappAppConnector/**/*Tests.m', 'ZappAppConnector/Info.plist']

  s.requires_arc = true

  s.xcconfig = {
    'SWIFT_VERSION' => '4.0'
  }
end
