package com.chriswk.isharelib

class Genre {
    String name
    long tmdbId
    Date dateCreated
    Date lastUpdated
    static constraints = {
        name blank: false
        tmdbId unique: true
    }
}
