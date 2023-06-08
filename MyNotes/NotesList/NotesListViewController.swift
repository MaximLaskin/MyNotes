//
//  ViewController.swift
//  MyNotes
//
//  Created by Maxim on 05.04.2023.
//

import UIKit

final class NotesListViewController: UIViewController {
    
    var tableView = UITableView()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        title = "Список заметок"
    }
}

// MARK: - UITableViewDataSource

extension NotesListViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        1
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .default, reuseIdentifier: nil)
        
        return cell
    }
}
// MARK: - UITableViewDelegate
extension NotesListViewController: UITableViewDelegate {

}



