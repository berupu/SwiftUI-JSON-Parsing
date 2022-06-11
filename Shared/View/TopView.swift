//
//  TopView.swift
//  SwiftUI JSON Parsing
//
//  Created by Ashraful Islam Rupu on 6/11/22.
//

import SwiftUI

struct TopView: View {
    @Environment(\.presentationMode) var presentationMode
    var icon : String
    
    var body: some View {
        HStack {
            
            Button {
                if icon == "arrow.left" {
                    presentationMode.wrappedValue.dismiss()
                }
                
            } label: {
                Image(systemName: icon)
                    .foregroundColor(.white)
                    .padding()
            }

            Spacer()
            VStack {
                Image(systemName: "car")
                    .foregroundColor(.white)
                Text("Beepz")
                    .font(.system(size: 30))
                    .foregroundColor(.white)
                    .bold()
            }
            .padding(.trailing, getScreen().width * 0.38)
        }
        .frame(maxWidth: .infinity)
        //.background(.red)
    }
}

struct TopView_Previews: PreviewProvider {
    static var previews: some View {
        TopView(icon: "")
    }
}
