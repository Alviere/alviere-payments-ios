Pod::Spec.new do |s|
  s.name              = 'Payments'
  s.version           = '0.9.30'
  s.author            = { 'Alviere' => 'https://alviere.com/' }
  s.license           = { :type => 'Commercial', :text => 'By downloading or using all Alviere SDKs, You agree to the Alviere Master Services Agreement and acknowledge that such terms govern Your use of and access to all SDKs.' }
  s.homepage          = 'https://alviere.com/'
  s.source            = { :http => "https://github.com/Alviere/alviere-payments-ios/releases/download/#{s.version.to_s}/PaymentsSDK.xcframework.zip", :sha256 => 'a5b2a46394fd3c87e120156cb51cca05c865a779614da0bfcb6d6c105ecb1b01' }
  s.summary           = 'The mobile Payments Alviere SDK.'
  s.platform          = :ios, '13.0'
  s.ios.frameworks    = 'Foundation', 'UIKit'
  s.ios.vendored_frameworks = 'PaymentsSDK.xcframework'
  s.dependency 'AlCore', '0.9.30'
  s.dependency 'AlCamera', '1.5.0'
end
