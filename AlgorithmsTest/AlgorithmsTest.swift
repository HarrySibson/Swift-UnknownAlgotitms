//
//  AlgorithmsTest.swift
//  AlgorithmsTest
//
//  Created by Sibson, Harry (AGDF) on 30/11/2021.
//

import XCTest

class AlgorithmsTest: XCTestCase {
    func testSumFisrtAndLastWithVariableArrays(){
        
        let unknownAlgorithms = UnknownAlgorithms()
        
        let testCases = [(input: [1,2,3,4,5,6],expected: 7),(input: [12,23,34,45,56],expected: 68)]
        
        for testCase in testCases {
            let actual = unknownAlgorithms.sumFirstAndLast(testCase.input)
            XCTAssertEqual(actual,testCase.expected)
        }
        
    }
    func testFindModeWithSortedArrays(){
        let unknownAlgorithms = UnknownAlgorithms()
        
        let testCases = [(input: [1,2,3,3,3,4,5,6],expected: 3),(input: [12,23,34,34,34,45,45,56],expected: 34)]
        
        for testCase in testCases {
            let actual = unknownAlgorithms.findMode(testCase.input)
            XCTAssertEqual(actual,testCase.expected)
        }
        
    }
}
