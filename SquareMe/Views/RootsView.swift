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

    
    var body: some View {
        NavigationView{
            VStack{
                TextField("5.5", text: $inputGiven)
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
