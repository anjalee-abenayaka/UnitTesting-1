//
//  TestStudent.swift
//  UnitTestingTests
//
//  Created by Anjalee on 2/2/20.
//  Copyright © 2020 Anjalee Abenayaka. All rights reserved.
//
import XCTest //UnitTestingTests XCTest
@testable import UnitTesting

class TestStudent: XCTestCase {  //from //UnitTestingTests XCTestCase
    
    func testValidFirstName () {
        
        let student = Student(firstName: "Si", lastName: "Kumara")
        
        XCTAssertTrue(student.validFirstName())
    }
    
    func testValidLastName () {
        let student = Student(firstName: "Si", lastName: "Kumara")
        
        XCTAssertTrue(student.validLastName())
    }
    
    func testAddFriend() {
        let sirisena = Student(firstName: "Sirisena", lastName: "Kumara")
        let kuru = Student(firstName: "Kuru", lastName: "Nimal")
        
        XCTAssertTrue(sirisena.friends.count == 0)
        
        sirisena.addFriend(friend: kuru)
        
        XCTAssertTrue(sirisena.friends.count == 1)
    }
}
