//
//  NoteListViewModel.swift
//  MyNotes
//
//  Created by Maxim on 06.04.2023.
//

import Foundation

protocol NotesListViewModelProtocol {
    func numberOfRow() -> Int

}

final class NotesListViewModel: NotesListViewModelProtocol {

    private var notes: [Notes] = []

    func numberOfRow() -> Int {
        notes.count
    }
}
