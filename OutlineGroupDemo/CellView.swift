//
//  CellView.swift
//  OutlineGroupDemo
//
//  Created by apple on 10/1/2023.
//

import SwiftUI

struct CellView: View {
    var carItem : CarInfo
    var body: some View {
        HStack{
            Image(systemName: carItem.image)
                .resizable()
                .scaledToFit()
                .frame(width: 25, height: 25)
                .foregroundColor(.green)
            Text(carItem.name)
        }
    }
}

struct CellView_Previews: PreviewProvider {
    static var previews: some View {
        CellView(carItem:CarInfo(name: "Hybrid Cars", image: "leaf.fill", children: []))
    }
}
