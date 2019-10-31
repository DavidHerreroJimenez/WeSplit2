// Package: WeSplit2,
// File name: bbbb.swift,
// Created by David Herrero on 30/10/2019.

import SwiftUI

struct ContentView: View {
    
    @State var tapCount = 0
    @State private var myName = ""
    let students = ["Harry", "Hermione", "Ron"]
    
    @State private var selectedStudent = 0
    
    var body: some View {
        
        VStack{
            Picker("Select your student", selection: $selectedStudent){
                ForEach(0 ..< students.count) {
                    Text(self.students[$0])
                }
            }
            
            Text("You chose: Student # \(students[selectedStudent])")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
