//
//  RowView.swift
//  Ray's ios app 2
//
//  Created by Стас Жингель on 08.02.2021.
//

import SwiftUI

struct RowView: View {
   @Binding var task : Task
    let checkmark = Image(systemName: "checkmark")
    var body: some View {
        NavigationLink(destination: TaskEditingView(task: $task)) {
            
            if task.completed {
                checkmark
            } else {
                checkmark.hidden()
            }
         
            Text(task.name)
                .strikethrough(task.completed)
            }
    }
}

struct RowView_Previews: PreviewProvider {
    static var previews: some View {
        RowView(task: .constant(Task(name: "To do")))
    }
}
