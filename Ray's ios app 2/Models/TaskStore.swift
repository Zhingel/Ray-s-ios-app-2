//
//  TaskStore.swift
//  Ray's ios app 2
//
//  Created by Стас Жингель on 04.02.2021.
//
import Combine

class TaskStore: ObservableObject  {
   
    @Published var prioritizedTasks = [
        PriorityziedTasks(priority: .hight, names: [
            "Code a SwiftUI app",
            "Book an escape",
             "Walk the cat",
             "Pick up heavy things and puthem down"
        ]),
        PriorityziedTasks(priority: .medium, names: [
            "make karaoke playlist",
            "Present at ios meetup group"
        ]),
        PriorityziedTasks(priority: .low, names: ["Climb El Capitan",
                                                  "Learn to make bakla"]),
        PriorityziedTasks(priority: .no, names: [ "Play disc golf in every state",
                                                  "100 movie reboot marathon"])

    ]
    func getIndex(for priority: Task.Priority) -> Int {
        prioritizedTasks.firstIndex {
            $0.priority == priority
        }!
    }
}

extension TaskStore.PriorityziedTasks {
    init(priority: Task.Priority, names: [String]) {
        self.init (
        priority: priority,
        tasks: names.map {Task(name: $0)})
    }
}
