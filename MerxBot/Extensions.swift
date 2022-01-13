//
//  Extensions.swift
//  MerxBot
//
//  Created by Zhao Qianyu on 6/1/22.
//

import SwiftUI

extension View {
  @ViewBuilder
  func `if`<Transform: View>(
    _ condition: Bool,
    transform: (Self) -> Transform
  ) -> some View {
    if condition {
      transform(self)
    } else {
      self
    }
  }
}
