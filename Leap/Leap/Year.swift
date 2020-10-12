//
//  Year.swift
//  Leap
//
//  Created by 한상진 on 2020/10/12.
//

import Foundation

struct Year {
    let calendarYear: Int
    var isLeapYear:Bool {
        get {
            return calendarYear%4 == 0 && ( calendarYear%100 != 0 || calendarYear%400 == 0 )
        }
    }
}
