Pod::Spec.new do |s|
  s.name              = 'Payments'
  s.version           = '0.9.12'
  s.author            = { 'Alviere' => 'https://alviere.com/' }
  s.license           = { :type => 'Commercial', :text => 'By downloading or using all Alviere SDKs, You agree to the Alviere Master Services Agreement and acknowledge that such terms govern Your use of and access to all SDKs.' }
  s.homepage          = 'https://alviere.com/'
  s.source            = { :http => "https://github.com/Alviere/alviere-payments-ios/releases/download/#{s.version.to_s}/Payments.xcframework.zip", :sha256 => '6ce064d6c1ac548261f63e8467ed6f09e3b468baa95d658020a8fb6e1a4e8c3f' }
  s.summary           = 'The mobile Payments Alviere SDK.'
  s.platform          = :ios, '11.0'
  s.ios.frameworks    = 'Foundation', 'UIKit'
  s.ios.vendored_frameworks = 'Payments.xcframework'
  s.dependency 'AlCore', '0.9.12'
  s.dependency 'AlCamera', '1.0.4'
end
