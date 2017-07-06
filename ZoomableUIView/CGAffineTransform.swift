//
//  CGAffineTransform.swift
//  ZoomableUIView
//
//  Created by Coughlan, James on 06/07/2017.
//  Copyright © 2017 Coughlan, James. All rights reserved.
//

import Foundation

extension CGAffineTransform {
   
   var currentScale: CGFloat {
      return sqrt(a * a + c * c)
   }
   
}
