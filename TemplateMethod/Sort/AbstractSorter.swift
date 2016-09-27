//
//  AbstractSorter.swift
//  TemplateMethod
//
//  Created by Ashif Iqbal on 9/26/16.
//  Copyright © 2016 cefalo. All rights reserved.
//

import Foundation

class AbstractSorter {
    
    var itemsToSort : [Int]
    
    init(array: [Int]) {
        self.itemsToSort = array
    }
    
    func sortItems() -> [Int]{
        return self.sort(self.itemsToSort)
    }
    
    func sort(array: [Int]) ->[Int]{
        
        var arrayToDivide = [[Int]]()
        if array.count <= 1{
            return array
        }
        else {
            arrayToDivide = divide(array);
        }
        
        var splittedArray = [[Int]]()
        for x in 0..<arrayToDivide.count{
            splittedArray.append(sort(arrayToDivide[x]))
        }
        
        return combine(array, outputs: splittedArray)
    }
    
    internal func divide(array : [Int]) -> [[Int]]{
        return [[]]
    }
    
    internal func conquer(){
    
    }
    
    internal func combine(input : [Int], outputs: [[Int]]) -> [Int]{
        return []
    }
}