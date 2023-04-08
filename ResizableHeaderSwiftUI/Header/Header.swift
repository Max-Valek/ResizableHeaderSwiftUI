//
//  Header.swift
//  ResizableHeaderSwiftUI
//
//  Created by Max Valek on 4/8/23.
//

import SwiftUI

struct Header: View {
    
    @Binding var tabIndex: Int
    
    @Binding var showFullHeader: Bool
    
    var body: some View {
        
        VStack(spacing: 25) {
            
            if self.showFullHeader {
                
                HStack {
                    
                    Text("AppName")
                        .fontWeight(.bold)
                        .font(.title)
                        .foregroundColor(.white)
                    
                    Spacer(minLength: 0)
                    
                    Button {
                        //
                    } label: {
                        Image(systemName: "magnifyingglass")
                            .resizable()
                            .frame(width: 18, height: 18)
                            .foregroundColor(.white)
                    }

                    Button {
                        //
                    } label: {
                        Image(systemName: "list.bullet")
                            .resizable()
                            .frame(width: 18, height: 18)
                            .foregroundColor(.white)
                    }
                    .padding(.leading)
                }
            }
            
            HStack {
                
                Button {
                    
                    self.tabIndex = 0
                    
                } label: {
                    
                    VStack {
                        
                        Text("Chats")
                            .foregroundColor(.white)
                            .fontWeight(self.tabIndex == 0 ? .bold : .none)
                        
                        Capsule()
                            .fill(self.tabIndex == 0 ? Color.white : Color.clear)
                            .frame(height: 4)
                    }
                }
                
                Button {
                    
                    self.tabIndex = 1
                    
                } label: {
                    
                    VStack {
                        
                        Text("Status")
                            .foregroundColor(.white)
                            .fontWeight(self.tabIndex == 1 ? .bold : .none)
                        
                        Capsule()
                            .fill(self.tabIndex == 1 ? Color.white : Color.clear)
                            .frame(height: 4)
                    }
                }
                
                Button {
                    
                    self.tabIndex = 2
                    
                } label: {
                    
                    VStack {
                        
                        Text("Calls")
                            .foregroundColor(.white)
                            .fontWeight(self.tabIndex == 2 ? .bold : .none)
                        
                        Capsule()
                            .fill(self.tabIndex == 2 ? Color.white : Color.clear)
                            .frame(height: 4)
                    }
                }

            }
            .padding(.bottom, 10)
        }
        .padding(.horizontal)
//        .padding(.top, (UIApplication.shared.windows.first?.safeAreaInsets.top)! + 10)
        .background(Color("Color"))
    }
}

//struct Header_Previews: PreviewProvider {
//    static var previews: some View {
//        Header(index: .constant(0), show: .constant(true))
//    }
//}
