//
//  AppDelegate.swift
//  MyNotes
//
//  Created by Maxim on 05.04.2023.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        window = UIWindow(frame: UIScreen.main.bounds)
        
        
        let viewModelType: NotesListViewModelProtocol.Type = NotesListViewModel.self
        
        guard let viewModel = viewModelType as? NotesListViewModelProtocol else { return true }

        window?.rootViewController = UINavigationController(rootViewController: NotesListViewController(viewModel: viewModel))
        window?.makeKeyAndVisible()

        return true
    }
}

