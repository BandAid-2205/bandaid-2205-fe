# BandAid

## About
[BandAid]() is an app that allows artists and music venues, large and small, to connect with one another through a smooth booking process. Rather than relying on personal and professional networks, BandAid expands the realm of possibilities for artists looking to book a gig and makes it easier for venues to fill their events calendar.

BandAid is an application that utilizes a [frontend](https://github.com/BandAid-2205/bandaid-2205-fe) and a [backend](https://github.com/BandAid-2205/bandaid-2205-be) application. The frontend Application creates a seamless user interface for artists and venues, implements OAuth for login, and makes API calls to the backend. The backend is responsible for receiving requests from the frontend, submitting requests to the Yelp and Last.fm APIs, and return digestible JSON data for the frontend to consume.



# Table of Contents

- [Languages and Tools](https://github.com/BandAid-2205/bandaid-2205-fe/blob/main/README.md#languages-and-tools)
- [Requirements](https://github.com/BandAid-2205/bandaid-2205-fe/blob/main/README.md#requirements)
- [Installation](https://github.com/BandAid-2205/bandaid-2205-fe/blob/main/README.md#installation)
- [Deployment](https://github.com/BandAid-2205/bandaid-2205-fe/blob/main/README.md#deployment)
- [Endpoints](https://github.com/BandAid-2205/bandaid-2205-fe/blob/main/README.md#endpoints)
- [Contributors](https://github.com/BandAid-2205/bandaid-2205-fe/blob/main/README.md#contributors)



# Languages and Tools
<p align="left"> <a href="https://getbootstrap.com" target="_blank" rel="noreferrer"> <img src="https://raw.githubusercontent.com/devicons/devicon/master/icons/bootstrap/bootstrap-plain-wordmark.svg" alt="bootstrap" width="40" height="40"/> </a> <a href="https://circleci.com" target="_blank" rel="noreferrer"> <img src="https://www.vectorlogo.zone/logos/circleci/circleci-icon.svg" alt="circleci" width="40" height="40"/> </a> <a href="https://git-scm.com/" target="_blank" rel="noreferrer"> <img src="https://www.vectorlogo.zone/logos/git-scm/git-scm-icon.svg" alt="git" width="40" height="40"/> </a> <a href="https://heroku.com" target="_blank" rel="noreferrer"> <img src="https://www.vectorlogo.zone/logos/heroku/heroku-icon.svg" alt="heroku" width="40" height="40"/> </a> <a href="https://www.postgresql.org" target="_blank" rel="noreferrer"> <img src="https://raw.githubusercontent.com/devicons/devicon/master/icons/postgresql/postgresql-original-wordmark.svg" alt="postgresql" width="40" height="40"/> </a> <a href="https://postman.com" target="_blank" rel="noreferrer"> <img src="https://www.vectorlogo.zone/logos/getpostman/getpostman-icon.svg" alt="postman" width="40" height="40"/> </a> <a href="https://rubyonrails.org" target="_blank" rel="noreferrer"> <img src="https://raw.githubusercontent.com/devicons/devicon/master/icons/rails/rails-original-wordmark.svg" alt="rails" width="40" height="40"/> </a> <a href="https://www.ruby-lang.org/en/" target="_blank" rel="noreferrer"> <img src="https://raw.githubusercontent.com/devicons/devicon/master/icons/ruby/ruby-original.svg" alt="ruby" width="40" height="40"/> </a> </p>



# Requirements
This project requires:
```
 - Ruby 2.7.4
 - Rails 5.2.X
```



# Installation

To get started, clone the repo in your terminal by entering the following:
```
git clone git@github.com:BandAid-2205/bandaid-2205-fe.git
```

Once cloned, run the following commands:
```
- bundle install
- rails db:create
- rails db:migrate
- Install Figaro
  - `bundle exec figaro install`
- Update the `application.yml` file with `ENV` variables storing API keys for [Yelp](https://www.yelp.com/developers/documentation/v3/get_started) and [last.fm](https://www.last.fm/api/show/artist.getInfo) (pages for obtaining API keys linked)
```


# Deployment

  BandAid-2205-FE is deployed remotely on Herkou.

  Base URL: https://bandaid-fe.herokuapp.com/



# Endpoints

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
### Artist LastFM endpoint (backend)
```
get '/api/v1/lastfm/search?query=the%20dirty%20dozen%20brass%20band'
```
### Artist endpoint (backend)
```
get "/api/v1/artists/<user_id>"
```

```
'get '/api/v1/lastfm/search?query=the%20dirty%20dozen%20brass%20band'
```

## Venue API response
```
{
    "data": {
        "id": "6",
        "type": "venue",
        "attributes": {
            "name": "Trilly Cheesesteaks",
            "location": "3735 Ulloa St, New Orleans, LA 70119",
            "phone": "504-582-9057",
            "price": "$",
            "category": "restaurant",
            "rating": 5,
            "user_id": 10000,
            "bookings": [],
            "artists": [],
            "venue_artists": []
        },
        "relationships": {}
    },
    "included": []
  }
```

### Yelp Endpoint
```
/api/v1/yelp/search
```
Or
```
get '/api/v1/yelp/search?term=music%20venue&location=New%20Orleans&limit=5'
```


# Contributors

### Front End:
- **Justin Ramirez** - *Turing Student* - [GitHub](https://github.com/jusrez) - [LinkedIn](https://www.linkedin.com/in/jusrez/)
- **Nicole Esquer** - *Turing Student* - [GitHub](https://github.com/nicole-esquer) - [LinkedIn](https://www.linkedin.com/in/nicole-esquer/)
- **Sunny Moore** - *Turing Student* - [GitHub](https://github.com/sunny-moore) - [LinkedIn](https://www.linkedin.com/in/sunny-moore/)

### Back End:
- **Anna Marie Sterling** - *Turing Student* - [GitHub](https://github.com/AMSterling) - [LinkedIn](https://www.linkedin.com/in/sterling-316a6223a/)
- **Bryan Shears** - *Turing Student* - [GitHub](https://github.com/b-shears) - [LinkedIn](https://github.com/b-shears)
- **Mayu Takeda** - *Turing Student* - [GitHub](https://github.com/okayama-mayu) - [LinkedIn](https://www.linkedin.com/in/mayu-takeda/)
