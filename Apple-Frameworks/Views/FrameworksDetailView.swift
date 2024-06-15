//
//  FrameworksDetailView.swift
//  Apple-Frameworks
//
//  Created by Bholanath Barik on 02/06/24.
//

import SwiftUI

struct FrameworksDetailView: View {
    let Frameworks : Framework
    @StateObject var ViewModel = FrameworksGridViewModel();
    @Binding var isShowFrameworkVisible : Bool
    @State private var isShowSafariView = false;
 
    
    var body: some View {
        VStack {
            CloseFrameWorkModel(isShowFrameworkVisible: $isShowFrameworkVisible)
        
            Spacer()
            
            AppIconWithNameView(
                appIcon: Frameworks.imageName,
                appName: Frameworks.name)
            
            Text(Frameworks.description)
                .font(.body)
                .padding()
            
            Spacer()
            
            Button {
                isShowSafariView = true;
            }label: {
                AFButton(btnText: "Learn More")
            }
            .fullScreenCover(isPresented: $isShowSafariView, content: {
                SafariView(url: URL(string: Frameworks.urlString) ?? URL(string: "www.google.com")!)
            })
            
            Spacer()
        }
    }
}

#Preview {
    FrameworksDetailView(
        Frameworks : MockData.frameworks[0],
        isShowFrameworkVisible : .constant(false)
    )
}
