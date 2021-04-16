//
//  FirstScreen.swift
//  LeruaMerlin
//
//  Created by Asadulla Juraev on 15.04.2021.
//

import SwiftUI

struct HomeScreen: View {
    @StateObject var homeData = ViewModel()
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            LazyVStack(alignment: .leading, pinnedViews: [.sectionHeaders]){
                
                GeometryReader{ reader -> AnyView in
                    let offset = reader.frame(in: .global).minY
                    if -offset >= 0{
                        DispatchQueue.main.async {
                            self.homeData.offset = -offset
                        }
                    }
                    return AnyView(
                        Color.green
                            .aspectRatio(contentMode: .fill)
                            .frame(width: UIScreen.main.bounds.width, height: 150 + (offset > 0 ? offset : 0))
                            .cornerRadius(2)
                            .offset(y: (offset > 0 ? -offset : 0))
                    )
                }
                .frame(height: 60)
                Section(header:
                            Header()
                            
                ){
                    ScrollView(.horizontal, showsIndicators: false, content: {
                        HStack{
                            Categories()
                        }.padding(.top, 20)
                    })
                    
                    Text("Предложение ограничено")
                        .font(.title2)
                        .fontWeight(.bold)
                        .padding()
                        .padding([.top, .bottom], 10)
                    ScrollView(.horizontal, showsIndicators: false){
                        HStack(spacing: 15){
                            ForEach(contents1){ content1 in
                                Product(content: content1)
                            }
                        }
                    }.padding([.leading, .trailing], 10)
                    
                    Text("Предложение ограничено")
                        .font(.title2)
                        .fontWeight(.bold)
                        .padding()
                        .padding([.top, .bottom], 10)
                    ScrollView(.horizontal, showsIndicators: false){
                        HStack(spacing: 15){
                            ForEach(contents2){ content2 in
                                Product(content: content2)
                            }
                        }
                    }.padding([.leading, .trailing], 10)
                }
                
            }
            
        }
        .overlay(
            Color.green
                .frame(height: UIApplication.shared.windows.first?.safeAreaInsets.top)
                
                .ignoresSafeArea(.all, edges: .top)
                .opacity((homeData.offset > 60 ? 0 : 1))
             , alignment: .top
        )
        .edgesIgnoringSafeArea(.top)
        .environmentObject(homeData)
    }
}

struct HomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreen()
    }
}
