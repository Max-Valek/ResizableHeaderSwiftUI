//
//  Chats.swift
//  ResizableHeaderSwiftUI
//
//  Created by Max Valek on 4/8/23.
//

import SwiftUI

struct Chats: View {
    
    @Binding var showFullHeader: Bool
    
    var body: some View {
        
        List(0...25, id: \.self) { i in
            
            if i == 0 {
                
                ChatCell()
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
                ChatCell()
            }
        }
    }
}

struct Chats_Previews: PreviewProvider {
    static var previews: some View {
        Chats(showFullHeader: .constant(true))
    }
}
