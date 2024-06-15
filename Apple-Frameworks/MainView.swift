//
//  ContentView.swift
//  Apple-Frameworks
//
//  Created by Bholanath Barik on 01/06/24.
//

import SwiftUI

struct MainView: View {
    @StateObject var ModelView = FrameworksGridViewModel();
    
    let columns: [GridItem] = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible()),
    ]
    
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: columns) {
                    ForEach(MockData.frameworks){ currentFramewordks in
                        AppIconWithNameView(
                            appIcon: currentFramewordks.imageName,
                            appName: currentFramewordks.name
                        )
                        .padding()
                        .onTapGesture {
                            ModelView.FrameWorksView = currentFramewordks;
                        }
                    }
                }
            }
            .navigationTitle("🍎 Frameworks")
            .sheet(isPresented: $ModelView.isShowFrameworkVisible) {
                FrameworksDetailView(
                    Frameworks: ModelView.FrameWorksView ?? MockData.frameworks[0], isShowFrameworkVisible: $ModelView.isShowFrameworkVisible
                )
            }
        }
    }
}

#Preview {
    MainView()
        .preferredColorScheme(/*@START_MENU_TOKEN@*/.dark/*@END_MENU_TOKEN@*/)
}



