//
//  FBFireStoreError.swift
//  SampleApp2
//
//  Created by Madusanka Gajadeera on 2022-04-24.
//

import Foundation

enum FireStoreError: Error {
    case noAuthDataResult
    case noCurrentUser
    case noDocumentSnapshot
    case noSnapshotData
    case noUser
}

extension FireStoreError: LocalizedError {
    // This will provide me with a specific localized description for the FireStoreError
    var errorDescription: String? {
        switch self {
        case .noAuthDataResult:
            return NSLocalizedString("No Auth Data Result", comment: "")
        case .noCurrentUser:
            return NSLocalizedString("No Current User", comment: "")
        case .noDocumentSnapshot:
            return NSLocalizedString("No Document Snapshot", comment: "")
        case .noSnapshotData:
            return NSLocalizedString("No Snapshot Data", comment: "")
        case .noUser:
            return NSLocalizedString("No User", comment: "")
        }
    }
}
