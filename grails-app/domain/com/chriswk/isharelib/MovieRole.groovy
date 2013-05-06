package com.chriswk.isharelib

class MovieRole {
    Movie movie
    Person person
    String character
    Date dateCreated
    Date lastUpdated
    static constraints = {
        character blank: false
    }
}
