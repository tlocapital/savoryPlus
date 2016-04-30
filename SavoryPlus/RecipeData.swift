//
//  RecipeData.swift
//  SavoryPlus
//
//  Created by 陳正昇 on 2016/4/25.
//  Copyright © 2016年 SavoryPlus. All rights reserved.
//

import Foundation

class RecipeData {
    
    var title = ""
    var description = ""
    var image = ""
    
    init(title: String, description: String, image: String) {
        self.title = title
        self.description = description
        self.image = image
    }
    
    static func createFakeDatas() -> [RecipeData] {
        return [
            RecipeData(title: "Test Title 1", description: "Test Description 1, Test Description 1, Test Description 1, Test Description 1, Test Description 1, Test Description 1", image: "steak1"),
            RecipeData(title: "Test Title 2", description: "Test Description 2, Test Description 2, Test Description 2, Test Description 2, Test Description 2, Test Description 2", image: "salman1"),
            RecipeData(title: "Test Title 3", description: "Test Description 3, Test Description 3, Test Description 3, Test Description 3, Test Description 3, Test Description 3", image: "chicken1"),
            RecipeData(title: "Test Title 4", description: "Test Description 4, Test Description 4, Test Description 4, Test Description 4, Test Description 4, Test Description 4", image: "steak1"),
        ]
    }
    
}