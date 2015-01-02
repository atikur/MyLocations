//
//  String+AddText.swift
//  MyLocations
//
//  Created by Atikur Rahman on 1/3/15.
//  Copyright (c) 2015 Atikur Rahman. All rights reserved.
//

extension String {
    mutating func addText(text: String?, withSeparator separator: String = "") {
        if let text = text {
            if !isEmpty {
                self += separator
            }
            self += text
        }
    }
}