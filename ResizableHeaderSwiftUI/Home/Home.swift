//
//  Home.swift
//  ResizableHeaderSwiftUI
//
//  Created by Max Valek on 4/8/23.
//

import SwiftUI

/*
 
 Main view for the app
 
 */
struct Home: View {
    
    // keep track of the current tab
    @State var tabIndex = 0
    
    // true when we want to show the full header
    // false when showing the reduced header
    @State var showFullHeader = false
    
    var body: some View {
        
        VStack(spacing: 0) {
            
            Header(tabIndex: self.$tabIndex, showFullHeader: self.$showFullHeader)
            
            // create and show the tab for the current tabIndex
            ZStack {
                TabOne(showFullHeader: self.$showFullHeader)
                    .opacity(self.tabIndex == 0 ? 1 : 0)
                
                TabTwo(showFullHeader: self.$showFullHeader)
                    .opacity(self.tabIndex == 1 ? 1 : 0)
                
                TabThree(showFullHeader: self.$showFullHeader)
                    .opacity(self.tabIndex == 2 ? 1 : 0)
            }
        }
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
