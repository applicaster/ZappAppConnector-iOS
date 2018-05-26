platform :ios, '9.0'
use_frameworks!
install! 'cocoapods', :deterministic_uuids => false

source 'git@github.com:applicaster/CocoaPods.git'
source 'git@github.com:applicaster/CocoaPods-Private.git'
source 'git@github.com:CocoaPods/Specs.git'

def shared_pods
	pod 'ZappPlugins', :path => 'Submodules/ZappPlugins/ZappPlugins-Dev.podspec'
end

target 'ZappAppConnector' do
	shared_pods
end

target 'ZappAppConnectorTests' do
	shared_pods
end
