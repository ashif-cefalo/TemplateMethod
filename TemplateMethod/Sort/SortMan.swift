//
//  SortMan.swift
//  TemplateMethod
//
//  Created by Ashif Iqbal on 9/27/16.
//  Copyright © 2016 cefalo. All rights reserved.
//

import Foundation

class SortMan {
    
    func doSort(){
        let data = [22, 51, 77, 59, 18, 40, 87, 47, 41, 98, 23, 41, 9, 56, 90, 57, 90, 1, 86]
//        solve(data)
        print("------------------------------")
        print("------------------------------")
        print("solve(data) \(solve(data))")
        print("------------------------------")
        print("------------------------------")
//        merge_sort(&data)
    }
    
    func solve(input: [Int]) ->[Int]{
        
        print("input arr: \(input)")
        
        var inputs = [[Int]]()
        if input.count <= 1{
            return input
        }
        else {
            inputs = divide(input);
            print("inputs: \(inputs)")
        }
        
        var outputs = [[Int]]()
        print("inputs count: \(inputs.count)")
        for x in 0..<inputs.count{
            outputs.append(solve(inputs[x]))
            print("outputs[x]: \(outputs[x])")
        }
        
        return combine(input, outputs: outputs)
    }

    func divide(array : [Int]) -> [[Int]]{
        
        if array.count > 1{
            let low = 0
            let high = array.count - 1
            var input = array
            let pivot = input[low]
            var sp = low
            
            for i in 1..<high{
                if input[i] < pivot{
                    swapValues(input, low: sp, high: i)
                    sp += 1
                }
            }
            
            swapValues(input, low: low, high: sp)
            
            let less = Array(input[low..<sp])
            let greater = Array(input[sp..<array.count-1])
            return[less, greater]
        }
        return [array]
    }
    
    func conquer() {
        
    }
    
    func combine(input : [Int], outputs: [[Int]]) -> [Int]{
        print("outputs: \(outputs)")
        print("inputs: \(input)")
        return outputs[0]
    }
    
    /*
     Swift's swap() doesn't like it if the items you're trying to swap refer to
     the same memory location. This little wrapper simply ignores such swaps.
     */
    
    private func swapValues(array: [Int], low: Int, high: Int){
        var arrayToSwap = array
        let temp = arrayToSwap[low]
        arrayToSwap[low] = arrayToSwap[high]
        arrayToSwap[high] = temp
    }
    
}

