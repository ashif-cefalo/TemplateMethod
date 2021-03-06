//
//  QuickSorter.swift
//  TemplateMethod
//
//  Created by Ashif Iqbal on 9/26/16.
//  Copyright © 2016 cefalo. All rights reserved.
//

import Foundation

class QuickSorter: AbstractSorter {
    
    /*
    var data = [1,2,3,4,90,3]
    quick_sort(&data)
    */
    
    override func divide(array : [Int]) -> [[Int]]{
        
        return []
    }
    
    func conquer(arr: [Int]) {
        
    }
    
    override func combine(sourceArray : [Int], splits outputs: [[Int]]) -> [Int]{
        
        var arrayToSort = sourceArray
        quick_sort(&arrayToSort)
        return arrayToSort
    }
    
    func quick_sort(inout data: [Int]){
        if data.count > 1{
            var less = [Int]()
            var equal = [Int]()
            var greater = [Int]()
            
            let pivot = data[1]
            for x in data{
                if x < pivot{
                    less.append(x)
                }else if x == pivot{
                    equal.append(x)
                }else{
                    greater.append(x)
                }
            }
            quick_sort(&less)
            quick_sort(&greater)
            
            data = less + equal + greater
        }
    }
}
