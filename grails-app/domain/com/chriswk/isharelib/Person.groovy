package com.chriswk.isharelib

class Person {
    String name
    String birthPlace
    String biography
    Date birthday
    Country born

    String tmdbId
    String imdbId
    String imageUrl
    Date dateCreated
    Date lastUpdated

    static hasMany = [
        jobs: Job, roles: MovieRole, languages: Language
    ]
    static constraints = {
        name blank:false
        birthday max: new Date(), blank: true, nullable: true
        biography blank: true, nullable: true
        birthPlace blank: true, nullable: true
        born blank: true, nullable: true
        imageUrl blank: true, nullable: true
        tmdbId unique: true, nullable: true
        imdbId unique: true, nullable: true
    }
}
