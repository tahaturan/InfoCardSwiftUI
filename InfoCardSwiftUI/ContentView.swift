//
//  ContentView.swift
//  InfoCardSwiftUI
//
//  Created by Taha Turan on 31.08.2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(red: 0.09, green: 0.63, blue: 0.52)
                .edgesIgnoringSafeArea(.all)
            VStack {
                Image(K.Images.myProfileImage)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 150, height: 150 , alignment: .top)
                    .clipShape(Circle())
                    .overlay(
                        Circle().stroke(Color.white , lineWidth: 5)
                    )
                
                Text("Taha Turan")
                    .font(Font.custom(K.Fonts.pacificoFontStyle, size: 40))
                    .bold()
                    .foregroundColor(.white)
                Text("IOS Developer")
                    .foregroundColor(.white)
                    .font(.system(size: 25))
                Divider()
                
                InfoView(imageName: "phone.fill", text: "+90 123 456 789")
                InfoView(imageName: "envelope.fill", text: "tahaaturann16@gmail.com")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}



