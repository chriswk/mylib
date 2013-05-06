package com.chriswk.isharelib

class Company {
    String name
    long tmdbId

    static hasMany = [
        productions: Production
    ]
    static constraints = {
        name blank: false
        tmdbId unique: true
    }
}
