//  Created by Sadik Coban on 17.12.2021.

import UIKit


/// Returns an Integer Array value consisting of fibonacci numbers in the range of [ `from`,  `to` ) by using iterative approach.
///
/// - Parameters:
///   - from: Initial value of range (inclusive).
///   - to:  Last value of range (exclusive).

func fibonacci(from: Int, to: Int)-> [Int] {

    //check if range is valid
    if from > to {
        return []
    }
    //initialize first two values of fibonacci series
    var num1 = 0
    var num2 = 1
    var num3 = num1 + num2
    
    //initialize resulting array as empty
    var res: [Int] = []
    
    //loop through range
    while num3 < to {
        //append fibonacci number if it is in desired range
        if num3 > from {
            res.append(num3)
        }
        //go to next step
        num3 = num1 + num2
        num1 = num2
        num2 = num3
        
    }
    
    return res
}


/*
 *driver code
 *store fibonacci numbers from 750 to 1000 in the list
*/
var fibonacciList = fibonacci(from: 750, to: 1000)
print(fibonacciList)


