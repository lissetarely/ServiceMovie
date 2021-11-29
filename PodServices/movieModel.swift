//
//  movieModel.swift
//  PruebaGonet
//
//  Created by Liss SM on 28/11/21.
//

import Foundation



struct MoviesUrl:Codable {
    
    
    var results:[Results]?
    var items:[Results]?
    /*
    init(results:[Results]?,items:[Results]?){
        self.results = results
        self.items = items
    }*/
    
    enum CodingKeys: String, CodingKey{
        case results = "results"
        case items = "items"
    }
    
    struct Results:Codable {
        
        var popularity: Double = 0.0
        var vote_count: Double = 0.0
        var poster_path: String = ""
        var original_language: String = ""
        var original_title: String = ""
        var title: String = ""
        var vote_average: Double = 0.0
        var overview: String = ""
        var release_date: String = ""
        
        init( popularity: Double,
         vote_count: Double,
         poster_path: String,
         original_language: String,
         original_title: String,
         title: String,
         vote_average: Double,
         overview: String,
         release_date: String ){
            self.popularity = popularity
            self.vote_count = vote_count
            self.poster_path = poster_path
            self.original_title = original_title
            self.original_language = original_language
            self.title = title
            self.vote_average = vote_average
            self.overview = overview
            self.release_date = release_date
        }
        
        enum CodingKeys: String, CodingKey{
            case popularity = "popularity"
            case vote_count = "vote_count"
            case poster_path = "poster_path"
            case original_language = "original_language"
            case title = "title"
            case vote_average = "vote_average"
            case overview = "overview"
            case release_date = "release_date"
        }
    }
}

struct Movies2Url:Codable {
    
    
    var results:[Results]?
    
    enum CodingKeys: String, CodingKey{
        case results = "results"
    }
    
    struct Results:Codable {
        
        var popularity: Double = 0.0
        var vote_count: Double = 0.0
        var poster_path: String = ""
        var original_language: String = ""
        var original_title: String = ""
        var title: String = ""
        var vote_average: Double = 0.0
        var overview: String = ""
        var release_date: String = ""
        
        enum CodingKeys: String, CodingKey{
            case popularity = "popularity"
            case vote_count = "vote_count"
            case poster_path = "poster_path"
            case original_language = "original_language"
            case title = "title"
            case vote_average = "vote_average"
            case overview = "overview"
            case release_date = "release_date"
        }
    }
}

struct Movies3Url:Codable {
    
    
    var results:[Results]?
    
    enum CodingKeys: String, CodingKey{
        case results = "results"
    }
    
    struct Results:Codable {
        
        var popularity: Double = 0.0
        var vote_count: Double = 0.0
        var poster_path: String = ""
        var original_language: String = ""
        var original_title: String = ""
        var title: String = ""
        var vote_average: Double = 0.0
        var overview: String = ""
        var release_date: String = ""
        
        enum CodingKeys: String, CodingKey{
            case popularity = "popularity"
            case vote_count = "vote_count"
            case poster_path = "poster_path"
            case original_language = "original_language"
            case title = "title"
            case vote_average = "vote_average"
            case overview = "overview"
            case release_date = "release_date"
        }
    }
}

