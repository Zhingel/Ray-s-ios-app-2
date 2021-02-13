//
//  TaskEditingView.swift
//  Ray's ios app 2
//
//  Created by Стас Жингель on 11.02.2021.
//

import SwiftUI

struct TaskEditingView: View {
    @Binding var task: Task
    var body: some View {
        Form{
            TextField("Name", text: $task.name)
            Toggle(isOn: $task.completed, label: {
                Text("Completed")
            })
        }
    }
}

struct TaskEditingView_Previews: PreviewProvider {
    static var previews: some View {
        TaskEditingView(task: .constant(Task(name: "To do")))
    }
}
