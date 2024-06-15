//
//  CloseFrameWorkModel.swift
//  Apple-Frameworks
//
//  Created by Bholanath Barik on 02/06/24.
//

import SwiftUI

struct CloseFrameWorkModel: View {
    @Binding var isShowFrameworkVisible : Bool
    
    var body: some View {
        HStack {
            Spacer()
            
            Button {
                isShowFrameworkVisible = false;
            }label: {
                Image(systemName: "xmark")
                    .foregroundColor(Color(.label))
                    .imageScale(/*@START_MENU_TOKEN@*/.medium/*@END_MENU_TOKEN@*/)
                    .frame(width: 40,height: 40)
            }
        }
        .padding()
    }
}

#Preview {
    CloseFrameWorkModel(isShowFrameworkVisible: .constant(false))
}
