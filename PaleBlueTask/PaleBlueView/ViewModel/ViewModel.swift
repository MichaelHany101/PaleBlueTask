//
//  ViewModel.swift
//  PaleBlueTask
//
//  Created by Michael Hany on 26/10/2024.
//

import Foundation

class PhotosViewModel : ObservableObject{
    
    var service : NetworkService = NetworkService()
    
    @Published var hits: [HitModel] = []
    
    @Published var currentPage: Int = 1
    
    @Published var total: Int = 0
        
    func getPhotos() async {
        if let url = URL(string: baseURL + key + "&\(page)=\(currentPage)" + "&\(perPage)=16"){
            service.getData(url: url) { (response: Result<PhotosModel, Error>) in
                switch response {
                case .success(let success):
                    print("Michael \(success)")
                    DispatchQueue.main.async {
                        self.total = success.total ?? 0
                        self.hits.append(contentsOf: success.hits)
                    }
                case .failure(let failure):
                    print(failure.localizedDescription)
                }
            }
        }
    }
    
    init() {
        Task.init{
            await getPhotos()
        }
    }
}
