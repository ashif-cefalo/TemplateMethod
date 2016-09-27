//
//  SorterFactory.swift
//  TemplateMethod
//
//  Created by Ashif Iqbal on 9/26/16.
//  Copyright © 2016 cefalo. All rights reserved.
//

import Foundation

class SorterFactory {
    
    class func createSorter(sortOption: Int, array: [Int]) -> AbstractSorter{
        if sortOption == 0{
            return MergeSorter(array: array)
        }
        else{
            return QuickSorter(array: array)
        }
    }
}
