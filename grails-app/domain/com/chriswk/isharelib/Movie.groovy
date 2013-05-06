package com.chriswk.isharelib

class Movie {
    String title
    String tagline
    String summary
    String description
    long tmdbId
    Date releaseDate

    static hasMany = [
        countries: Country,
        crew: Job,
        languages: Language,
        cast: MovieRole
    ]
    static constraints = {
        title blank: false
        releaseDate max: new Date()
    }
}
