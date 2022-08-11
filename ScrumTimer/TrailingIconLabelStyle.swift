//
//  TrailingIconLabelStyle.swift
//  ScrumTimer
//
//  Created by Tarik Nasuhoglu on 11.08.2022.
//

import SwiftUI

struct TrailingIconLabelStyle: LabelStyle {
    func makeBody(configuration: Configuration) -> some View {
        HStack {
            configuration.title
            configuration.icon
        }
    }
}


extension LabelStyle where Self == TrailingIconLabelStyle {
    static var trailingIcon: Self { Self() }
}
