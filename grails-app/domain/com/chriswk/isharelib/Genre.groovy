package com.chriswk.isharelib

class Genre {
    String name
    long tmdbId
    static constraints = {
        name blank: false
        tmdbId unique: true
    }
}
