# foxone-opensdk-ios
2019 Fox.ONE 全新体系下的开放系统 JS 端，含登录，注册，Sign 签发

## 集成到你的应用
确保你安装了最新的 CocoaPods :
在 Podfile 文件中添加:
```
pod 'Utils-ios', :git => 'https://github.com/fox-one/Utils-ios.git', :branch => 'master'
pod 'Components-ios', :git => 'https://github.com/fox-one/Components-ios.git', :branch => 'master'
pod 'F1AccountSDK', :git => 'https://github.com/fox-one/F1AccountSDK.git', :branch => 'master'
```
在终端执行  ```pod install```

# F1Passport
## 在 App 中使用 SDK
1.在您的应用中注册 SDK

```
import F1Passport

//Register
AccountManager.shared.regisrer(merchantId: xxxxxxx)
//设置网络环境
AccountManager.shared.setEnviroment(enviroment: .dev)
```

2.调用loginViewController
```
import F1AccountSDK

let viewController = LoginViewController()
```

[更多API](https://github.com/fox-one/foxone-opensdk-ios/blob/master/F1PassportAPI.md)

# F1Exchange
## 在 App 中使用 SDK
1.在您的应用中注册 SDK

```
import F1Exchange

    //F1exSDK
    F1exSDKManager.shared.regisrer(merchantId: xxxxxxx)
    
    //设置网络环境
    #if DEBUG
        EnvironmentConfigManager.shared.enviroment = .dev
        F1exSDKManager.shared.setEnviroment(enviroment: .dev)
    #else
        EnvironmentConfigManager.shared.enviroment = .dev
        F1exSDKManager.shared.setEnviroment(enviroment: .dev)
    #endif
    
    //设置K线图颜色
    F1exSDKManager.shared.setChartViewTheme(increasingColor: UIColor, decreasingColor: UIColor)
    
    //错误处理
    F1exSDKManager.shared.errorDelegate = self

```
2.界面调用
```
import F1AccountSDK



//关注交易对界面
let favoriteViewController() = FavoriteViewController()
```
[更多API](https://github.com/fox-one/foxone-opensdk-ios/blob/master/F1ExchangeAPI.md)
