//
//  MergeSorter.swift
//  TemplateMethod
//
//  Created by Ashif Iqbal on 9/26/16.
//  Copyright © 2016 cefalo. All rights reserved.
//

import Foundation

class MergeSorter: AbstractSorter {

    override func divide(array : [Int]) -> [[Int]]{
        
        // Split lists into equal sized sublists
        if array.count > 1{
            var middle = array.count
            middle /= 2
            var left = [Int]()
            var right = [Int]()
            
            for x in 0..<middle{
                left.append(array[x])
            }
            
            for y in middle..<array.count{
                right.append(array[y])
            }
            
            return [left, right]
        }
        return [array]
    }
    
    override func conquer() {
        
    }
    
    override func combine(sourceArray : [Int], splits: [[Int]]) -> [Int]{
        var result = [Int]()
        
        // Merge taking lowest value first seen
        var left = splits[0]
        var right = splits[1]
        
        while (!left.isEmpty && !right.isEmpty){
            if left[0] <= right[0]{
                result.append(left[0])
                left.removeAtIndex(0)
            }else{
                result.append(right[0])
                right.removeAtIndex(0)
            }
        }
        
        // Handle remaining elements
        while !left.isEmpty{
            result.append(left[0])
            left.removeAtIndex(0)
        }
        while !right.isEmpty{
            result.append(right[0])
            right.removeAtIndex(0)
        }
        
        return result
    }
}
