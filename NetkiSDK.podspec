Pod::Spec.new do |s|
  s.name          = 'NetkiSDK'
  s.version       = '0.1.0'
  s.summary       = 'NetkiSDK'
  s.homepage      = 'http://netki.com'
  s.license       = { :type => 'MIT' }
  s.author        = { 'NetkiSDK' => 'alan10fm@gmail.com' }
  s.source        = { :http => 'https://github.com/alan10fm/LibrarySPM.git' }
  s.swift_version = '5.0'
  s.ios.deployment_target = '17.0'

  
  s.dependency 'Alamofire', '~> 5.8.0'
  s.dependency 'Sentry', '~> 8.22.4'
  s.dependency 'DeviceKit', '~> 5.2.2'

  s.vendored_frameworks = 'NetkiSDK.xcframework'
end