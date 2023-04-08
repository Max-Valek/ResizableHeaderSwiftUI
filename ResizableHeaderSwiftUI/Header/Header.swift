//
//  Header.swift
//  ResizableHeaderSwiftUI
//
//  Created by Max Valek on 4/8/23.
//

import SwiftUI

/*
 
 View for the resizable header
 
 */
struct Header: View {
    
    // current tab
    @Binding var tabIndex: Int
    
    // used to show the desired header size
    @Binding var showFullHeader: Bool
    
    var body: some View {
        
        VStack(spacing: 25) {
            
            // show app name and buttons if showFullHeader is true
            if self.showFullHeader {
                
                HStack {
                    Text("AppName")
                        .fontWeight(.bold)
                        .font(.title)
                        .foregroundColor(.white)
                    
                    Spacer(minLength: 0)
                    
                    Button {
                        // Do something
                    } label: {
                        Image(systemName: "magnifyingglass")
                            .resizable()
                            .frame(width: 18, height: 18)
                            .foregroundColor(.white)
                    }

                    Button {
                        // Do something
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
                // update current tab and UI when Tab1 is pressed
                Button {
                    self.tabIndex = 0
                    
                } label: {
                    VStack {
                        Text("Tab1")
                            .foregroundColor(.white)
                            .fontWeight(self.tabIndex == 0 ? .bold : .none)
                        
                        Capsule()
                            .fill(self.tabIndex == 0 ? Color.white : Color.clear)
                            .frame(height: 4)
                    }
                }
                
                // update current tab and UI when Tab2 is pressed
                Button {
                    self.tabIndex = 1
                    
                } label: {
                    VStack {
                        Text("Tab2")
                            .foregroundColor(.white)
                            .fontWeight(self.tabIndex == 1 ? .bold : .none)
                        
                        Capsule()
                            .fill(self.tabIndex == 1 ? Color.white : Color.clear)
                            .frame(height: 4)
                    }
                }
                
                // update current tab and UI when Tab3 is pressed
                Button {
                    self.tabIndex = 2
                    
                } label: {
                    VStack {
                        Text("Tab3")
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
        // header-background is a color set in assets
        .background(Color("header-background"))
    }
}
