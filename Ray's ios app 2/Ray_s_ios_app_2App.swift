//
//  Ray_s_ios_app_2App.swift
//  Ray's ios app 2
//
//  Created by Стас Жингель on 04.02.2021.
//

import SwiftUI

@main
struct Ray_s_ios_app_2App: App {
    var body: some Scene {
        WindowGroup {
            ContentView(taskStore: TaskStore())
        }
    }
}
