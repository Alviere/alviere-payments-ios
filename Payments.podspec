Pod::Spec.new do |s|
  s.name              = 'Payments'
  s.version           = '0.9.16'
  s.author            = { 'Alviere' => 'https://alviere.com/' }
  s.license           = { :type => 'Commercial', :text => 'By downloading or using all Alviere SDKs, You agree to the Alviere Master Services Agreement and acknowledge that such terms govern Your use of and access to all SDKs.' }
  s.homepage          = 'https://alviere.com/'
  s.source            = { :http => "https://github.com/Alviere/alviere-payments-ios/releases/download/#{s.version.to_s}/Payments.xcframework.zip", :sha256 => '08758fffdb0aa68c4a66e7809ef88c296a55cbd11a9a1edafa91a58bf3715f4f' }
  s.summary           = 'The mobile Payments Alviere SDK.'
  s.platform          = :ios, '11.0'
  s.ios.frameworks    = 'Foundation', 'UIKit'
  s.ios.vendored_frameworks = 'Payments.xcframework'
  s.dependency 'AlCore', '0.9.16'
  s.dependency 'AlCamera', '1.0.4'
end
