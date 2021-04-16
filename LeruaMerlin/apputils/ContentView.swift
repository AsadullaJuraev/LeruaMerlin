//
//  ContentView.swift
//  LeruaMerlin
//
//  Created by Asadulla Juraev on 15.04.2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView{
            HomeScreen()
                .tabItem {
                    Image(systemName: "magnifyingglass")
                    Text("Главная")
                    
                }
            BookMark()
                .tabItem{
                    Image(systemName: "bookmark")
                    Text("Мой список")
                }
            Shop()
                .tabItem{
                    Image(systemName: "bag")
                    Text("Магазинь")
                }
            Person()
                .tabItem{
                    Image(systemName: "person")
                    Text("Профиль")
                }
            Cart()
                .tabItem{
                    Image(systemName: "cart")
                    Text("Корзина")
                }
        }
        .accentColor(.green)
    }
}

struct BookMark: View{
    var body: some View{
        Text("Bookmark")
    }
}

struct Shop: View{
    var body: some View{
        Text("Shop")
    }
}

struct Person: View{
    var body: some View{
        Text("Person")
    }
}

struct Cart: View{
    var body: some View{
        Text("Cart")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
