dataSource {
    pooled = true
    driverClassName = "org.h2.Driver"
    username = "sa"
    password = ""
}
hibernate {
    cache.use_second_level_cache = true
    cache.use_query_cache = false
    cache.region.factory_class = 'net.sf.ehcache.hibernate.EhCacheRegionFactory'
}
// environment specific settings
environments {
    development {
        grails {
            neo4j {
                type = "rest"
                location = "http://localhost:7474/db/data"
            }
        }
    }
    test {
        grails {
            neo4j {
                type = "impermanent"
            }
        }
    }
    production {
        grails {
            neo4j {
                type = "rest"
            }
        }
    }
}
