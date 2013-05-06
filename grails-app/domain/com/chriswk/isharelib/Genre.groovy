package com.chriswk.isharelib

class Genre {
    String name
    String tmdbId
    Date dateCreated
    Date lastUpdated

    static constraints = {
        name blank: false, unique: true
        tmdbId unique: true
    }

    @Override
    public String toString() {
        return name;
    }
}
