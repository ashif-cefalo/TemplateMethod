//
//  ViewController.swift
//  TemplateMethod
//
//  Created by Ashif Iqbal on 9/25/16.
//  Copyright © 2016 cefalo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var sortOptionSegmentControl: UISegmentedControl!
    @IBOutlet weak var inputField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        let sortman = SortMan()
//        sortman.doSort()
        
//        var dataList = [22, 51, 77, 59, 18, 40, 87, 47, 41, 98, 23, 41, 9, 56, 90, 57, 90, 1, 86]
//        quickSort(&dataList, left: 0, right: dataList.count - 1)
//       print("sorted dataList: \(dataList)")
    }
    
/*
    func partition(inout dataList: [Int], low: Int, high: Int) -> Int {
        var pivotPos = low
        let pivot = dataList[low]
        
        for i in low + 1...high{
            if dataList[i] < pivot && ++pivotPos != i {
                (dataList[pivotPos], dataList[i]) = (dataList[i], dataList[pivotPos])
            }
        }
        (dataList[low], dataList[pivotPos]) = (dataList[pivotPos], dataList[low])
        return pivotPos
    }
    
    func quickSort(inout dataList: [Int], left: Int, right: Int) {
        if left < right {
            let pivotPos = partition(&dataList, low: left, high: right)
            quickSort(&dataList, left: left, right: pivotPos - 1)
            quickSort(&dataList, left: pivotPos + 1, right: right)
        }
    }
*/
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
    @IBAction func sortButtonPressed(sender: UIButton) {
        let sorter = SorterFactory.createSorter(sortOptionSegmentControl.selectedSegmentIndex, array: processDataForSort())
        let result = sorter.sortItems()
        print("result: \(result)")
    }
    
    func processDataForSort()->[Int]{
        
//        return [22, 51, 77, 59, 18, 40, 87, 47, 41, 98, 23, 41, 9, 56, 90, 57, 90, 1, 86]
        
        ///*
        let origString = inputField.text
        guard origString?.characters.count > 1 else{
            return [0]
        }
//        let stringArray = origString!.componentsSeparatedByCharactersInSet(
//            NSCharacterSet.decimalDigitCharacterSet().invertedSet)
//        let newString = stringArray.joinWithSeparator(",")
        let array =   origString!.componentsSeparatedByString(",")
        return array.map { Int($0)!}
//         */
    }
}

