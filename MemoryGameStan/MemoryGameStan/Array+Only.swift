//
//  Array+Only.swift
//  Memorize
//
//  Created by Guilherme Motti on 02/07/24.
//

import Foundation

extension Array {
    var only: Element? {
        count == 1 ? first : nil
    }
}
