//
//  LocationSearchActivationView.swift
//  UberClone
//
//  Created by Георгий Борисов on 25.02.2024.
//

import SwiftUI

struct LocationSearchActivationView: View {
    var body: some View {
        HStack{
            Rectangle()
                .fill()
                .frame(width: 8,height: 8)
                .padding(.horizontal)
            
            Text("Where to?")
                .foregroundStyle(Color(.darkGray))
            
            Spacer()
                
        }
        .frame(width: UIScreen.main.bounds.width - 64 , height: 50)
        .background(
            Rectangle()
                .fill(Color.white)
                .shadow(color: .black, radius:6)
        )
    }
}

#Preview {
    LocationSearchActivationView()
}
