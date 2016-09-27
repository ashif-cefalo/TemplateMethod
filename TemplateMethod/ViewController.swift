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
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
    @IBAction func sortButtonPressed(sender: UIButton) {
        let sorter = SorterFactory.createSorter(sortOptionSegmentControl.selectedSegmentIndex, array: processDataForSort())
        let result = sorter.sortItems()
        print("result: \(result)")
    }
    
    func processDataForSort()->[Int]{
        
        /*
        return [22, 51, 77, 59, 18, 40, 87, 47, 41, 98, 23, 41, 9, 56, 90, 57, 90, 1, 86]
        */
//        /*
        let origString = inputField.text
        guard origString?.characters.count > 1 else{
            return [0]
        }
        let array =   origString!.componentsSeparatedByString(",")
        return array.map { Int($0)!}
//        */
    }
}

