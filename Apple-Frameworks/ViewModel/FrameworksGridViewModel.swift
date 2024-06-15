//
//  FrameworksGridViewModel.swift
//  Apple-Frameworks
//
//  Created by Bholanath Barik on 05/06/24.
//

import SwiftUI

final class FrameworksGridViewModel : ObservableObject {
    var FrameWorksView : Framework? {
        didSet {
            isShowFrameworkVisible = true;
        }
    }
    
    @Published var isShowFrameworkVisible = false;
}
