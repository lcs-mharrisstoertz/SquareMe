//
//  RootsView.swift
//  SquareMe
//
//  Created by Morgan Harris-Stoertz on 2023-02-02.
//

import SwiftUI

struct RootsView: View {
    
    //STEP TWO
    
    //MARK: stored properties
    
    //input user gives us
    @State var inputGiven = ""
    
    //STEP THREE
    
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
    
    //take the input and format it
    var formattedOutputValue: String{
        //see if we have a number to work with
        guard let numberToSquare = inputGivenAsOptionalDouble else{
            return "Please enter a numeric value"
        }
        //we do have a number to square so square it
        let squaredNumber = numberToSquare * numberToSquare
        
        //STEP FOUR
        
        //return formatted number
        return squaredNumber.formatted(.number.precision(.fractionLength(1)))
        
    }
    
    var body: some View {
        NavigationView{
            VStack{
                
                //STEP ONE
                TextField("Enter a number...", text: $inputGiven)
                    .font(.largeTitle)
                    .padding()
                
                Text(formattedOutputValue)
                    .font(.largeTitle)
                
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
