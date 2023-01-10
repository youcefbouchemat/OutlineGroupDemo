//
//  CarInfo.swift
//  OutlineGroupDemo
//
//  Created by apple on 10/1/2023.
//

import Foundation

struct CarInfo : Identifiable{
    var id = UUID();
    var name : String;
    var image : String;
    var children : [CarInfo]?;
}
