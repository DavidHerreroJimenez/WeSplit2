// Package: WeSplit2,
// File name: bbbb.swift,
// Created by David Herrero on 30/10/2019.

import SwiftUI

struct ContentView: View {
    
    @State var tapCount = 0
    
    var body: some View {
        
        VStack{
            
            NavigationView{

                        Text("lalal").navigationBarTitle("SwiftUI", displayMode: .inline)
            }
            
            
            
            Button("Tap Count: \(tapCount)"){
                self.tapCount += 1
            }
            
//            Form{
//                
//                Text("My first app").font(.title)
//                Text("Tap the button below").font(.subheadline)
//                TextField("Enter your name")
//                Text("lslalas")
//            }
            

        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
