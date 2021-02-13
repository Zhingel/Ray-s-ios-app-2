//
//  TaskStore.preoritizied.swift
//  Ray's ios app 2
//
//  Created by Стас Жингель on 12.02.2021.
//

extension TaskStore {
    struct PriorityziedTasks {
        let priority: Task.Priority
        var tasks: [Task]
    }
}

extension TaskStore.PriorityziedTasks: Identifiable {
    var id: Task.Priority {priority}
}
