//
//  ItemDetails.swift
//  iDine
//
//  Created by Salah Amassi on 05/02/1442 AH.
//  Copyright © 1442 Salah Amassi. All rights reserved.
//

import SwiftUI

struct ItemDetails: View {
    
    var item: MenuItem
    
    @EnvironmentObject var order: Order
    
    var body: some View {
        VStack{
            ZStack(alignment: .bottomTrailing){
                Image(item.mainImage)
                Text(item.photoCredit)
                    .padding(4)
                    .background(Color.black)
                    .font(.caption)
                    .foregroundColor(.white)
                    .offset(x: -25, y: -5)
            }
            Text(item.name)
                .padding()
            Button("Order This"){
                self.order.items.append(self.item)
            }.font(.headline)
            Spacer()
        }.navigationBarTitle(Text(item.name), displayMode: .inline)
    }
}

struct ItemDetails_Previews: PreviewProvider {
    static let order = Order()
    
        static var previews: some View {
        NavigationView{
            ItemDetails(item: .example).environmentObject(order)
        }
    }
}
