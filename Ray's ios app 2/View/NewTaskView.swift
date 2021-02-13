//
//  NewTaskView.swift
//  Ray's ios app 2
//
//  Created by Стас Жингель on 06.02.2021.
//

import SwiftUI

struct NewTaskView: View {
    @State var priority: Task.Priority = .no
    @Environment(\.presentationMode) var presentationMod
    var taskStore: TaskStore
    @State var argument: String = ""
    var body: some View {
        Form {
            TextField("Task Name", text: $argument)
            VStack {
                Text("Priority")
                Picker("Priority",selection: $priority.caseIndex) {
                    ForEach(Task.Priority.allCases.indices) {
                        priorityIndex in
                        Text(Task.Priority.allCases[priorityIndex].rawValue
                            .capitalized)
                            .tag(priorityIndex)
                    }
                }.pickerStyle(SegmentedPickerStyle())
            }
           
            Button("Add") {
                let priorityIndex = self.taskStore.getIndex(for: self.priority)
                self.taskStore.prioritizedTasks[priorityIndex].tasks.append(Task(name: self.argument))
                presentationMod.wrappedValue.dismiss()
            }
            .disabled(argument.isEmpty)
            
        }
    }
}


