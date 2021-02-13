//
//  Task.swift
//  Ray's ios app 2
//
//  Created by Стас Жингель on 04.02.2021.
//
import Foundation


struct Task : Identifiable {
    let id = UUID()
    var name : String
    var completed = false
}
