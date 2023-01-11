//
//  SettingsView.swift
//  OutlineGroupDemo
//
//  Created by apple on 11/1/2023.
//

import SwiftUI

struct SettingsView: View {
    @State private var hybridState: Bool = false;
    @State private var electricState: Bool = true;
    @State private var fuelCellState: Bool = true;
    @State private var inversionState: Bool = true;
    var body: some View {
        Form{
            DisclosureGroup{
                ToggleControl(title: "Hybrid Cars", state: hybridState)
                ToggleControl(title: "Electric Cars", state: electricState)
                ToggleControl(title: "Fuel Cell Cars", state: fuelCellState)
            }label: {
                Label("Categories Filters", systemImage: "car.2.fill")
            }
            
            DisclosureGroup{
                ColorControl(color: Color.red, label: "Background Color")
                ColorControl(color: Color.blue, label: "Foreground Color")
                ToggleControl(title: "Inversion Cars", state: inversionState)
            }label: {
                Label("Color Settings", systemImage: "scribble.variable")
            }
            
            
            
        }
    }
}

struct ColorControl: View{
    var color: Color;
    var label: String;
    
    var body: some View{
        HStack{
            Text(label)
            Spacer()
            Rectangle()
                .fill(color)
                .frame(width:30,height: 30)
        }
        .padding(.leading)
        .scaledToFill()
    }
    
}

struct ToggleControl: View{
    
    var title: String;
    @State var state: Bool;
    
    var body: some View{
        Toggle(title, isOn: $state)
            .padding(.leading)
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
