//
//  FirstScreen.swift
//  LeruaMerlin
//
//  Created by Asadulla Juraev on 15.04.2021.
//

import SwiftUI

struct Header: View{
    @EnvironmentObject var homeData2: ViewModel
    @State var search = ""
    var body: some View{
            VStack(alignment: .leading){
                Spacer()
                Text("Поиск товаров")
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                HStack{
                    HStack{
                        TextField("Поиск", text: $search)
                        Button(action: {}, label: {
                            Image(systemName: "magnifyingglass")
                                .foregroundColor(.white)
                                .padding(8)
                                .background(Color.green.cornerRadius(6))
                        }).opacity((homeData2.offset > 60 ? 0 : 1))
                        
                    }.padding(.leading, 12)
                    .padding(.trailing, 4)
                    .padding([.top, .bottom], 6)
                    .background(Color.white.cornerRadius(6))
                    Spacer(minLength: 20)
                    Button(action: {
                        
                    }, label: {
                        Image(systemName: "barcode")
                            .foregroundColor(Color.black.opacity(0.7))
                            .padding()
                            .background(Color.white.cornerRadius(6))
                    })
                    .opacity((homeData2.offset > 60 ? 0 : 1))
                }
                
            }.padding()
            .background((homeData2.offset < 60 ? Color.green.shadow(radius: 0) : Color.white.shadow(radius: 10 )).edgesIgnoringSafeArea(.top))
            .frame(height: 90)
            
        
    }
}


struct Categories: View{
    var body: some View{
        HStack (spacing: 20){
            
            Button(action: {
                
            }, label: {
                VStack(alignment: .leading){
                    HStack{
                        Text("Каталог")
                            .font(.system(size: 20)).fontWeight(.bold)
                        Spacer()
                    }.padding(15)
                    Spacer()
                    HStack{
                        Spacer()
                        Image(systemName: "line.horizontal.3")
                            .resizable()
                            .frame(width: 40, height: 30)
                    }.padding(15)
                }.foregroundColor(.white)
                .frame(width: 150, height: 150)
                .background(Color.green.cornerRadius(6))
            })
            
            Button(action: {
                
            }, label: {
                VStack(alignment: .leading){
                    HStack{
                        Text("Сад")
                            
                            .font(.system(size: 20)).fontWeight(.bold)
                        Spacer()
                    }.padding(15)
                    Spacer()
                    HStack{
                        Spacer()
                        Image("leaf")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .rotationEffect(.degrees(90))
                            .offset(x: 20, y: 10)
                            .clipped()
                    }.padding(15)
                }.foregroundColor(.black)
                .frame(width: 150, height: 150)
                .background(Color(#colorLiteral(red: 0.9490812421, green: 0.9529820085, blue: 0.9610320926, alpha: 1)).cornerRadius(6))
            })
            
            Button(action: {
                
            }, label: {
                VStack(alignment: .leading){
                    HStack{
                        Text("Освещение")
                            .font(.system(size: 20)).fontWeight(.bold)
                        Spacer()
                    }.padding(15)
                    Spacer()
                    HStack{
                        Spacer()
                        Image("lighting")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    }.padding(15)
                }
                .foregroundColor(.black)
                .frame(width: 150, height: 150)
                .background(Color(#colorLiteral(red: 0.9490812421, green: 0.9529820085, blue: 0.9610320926, alpha: 1)).cornerRadius(6))
                .clipped()
            })
            
        }
        .padding()
    }
}


