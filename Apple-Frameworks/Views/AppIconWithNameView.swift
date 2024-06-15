//
//  AppIconWithNameView.swift
//  Apple-Frameworks
//
//  Created by Bholanath Barik on 02/06/24.
//

import SwiftUI

struct AppIconWithNameView: View {
    let appIcon: String;
    let appName: String;
    
    var body: some View {
        VStack {
            Image(appIcon)
                .resizable()
                .scaledToFit()
                .frame(width: 80 , height: 80)
            
            Text(appName)
                .font(.title3)
                .fontWeight(.semibold)
                .scaledToFit()
                .minimumScaleFactor(0.6)
        }
    }
}

#Preview {
    AppIconWithNameView(appIcon: "app-clip", appName: "App Clips")
}
