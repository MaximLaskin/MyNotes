//
//  NoteListViewModel.swift
//  MyNotes
//
//  Created by Maxim on 06.04.2023.
//

import Foundation

protocol NotesListViewModelProtocol {
    func numberOfRow() -> Int
    func addNote(_ note: Note)
    func updateNote(at index: Int, with note: Note)
    func deleteNote(at index: Int)
}

final class NotesListViewModel: NotesListViewModelProtocol {
    func addNote(_ note: Note) {
        //
    }
    
    func updateNote(at index: Int, with note: Note) {
        //
    }
    
    func deleteNote(at index: Int) {
        //
    }
    
    
    
    private var notes: [Note] = []

    func numberOfRow() -> Int {
        notes.count
    }
}
