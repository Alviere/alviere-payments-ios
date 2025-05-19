Pod::Spec.new do |s|
  s.name              = 'Payments'
  s.version           = '0.9.28'
  s.author            = { 'Alviere' => 'https://alviere.com/' }
  s.license           = { :type => 'Commercial', :text => 'By downloading or using all Alviere SDKs, You agree to the Alviere Master Services Agreement and acknowledge that such terms govern Your use of and access to all SDKs.' }
  s.homepage          = 'https://alviere.com/'
  s.source            = { :http => "https://github.com/Alviere/alviere-payments-ios/releases/download/#{s.version.to_s}/PaymentsSDK.xcframework.zip", :sha256 => '8b6fed6e5c50ec117d0b30b4695db1cf6067a599d59e0c82bd12f3fe5b80a10f' }
  s.summary           = 'The mobile Payments Alviere SDK.'
  s.platform          = :ios, '13.0'
  s.ios.frameworks    = 'Foundation', 'UIKit'
  s.ios.vendored_frameworks = 'PaymentsSDK.xcframework'
  s.dependency 'AlCore', '0.9.28'
  s.dependency 'AlCamera', '1.3.0'
end
