// Package: WeSplit2,
// File name: bbbb.swift,
// Created by David Herrero on 30/10/2019.

import SwiftUI

struct ContentView: View {
    
    
    
    @State private var checkAmount = ""
    @State private var numberOfPeople = 2
    @State private var numberOfPeopleString = ""
    @State private var tipPercentage = 2
    
    let tipPercentages = [10,15,20,25,0]
    
    
    
    var totalPerPerson: Double {
        
        //let stringValue = "0.5"
        //let doubleValue = Double(stringValue)
        
        let orderAmount = Double(checkAmount) ?? 0
        let tipSelection = Double(tipPercentages[tipPercentage])
        let tipValue = orderAmount / 100 * tipSelection
        let grandTotal = orderAmount + tipValue
        let peopleCount = Double((Double(numberOfPeopleString) ?? 0) + 2)
        let amountPerPerson = grandTotal / peopleCount
        
        
        
        
        return amountPerPerson
    }
    
    var totalAmountForTheCheck: Double {
        
        let orderAmount = Double(checkAmount) ?? 0
        let tipSelection = Double(tipPercentages[tipPercentage])
        let tipValue = orderAmount / 100 * tipSelection
        
        let totalAmount = Double(orderAmount * tipValue)
        
        return totalAmount
        
    }
    
    var body: some View {
        
        NavigationView{
            
            Form{
                Section{
                    TextField("Amount", text: $checkAmount).keyboardType(.decimalPad)
                    
                    //                    Picker("Number of people", selection: $numberOfPeople){
                    //                        ForEach(2 ..< 100){
                    //                            Text("\($0) people")
                    //                        }
                    
                    TextField("Number of people: ", text: $numberOfPeopleString).keyboardType(.decimalPad)
                    
                }
                Section{
                    Text("How much tip do you want to leave?")
                    
                    Picker("Tip pecentage", selection: $tipPercentage){
                        ForEach(0 ..< tipPercentages.count){
                            Text("\(self.tipPercentages[$0])%")
                        }
                    }.pickerStyle(SegmentedPickerStyle())
                }
                Section{
                    Text("Amount per person:")
                    Text("$\(totalPerPerson, specifier: "%.2f")")
                }
                Section{
                    Text("Total amount:")
                    Text("$\(totalAmountForTheCheck, specifier: "%.2f")")
                }
            }.navigationBarTitle("WeSplit")
            
        }
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
