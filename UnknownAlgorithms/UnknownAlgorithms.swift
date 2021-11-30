//
//  UnknownAlgoritms.swift
//  UnknownAlgorithms
//
//  Created by Sibson, Harry (AGDF) on 30/11/2021.
//

import Foundation
class UnknownAlgorithms{
    func sumFirstAndLast(_ data:[Int])->Int{
        if data.count == 0{
            return 0
        }else if data.count == 1{
            return 2
        }else{
            let first = data[0]
            var sum = data[data.count-1]
            sum = sum + first
            return sum
        }
        

    }
    func findMode(_ data: [Int])-> Int{
        var counter = 0
        var mode = 0
        var counter2 = 0
        var mode2 = 0
        var index = 0
        if data.count == 0{
            return 0
        }else if data.count == 1{
            return data[0]
        }else{
            for i in 0..<data.count-1{
                if data[i] == data[i+1]{
                    counter=counter+1
                    mode = data[i]
                    index = i-1
                }
            }
            for i in 0..<index-1{
                if data[i] == data[i+1]{
                    counter2=counter2+1
                    mode2 = data[i]
                }
            }
            if counter2 < counter{
                return mode
            }else{
                return mode2
            }
        }
        
    }

}

