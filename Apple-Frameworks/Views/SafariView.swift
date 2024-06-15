//
//  SafariView.swift
//  Apple-Frameworks
//
//  Created by Bholanath Barik on 12/06/24.
//

import Foundation
import SwiftUI
import SafariServices

struct SafariView : UIViewControllerRepresentable {
    let url : URL;
    func makeUIViewController(context: UIViewControllerRepresentableContext<SafariView>) -> some SFSafariViewController {
        SFSafariViewController(url: url);
    }
    
    func updateUIViewController(_ uiViewController: UIViewControllerType, 
                                context: UIViewControllerRepresentableContext<SafariView>) {
        
    }
}
