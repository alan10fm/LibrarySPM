Pod::Spec.new do |s|
  s.name             = 'NetkiSDK'
  s.version          = '0.1.0'
  s.summary          = 'NetkiSDK.'
  s.homepage         = 'https://github.com/alan10fm/LibrarySPM'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Your Name' => 'your.email@example.com' }
  s.source           = { :git => 'https://github.com/alan10fm/LibrarySPM.git', :branch => 'main' }
  s.swift_version    = '5.0'

  s.ios.deployment_target = '11.0'
  
  # NetkiSDK
  s.vendored_frameworks = 'NetkiSDK.xcframework'

  # Add permissions
  s.ios.permission 'NSCameraUsageDescription', 'This NetkiSDK requires access to the camera to take photos.'
  
  # Dependencies
  s.dependency 'Sentry', '~> 8.22.4'
  s.dependency 'DeviceKit', '~> 5.2.2'
end