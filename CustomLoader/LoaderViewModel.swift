//
//  LoaderViewModel.swift
//  CustomLoader
//
//  Created by UDAY on 01/09/2023.
//

import Foundation
import SwiftUI

class LoaderViewModel : ObservableObject {
    
    static var shared = LoaderViewModel()
    @Published var showLoader = false
    
}
