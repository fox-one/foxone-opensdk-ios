# foxone-opensdk-ios
2019 Fox.ONE 全新体系下的开放系统含登录，注册，Sign 签发
# F1Passport
## 通过CocoaPods集成到你的应用
确保你安装了最新的 CocoaPods :
在 Podfile 文件中添加:
```
platform :ios, '10.0'

use_frameworks!
pod 'FoxOneOpenSdk/F1Utility', :git => 'https://github.com/fox-one/foxone-opensdk-ios.git', :branch => 'master'
pod 'FoxOneOpenSdk/F1Components', :git => 'https://github.com/fox-one/foxone-opensdk-ios.git', :branch => 'master'
pod 'FoxOneOpenSdk/F1Passport', :git => 'https://github.com/fox-one/foxone-opensdk-ios.git', :branch => 'master'
```
在终端执行  ```pod install```
## 在 App 中使用 SDK
1.注册

```
import F1Passport

//注册
AccountManager.shared.regisrer(merchantId: xxxxxxx)
//设置网络环境
AccountManager.shared.setEnviroment(enviroment: .dev)
```

2.调用带UI的passport服务
```
import F1AccountSDK

/// 设置主题(未设置则使用默认的白色主题)
///
/// - Parameters:
///   - configs: 主题配置
F1PThemeManager.shared.setTheme(configs: themeConfigs)

let viewController = LoginViewController()
```
3.直接调用passport API
```
//Example

//手机号登录
AccountServices.shared.loginBy(phone: xxx, password: xxxx) { (success, user, error) in
}

//退出登录
AccountManager.shared.logout()
```

[更多API](https://github.com/fox-one/foxone-opensdk-ios/blob/master/F1PassportAPI.md)

# F1Exchange
## 在 App 中使用 SDK
## 通过CocoaPods集成到你的应用
确保你安装了最新的 CocoaPods :
在 Podfile 文件中添加:
```
platform :ios, '10.0'

use_frameworks!
pod 'FoxOneOpenSdk/F1Utility', :git => 'https://github.com/fox-one/foxone-opensdk-ios.git', :branch => 'master'
pod 'FoxOneOpenSdk/F1Components', :git => 'https://github.com/fox-one/foxone-opensdk-ios.git', :branch => 'master'
pod 'FoxOneOpenSdk/F1Passport', :git => 'https://github.com/fox-one/foxone-opensdk-ios.git', :branch => 'master'
pod 'FoxOneOpenSdk/F1Exchange', :git => 'https://github.com/fox-one/foxone-opensdk-ios.git', :branch => 'master'
```
在终端执行  ```pod install```

1.注册

```
import F1Exchange

    //注册
    F1exSDKManager.shared.regisrer(merchantId: xxxxxxx)
    
    //设置网络环境
     F1exSDKManager.shared.setEnviroment(enviroment: .dev)
    
    //设置K线图颜色
    F1exSDKManager.shared.setChartViewTheme(increasingColor: UIColor, decreasingColor: UIColor)
    
    //错误处理
    F1exSDKManager.shared.errorDelegate = self

```
2.调用带UI的F1Exchange服务
```
import F1AccountSDK

/// 设置主题(未设置则使用默认的白色主题)
///
/// - Parameters:
///   - configs: 主题配置
///   - placeholderImage: 占位图
F1EThemeManager.shared.setTheme(configs: themeConfigs, placeholderImage: image)
        
//关注交易对界面
let favoriteViewController() = FavoriteViewController()

//实现代理
F1exSDKManager.shared.delegate = self

extension AppDelegate: F1exDelegate {
    
    func loginAction() {
        //调取登录页面
    }
    
    func handleError(statusCode: Int, code: Int, message: String) {
        //错误处理
    }
}
```
[更多API](https://github.com/fox-one/foxone-opensdk-ios/blob/master/F1ExchangeAPI.md)
