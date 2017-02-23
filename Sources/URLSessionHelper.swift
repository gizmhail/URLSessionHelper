import Foundation

// MARK: Bug fix for missing, on Linux, "shared" property
public extension URLSession {
    #if os(Linux)
    static let cliShared = URLSession(configuration: URLSessionConfiguration.default, delegate: nil, delegateQueue: OperationQueue())
    #else
    static let cliShared = shared
    #endif
}

// MARK: JSON helper method
public extension URLSession {
    public func jsonTask(with url: URL, completionHandler: @escaping (Any?, URLResponse?, Error?) -> ()) -> URLSessionDataTask {
        let task = dataTask(with: url) { (data, response, error) in
            if let data = data {
                do {
                    let json = try JSONSerialization.jsonObject(with: data, options: [])
                    completionHandler(json, response, nil)
                } catch {
                    completionHandler(nil, response, error)
                }
            } else {
                completionHandler(nil, response, error)
            }
        }
        return task
    }
}
            
