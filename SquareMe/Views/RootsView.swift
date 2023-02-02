//
//  RootsView.swift
//  SquareMe
//
//  Created by Morgan Harris-Stoertz on 2023-02-02.
//

import SwiftUI

struct RootsView: View {
    
    //MARK: stored properties
    
    //input user gives us
    @State var inputGiven = ""
    
    //MARK: computed properties
    //convert input given into an optional double
    var inputGivenAsOptionalDouble: Double?{
        
        //attempt to create the optional Double
        guard let inputGivenAsDouble = Double(inputGiven) else {
            //user gave bad input and we cannot convert to a double
            return nil
        }
        //we have an actual double so return it
        return inputGivenAsDouble
    }
    

    
    var body: some View {
        NavigationView{
            VStack{
                TextField("Enter a number...", text: $inputGiven)
                    .font(.largeTitle)
                    .padding()
                
            }
            .navigationTitle("Square me")
        }
    }
}

struct RootsView_Previews: PreviewProvider {
    static var previews: some View {
        RootsView()
    }
}
