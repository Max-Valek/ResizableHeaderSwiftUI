//
//  Status.swift
//  ResizableHeaderSwiftUI
//
//  Created by Max Valek on 4/8/23.
//

import SwiftUI

/*
 
 Simple tab for this template project
 
 */
struct TabTwo: View {
    
    // for deciding which header configuration to show
    @Binding var showFullHeader: Bool
    
    var body: some View {
        
        List(0...25, id: \.self) { i in
            
            // toggle showFullHeader based on visibility
            // of first item in the list
            if i == 0 {
                
                Cell()
                    .onAppear {
                        
                        withAnimation {
                            self.showFullHeader = true
                        }
                    }
                    .onDisappear {
                        
                        withAnimation {
                            self.showFullHeader = false
                        }
                    }
                
            } else {
                Cell()
            }
        }
        // simply for showing the tabs are different
        .foregroundColor(Color(.systemBlue))
        .listStyle(.plain)
    }
}

struct Status_Previews: PreviewProvider {
    static var previews: some View {
        TabTwo(showFullHeader: .constant(true))
    }
}
