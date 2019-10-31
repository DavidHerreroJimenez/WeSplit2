// Package: WeSplit2,
// File name: bbbb.swift,
// Created by David Herrero on 30/10/2019.

import SwiftUI

struct ContentView: View {
    
    @State var tapCount = 0
    @State private var myName = ""
    
    var body: some View {
        
        VStack{
            
            NavigationView{
                
                Button("Tap Count: \(tapCount)"){
                    self.tapCount += 1
                }
      
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
