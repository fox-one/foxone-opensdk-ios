
Pod::Spec.new do |s|
  s.name         = "FoxOneOpenSdk"
  s.version      = "2.0.0"
  s.summary      = "FoxOneOpenSdk"

  s.description  = "FoxOneOpenSdk"

  s.homepage     = "https://github.com/fox-one/foxone-opensdk-ios"
  s.author             = { "foxone" => "info@fox.one" }
  s.license      = "Apache License 2.0"
  s.platform     = :ios, "10.0"
  s.source       = { :git => "https://github.com/fox-one/foxone-opensdk-ios.git", :tag => "#{s.version}" }
  s.swift_version = "5.0"
  s.requires_arc = true

  s.subspec 'F1Foundation' do |foundation|
    foundation.platform     = :ios, "10.0"
    foundation.vendored_frameworks = 'F1Foundation/F1Foundation.framework'
   end

  s.subspec 'F1Utility' do |utility|
    utility.platform     = :ios, "10.0"
    utility.vendored_frameworks = 'F1Utility/F1Utility.framework'
    utility.dependency  "HandyJSON"
    utility.dependency  "Moya/RxSwift"
    utility.dependency  "Starscream"
    utility.dependency  "SwiftyJSON"
  end

  s.subspec 'F1Components' do |components|
    components.platform     = :ios, "10.0"
    components.vendored_frameworks = 'F1Components/F1Components.framework'
    components.dependency "HandyJSON"
    components.dependency "RxSwift"
    components.dependency "RxCocoa"
    components.dependency "Kingfisher"
    components.dependency "NSObject+Rx"
    components.dependency "SwiftyAttributes"
    components.dependency "SnapKit"
    components.dependency "MBProgressHUD"
    components.dependency "RxOptional"
    components.dependency "MJRefresh"
  end

  s.subspec 'F1Passport' do |passport|
    passport.platform     = :ios, "9.0"
    passport.vendored_frameworks = 'F1Passport/F1Passport.framework'
    passport.dependency "HandyJSON"
    passport.dependency "RxSwift"
    passport.dependency "RxCocoa"
    passport.dependency "Moya/RxSwift"
    passport.dependency "SwiftyJSON"
    passport.dependency "CryptoSwift"
    passport.dependency "SnapKit"
    passport.dependency "RxDataSources"
    passport.dependency "Kingfisher"
    passport.dependency "SwiftyAttributes"
    passport.dependency "NSObject+Rx"
    passport.dependency "Static"
    passport.dependency "Device"

  end

  s.subspec 'F1Exchange' do |exchange|
    exchange.platform     = :ios, "10.0"
    exchange.vendored_frameworks = 'F1Exchange/F1Exchange.framework'
    exchange.dependency "HandyJSON"
    exchange.dependency "RxSwift"
    exchange.dependency "RxCocoa"
    exchange.dependency "Moya/RxSwift"
    exchange.dependency "SwiftyJSON"
    exchange.dependency "SnapKit"
    exchange.dependency "RxDataSources"
    exchange.dependency "Kingfisher"
    exchange.dependency "SwiftyAttributes"
    exchange.dependency "NSObject+Rx"
    exchange.dependency "RxOptional"
    exchange.dependency "RxSwiftExt"
    exchange.dependency "RxGesture"
    exchange.dependency "DeckTransition"
    exchange.dependency "Static"
    

  end

  s.subspec 'F1TradingView' do |tradingView|
    tradingView.platform     = :ios, "10.0"
    tradingView.vendored_frameworks = 'F1TradingView/F1TradingView.framework'
    tradingView.dependency "SnapKit"
    tradingView.dependency "RxSwift"
    tradingView.dependency "RxCocoa"
    tradingView.dependency "Charts"
    tradingView.dependency "SwiftyJSON"
  end

  s.subspec 'F1WebKit' do |webkit|
    webkit.platform     = :ios, "10.0"
    webkit.vendored_frameworks = 'F1WebKit/F1WebKit.framework'
    webkit.dependency "RxSwift"
    webkit.dependency "RxCocoa"
    webkit.dependency "RxWebKit"
    webkit.dependency "NSObject+Rx"
    webkit.dependency "RxOptional"
  end

end
