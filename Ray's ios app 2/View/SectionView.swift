//
//  SectionView.swift
//  Ray's ios app 2
//
//  Created by Стас Жингель on 12.02.2021.
//

import SwiftUI

struct SectionView: View {
    @Binding var prioritiziedTasks: TaskStore.PriorityziedTasks
    var body: some View {
        Section(header:Text("\(prioritiziedTasks.priority.rawValue.capitalized) Priority")) {
            ForEach(prioritiziedTasks.tasks) { index in
                RowView(task: $prioritiziedTasks.tasks[index])
            }
            .onMove {sourceIndices, destinationindex in
                prioritiziedTasks.tasks.move(fromOffsets: sourceIndices, toOffset: destinationindex)
            }
            .onDelete(perform: { indexSet in
                prioritiziedTasks.tasks.remove(atOffsets: indexSet)
            })
        }
        }
}

