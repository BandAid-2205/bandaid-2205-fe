# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
## Artist API response
```
{:id=>"1",
 :type=>"artist_poro",
 :attributes=>
  {:name=>"The Dirty Dozen Brass Band",
   :bio=>
    "The Dirty Dozen Brass Band are a New Orleans style brass band which plays R&B and Traditional New Orleans music. Band Members include Charles Joseph, Keith Anderson, Roger Lewis, Kevin Harris, Lionel Batiste, Efrem Towns, Kirk Joseph, Jenell Marshall, Revert Andrews, Gregory Davis, and Raymond Weber. Original band formed in 1975.\n\nThe Dirty Dozen Brass Band \n\nCelebrating over 40 years since their founding in 1977, New Orleans-based Dirty Dozen Brass <a href=\"https://www.last.fm/music/The+Dirty+Dozen+Brass+Band\">Read more on Last.fm</a>",
   :genres=>["jazz", "New Orleans", "brass", "funk", "blues"],
   :image_path=>"https://lastfm.freetls.fastly.net/i/u/174s/2a96cbd8b46e442fc41c2b86b821562f.png"
  }
}
```
## Artist LastFM endpoint (backend)
```
get '/api/v1/lastfm/search?query=the%20dirty%20dozen%20brass%20band'
```
## Artist endpoint (backend)
```
get "/api/v1/artists/<user_id>"
```

'get '/api/v1/lastfm/search?query=the%20dirty%20dozen%20brass%20band'

## Yelp Endpoint
```
/api/v1/yelp/search
```
Or
```
get '/api/v1/yelp/search?term=music%20venue&location=New%20Orleans&limit=5'
```