
Pod::Spec.new do |s|
  s.name             = 'NetkiSDK'
  s.version          = '0.1.0'
  s.summary          = 'A short description of NetkiSDK.'
  s.description      = "NetkiSDK library"
  s.homepage         = 'https://github.com/netkicorp/onboardid-ios'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Netki' => 'ops@netki.com' }
  s.ios.deployment_target = '17.0'
  s.swift_version    = '5.0'
  s.source       = { :git => "https://github.com/alan10fm/LibrarySPM.git", :branch => "main"}
  s.vendored_frameworks = "NetkiSDK.xcframework"
  s.platform = :ios
  
  # s.dependency 'Alamofire', '~> 5.8.0'
  # s.dependency 'Sentry', '~> 8.22.4'
  # s.dependency 'DeviceKit', '~> 5.2.2'
end