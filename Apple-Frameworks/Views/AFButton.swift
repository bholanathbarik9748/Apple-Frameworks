//
//  AFButton.swift
//  Apple-Frameworks
//
//  Created by Bholanath Barik on 02/06/24.
//

import SwiftUI

struct AFButton: View {
    let btnText: String;
    
    var body: some View {
        Text(btnText)
            .frame(width: 300 , height: 50)
            .foregroundColor(.white)
            .font(.system(size: 20, weight: .bold))
            .background(.red)
            .cornerRadius(10)
    }
}

#Preview {
    AFButton(btnText: "Learn More")
}
