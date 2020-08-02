//
//  ContentView.swift
//  Dicee_SwiftUI
//
//  Created by Le Minh Khoi on 8/2/20.
//  Copyright © 2020 Le Minh Khoi. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State var leftDiceNumber = 1
    @State var rightDiceNumber = 1
    
    func randomDice() {
        self.leftDiceNumber = Int.random(in: 1..<7)
        self.rightDiceNumber = Int.random(in: 1...6)
    }
    
    var body: some View {
        ZStack {
            Color.red
                .edgesIgnoringSafeArea(.all)
            VStack {
                AppBar(title: "Dicee")
                Spacer()
                HStack {
                    Image("dice\(leftDiceNumber)")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .gesture(
                            TapGesture().onEnded() {
                                self.randomDice()
                            }
                        )
                    
                    Image("dice\(rightDiceNumber)")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .gesture(TapGesture().onEnded() {
                            self.randomDice()
                        })
                }
                .padding(.all, 10.0)
                Spacer()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
