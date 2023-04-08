//
//  ChatCell.swift
//  ResizableHeaderSwiftUI
//
//  Created by Max Valek on 4/8/23.
//

import SwiftUI

struct Cell: View {
    
    var body: some View {
        
        HStack(spacing: 25) {
            
            Image(systemName: "person.circle.fill")
                .resizable()
                .frame(width: 45, height: 45)
            
            VStack(alignment: .leading, spacing: 10) {
                
                Text("User")
                    .font(.title3)
                
                Text("Sample cell for User")
                    .font(.caption)
            }
        }
        .padding(.vertical, 4)
    }
}

struct ChatCell_Previews: PreviewProvider {
    static var previews: some View {
        Cell()
    }
}
