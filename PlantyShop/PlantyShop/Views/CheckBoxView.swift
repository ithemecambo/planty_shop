//
//  CheckBoxView.swift
//  PlantyShop
//
//  Created by SENGHORT on 10/9/21.
//

import SwiftUI

struct CheckBoxView: View {
    
    @State var isChecked:Bool = false
    var title: String
    var count: Int = 0
    
    func toggle() {
        isChecked = !isChecked
    }
    
    var body: some View {
        HStack{
            Button(action: toggle) {
                Image(systemName: isChecked ? "checkmark.square" : "square")
            }
            Text(title)
        }
    }
}
