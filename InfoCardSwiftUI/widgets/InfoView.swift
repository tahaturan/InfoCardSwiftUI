//
//  InfoView.swift
//  InfoCardSwiftUI
//
//  Created by Taha Turan on 31.08.2023.
//

import SwiftUI

struct InfoView: View {
    let imageName:String
    let text:String
    var body: some View {
        RoundedRectangle(cornerRadius: 20)
            .frame(height: 40)
            .foregroundColor(.white)
            .padding(.all)
            .overlay(HStack {
                
                Image(systemName: imageName)
                    .foregroundColor(.green)
                    .padding(.trailing, 5.0)
                Text(text)
                    .foregroundColor(.black)
            }
            )
    }
}

struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView(imageName: "phone", text: "Test")
            .previewLayout(.sizeThatFits)
    }
}
