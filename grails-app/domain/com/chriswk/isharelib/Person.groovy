package com.chriswk.isharelib

class Person {
    String name
    String birthPlace
    String biography
    Date birthday
    Country born

    long tmdbId
    String imdbId
    String imageUrl
    static hasMany = [
        jobs: Job, roles: MovieRole, languages: Language
    ]
    static constraints = {
        name blank:false
        birthday max: new Date()
        tmdbId unique: true
        imdbId unique: true, blank: true
    }
}
