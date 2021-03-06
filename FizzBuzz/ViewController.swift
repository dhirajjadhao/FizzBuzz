//
//  ViewController.swift
//  FizzBuzz
//
//  Created by dhiraj.jadhao on 12/2/17.
//  Copyright © 2017 DhirajJadhao. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    //MARK: Properties
    
    let range = 1...100
    
    
    
    //MARK: View Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        // run less efficiently
        runFizzBuzzLessEfficientlyFor(range: range)
        
        
        // Uncomment below lines to run efficiently
        //runFizzBuzzFor(range: range)
        
        
    }
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    
    
    //MARK: Methods
    
    
    /// Function to run FizzBuzz Logic on given int range
    func runFizzBuzzFor(range: CountableClosedRange<Int>) -> Void {
   
        for element in range {
            
            let isFizz = !((element % 3 as NSNumber).boolValue)
            let isBuzz = !((element % 5 as NSNumber).boolValue)
            
            if !isFizz && !isBuzz{
                print(element)
            }else if isFizz && isBuzz {
                print("FizzBuzz")
            }else if isFizz && !isBuzz {
                print("Fizz")
            }else if !isFizz && isBuzz {
                print("Buzz")
            }

        }
        
    }
    
    
    
    /// Function to run FizzBuzz Logic on given int range in less efficient way
    func runFizzBuzzLessEfficientlyFor(range: CountableClosedRange<Int>) -> Void {
        
        let array = Array(range.lowerBound...range.upperBound)
        
        for i in 0..<array.count{
           
            let element = array[i]
            
            if (element%3 != 0) && (element%5 != 0){
                print(element)
            }else if (element%3 == 0) && (element%5 == 0) {
                print("FizzBuzz")
            }else if (element%3 == 0) && (element%5 != 0) {
                print("Fizz")
            }else if (element%3 != 0) && (element%5 == 0) {
                print("Buzz")
            }
            
        }
        
    }
    
    

}

