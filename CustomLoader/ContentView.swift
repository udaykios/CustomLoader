//
//  ContentView.swift
//  CustomLoader
//
//  Created by UDAY on 01/09/2023.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var loaderVM = LoaderViewModel.shared
    var body: some View {
        
        ZStack{
            VStack{
                Text("Test Loader")
                
                Button {
                    withAnimation {
                        loaderCheck()
                    }
                } label: {
                    Text("Tap")
                        .padding()
                }
            }.frame(width: UIScreen.main.bounds.size.width,height: UIScreen.main.bounds.size.height)
                .background(Color.red)
            
            if loaderVM.showLoader {
                LoaderView(accentColor: .white)
            }
        }.onAppear(perform: loaderCheck)
    }
    
    func loaderCheck() {
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.5){
            LoaderViewModel.shared.showLoader = true
        }
        DispatchQueue.main.asyncAfter(deadline: .now() + 5){
            LoaderViewModel.shared.showLoader = false
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
