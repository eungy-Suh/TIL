//
//  Decimal.swift
//  BankeySummary
//
//  Created by 서은지 on 2022/09/18.
//

import UIKit


extension Decimal {
    var doubleValue: Double {
        return NSDecimalNumber(decimal:self).doubleValue
    }
}

