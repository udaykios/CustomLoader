//
//  ContentView.swift
//  CustomLoader
//
//  Created by UDAY on 01/09/2023.
//

import SwiftUI

struct LoaderView: View {
    var body: some View {
        
        ZStack{
            Color.black.opacity(0.25).ignoresSafeArea()
            VStack{
                ProgressView()
                    .controlSize(.large)
                    .tint(.cyan)
                    .frame(width: 50, height: 50, alignment: .center)
                    .aspectRatio(contentMode: .fill)
                Text("Loading...")
                    .bold()
                    .foregroundColor(.cyan)
            }.frame(width: 140,height: 120)
                .cornerRadius(16)
                .background(.ultraThinMaterial)
                .shadow(color: Color.black.opacity(0.15), radius: 8, x: 5, y: 5)
                .cornerRadius(10)
        }
    }
}

struct LoaderView_Previews: PreviewProvider {
    static var previews: some View {
        LoaderView()
    }
}

