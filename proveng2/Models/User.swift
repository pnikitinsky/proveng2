//
//  User.swift
//  proveng2
//
//  Created by Viktoria on 8/22/17.
//  Copyright © 2017 Provectus. All rights reserved.
//

import Foundation
import RealmSwift
import ObjectMapper

class User: Object, StaticMappable {
    @objc dynamic var loginName: String?
    @objc dynamic var firstName: String?
    @objc dynamic var lastName: String?
    @objc dynamic var imageURL: String?
    @objc dynamic var email: String?
    @objc dynamic var userID: Int = 0
    static func objectForMapping(map: Map) -> BaseMappable? {
        return User()
    }
    func mapping(map: Map) {
        var id = self.userID
        id             <- map[primaryJSONKey]
        loginName      <- map["loginName"]
        firstName      <- map["firstName"]
        lastName       <- map["lastName"]
        imageURL       <- map["imageURL"]
        email          <- map["email"]
    }
    override class func primaryKey() -> String? {
        return "userID"
    }
    var primaryJSONKey: String {
        return "id"
    }
}
