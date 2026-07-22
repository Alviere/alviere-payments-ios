Pod::Spec.new do |s|
  s.name              = 'Payments'
  s.version           = '0.9.32'
  s.author            = { 'Alviere' => 'https://alviere.com/' }
  s.license           = { :type => 'Apache-2.0', :file => 'LICENSE' }
  s.homepage          = 'https://alviere.com/'
  s.source            = { :http => "https://github.com/Alviere/alviere-payments-ios/releases/download/#{s.version.to_s}/PaymentsSDK.xcframework.zip", :sha256 => 'c576de6f7400aa54ba3d8221a02df32c7a13c5d91757231e0f7765db14221658' }
  s.summary           = 'The mobile Payments Alviere SDK.'
  s.platform          = :ios, '13.0'
  s.ios.frameworks    = 'Foundation', 'UIKit'
  s.ios.vendored_frameworks = 'PaymentsSDK.xcframework'
  s.dependency 'AlCore', '0.9.32'
  s.dependency 'AlCamera', '1.6.0'
end
