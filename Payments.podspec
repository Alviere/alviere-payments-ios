Pod::Spec.new do |s|
  s.name              = 'Payments'
  s.version           = '0.9.26'
  s.author            = { 'Alviere' => 'https://alviere.com/' }
  s.license           = { :type => 'Commercial', :text => 'By downloading or using all Alviere SDKs, You agree to the Alviere Master Services Agreement and acknowledge that such terms govern Your use of and access to all SDKs.' }
  s.homepage          = 'https://alviere.com/'
  s.source            = { :http => "https://github.com/Alviere/alviere-payments-ios/releases/download/#{s.version.to_s}/PaymentsSDK.xcframework.zip", :sha256 => '490721b6c41053452845e30fc4a71b2a80431671b2b3be212d30e2d8928f29ce' }
  s.summary           = 'The mobile Payments Alviere SDK.'
  s.platform          = :ios, '13.0'
  s.ios.frameworks    = 'Foundation', 'UIKit'
  s.ios.vendored_frameworks = 'PaymentsSDK.xcframework'
  s.dependency 'AlCore', '0.9.26'
  s.dependency 'AlCamera', '1.2.0'
end
