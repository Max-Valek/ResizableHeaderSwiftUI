//
//  Home.swift
//  ResizableHeaderSwiftUI
//
//  Created by Max Valek on 4/8/23.
//

import SwiftUI

struct Home: View {
    
    @State var tabIndex = 0
    
    @State var showFullHeader = false
    
    var body: some View {
        
        VStack(spacing: 0) {
            
            Header(tabIndex: self.$tabIndex, showFullHeader: self.$showFullHeader)
            
            ZStack {
                Chats(showFullHeader: self.$showFullHeader)
                    .opacity(self.tabIndex == 0 ? 1 : 0)
                
                Status()
                    .opacity(self.tabIndex == 1 ? 1 : 0)
                
                Calls()
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
