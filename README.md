# README
Gen tech rails assessment
mtg-card-trade

# CONTRIBUTORS
Mark and Sam

* Heroku deploy:
https://mtg-card-trades.herokuapp.com/

* Github repository:
https://github.com/kkk987/mtg-card-trade.git


# Instructions:



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

  All third party softwares and services are included in gem files. Please 'bundle install' first.

  * Third paty softwares
    
    * Devise

      Devise provides a flexible authentication solution for rails. It is MVC based, modularized and allows multiple models sign in at the same time. It also provides many useful built-in methods such as current_user which will pass the user object of the current login session.

      Devise covers 10 modules related to user authentication. They can be used all together of separately. In this app, the following features are used:
          - Sign up
          - Log in/out
          - Email and password validation

    * Bulma

      Bulma is a free open-source, CSS framwork based on flexbox. It allows developers to style their websites in an efficient way with responsive designs. Since it is css based, developers can style their html files while design them. Bulma also allows customization for its style methods which provides more flexibilities in styling.
      
      As this app is still in protoype stage, a quick style solution can help us to better visualize our designs.

    * Jquery

      Jquery is a fast, small and feature rich javaScript library. In this app, jquesy is a pre-requirement for Jquery-rails to be used.
    
    * Jquery-rails

      Jquery-rails generates jquery for rails and it has multiple features that allow people has little knowledge of javascript to use. 
      
      In this app, jquery-rails enables auto-complete search feature that minimizes the typing error and improve the user experience.

    * Rspec

      Rspec is testing tool designed for rails. One of the features of rspec is that it uses human langues more than normal coding languages. That provides more readability for developers and managers.
      
      In this app, it provides auto testings for each unit such model and controller to make sure they act as we expected. 

  * Third party services

    * Cloudinary
      Cloudinary provides a cloud-based image and video management solution. It allows users to upload, store, manage and delivery images and videos.
      
      In this app, it is installed for the future features advancements which allow a stock and a card has an image attachment.

    * Stripe

      Stripe is third party checkout service. It helps user to do make a secure and fast checkout. And depends on the market type, it also provides checout solutions for multiple vendors market which allows buyer to pay multiple sellers at once. 

      Since this app is still in development stage, it uses one time checkout session that Stripe provides. The benefits for this type of checkout is that user's sensitive information won't be recorded which provides less risks of privacy leakage. The disadvantage is that user will need to enter their card detail every time.

    * Heroku

      Heroku is a cloud platform that allows user to deploy their app online. Heroku provides its own network framwork and database which enables user to make swift deployment of their app. And heroku adapts deployment from git which makes it more convenient for deployment.

      In this app, heroku is our primary deploy platform. We used an auto deploy feature that heroku provided to deploy our app when the master branch on git repository has a change.

# DATABASING
  * Describe database structure
      
      In this app, we use postgres as our primary database for our development. For production part, heroku provides its own databae which is called 'Heroku Postgres' which is based on postgres as well. Therefore, we can deploy our database setting without extra work.

    * Pros

      There are a couple of benifits of adpating postgres. The first is that it is one of the most popular databases management systems. Therefore, it has many extention scipts to serve different purposes.

      Second, it is a feature rich management system. Developers can write own extention scripts very easily.

      Last, it supports migration from other major open source database. For this project, one of the future features is to import all maigc card information into our database. This feature can help us to better achieve it

    * Cons

      As we mentioned in above section, this is a feature rich database management system. Hence, it will take some time for developers to learn what postgres are capable of. And with these included features, it might be an overkill for small projects.

  * Describe the production database setup

    In this prpject, we use postgres from both our development and production. The schema config and seed files are compatible with each other. To setup heroku postgres, we are doing similar steps that we were doing in local environment.

    * To prepare
    1. Create a heroku account if you don't have one
    2. Install heroku CLI from the fowlling link
      https://devcenter.heroku.com/articles/heroku-cli#download-and-instal
    3. Run 'heroku login' on your terminal
    
    * Setup
    1. Create app on heroku using 'heroku create <app_name>' (you can check with 'git remote -v')
    2. Set heroku master key using 'heroku config:set RAILS_MASTER_KEY = <your_key>'
    3. Commit your changes, then push to heroku using 'git push heroku master'
   
   * Database setup
    1. Load schema file in heroku using 'heroku run rails db:schema:load'
    2. Migrate the database changes in heroku using 'heroku run rails db:migrate'
    3. Load seed file in heroku using 'heroku rails db:seed;
    4. Check your database.yml make sure it has configs for production



# ARCHITECTURE AND HIGH LEVEL DESIGN
  * Application architecture
  
    ![Mtg-market-structure](https://user-images.githubusercontent.com/8579501/62594619-91ee9400-b91e-11e9-8a99-72a01b2ca845.png)
  
  * High level components
  
    * Controllers
  
      * Trades
        Trades controller is responsible for
        - rendering root page in trades/index.html.erb
        - let user register/unregister as a seller in trades/edit.html.erb
        - show stock result in trades/show.html.erb

      * Cards
        Cards controller is responsible
        for
        - show all cards in database in cards/index.html.erb
        - show detail of a card in cards/show.html.erb
  
      * Stocks
        Stokc controller is responsible for
        - show all stocked item to seller in stocks/index.html.erb
        - add a new stock in stocks/new.html.erb
        - edit a stock in stocks/edit.html.erb
        - delete a stock
  
      * Orders
        Orders controller is responsible for
        - show user what is in cart in orders/index.html.erb
        - checkout an item in orders/new.html.erb
        - confirm payment of an item in cart in orders/complete.html.erb
        - delete an item

      * Order_items
        Order_items controller is responsible for
        - add new item in cart in order_items/new.html.erb
        - edit an item in cart in orders/index.html.erb
        - delete an item in cart in orders/index.html.erb
  
    * Models
  
      * User
        User model stores all user information and provides corresponding information when there is a request from controllers.

        It is also responsible for
        - seller registration/unregistration
        - show user name when there is one
      
      * Stock
        Stock model stores all stock information that a seller has. Owner of the stock can edit their stoke items.

        It is also responsible for
        - creat a stock
        - update the stock item
        - sort the stock in latest to earliest order
      
      * Card
        Card model stores all cards information.

        It is also responsible for
        - search a card
        - return a particualr card id
      
      * Order
        Order model stores all information in the cart

        It is also responsible for
        - calculating the total price in the cart (not in use at moment, this is designed for a future features that users can checkout everything in their cart )
      
      * OrderItem
        OrderItem model stores all information about an ordered item which is composed of buyer, seller, item and items quantity.


  * Data structure of similar app/site
    There are a couple of app/sites that serves a similar goal as our app. One of the examples if eBay.
    * eBay:
      ebay uses a strict data structrue to improve teh efficiency of the data searching and well prepared for things fail to work. When sellers on ebay wants to sell an item, it will be a list of categories (such as quantity, price etc) for them to pick. By doing that, ebay can have structured data for each item which enables better performance.

      ebay also plans with question like what if the load is ten times more. This enables them be prepared for unexpected situations.
  
  * User Stories

    * US-1: User can login/out.
    * US-2: User can view all cards that match a particular title
    * US-3: User can view all cards available for sale
    * US-4: User can view all cards in the database
    and view the detail of a particular card
    * US-5: User can manage their stock
    * US-6: User can manage their cart

  * Wireframe
  
    * 

  * Planning and Tracking
  
    This project is planned and tracked through trello board. Team members need to explain to the rest of the team what they did yesterday or last week and update the coresponding tasks on trello. If there are any issues, we use slack to communicate with others. The detailed meeting records can be found in documents/meeting_record.pdf. 

  * Agile methodology implementation
  
    * 
  
  * Source control process
  
    ![image](https://user-images.githubusercontent.com/8579501/62620152-dcdacc80-b95b-11e9-9c5f-8eb4f33989e5.png)
  
    ![image](https://user-images.githubusercontent.com/8579501/62620196-fda32200-b95b-11e9-9e5a-90065c4053bf.png)

  * Testing

# INFORMATION SECURITY AND USER DATA
  * Discuss and analyse information security and methods
    * Current information security issues:
      * User authentication
        * Issues:
        - Authenticate users before they access certain pages like member only pages
        - Minimun access right
        - Account information storage
        - Backup for user information

        * Solutions:
          - Use before_action to authenticate users when they access certain pages like memebr only pages
          - User account should be given minimum access right that allows them use the website features
          - Colud backup could be a good solution that keeps user information secure and recoverable
  
      * Payment checkout
        * Issues:
          - Checkout session includes sensitive user information
          - Secure checkout session
        * Solutions
          - Use third party checkout service Stripe which provides better security for checkout
          - Using one time checkout so that sensitive information won't be recorded
          - Stripe javascript library is included in each page to detect anomalous behavior that may be indicative of fraud as customers browse the website
  
    * Future information security features
    * Access, Authentication, and Authorization Management
      - Grant the minimum, sufficient access or privileges
      - Review accounts at least annually
      - Manage passwords and password processing securely
      - Require two-factor authentication for system access 

    * Disaster recovery planning and data backup
      - Identify mission critical systems
      - Evaluate new systems prior to go-live
      - Align data backup procedures with DR objectives
      - Identify primary responsibility for data backup
  
    * Electronic data disposal
      - Sanitize device/storage media before transfer
      - Remove licensed software from device/storage media before transfer
  
    * Encryption
      - Use encryption that meets NIST FIPS minimum requirements
      - Encrypt data at rest in data centers
      - Encrypt data at rest with cloud providers
  
    * Information security risk management
      - Categorize IT assets according to their sensitivity and criticality
      - Conduct risk assessments annually
      - Maintain risk assessment data as confidential, classified as High
      - Implement the appropriate risk-reducing controls

  * Research legality
    As this app handles personal information, therefore, we have obligations to protect user information from theft, misuse, interference, loss, unauthorised access, modification and disclosure. And these obligations are under the Pravicy Act 1988 that regualtes business owners who require to handle personal information. 

    To comply these regulations, there are some methods could be used:
    - Review database annually 
    - Backup user information in multiple places such as cloud database
    - Structured database
    - Encrypt sensitive information such user address, names and contact detail
    - Make information security risk management
    - Have a recovery plan
    - Maintain risk assessment data as confidential



# DATABASE DESIGN
  * ERD

    ![Mtg-erd](https://user-images.githubusercontent.com/8579501/62619053-21b13400-b959-11e9-9d7b-4c01be79673e.png)

  * Understanding of relational database
    The database of this app is composed of 5 tables for current version which are User table, Order table, OrderItem table, Stock table and Card table. Each table ueses a unique ID generated from postgres as its primary key that can be used to identify each record. We also use foreign keys in some of tables to prevent data duplication and to keep the integrity of data. Both user table and OrderItem are good examples of this. Besides this, we valid all input information that enters our database to minimize the risks of database contamination. The purpose of each table is explained below.

    * User table
      User table stores all information about a user inclduing id(or user_id as pk), email, password, username and registered (as a seller). This table is generated from devise gem. Therefore, it has a complete validation for email format and password such as minimum length of password and email must be example@email.com format. 
      
      The original design is to have a seller table that stores all registered sellers. Since we simplified the process of being a seller, seller table will only have dulicated user data. As a result, we decide to remove the seller table from current version and add a new column in user table to indeciate who is a seller. But we will add the seller table later on as we will require more detail from a user when he/she wants to register as a seller.

      Hence when a user is created, it is assumed to be a buyer only unless the user wants to register as a seller later on.

      As one of the features of this app, users can decide their usernames. But this is optional, if user doesn't choose a username, their email address will be displayed instead.

    * Order table
      Order table stores all information related to cart including id (or order_id as pk) buyer_id (as fk) and total cost. Every time when user makes an action (such as add/update/delete/checkout an item) in the cart, the order needs to update itself and save the changes. Since an order needs to konw who ordered what, it uses foreign keys to access user table and orderitem table.

    * OrderItem table
      OrderItem table stores information about a particular item that is placed in a user's order. It includes id(or order_item_id as pk), order_id (as fk), stock_id (as fk) and quantity. This table is a good example of using foreign key. It accessed order table and stock table for required information instead of storing them in the table itself. The benefit of doing this is to prevent data duplication, keep the integrity of data and reduce the amount of database access. 
    
    * Stock table
      Stock table stores information about a seller's stock. It includes id (or stock_id as pk), card_id (as fk), seller_id (as fk), quantity, price and condition. Once a seller stocks an item, the stocked item will be displayed in the market. This table uses foreign keys to access to user table and card table for required information.

    * Card table
      Card table stores all attributes about a card. This includes id (card_id as pk), title, type, color, rarity, converted_mana_cost, set and date. As Magic cards are realeased by Wizards of Coast, this table is designed as a card library that stores all published cards (which is a future feature). Therefore, this table should only be edited by admin users (which is also another future feature).

  * Entities
    * User table
      - id (integer)
        Each user has a unique id to identify himself/herself. It is auto generated by postgres as a compulsory part each table. It serves as the primay of this table and also used as foreign keys in other tables.

      - username (string)
        Users can choose their own usernames to display instead of eamil. But this is optional. If username doesn't exist, the app will show user's eamil instead.

      - email (string)
        Email is a compulsory element in this table. It is generated from devise. When username doesn't exist, this will be displayer in this app. Devise gem will valid user input such as the correct email format.

      - password (string)
        Password is a compulsory element in this table. It is generated from devise. Devise gem will valid user input such as the minimum length.

      - registered (boolean)
        Registered indicates that if a user is registered as a seller. Therefore it is a true or false. By default, it is initialized as flase. But user can register themselved later on.
    
    * Order table
      - id (integer)
        
      - buyer_id (integer)
    
      - total (decimal)
    
    
    * OrderItem table
      - id (integer)
    
      - order_id (integer)
    
      - quantity (integer)
    
      - stock_id (integer)
    
    * Stock table
      - id (integer)
    
      - card_id (integer)
    
      - seller_id (integer)
    
      - quantity (integer)
    
      - price (decimal)
    
      - condition (string)
    
    * Card table
      A standard magic card is showed below as an example. The basic attributes include title, card type, color,
      rarity, converted mana cost, attack (not included at this version), life point (not included at this version), special effects (not included at this version), released set and released date.
      
      Use the example below,
      
      Title is: Nicol Bolas, Dragon-God
      Card type: Plainwalkers
      Color: Blue, black, red
      Rarity: Rare
      Converted mana cost: 1 blue mana, 3 black mana and 1 red mana
      Released set: Spark of war
      Released date: 2019
      Example: 
      
      ![war-207-nicol-bolas-dragon-god](https://user-images.githubusercontent.com/8579501/62700007-268eea00-ba24-11e9-9053-920a25085473.jpg)

      - id (integer)
        Each card has an id to identify itself. It is also the primary key in this table that is generated from postgres when the table is generated. It is used as foreign keys in other tables to grant the access to card information.

      - title (string)
        Card title is a compulsory element in this table as a card must have a title. It is set to be string type as a card title can be any characters including integers and letters.

      - card_type (string)
        Card type is a compulsory element in this table as a card must have a card type. As a future feature, it will be confined into a list of options for user to choose from. This is also designed to be a searching condition for advanced searching feature in the future.
      
      - color (string)
        Card color is a compulsory element in this table as a card must have a card color. As a future feature, it will be confined into a list of options for user to choose from. This is also designed to be a searching condition for advanced searching feature in the future.

      - rarity (string)
        Card rarity is a compulsory element in this table as a card must have a rarity. As a future feature, it will be confined into a list of options for user to choose from. This is also designed to be a searching condition for advanced searching feature in the future.

      - converted_mana_cost (integer)
        Converted mana cost is a compulsory element in this table as a card must have a converted mana cost. As a future feature, it will be confined into a list of options for user to choose from.This is also designed to be a searching condition for advanced searching feature in the future.

      - set (string)
        Set is a compulsory element in this table as a card must have a set. As a future feature, it will be confined into a list of options with auto complete feature for user to choose from. This is also designed to be a searching condition for advanced searching feature in the future.

      - date (date)
        Release date is a compulsory element in this table as a card must have a release date. As a future feature, it will be confined into a list of options with auto complete feature for user to choose from. This is also designed to be a searching condition for advanced searching feature in the future.

  * Model relationships
    
    * User has one order (one to one)



    * User can have many stocks (one option to many)



    * An order can have many order items (one to many)



    * A stock can have many order items (one to many)



    * A card has  many stocks (one to many)

  * Model discussion
    * User
    * Order
    * OrderItem
    * Stock
    * Card

