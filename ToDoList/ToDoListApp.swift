//
//  ToDoListApp.swift
//  ToDoList
//
//  Created by Aditya Kumar on 2022/12/08.
//

import SwiftUI

 /*
  MVVM Architecture
  
  Model - data point
  View - UI
  ViewModel - manages Models for View
  
  */

@main
struct ToDoListApp: App {
    
    @StateObject var listViewModel: ListViewModel = ListViewModel()
    
    var body: some Scene {
        WindowGroup {
            NavigationView {
                ListView()
            }
            .navigationViewStyle(StackNavigationViewStyle())
            .environmentObject(listViewModel)
        }
    }
}
