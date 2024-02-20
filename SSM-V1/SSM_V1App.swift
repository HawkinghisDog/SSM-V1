//
//  SSM_V1App.swift
//  SSM-V1
//
//  Created by Waldorfschule Berlin Mitte on 06.12.23.
//

import SwiftUI

@main
struct SSM_V1App: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            MainScreen()
            //ContentView()
                //.environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
