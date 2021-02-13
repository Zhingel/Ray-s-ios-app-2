//
//  ContentView.swift
//  Ray's ios app 2
//
//  Created by Стас Жингель on 04.02.2021.
//

import SwiftUI

struct ContentView: View {
    @State var modelIsPresented = false
    @ObservedObject var taskStore : TaskStore
    var body: some View {
        NavigationView {
            List {
                ForEach(taskStore.prioritizedTasks) { index in
                    SectionView(prioritiziedTasks: $taskStore.prioritizedTasks[index])
                    
                }
            }
                .navigationBarTitle("Tasks")
            .navigationBarItems(leading: EditButton(),
                                trailing:
                Button(action: {
            modelIsPresented = true
                                        }) {
                    Image(systemName: "plus")
                    }
                )
                .sheet(isPresented: $modelIsPresented, content: {
                    NewTaskView(taskStore: self.taskStore)
                })
            }
    }
}

















struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(taskStore: TaskStore())
    }
}

