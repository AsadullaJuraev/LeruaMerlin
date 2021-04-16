//
//  GoodCost.swift
//  LeruaMerlin
//
//  Created by Asadulla Juraev on 16.04.2021.
//

import SwiftUI

struct GoodCost: Identifiable {
    var id = UUID().uuidString
    var image: String
    var price: String
    var ptype: String
    var name: String
}
var contents1 = [
    GoodCost(image: "p1", price: "730,", ptype: "35 ₽/шт", name: "Керамогранит Euroceramika Керамогранит"),
    GoodCost(image: "p2", price: "413 ", ptype: "₽/шт", name: "Штукатурка гипсовая Knauf"),
    GoodCost(image: "p3", price: "722,", ptype: "₽/шт", name: "Грунтовка глубокого проникновения")
]
var contents2 = [
    GoodCost(image: "gc1", price: "1068 ", ptype: "₽/шт", name: "Обои флизелиновые"),
    GoodCost(image: "gc2", price: "658 ", ptype: "₽/шт", name: "Кашпо Idea Дюна"),
    GoodCost(image: "gc3", price: "116 ", ptype: "₽/шт", name: "Средство для мытья стёкол"),
    GoodCost(image: "gc4", price: "118 ", ptype: "₽/шт", name: "Средство для акриловых ванн")
]
