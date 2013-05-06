package com.chriswk.isharelib

class Movie {
    String title
    String tagline
    String summary
    String description
    long tmdbId
    Date releaseDate

    static hasMany = [
            cast: MovieRole,
            countries: Country,
            crew: Job,
            genres: Genre,
            languages: Language
    ]
    static constraints = {
        title blank: false
        releaseDate max: new Date()
    }
}
