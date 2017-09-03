Pod::Spec.new do |s|
  s.name             = "ZappAppConnector"
  s.version          = '1.1.1'
  s.summary          = "ZappAppConnector"
  s.description      = <<-DESC
                        ZappAppConnector container.
                       DESC
  s.homepage         = "https://github.com/applicaster/ZappPlayerPlugins-iOS"
  s.license          = 'CMPS'
  s.author           = { "cmps" => "y.bochman@applicaster.com" }
  s.source           = { :git => "git@github.com:applicaster/ZappAppConnector-iOS.git", :tag => s.version.to_s }

  s.platform     = :ios, '9.0'
  s.requires_arc = true
  s.xcconfig =  {
                'SWIFT_VERSION' => '3.0'
              }
  s.public_header_files = 'ZappAppConnector/**/*.h'
  s.source_files = ['ZappAppConnector/**/*.{h,m}']
	s.exclude_files = ['ZappAppConnector/**/*Tests.m', 'ZappAppConnector/Info.plist']
end
