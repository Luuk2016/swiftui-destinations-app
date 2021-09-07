//
//  Tip.swift
//  Travel
//
//  Created by Luuk Kenselaar on 07/09/2021.
//

import Foundation

struct Tip: Decodable {
    let text: String
    let children: [Tip]?
}
