package com.chriswk.isharelib

class Country {
    String shortKey
    String iso3166Key
    String iso3166Number
    String capital
    String name
    String domain
    Date dateCreated
    Date lastUpdated
    static constraints = {
        shortKey maxSize: 2, unique: true
        iso3166Number maxSize:3, unique: true
        iso3166Key maxSize:3, unique: true
        domain maxSize:5, nullable: true
        capital maxSize: 50, nullable: true
    }

    @Override
    public String toString() {
        return name;
    }
}
