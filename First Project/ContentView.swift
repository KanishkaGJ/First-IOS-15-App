//
//  ContentView.swift
//  First Project
//
//  Created by Kanishka Jayarathna on 2023-01-14.
//

import SwiftUI

struct ContentView: View {
    
    @State var total = "100"
    @State var tipPercent = 15.0
    
    var body: some View {
        VStack {
//            Image(systemName: "globe")
//                .imageScale(.large)
//                .foregroundColor(.accentColor)
    
            Text("Tip Calculator")
                .font(.largeTitle)
                .fontWeight(.bold)
                .padding()
            HStack {
                Text("Rs.")
                TextField("Amount", text: $total)
                
            }
            .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            HStack{
                Slider(value: $tipPercent, in: 1...30, step: 1.0)
                Text("\(Int(tipPercent))%")
            }
            .padding()
            
            if let totalNum = Double(total){
                Text("Tip Amount: Rs.\(totalNum * tipPercent / 100.0, specifier: "%0.2f")")
            }
            else{
                Text("Please enter a numberical value")
            }
            
        }
        
        
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
