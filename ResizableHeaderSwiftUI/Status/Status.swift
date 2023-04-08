//
//  Status.swift
//  ResizableHeaderSwiftUI
//
//  Created by Max Valek on 4/8/23.
//

import SwiftUI

struct Status: View {
    
    var body: some View {
        
        GeometryReader { _ in
            
            VStack {
                
                Text("Status")
            }
        }
    }
}

struct Status_Previews: PreviewProvider {
    static var previews: some View {
        Status()
    }
}
