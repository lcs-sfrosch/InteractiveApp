//
//  InteractiveAppView.swift
//  InteractiveApp
//
//  Created by Sebastian Frosch on 09.02.23.
//


import SwiftUI

struct InteractiveAppView: View {
    @State private var m: String = ""
    @State private var a: String = ""
    @State private var fnet: String = ""
    
    var body: some View {
        VStack{
            Image("ForceEquation")
                .scaledToFit()
            
            Text("m * a = fnet")
                .font(.largeTitle)
            
            HStack {
                TextField("m", text: $m)
                    .padding()
                    .background(Color(.gray))
                    .cornerRadius( 5)
                
                TextField("a", text: $a)
                    .padding()
                    .background(Color(.gray))
                    .cornerRadius(5)
                    
                TextField("fnet", text: $fnet)
                    .padding()
                    .background(Color(.gray))
                    .cornerRadius(5)
            }
            .padding( 50)
            
            Button(action: calculate, label: {
                Text("Calculate")
            })
            .padding()
            .background(Color.gray)
            .foregroundColor(.white)
            .cornerRadius( 5.0)
        }
    }
    
    func calculate() {
        if let mValue = Double(m),let aValue = Double(a)
        {
            let fnetValue = mValue * aValue
            fnet = String(fnetValue)
        }
        
        else if let mValue = Double(m),let fnetValue = Double(fnet) {
            let aValue = fnetValue / mValue
            a = String(aValue)
        }
        
        else if let aValue = Double(a),let fnetValue = Double(fnet)
        {
            let mValue = fnetValue / aValue
            m = String(mValue)
        }
    }
    
    
}


struct InteractiveAppView_Previews: PreviewProvider {
    static var previews: some View {
        InteractiveAppView()
    }
}

