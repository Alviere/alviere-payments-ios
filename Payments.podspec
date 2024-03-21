Pod::Spec.new do |s|
  s.name              = 'Payments'
  s.version           = '0.9.25'
  s.author            = { 'Alviere' => 'https://alviere.com/' }
  s.license           = { :type => 'Commercial', :text => 'By downloading or using all Alviere SDKs, You agree to the Alviere Master Services Agreement and acknowledge that such terms govern Your use of and access to all SDKs.' }
  s.homepage          = 'https://alviere.com/'
  s.source            = { :http => "https://github.com/Alviere/alviere-payments-ios/releases/download/#{s.version.to_s}/Payments.xcframework.zip", :sha256 => '6237d711f45bb30f924556dd73a79ac4679d50cbb6361ead8aab13ef69554bed' }
  s.summary           = 'The mobile Payments Alviere SDK.'
  s.platform          = :ios, '13.0'
  s.ios.frameworks    = 'Foundation', 'UIKit'
  s.ios.vendored_frameworks = 'Payments.xcframework'
  s.dependency 'AlCore', '0.9.25'
  s.dependency 'AlCamera', '1.1.0'
end
