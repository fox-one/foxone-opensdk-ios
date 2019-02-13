# API
### AccountManager
```
    public class AccountManager {

        public static let shared: F1AccountSDK.AccountManager
        /// 用户信息
        public var user: F1Passport.UserInfo?
    
        /// KYC Profile
        public var kycProfile: F1Passport.KYCProfile?
    
        /// KYC 审核状态
        public var kycStatus: F1Passport.KYCStatus
    
        /// 是否登录
        public var isLogin: Bool { get }
    
        /// 注册 SDK
        ///
        /// - Parameter merchantId: merchantId
        public func register(merchantId: String)
    
        /// 注入host
        public func injectHost(dev: String, product: String)
    
        /// 设置网络环境
        ///
        /// - Parameter enviroment: 设置网络环境
        public func setEnviroment(enviroment: F1Passport.AccountEnviroment)
    
        /// 退出登录
        public func logout()
    
        /// 获取 Kyc Profile
        ///
        /// - Parameter complete: 获取 Kyc Profile
        public func getKycProfile(complete: @escaping (Bool, Error?) -> Void)
      }
    
```
### 通知
```
public extension NSNotification.Name {
    /// 用户登录成功通知
    public static let UserLoginSuccessNotification: NSNotification.Name
    /// 用户退出登录通知
    public static let UserLogOutNotification: NSNotification.Name
}
```
### 获取jwt和签名
```
public class CryptoTool {

    /// 获取JWT
    ///
    /// - Parameters:
    ///   - url: 请求地址(取地址的/api/...)
    ///   - method: 方法
    ///   - body: body
    ///   - secret:secret
    /// - Returns:Sign
    public class func getJwt(url: String, method: String, body: Data? = default, secret: String, key: String) -> String

    /// 获取Sign
    ///
    /// - Parameters:
    ///   - url: 请求地址(取地址的/api/...)
    ///   - method: 方法
    ///   - body: body
    /// - Returns:
    public class func generateSign(url: String, method: String, body: Data? = default) -> String
}
```
## Service API
```
public typealias UserRequestComplete = (Bool, UserInfo?, Error?) -> Void

public class AccountServices {

    public static let shared: F1Passport.AccountServices

     /// 手机密码登录
    ///
    /// - Parameters:
    ///   -phoneCode: 国家码
    ///   - phone: 手机号
    ///   - password: 密码
    public func loginBy(phoneCode: String, phone: String, password: String, complete: @escaping UserRequestComplete)

    /// 手机验证码登录
    ///
    /// - Parameters:
    ///   - code: 验证码
    ///   - token: token
    ///   - complete: 回调
    public func loginBy(code: String, token: String, type: Int = default, complete: @escaping UserRequestComplete)

    /// 邮箱登录
    ///
    /// - Parameters:
    ///   - mail: 邮箱
    ///   - password: 密码
    public func loginBy(mail: String, password: String, complete: @escaping UserRequestComplete)

    /// 获取CaptchaId
    ///
    /// - Parameter complete: 完成回调
    public func getCaptcha(complete: @escaping (String) -> Void)

    /// 登录短信验证码
    ///
    /// - Parameters:
    ///   - phone: 手机号
    ///   - captcha: captcha
    ///   - captchaId: captchaId
    ///   - phoneCode: 国家代码
    ///   - complete: 回调
    public func getPhoneSMSCode(phone: String, captcha: String, captchaId: String, phoneCode: String, complete: @escaping (String?, Error?) -> Void)

    /// 找回密码
    ///
    /// - Parameters:
    ///   - token: token
    ///   - code: 验证码
    ///   - password: 密码
    ///   - complete: 回调
    public func findPassword(token: String, code: String, password: String, complete: @escaping (Bool, Error?) -> Void)

    /// 找回密码短信验证码
    ///
    /// - Parameters:
    ///   - phone: 手机号
    ///   - captcha: captcha
    ///   - captchaId: captchaId
    ///   - phoneCode: 国家代码
    ///   - complete: 回调find
    public func findPhoneSMSCode(phone: String, captcha: String, captchaId: String, phoneCode: String, complete: @escaping (String?, Error?) -> Void)

    /// 找回密码邮箱验证码
    ///
    /// - Parameters:
    ///   - email: 邮箱
    ///   - captcha: captcha
    ///   - captchaId: captchaId
    ///   - complete: 回调
    public func getEmailCode(email: String, captcha: String, captchaId: String, complete: @escaping (String?, Error?) -> Void)

    /// 注册
    ///
    /// - Parameters:
    ///   - name: 名字
    ///   - code: 验证码
    ///   - password: 密码
    ///   - token: token
    ///   - complete: 回调
    public func registerBy(name: String, code: String, password: String, token: String, complete: @escaping UserRequestComplete)

    /// 注册短信验证码
    ///
    /// - Parameters:
    ///   - phone: 手机号
    ///   - captcha: captcha
    ///   - captchaId: captchaId
    ///   - phoneCode: 国家代码
    ///   - complete: 回调
    public func getRegisterPhoneSMSCode(phone: String, captcha: String, captchaId: String, phoneCode: String, complete: @escaping (String?, Error?) -> Void)

    /// 获取邮箱验证码
    ///
    /// - Parameters:
    ///   - email: 邮箱
    ///   - complete: 回调
    public func sendEmailCode(email: String, complete: @escaping (String?, Error?) -> Void)

    /// 修改密码
    ///
    /// - Parameters:
    ///   - oldPassword: 旧密码
    ///   - newPassword: 新密码
    ///   - complete: 回调
    public func changePassword(oldPassword: String, newPassword: String, complete: @escaping (Bool, Error?) -> Void)

    /// 提交KYC
    ///
    /// - Parameters:
    ///   - params: 参数
    ///   - complete: 回调
    public func createKyc(params: F1Passport.KYCCreateParams, complete: @escaping (F1Passport.KYCStateModel?, Error?) -> Void)

    /// 更新KYC
    ///
    /// - Parameters:
    ///   - params: 参数
    ///   - complete: 回调
    public func updateKyc(params: F1Passport.KYCCreateParams, complete: @escaping (F1Passport.KYCStateModel?, Error?) -> Void)

    /// 获取KYC信息
    ///
    /// - Parameters:
    ///   - params: 参数
    ///   - complete: 回调
    public func getKycProfile(complete: @escaping (F1Passport.KYCProfile?, Error?) -> Void)

    /// KYC上传文件
    ///
    /// - Parameters:
    ///   - params: 参数
    ///   - complete: 回调
    public func uploadKycFile(data: Data, complete: @escaping (F1Passport.KYCFile?, Error?) -> Void)

    /// 获取用户信息
    ///
    /// - Parameter complete: 回调
    public func getUserInfo(complete: @escaping UserRequestComplete)

    /// 获取关注交易对
    ///
    /// - Returns: Single
    public func getFavTradePair() -> RxSwift.PrimitiveSequence<RxSwift.SingleTrait, Moya.Response>

    /// 收藏交易对
    ///
    /// - Parameters:
    ///   - symbols: symbol数组
    ///   - complete: 回调
    public func favTradePairs(symbols: [String], complete: @escaping (Bool, Error?) -> Void)

    /// 取消收藏交易对
    ///
    /// - Parameters:
    ///   - symbols: symbol数组
    ///   - complete: 回调
    public func unFavSymbols(symbols: [String], complete: @escaping (Bool, Error?) -> Void)
    
    /// 获取验证码图片url
    ///
    /// - Parameters:
    ///   - id: id
    public func getCaptchaImage(id: String) -> String
}
```

