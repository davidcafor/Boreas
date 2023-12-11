//
//  LoadingView.swift
//  Boreas
//
//  Created by David Cardeña on 11/12/23.
//

import SwiftUI

struct LoadingView: View {
    var body: some View {
        ProgressView()
            .progressViewStyle(CircularProgressViewStyle (tint: .white))
            .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}

#Preview {
    LoadingView()
}
