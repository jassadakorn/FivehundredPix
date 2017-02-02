//
//  FivehundredRouter.swift
//  FivehundredPix
//
//  Created by Jassadakorn Ketkaew on 2/2/2560 BE.
//  Copyright © 2560 BE Jassadakorn Ketkaew. All rights reserved.
//

import UIKit
import Alamofire

enum Router: URLRequestConvertible {
    static let baseURLString = "https://api.500px.com/v1"
    static var OAuthToken: String?
    
    case getPhotos([String: AnyObject])

    
    var method: Alamofire.HTTPMethod {
        switch self {
        case .getPhotos:
            return .get
        }
    }
    
    var path: String {
        switch self {
        case .getPhotos:
            return "/Photos"
        }
    }
    
    func asURLRequest() throws -> URLRequest {
        let url = URL(string: Router.baseURLString)!
        var urlRequest = URLRequest(url: url.appendingPathComponent(path))
        urlRequest.httpMethod = method.rawValue
        
        if let token = Router.OAuthToken {
            urlRequest.setValue("Bearer \(token)", forHTTPHeaderField: "Authorization")
        }
        
        
        switch self {
        case .getPhotos(let parameters):
            return try Alamofire.URLEncoding.default.encode(urlRequest, with: parameters)
        default:
            return urlRequest
        }
    }
}
