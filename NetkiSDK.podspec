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
  
  # Dependencies
  s.dependency 'Sentry', '~> 8.22.4'
  s.dependency 'DeviceKit', '~> 5.2.2'

  s.script_phase = {
    :name => 'Add Camera Permission',
    :script => <<-SCRIPT
      echo "Checking for camera permission..."
      if ! plistbuster --get "NSCameraUsageDescription" | grep -q "This app needs access to your camera to scan documents."; then
        echo "Adding camera permission..."
        plistbuster --add "NSCameraUsageDescription" --string "This app needs access to your camera to scan documents."
      else
        echo "Camera permission already declared."
      fi
    SCRIPT
  }

end