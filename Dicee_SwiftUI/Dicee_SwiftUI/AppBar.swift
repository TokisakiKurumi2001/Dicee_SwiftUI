//
//  AppBar.swift
//  Dicee_SwiftUI
//
//  Created by Le Minh Khoi on 8/2/20.
//  Copyright © 2020 Le Minh Khoi. All rights reserved.
//

import SwiftUI

struct AppBar: View {
    var title : String = ""
    var body: some View {
        VStack {
            Text("\(title)")
                .font(.title)
                .foregroundColor(.white)
            Rectangle()
                .frame(height:2)
                .foregroundColor(Color.gray)
                .shadow(radius: 10)
        }
    }
}

struct AppBar_Previews: PreviewProvider {
    static var previews: some View {
        AppBar(title: "Dicee")
    }
}
