platform :ios, '9.0'
use_frameworks!
install! 'cocoapods', :deterministic_uuids => false

source 'git@github.com:applicaster/CocoaPods.git'
source 'git@github.com:applicaster/CocoaPods-Private.git'
source 'git@github.com:CocoaPods/Specs.git'

target 'ZappAppConnector' do
	pod 'ZappPlugins', :path => 'Submodules/ZappPlugins/ZappPlugins-Dev.podspec'

	target 'ZappAppConnectorTests' do
		inherit! :search_paths
	end

end
