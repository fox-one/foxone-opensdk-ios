
Pod::Spec.new do |s|
  s.name         = "FoxOneOpenSdk"
  s.version      = "1.0.0"
  s.summary      = "FoxOneOpenSdk"

  s.description  = "FoxOneOpenSdk"

  s.homepage     = "https://github.com/fox-one/foxone-opensdk-ios"


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
  end

  s.subspec 'F1Passport' do |passport|
    passport.platform     = :ios, "9.0"
    passport.vendored_frameworks = 'F1Passport/F1Passport.framework'
  end

  s.subspec 'F1Exchange' do |exchange|
    exchange.platform     = :ios, "10.0"
    exchange.vendored_frameworks = 'F1Exchange/F1Exchange.framework'
  end

end
