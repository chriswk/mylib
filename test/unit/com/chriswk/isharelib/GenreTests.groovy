package com.chriswk.isharelib



import grails.test.mixin.*
import org.junit.*

/**
 * See the API for {@link grails.test.mixin.domain.DomainClassUnitTestMixin} for usage instructions
 */
@TestFor(Genre)
class GenreTests {

    void saveAndFetch() {
       def original = new Genre(name: "Horror").save(failOnError: true)
       def found = Genre.findByName("Horror")
       found == original
    }
}
