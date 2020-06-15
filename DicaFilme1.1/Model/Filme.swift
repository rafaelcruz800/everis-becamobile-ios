//
//  Filme.swift
//  DicaFilme1.1
//
//  Created by Usuario Local on 6/11/20.
//  Copyright © 2020 Everis. All rights reserved.
//

import Foundation

class Filme: NSObject, Decodable {
    
    // MARK: - Result
        let id: Int
        let video: Bool?
        let voteCount: Int
        let voteAverage: Double
        let title, releaseDate: String?
        let originalLanguage: String
        let originalTitle: String?
        let genreIDS: [Int]
        let backdropPath: String
        let adult: Bool?
        let overview, posterPath: String
        let popularity: Double
        let mediaType: String
        let firstAirDate, name: String?
        let originCountry: [String]?
        let originalName: String?
        
        enum CodingKeys: String, CodingKey {
            case id, video
            case voteCount = "vote_count"
            case voteAverage = "vote_average"
            case title
            case releaseDate = "release_date"
            case originalLanguage = "original_language"
            case originalTitle = "original_title"
            case genreIDS = "genre_ids"
            case backdropPath = "backdrop_path"
            case adult, overview
            case posterPath = "poster_path"
            case popularity
            case mediaType = "media_type"
            case firstAirDate = "first_air_date"
            case name
            case originCountry = "origin_country"
            case originalName = "original_name"
        }
        
        init(id: Int, video: Bool?, voteCount: Int, voteAverage: Double, title: String?, releaseDate: String?, originalLanguage: String, originalTitle: String?, genreIDS: [Int], backdropPath: String, adult: Bool?, overview: String, posterPath: String, popularity: Double, mediaType: String, firstAirDate: String?, name: String?, originCountry: [String]?, originalName: String?) {
            self.id = id
            self.video = video
            self.voteCount = voteCount
            self.voteAverage = voteAverage
            self.title = title
            self.releaseDate = releaseDate
            self.originalLanguage = originalLanguage
            self.originalTitle = originalTitle
            self.genreIDS = genreIDS
            self.backdropPath = backdropPath
            self.adult = adult
            self.overview = overview
            self.posterPath = posterPath
            self.popularity = popularity
            self.mediaType = mediaType
            self.firstAirDate = firstAirDate
            self.name = name
            self.originCountry = originCountry
            self.originalName = originalName
        }
    
    
    class func converteListaParaData(_ json: [[String: Any]]) -> Data? {
        return try? JSONSerialization.data(withJSONObject: json, options: [])
    }
    
    class func decodificaFilme(_ jsonData: Data) -> [Filme]? {
        do {
            return try JSONDecoder().decode([Filme].self, from: jsonData)
        } catch {
            print(error.localizedDescription)
            return nil
        }
    }
}
//
//    enum CodingKeys: String, CodingKey {
//        case id, titulo = "original_title", voteAverage = "vote_average", sinopse = "overview", posterPath = "poster_path", adult, backdropPath = "backdrop_path", belongsToCollection = "belongs_to_collection", budget = "imdb_id", genres, homepage, popularity,productionCompanies = "production_companies",productionCountries = "production_countries",releaseDate = "release_date", revenue, runtime, spokenLanguages = "spoken_languages", status,tagline, title, video, voteCount = "vote_count"
//    }
//
//    // MARK: - Atributos
//
//    let id: Int
//    let titulo: String
//    //    let rate: Double
//    let sinopse: String
//    let posterPath: String
//    let adult: Bool
//    let backdropPath: String
//    let belongsToCollection: String?
//    let budget: Int
//    let genres: String
//    let homepage: String
//    //    let id: Int
//    let popularity: Double
//    let productionCompanies: String
//    let productionCountries: String
//    let releaseDate: String
//    let revenue,runtime: Int
//    let spokenLanguages: String
//    let status,tagline, title: String
//    let video: Bool
//    let voteAverage: Double
//    let voteCount: Int
//
//
//    // MARK: - Init
//
//    init(_ id:Int, _ titulo:String, _ voteAverage:Double, _ sinopse:String, _ posterPath:String, _ adult:Bool, _ backdropPath:String, _ belongsToCollection:String, _ budget:Int, _ genres:String, _ homepage:String, _ popularity:Double, _ productionCompanies:String, _ productionCountries:String, _ releaseDate:String, _ revenue:Int, _ runtime:Int, _ spokenLanguages:String, _ status: String, _ title:String, _ video:Bool, _ voteCount:Int, _ tagline:String) {
//
//        self.id = id
//        self.titulo = titulo
//        self.voteAverage = voteAverage
//        self.sinopse = sinopse
//        self.posterPath = posterPath
//        self.adult = adult
//        self.backdropPath = backdropPath
//        self.belongsToCollection = belongsToCollection
//        self.budget = budget
//        self.genres = genres
//        self.homepage = homepage
//        self.popularity = popularity
//        self.productionCompanies = productionCompanies
//        self.productionCountries = productionCountries
//        self.releaseDate = releaseDate
//        self.revenue = revenue
//        self.runtime = runtime
//        self.spokenLanguages = spokenLanguages
//        self.status = status
//        self.tagline = tagline
//        self.title = title
//        self.video = video
//        self.voteCount = voteCount
//
//    }
    // MARK: - Metodos

        

