## WalletAPI
```
public class WalletService {
    /// 获取平台支持资产
    ///
    /// - Parameter completion: 获取资产
    public func getSupportAssets(completion: @escaping (Alamofire.Result<[F1Exchange.Asset]>) -> Void)

    /// 获取用户所有资产
    ///
    /// - Parameter completion: 获取资产
    public func getUserAssets(completion: @escaping (Alamofire.Result<[F1Exchange.Asset]>) -> Void)

    /// 通过id获取单个币的资产
    ///
    /// - Parameters:
    ///   - id: assetId
    ///   - completion: 通过id获取单个币的资产
    public func getUserAsset(id: String, completion: @escaping (Alamofire.Result<F1Exchange.Asset>) -> Void)

    /// 获取所有交易记录
    ///
    /// - Parameter completion: 获取所有交易记录
    public func getSnapshots(cursor: String, limit: Int, order: String, completion: @escaping (Alamofire.Result<F1Exchange.PageList<F1Exchange.Snapshot>>) -> Void)

    /// 通过AssetId获取单个币的所有交易记录
    ///
    /// - Parameter completion: 获取所有交易记录
    public func getSnapshots(assetId: String, cursor: String, limit: Int, order: String, completion: @escaping (Alamofire.Result<F1Exchange.PageList<F1Exchange.Snapshot>>) -> Void)

    /// 资产转出
    ///
    /// - Parameters:
    ///   - info: 转出信息
    ///   - completion: 资产转出
    public func withdraw(info: F1Exchange.WithdrawInfo, completion: @escaping (Alamofire.Result<F1Exchange.Snapshot>) -> Void)
   }

```

# TradeAPI
```
public class TradeServices {
    /// 获取深度数据
    ///
    /// - Parameters:
    ///   - symbol: symbol
    ///   - limit: 限制
    ///   - completion: 获取深度数据
    public func getDepthData(symbol: String, limit: Int = default, completion: @escaping (Result<DepthModel?>) -> Void)

    /// 绑定socket
    public func bindSocketDepth()

    /// 获取AssetID
    ///sumbol
    /// - Parameter symbol: symbol
    /// - Returns: 获取AssetID
    public func getAssetId(symbol: String) -> String?

    /// 下单
    ///
    /// - Parameters:
    ///   - order: 订单信息
    ///   - completion: 下单
    public func makeOrder(order: OrderWrap, completion: @escaping (Result<Bool>) -> Void)

    /// 撤单
    ///
    /// - Parameters:
    ///   - traceId: 交易ID
    ///   - completion: 撤单
    public func cancleOrder(traceId: String, completion: @escaping (Result<Bool>) -> Void)

    /// 获取交易历史
    /// - Parameters:
    ///   - symbol: symbol
    ///   - state: state
    ///   - cursor: cursor
    ///   - limit: limit
    ///   - completion: 回调
    public func getTradeHistory(symbol: String, state: String, cursor: String, limit: Int = default, completion: @escaping (Result<PageList<Order>>) -> Void)

    /// 获取交易记录
    ///
    /// - Parameters:
    ///   - symbol: symbol
    ///   - limit: limit
    ///   - completion: 回调
    public func getTrades(symbol: String, limit: Int = default, completion: @escaping (Result<[TradeRecord]>) -> Void)

}

```