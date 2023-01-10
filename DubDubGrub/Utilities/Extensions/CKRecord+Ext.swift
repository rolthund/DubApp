//
//  CKRecord+Ext.swift
//  DubDubGrub
//
//  Created by Vladyslav Fesenko on 12/29/22.
//

import CloudKit

extension CKRecord {
    
    func convertToDDGLocation() -> DDGLocation {DDGLocation(record: self)}
    func convertToDDGProfile() -> DDGProfile {DDGProfile(record: self)}
}
