//
//  ViewController.swift
//  MyNotes
//
//  Created by Maxim on 05.04.2023.
//

import UIKit

final class NotesListViewController: UIViewController {

    var tableView = UITableView()

    private let viewModel: NotesListViewModelProtocol

    init(viewModel: NotesListViewModelProtocol) {
        self.viewModel = viewModel
        super.init(nibName: nil, bundle: nil)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .blue
    }

    private func configureTableView() {
        view.addSubview(tableView)

    }
}

// MARK: - UITableViewDataSource

extension NotesListViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        viewModel.numberOfRow()
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .default, reuseIdentifier: nil)
        
        return cell
    }
}
// MARK: - UITableViewDelegate
extension NotesListViewController: UITableViewDelegate {

}



