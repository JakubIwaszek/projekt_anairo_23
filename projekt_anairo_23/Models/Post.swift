//
//  Post.swift
//  projekt_anairo_23
//
//  Created by Bartosz Lipiński on 24/11/2023.
//

import Foundation

struct Post: Identifiable, Decodable {
    var id: String
    var contentText: String
}
