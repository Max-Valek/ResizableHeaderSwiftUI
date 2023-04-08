//
//  ChatCell.swift
//  ResizableHeaderSwiftUI
//
//  Created by Max Valek on 4/8/23.
//

import SwiftUI

struct ChatCell: View {
    
    var body: some View {
        
        HStack {
            
            Image("profile1")
                .resizable()
                .frame(width: 55, height: 55)
            
            VStack(alignment: .leading, spacing: 10) {
                
                Text("User")
                
                Text("Message")
                    .font(.caption)
            }
        }
        .padding(.vertical, 4)
    }
}

struct ChatCell_Previews: PreviewProvider {
    static var previews: some View {
        ChatCell()
    }
}
