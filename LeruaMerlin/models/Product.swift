//
//  Product.swift
//  LeruaMerlin
//
//  Created by Asadulla Juraev on 16.04.2021.
//

import SwiftUI

struct Product: View{
    var content: GoodCost
    var body: some View{
        Button(action: {
            
        }, label: {
            VStack(alignment: .leading){
                Image(content.image)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 150, height: 130)
                    .padding(.vertical, 5)
                Group(){
                    Text(content.price)
                        .font(.system(size: 25))
                        .fontWeight(.bold)
                        + Text(content.ptype)
                        .fontWeight(.bold)
                }.padding([.top, .bottom], 5)
                Text(content.name)
                    .lineLimit(2)
                Spacer()
            }.foregroundColor(.black)
            .frame(width: 150, height: 260)
        })
    }
}
