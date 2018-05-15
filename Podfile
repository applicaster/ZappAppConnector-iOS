platform :ios, '9.0'
use_frameworks!
install! 'cocoapods', :deterministic_uuids => false

source 'git@github.com:applicaster/CocoaPods.git'
source 'git@github.com:applicaster/CocoaPods-Private.git'
source 'git@github.com:CocoaPods/Specs.git'

pre_install do |installer|
	# workaround for https://github.com/CocoaPods/CocoaPods/issues/3289
	Pod::Installer::Xcode::TargetValidator.send(:define_method, :verify_no_static_framework_transitive_dependencies) {}
end

def shared_pods
	pod 'ZappPlugins', :path => 'Submodules/ZappPlugins/ZappPlugins-Dev.podspec'
end

target 'ZappAppConnector' do
	shared_pods
end

target 'ZappAppConnectorTests' do
	shared_pods
end

post_install do |installer|
    installer.pods_project.build_configuration_list.build_configurations.each do |configuration|
        configuration.build_settings['CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES'] = 'YES'
        configuration.build_settings['SWIFT_VERSION'] = '4.1'

    end
end
