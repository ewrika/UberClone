//
//  RideRequestView.swift
//  UberClone
//
//  Created by Георгий Борисов on 01.03.2024.
//

import SwiftUI

struct RideRequestView: View {
    @State private var selectedRideType:RideType = .uberX
    var body: some View {
        VStack{
            Capsule()
                .foregroundStyle(Color(.systemGray5))
                .frame(width: 48,height: 6)
                .padding(.top,8)
            
            HStack{
                VStack{
                    Circle()
                        .fill(Color(.systemGray3))
                        .frame(width: 8,height: 8)
                    
                    Rectangle()
                        .fill(Color(.systemGray3))
                        .frame(width: 1,height: 32)
                    
                    Rectangle()
                        .fill(.black)
                        .frame(width: 8,height: 8)
                    
                }
                
                
                VStack(alignment:.leading,spacing: 24){
                    HStack{
                        Text("Current Location")
                            .font(.system(size: 16))
                            .foregroundStyle(.gray)
                        Spacer()
                        
                        Text("1;11")
                            .font(.system(size: 14,weight: .semibold))
                            .foregroundStyle(.gray)
                    }
                    .padding(.bottom,10)
                    
                    HStack{
                        Text("Skuratov")
                            .font(.system(size: 16,weight: .semibold))
                            .foregroundStyle(.black)
                        Spacer()
                        
                        Text("1;11")
                            .font(.system(size: 14,weight: .semibold))
                            .foregroundStyle(.gray)
                    }
                }
                .padding(.leading,8)
            }
            .padding()
            
            Divider()
            
            Text("Текущая поездка")
                .font(.subheadline)
                .fontWeight(.semibold)
                .padding()
                .foregroundStyle(.gray)
                .frame(maxWidth:.infinity,alignment: .leading)
            
            ScrollView(.horizontal){
                HStack(spacing:12){
                    ForEach(RideType.allCases){ type in
                        VStack(alignment:.leading){
                            Image(type.imageName)
                                .resizable()
                                .scaledToFit()
                            
                            VStack(alignment:.leading,spacing:4){
                                Text(type.description)
                                    .font(.system(size: 14,weight: .semibold))
                                    .foregroundStyle(.black)
                                
                                Text("$22.04")
                                    .font(.system(size: 14,weight: .semibold))
                                    .foregroundStyle(.black)
                            }
                            .padding()
                        }
                        .frame(width: 112,height: 140)
                        .foregroundStyle(type == selectedRideType ? .white : .black)
                        .background(Color(type == selectedRideType ? .systemBlue : .systemGray))
                        .scaleEffect(type == selectedRideType ? 1.1 : 1.0)
                        .cornerRadius(10)
                        .onTapGesture{
                            withAnimation(.spring()){
                                selectedRideType = type
                            }
                        }
                    }
                }
            }
            .padding(.horizontal)
            
            Divider()
                .padding(.vertical,8)
            
            HStack(spacing:12){
                Text("Visa")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .padding(6)
                    .background(.blue)
                    .cornerRadius(4)
                    .foregroundStyle(.white)
                    .padding()
                Text("**** 1234")
                    .fontWeight(.bold)
                Spacer()
                
                Image(systemName: "chevron.right")
                    .imageScale(.medium)
                    .padding()
            }
            .frame(height:50)
            .background(Color(.systemBackground))
            .cornerRadius(10)
            .padding(.horizontal)
            
            
            Button{
                
            }label:{
                Text("Подтвердить поездку")
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    .frame(width: UIScreen.main.bounds.width - 32,height: 50)
                    .background(.blue)
                    .cornerRadius(10)
                    .foregroundStyle(.white)
            }
        }
        .background(.white)
    }
}

#Preview {
    RideRequestView()
}
