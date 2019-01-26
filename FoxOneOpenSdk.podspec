
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

  s.default_subspec = 'Core'

  s.subspec 'Core' do |core|
    core.platform     = :ios, "10.0"
    core.vendored_frameworks = 'F1Components/F1Components.framework', 'F1Utility/F1Utility.framework', 'F1Passport/F1Passport.framework', 'F1Exchange/F1Exchange.framework'
  end

  s.subspec 'F1Utility' do |utility|
    utility.platform     = :ios, "9.0"
    utility.vendored_frameworks = 'F1Utility/F1Utility.framework'
  end

  s.subspec 'F1Components' do |components|
    components.platform     = :ios, "9.0"
    components.vendored_frameworks = 'F1Components/F1Components.framework'
    components.dependency "HandyJSON", "~> 4.2.0" 
    components.dependency "RxSwift", "~> 4.0" 
    components.dependency "RxCocoa", "~> 4.0" 
    components.dependency "RxDataSources", "~> 3.0"
    components.dependency "Kingfisher", "~> 4.0" 
    components.dependency "NSObject+Rx"
    components.dependency "SwiftyAttributes"
    components.dependency "Utils-ios"
  end

  s.subspec 'F1Passport' do |passport|
    passport.platform     = :ios, "9.0"
    passport.vendored_frameworks = 'F1Passport/F1Passport.framework'
    passport.dependency "FoxOneOpenSdk/F1Utility" 
    passport.dependency "FoxOneOpenSdk/F1Components"
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
    passport.dependency "Kingfisher", "~> 4.0" 
    passport.dependency "SwiftyAttributes"
    passport.dependency "NSObject+Rx"
    passport.dependency "Utils-ios"
    passport.dependency "Components-ios" 
  end

  s.subspec 'F1Exchange' do |exchange|
    exchange.platform     = :ios, "10.0"
    exchange.vendored_frameworks = 'F1Exchange/F1Exchange.framework'
    exchange.dependency "FoxOneOpenSdk/F1Utility" 
    exchange.dependency "FoxOneOpenSdk/F1Components" 
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
    exchange.dependency "Kingfisher", "~> 4.0" 
    exchange.dependency "SwiftyAttributes"
    exchange.dependency "NSObject+Rx"
    exchange.dependency "Utils-ios"
    exchange.dependency "Components-ios"
    exchange.dependency "RxOptional"
    exchange.dependency "RxSwiftExt"
    exchange.dependency "RxGesture"
    exchange.dependency "RxWebKit"
    exchange.dependency "IQKeyboardManagerSwift", '~> 6.0'
    exchange.dependency "MJRefresh", '~> 3.0'
    exchange.dependency "Charts"
    exchange.dependency "DeckTransition", '~> 2.0'
    exchange.dependency "Starscream", '~> 3.0.2'
    exchange.dependency "GzipSwift"
    exchange.dependency "Static"
    exchange.dependency "URLNavigator", '~> 2.0'
  end

end
