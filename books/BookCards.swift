//
//  BookCards.swift
//  books
//
//  Created by Emanuela Imparato on 17/11/23.
//

import Foundation
import SwiftUI

struct BookCards: Identifiable {

    var id: UUID = UUID()

    var category: String
    var title: String
    var author: String
    var image: String
    var color: Color = .black
 
}
