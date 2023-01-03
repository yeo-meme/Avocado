//
//  RecipeModel.swift
//  Abocado
//
//  Created by yeomim Kim on 2023/01/03.
//

import SwiftUI

// MARK: - Recipe Model

struct Recipe : Identifiable {
    var id = UUID()
    var title : String
    var headline : String
    var image : String
    var rating : Int
    var serves : Int
    var preparation : Int
    var cooking : Int
    var instructions : [String]
    var ingredients : [String]
    
}
