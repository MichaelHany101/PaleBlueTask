//
//  NetworkService.swift
//  PaleBlueTask
//
//  Created by Michael Hany on 26/10/2024.
//

import Foundation

class NetworkService {
    
    func getData<T: Decodable>(url: URL, completion: @escaping (Result<T, Error>) -> Void) {
            var request = URLRequest(url: url)
            request.httpMethod = "GET"            
            URLSession.shared.dataTask(with: request) { data, response, error in
                if let error = error {
                    completion(.failure(error))
                } else if let data = data {
                    do {
                        let decoder = JSONDecoder()
                        let decodedObject = try decoder.decode(T.self, from: data)
                        completion(.success(decodedObject))
                    } catch {
                        completion(.failure(error))
                    }
                } else {
                    completion(.failure(NSError(domain: "NetworkService", code: 0, userInfo: [NSLocalizedDescriptionKey: "Invalid response"])))
                }
            }.resume()
    }
}
