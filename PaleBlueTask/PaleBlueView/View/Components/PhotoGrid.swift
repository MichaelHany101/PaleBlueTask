//
//  PhotoGrid.swift
//  PaleBlueTask
//
//  Created by Michael Hany on 26/10/2024.
//

import SwiftUI

struct PhotoGrid: View {
    
    var imageLink : String = "https://cdn.pixabay.com/photo/2013/07/13/09/46/basketball-155997_150.png"
    var name : String = "Name"
    var id : String = "123456"
    
    var body: some View {
        HStack {
            VStack {
                AsyncImage(url: URL(string: imageLink)) { image in
                    image
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .clipShape(RoundedRectangle(cornerRadius: 8))
                        .frame(width: 84, height: 84)
                        .padding(.all, 8)
                        
                } placeholder: {
                    ProgressView()
                        .frame(maxWidth: 84, maxHeight: 84)
                }
            }
            
            VStack{
                VStack(alignment: .leading) {
                    Text("Author:")
                        .font(.system(size: 14, weight: .bold))
                    Text(name)
                        .font(.system(size: 14, weight: .bold))
                }
                .padding(.bottom, 12)
                
                VStack(alignment: .leading) {
                    Text("Photo ID:")
                        .font(.system(size: 10))
                    Text(id)
                        .font(.system(size: 10))
                }
            }
            
        }
        .padding(.horizontal, 12)
        .background(Color.white)
        .clipShape(RoundedRectangle(cornerRadius: 8))
        .frame(width: 191, height: 100)
    }
}

#Preview {
    PhotoGrid()
}
