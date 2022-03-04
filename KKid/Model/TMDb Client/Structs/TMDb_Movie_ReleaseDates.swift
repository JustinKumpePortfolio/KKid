//
//  TMDb_Movie_ReleaseDates.swift
//  KKid
//
//  Created by Justin Kumpe on 11/29/20.
//  Copyright © 2020 Justin Kumpe. All rights reserved.
//

import Foundation

struct TMDb_Movie_ReleaseDate: Codable {

    let movieRating: String?
    let language: String?
    let releaseDate: String?
    let type: Int?
    let note: String?

    private enum CodingKeys : String, CodingKey {
        case movieRating = "certification", language = "iso_639_1", releaseDate = "release_date", type, note
    }
}

struct TMDb_Movie_ReleaseDate_Result: Codable {

    var country: String?
    var releaseDates: [TMDb_Movie_ReleaseDate]

    private enum CodingKeys : String, CodingKey {
        case country = "iso_3166_1", releaseDates = "release_dates"
    }
}

struct TMDb_Movie_ReleaseDates_Response: Codable {
    var id: Int?
    var results: [TMDb_Movie_ReleaseDate_Result]?
}
