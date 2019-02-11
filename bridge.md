# HTT JS Bridge

因为Fox.ONE OpenAPI 和 GateWayAPI 需要对请求进行签名，所以HTT客户端需要提供给H5页面（Web容器）一个JSBridge 用于H5页面访问后台时的令牌。
令牌里包含了签名，不签名或者签名错误则请求失败。

具体签名生成 Token 操作如下:    

1. H5页面调用 HTT 的本地客户端提供的 JSBridge    
2. HTT客户端调用 F1Passport SDK (iOS) CryptoTool 工具，传入参数 生成 JWT Token    
3. HTT客户端使用 JSBridge 调用Web容器，传递参数，H5页面使用HTT传入添加Query 的 URL 和 Token 发送请求    

H5页面请求的URL必须为HTT客户端提供的URL。

## JSBridge 的API 定义

在JS端应该给HTT客户端传入 
1. 请求的URI
2. 方法
3. body(可选)

```
eg.
1. https://openapi.fox.one/api/transcation
2. get
```

HTT客户端应该给H5端传入
1. 被添加过签名之后的URL
2. token （用于请求）

```
eg.   
1. https://openapi.fox.one/api/transcation?_ts=122222&_nonce=xxx-xx-xxx
2. xxxx.xxxx.xxx
```

## 签名方式
签名时需要传入的是Path加上时间戳_ts和_nonce

比如请求的path为 https://openapi.fox.one/api/transcation

签名的 应该为 url为 /api/transcation?_ts=122222&_nonce=xxx-xx-xxx

生成签名的token 需要传入
1. 签名的url
2. 请求方法
3. http请求的body（可选）
4. secret
5. key

### 参考

```Swift
  var newRequest = request
  let timeStamp = Int(Date().timeIntervalSince1970)
  let uuid = UUID().uuidString
  let urlString = request.url?.absoluteString ?? ""
  // 给Path添加时间戳和UUID
  let query = urlString.contains("?") ? "&_ts=\(timeStamp)&_nonce=\(uuid)" : "?_ts=\(timeStamp)&_nonce=\(uuid)"
  newRequest.url = URL(string: urlString + query)
  // 当用户登陆时才会有签名用的Key和Secret
  if let session = AccountManager.shared.user?.session {
  //生成需要签名的部分
      var url = "/api\(target.path)?_ts=\(timeStamp)&_nonce=\(uuid)"
      if let path = (urlString + query).split(separator: "?").last {
          url = "/api\(target.path)?\(path)"
      }
      // 使用SDK生成签名的token
      let token = CryptoTool.getJwt(url: url, method: target.method.rawValue, body: request.httpBody, secret: session.secret, key: session.key)
      // 在请求头上添加 Token
      newRequest.setValue("Bearer \(token)", forHTTPHeaderField: "Authorization")
  }
  return newRequest
```

