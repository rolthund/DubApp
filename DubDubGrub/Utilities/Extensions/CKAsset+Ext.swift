//
//  CKAsset+Ext.swift
//  DubDubGrub
//
//  Created by Vladyslav Fesenko on 12/30/22.
//

import CloudKit
import UIKit

extension CKAsset {
    func convertToUIImage(in dimension: ImageDimention) -> UIImage {
        let placeholder = ImageDimention.getPlaceholder(for: dimension)
        
        guard let fileUrl = self.fileURL else { return placeholder }
        
        do {
          let data = try Data(contentsOf: fileUrl)
          return UIImage(data: data) ?? placeholder
        } catch {
            return placeholder
        }
    }
}
