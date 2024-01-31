Pod::Spec.new do |s|
  s.name              = 'Payments'
  s.version           = '0.9.24'
  s.author            = { 'Alviere' => 'https://alviere.com/' }
  s.license           = { :type => 'Commercial', :text => 'By downloading or using all Alviere SDKs, You agree to the Alviere Master Services Agreement and acknowledge that such terms govern Your use of and access to all SDKs.' }
  s.homepage          = 'https://alviere.com/'
  s.source            = { :http => "https://github.com/Alviere/alviere-payments-ios/releases/download/#{s.version.to_s}/Payments.xcframework.zip", :sha256 => 'f0449b65ec3fb509dafd6391612baa31d191599f30401ba62fc8d172dd8122c5' }
  s.summary           = 'The mobile Payments Alviere SDK.'
  s.platform          = :ios, '12.0'
  s.ios.frameworks    = 'Foundation', 'UIKit'
  s.ios.vendored_frameworks = 'Payments.xcframework'
  s.dependency 'AlCore', '0.9.24'
  s.dependency 'AlCamera', '1.0.6'
end
