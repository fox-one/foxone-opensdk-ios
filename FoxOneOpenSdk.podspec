
Pod::Spec.new do |s|
  s.name         = "FoxOneOpenSdk"
  s.version      = "1.0.0"
  s.summary      = "FoxOneOpenSdk"

  s.description  = "FoxOneOpenSdk"

  s.homepage     = "https://github.com/fox-one/foxone-opensdk-ios"
  s.author             = { "foxone" => "info@fox.one" }

  s.license      = "Apache License 2.0"


  s.platform     = :ios, "10.0"


  s.source       = { :git => "https://github.com/fox-one/foxone-opensdk-ios.git", :tag => "#{s.version}" }
  s.swift_version = "4.2"
  s.requires_arc = true

  s.subspec 'F1Utility' do |utility|
    utility.platform     = :ios, "9.0"
    utility.vendored_frameworks = 'F1Utility/F1Utility.framework'
    utility.dependency  "HandyJSON", "~> 4.2.0" 
    utility.dependency  "Moya/RxSwift", "~> 11.0" 
    utility.dependency  "Starscream", "~> 3.0.2" 
    utility.dependency  "GzipSwift"
  end

  s.subspec 'F1Components' do |components|
    components.platform     = :ios, "9.0"
    components.vendored_frameworks = 'F1Components/F1Components.framework'
    components.dependency "HandyJSON", "~> 4.2.0" 
    components.dependency "RxSwift", "~> 4.0" 
    components.dependency "RxCocoa", "~> 4.0" 
    components.dependency "RxDataSources", "~> 3.0"
    components.dependency "Kingfisher", "~> 5.0" 
    components.dependency "NSObject+Rx"
    components.dependency "SwiftyAttributes"
    components.dependency "RxWebKit"
    components.dependency "RxOptional"
  end

  s.subspec 'F1Passport' do |passport|
    passport.platform     = :ios, "9.0"
    passport.vendored_frameworks = 'F1Passport/F1Passport.framework'
    passport.dependency "HandyJSON", "~> 4.2.0" 
    passport.dependency "RxSwift", "~> 4.0" 
    passport.dependency "RxCocoa", "~> 4.0" 
    passport.dependency "MBProgressHUD", "~> 1.0" 
    passport.dependency "Moya/RxSwift", "~> 11.0" 
    passport.dependency "SwiftHEXColors" , "~> 1.0"
    passport.dependency "SwiftyJSON", "~> 4.0" 
    passport.dependency "CryptoSwift"
    passport.dependency "SnapKit", "~> 4.0" 
    passport.dependency "RxDataSources", "~> 3.0"
    passport.dependency "Kingfisher", "~> 5.0" 
    passport.dependency "SwiftyAttributes"
    passport.dependency "NSObject+Rx"
    passport.dependency "Static"
    passport.dependency "Device", '~> 3.1.2'
  end

  s.subspec 'F1Exchange' do |exchange|
    exchange.platform     = :ios, "10.0"
    exchange.vendored_frameworks = 'F1Exchange/F1Exchange.framework'
    exchange.dependency "HandyJSON", "~> 4.2.0" 
    exchange.dependency "RxSwift", "~> 4.0" 
    exchange.dependency "RxCocoa", "~> 4.0" 
    exchange.dependency "MBProgressHUD", "~> 1.0" 
    exchange.dependency "Moya/RxSwift", "~> 11.0" 
    exchange.dependency "SwiftHEXColors" , "~> 1.0"
    exchange.dependency "SwiftyJSON", "~> 4.0" 
    exchange.dependency "CryptoSwift"
    exchange.dependency "SnapKit", "~> 4.0" 
    exchange.dependency "RxDataSources", "~> 3.0"
    exchange.dependency "Kingfisher", "~> 5.0" 
    exchange.dependency "SwiftyAttributes"
    exchange.dependency "NSObject+Rx"
    exchange.dependency "RxOptional"
    exchange.dependency "RxSwiftExt"
    exchange.dependency "RxGesture"
    exchange.dependency "RxWebKit"
    exchange.dependency "IQKeyboardManagerSwift", '~> 6.0'
    exchange.dependency "MJRefresh", '~> 3.0'
    exchange.dependency "Charts", '3.2.2'
    exchange.dependency "DeckTransition", '~> 2.0'
    exchange.dependency "Starscream", '~> 3.0.2'
    exchange.dependency "GzipSwift"
    exchange.dependency "Static"
    exchange.dependency "URLNavigator", '~> 2.0'
    exchange.dependency "Device", '~> 3.1.2'
  end

  s.subspec 'F1TradingView' do |tradingView|
    tradingView.platform     = :ios, "10.0"
    tradingView.vendored_frameworks = 'F1TradingView/F1TradingView.framework'
    tradingView.dependency "RxSwift", "~> 4.0"
    tradingView.dependency "RxCocoa", "~> 4.0"
    tradingView.dependency "RxOptional"
    tradingView.dependency "SwiftyJSON", "~> 4.0"
    tradingView.dependency "SnapKit", "~> 4.0"
    tradingView.dependency "NSObject+Rx"
    tradingView.dependency "Charts"
  end

end
