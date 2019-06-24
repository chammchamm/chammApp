//
//  NetWorker.swift
//  chammApp
//
//  Created by Jennifer Lin on 2019/6/24.
//
//

import Foundation

protocol AsyncReponseDelegate {
    func receviedReponse(_ sender: AsyncRequestWorker, responseString : String, tag : Int) -> Void
}

class AsyncRequestWorker {
    
    var reponseDelegate : AsyncReponseDelegate?
    
    func getResponse(from:String, tag:Int) -> Void {
        
        let url = URL(string: from)!
        let request = URLRequest(url: url)
        
        let config = URLSessionConfiguration.default
        
        let session = URLSession(configuration: config)
        
        let task = session.dataTask(with: request, completionHandler: { (data, response, error) in
            
            let httpResponse = response as! HTTPURLResponse
            let statusCode = httpResponse.statusCode
            
            
            if( 200 == statusCode){
                
                let dataString = NSString(data: data!, encoding: String.Encoding.utf8.rawValue)
                let responseString = String( dataString! )

                self.reponseDelegate?.receviedReponse(self, responseString: responseString, tag: tag)
            }
            
            
        })
        task.resume()
    }
}
