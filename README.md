# README
Gen tech rails assessment
mtg-card-trade

# CONTRIBUTORS
Mark and Sam

* Heroku deploy:
https://mtg-card-trades.herokuapp.com/

* Github repository:
https://github.com/kkk987/mtg-card-trade.git


# App description:
  * Purpose:

    The purpose of this rails app is to creata a two-side market place for Magic players and people who are interested in playing magic to have a place to trade their cards. 
    
    Every user can buy cards from the market as long as they are registered. Users can also register themselves as a seller so that they can trade their stocks with other users.

    There are other online trading websites such as eBay and Amazon as well that allows users to trade their cards. But as an app designed by magic players, one of the features of this app is to help a user to find a magic card that he/she wants. 
    
    By inserting multiple searching conditions, users can narrow down to an explict result about the cards they are looking for and also if they are stocked or not. So instead of users switching between the magic card database and trading websites, we offer users the opportunity to do two things in one step with less fraustration.

  * Network Infrastructure:

    This app uses heroku for its productionversion. Heroku is a cloud platform andunlike the other network infrastructuresthat allows developers to deploy their appsswiftly without concerning how to deploy.

    In any types of app, database is the core ofthe app, heroku also provides its owndatabase called 'Heroku Postgresql' which isa secure and scalable database. Thefollowings are some aspects of herokunetwork infrastruction.

    * Routing
      
      Routes in heroku are responsible fordeterming   the location of the application'sweb dyno   which is a collection oflightweight Linux   containers. And HTTPrequests are forwarded to   these dynos.Heroku infrastructure enables full  supportof HTTP 1.1 features which will   helpapplications to load faster.

    * Request distribution
      
      Routers in heroku ues a random selection algorithm for balancing HTTP requests across web dynos. And since heroku is a cloud platform, when it comes to a large amount of dynos, the algorithm may optionally bias its selection towards dynos resident in the same availability zone.

    * Timeout
      
      In heroku, after a dyno connection is established, HTTP requests have a 30-second window where the web process must provide response data (any responses that indicate this process is running). If a process failed to send a response data with 30 seconds, the web process will be terminated.
      After the inital response, each byte it sent will reset a 55-second window. If no data is sent during 55 seconds, the web process will be terminated. 


# THIRD PART SERVICES
Devise
Cloudinary
Stripe
Bulma
Jquery
Jquery-rails

# DATABASING
Describe database structure (Pros & Cons)
Describe database setup (Production)

# ARCHITECTURE AND HIGH LEVEL DESIGN
Application architecture
High level components

Data structure of similar app/site

User Stories
Wireframe

Planning and Tracking

Agile methodology implementation

src control process
testing

# INFO SEC AND USER DATA
Discuss and analyse info sec
discuss info sec methods
research legality

# DATABASE DESIGN
Database infrastructure
Schema design
ERD
Tracked Entities
Database relations
Entity relationships/associations
Model relationships

# DATABASE IMPLEMENTATION
Identify appropriate model methods