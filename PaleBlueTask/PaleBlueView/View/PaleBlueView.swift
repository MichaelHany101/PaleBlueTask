//
//  PaleBlueView.swift
//  PaleBlueTask
//
//  Created by Michael Hany on 27/10/2024.
//

import SwiftUI

struct PaleBlueView: View {
    
    @ObservedObject var viewModel = PhotosViewModel()
    
    var body: some View {
        ZStack {
            Color(.systemGray6)
                .ignoresSafeArea()
            
            VStack(alignment: .leading) {
                Text("Photos")
                    .font(.system(size: 40, weight: .heavy))
                    .padding(.top, 53)
                    .padding(.leading, 19)
                
                ScrollView {
                    LazyVGrid(columns: [GridItem(.flexible()), GridItem(.flexible())]) {
                        
                        ForEach (Array(viewModel.hits.enumerated()),id: \.offset) {index, item in
                            PhotoGrid(imageLink: item.largeImageURL, name: item.user, id: "\(item.id)")
                                .padding(.all, 8)
                                .onAppear{
                                    if (viewModel.hits.count < viewModel.total && index == viewModel.hits.count - 1) {
                                        viewModel.currentPage += 1
                                        Task.init {
                                            await viewModel.getPhotos()
                                        }
                                    }
                                }
                        }

                    }
                }
                .padding()
            }
        }
    }
}

#Preview {
    PaleBlueView()
}
