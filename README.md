# README
Gen tech rails assessment
mtg-card-trade

# CONTRIBUTORS
Mark and Sam

* Heroku deploy:
https://mtg-card-trades.herokuapp.com/

* GitHub repository:
https://github.com/kkk987/mtg-card-trade.git

# KNOW ISSUES:
  - Current validation is conflicting with order page
  - Layouts of some pages are not centered
  - More testings for each controller and model
  
# FUTURE FEATURES:
  - Show market link in card library
  - Show all stocks in market page
  - Checkout multiple items at once
  - More restrict seller registration
  - Insert card image for each card
  - Search engine for proper card search
  
# App description:
  * Purpose:

    The purpose of this rails app is to create a two-side marketplace for Magic players and people who are interested in playing magic to have a place to trade their cards.
\
    Every user can buy cards from the market if they are registered. Users can also register themselves as a seller so that they can trade their stocks with other users.
    There are other online trading websites such as eBay and Amazon as well that allows users to trade their cards. But as an app designed by magic players, one of the features of this app is to help a user to find a magic card that he/she wants.
\
    By inserting multiple searching conditions, users can narrow down to an explicit result about the cards they are looking for and if they are stocked or not. So instead of users switching between the magic card database and trading websites, we offer users the opportunity to do two things in one step with less frustrations.
<br>
  * Network Infrastructure:
\
    This app uses Heroku for its production version. Heroku is a cloud platform and unlike the other network infrastructures that allows developers to deploy their apps swiftly without concerning how to deploy.
\
    In any types of app, database is the core of the app, Heroku also provides its own database called 'Heroku PostgreSQL' which is a secure and scalable database. The followings are some aspects of Heroku network infrastructure.
<br>
    * Routing
\
      Routes in Heroku are responsible for determine   the location of the application’s web dyno   which is a collection of lightweight Linux   containers. And HTTP requests are forwarded to   these dynos. Heroku infrastructure enables full support of HTTP 1.1 features which will   help applications to load faster.
<br>
    * Request distribution
\
      Routers in Heroku use a random selection algorithm for balancing HTTP requests across web dynos. And since Heroku is a cloud platform, when it comes to many dynos, the algorithm may optionally bias its selection towards dynos resident in the same availability zone.
<br>
    * Timeout
\
      In Heroku, after a dyno connection is established, HTTP requests have a 30-second window where the web process must provide response data (any responses that indicate this process is running). If a process failed to send a response data with 30 seconds, the web process will be terminated.
      After the initial response, each byte it sent will reset a 55-second window. If no data is sent for 55 seconds, the web process will be terminated. 
<br>
# THIRD PARTY SERVICES
\
  All third-party software and services are included in gem files. Please 'bundle install' first.
<br>
  * Third party software

    * Devise
\
      Devise provides a flexible authentication solution for rails. It is MVC based, modularized and allows multiple models sign in at the same time. It also provides many useful built-in methods such as current user which will pass the user object of the current login session.
\
      Devise covers 10 modules related to user authentication. They can be used all together of separately. In this app, the following features are used:
          - Sign up
          - Log in/out
          - Email and password validation
<br>
    * Bulma
\
      Bulma is a free open-source, CSS framework based on flexbox. It allows developers to style their websites in an efficient way with responsive designs. Since it is CSS based, developers can style their html files while design them. Bulma also allows customization for its style methods which provides more flexibilities in styling.
\
      As this app is still in prototype stage, a quick style solution can help us to better visualize our designs.
<br>
    * jQuery
\
      jQuery is a fast, small and feature rich JavaScript library. In this app, jQuery is a pre-requirement for jQuery-rails to be used.
<br>
    * jQuery-rails
\
      jQuery-rails generates jQuery for rails, and it has multiple features that allow people has little knowledge of JavaScript to use. 
\
      In this app, jQuery-rails enables auto-complete search feature that minimizes the typing error and improve the user experience.
<br>
    * Rspec
\
      Rspec is testing tool designed for rails. One of the features of Rspec is that it uses human languages more than normal coding languages. That provides more readability for developers and managers.
\
      In this app, it provides auto testings for each unit such model and controller to make sure they act as we expected. 
<br>
  * Third party services
<br>
    * Cloudinary
      Cloudinary provides a cloud-based image and video management solution. It allows users to upload, store, manage and delivery images and videos.
\
      In this app, it is installed for the future features advancements which allow a stock and a card has an image attachment.
<br>
    * Stripe
\
      Stripe is third party checkout service. It helps user to do make a secure and fast checkout. And depends on the market type, it also provides checkout solutions for multiple vendors market which allows buyer to pay multiple sellers at once. 
\
      Since this app is still in development stage, it uses one-time checkout session that Stripe provides. The benefits for this type of checkout is that user's sensitive information won't be recorded which provides less risks of privacy leakage. The disadvantage is that user will need to enter their card detail every time.
<br>
    * Heroku
\
      Heroku is a cloud platform that allows user to deploy their app online. Heroku provides its own network framework and database which enables user to make swift deployment of their app. And Heroku adapts deployment from git which makes it more convenient for deployment.
\
      In this app, Heroku is our primary deploy platform. We used an auto deploy feature that Heroku provided to deploy our app when the master branch on git repository has a change.
<br>
# DATABASING

  * Describe database structure

      In this app, we use postgres as our primary database for our development. For production part, Heroku provides its own database which is called 'Heroku Postgres' which is based on postgres as well. Therefore, we can deploy our database setting without extra work.
<br>
    * Pros
\
      There are a couple of benefits of adapting postgres. The first is that it is one of the most popular databases management systems. Therefore, it has many extension scripts to serve different purposes.
\
      Second, it is a feature rich management system. Developers can write own extension scripts very easily.
\
      Last, it supports migration from another major open source database. For this project, one of the future features is to import all magic card information into our database. This feature can help us to better achieve it
<br>
    * Cons
\
      As we mentioned in above section, this is a feature rich database management system. Hence, it will take some time for developers to learn what postgres are capable of. And with these included features, it might be an overkill for small projects.
<br>
  * Describe the production database setup
\
    In this project, we use postgres from both our development and production. The schema config and seed files are compatible with each other. To setup Heroku postgres, we are doing similar steps that we were doing in local environment.
<br>
    * To prepare
<br>
    1. Create a Heroku account if you don't have one
    2. Install Heroku CLI from the fowling link
      https://devcenter.heroku.com/articles/heroku-cli#download-and-instal
    3. Run 'Heroku login' on your terminal
<br>
    * Setup
    1. Create app on Heroku using 'Heroku create <app_name>' (you can check with 'git remote -v')
    2. Set Heroku master key using 'Heroku config:set RAILS_MASTER_KEY = <your_key>'
    3. Commit your changes, then push to Heroku using 'git push Heroku master'
<br>
    * Database setup
<br>
    1. Load schema file in Heroku using 'Heroku run rails db:schema:load'
    2. Migrate the database changes in Heroku using 'Heroku run rails db:migrate'
    3. Load seed file in Heroku using 'Heroku rails db:seed;
    4. Check your database.yml make sure it has configs for production


# ARCHITECTURE AND HIGH-LEVEL DESIGN
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
        Stock controller is responsible for
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
        - create a stock
        - update the stock item
        - sort the stock in latest to earliest order
      
      * Card
        Card model stores all cards information.

        It is also responsible for
        - search a card
        - return a card id
      
      * Order
        Order model stores all information in the cart

        It is also responsible for
        - calculating the total price in the cart (not in use at moment, this is designed for a future feature that users can check out everything in their cart)
      
      * OrderItem
        OrderItem model stores all information about an ordered item which is composed of buyer, seller, item and items quantity.

  * Data structure of similar app/site
    There are a couple of app/sites that serves a similar goal as our app. One of the examples if eBay.
    * eBay:
      eBay uses a strict data structure to improve the efficiency of the data searching and well prepared for things fail to work. When sellers on eBay wants to sell an item, it will be a list of categories (such as quantity, price etc) for them to pick. By doing that, eBay can have structured data for each item which enables better performance.

      eBay also plans with question like what if the load is ten times more. This enables them to be prepared for unexpected situations.
  
  * User Stories

    * US-1: User can login/out.
    * US-2: User can view all stocks of a particular card
    * US-3: User can view their stock
    * US-4: User can view all cards in the database
    and view the detail of a card
    * US-5: User can manage their stock
    * US-6: User can manage their cart and checkout

  * Wireframe
  
    * Homepage
      ![IMG_3433](https://user-images.githubusercontent.com/8579501/62816904-96f75180-bb71-11e9-89a0-b5aa4fcf18fe.jpg)
      ![IMG_3434](https://user-images.githubusercontent.com/8579501/62816905-96f75180-bb71-11e9-9e5e-eadd7b1f0687.jpg)
      ![IMG_3435](https://user-images.githubusercontent.com/8579501/62816907-96f75180-bb71-11e9-8c0e-65719737b3fe.jpg)
    * Register as a seller
      ![IMG_3436](https://user-images.githubusercontent.com/8579501/62816908-978fe800-bb71-11e9-96b4-9f73e9fd02fc.jpg)
      ![IMG_3437](https://user-images.githubusercontent.com/8579501/62816909-978fe800-bb71-11e9-8cfd-97ebd41be479.jpg)
      ![IMG_3438](https://user-images.githubusercontent.com/8579501/62816910-978fe800-bb71-11e9-893e-96dee5156fc7.jpg)
    * Stock
      ![IMG_3439](https://user-images.githubusercontent.com/8579501/62816911-978fe800-bb71-11e9-926d-791bf42475db.jpg)
      ![IMG_3440](https://user-images.githubusercontent.com/8579501/62816912-98287e80-bb71-11e9-9759-a750a70b586e.jpg)
      ![IMG_3441](https://user-images.githubusercontent.com/8579501/62816913-98287e80-bb71-11e9-812b-1edfc5cb39d2.jpg)
    * Card
      ![IMG_3442](https://user-images.githubusercontent.com/8579501/62816914-98287e80-bb71-11e9-989a-023b79d8ae98.jpg)
      ![IMG_3443](https://user-images.githubusercontent.com/8579501/62816915-9959ab80-bb71-11e9-8bca-abbe2c8012a5.jpg)
      ![IMG_3444](https://user-images.githubusercontent.com/8579501/62816916-9959ab80-bb71-11e9-8bc1-f16da934cba8.jpg)
    * Cart
      ![IMG_3445](https://user-images.githubusercontent.com/8579501/62816917-99f24200-bb71-11e9-9236-2d68eadc6980.jpg)
      ![IMG_3446](https://user-images.githubusercontent.com/8579501/62816918-99f24200-bb71-11e9-94e5-7c265b4d65ad.jpg)
      ![IMG_3447](https://user-images.githubusercontent.com/8579501/62816919-9a8ad880-bb71-11e9-999f-87ae4533bfd7.jpg)
    * Market
      ![IMG_3448](https://user-images.githubusercontent.com/8579501/62816920-9a8ad880-bb71-11e9-8ace-3927fdccae42.jpg)
      ![IMG_3449](https://user-images.githubusercontent.com/8579501/62816921-9b236f00-bb71-11e9-92d0-e7d32d990aa7.jpg)
      ![IMG_3450](https://user-images.githubusercontent.com/8579501/62816922-9b236f00-bb71-11e9-901c-492e3dfcaa90.jpg)

  * Planning and Tracking
  
    This project is planned and tracked through trello board. Team members need to explain to the rest of the team what they did yesterday or last week and update the corresponding tasks on trello. If there are any issues, we use slack to communicate with others. The detailed meeting records can be found in docs/resources/meeting_record.pdf. 

  * Agile methodology implementation

    This project uses trello board and slack as communication methods. The benifits of using trello board are that develpers can visulise what needs to be down. And slack is easy to share code and documents. The detail use of trello board please refer to docs/resources/meeting_record.pdf
  
  * Source control process
  
    ![image](https://user-images.githubusercontent.com/8579501/62620152-dcdacc80-b95b-11e9-9c5f-8eb4f33989e5.png)
  
    ![image](https://user-images.githubusercontent.com/8579501/62620196-fda32200-b95b-11e9-9e5a-90065c4053bf.png)

  * Testing
    Please find more informtaion in docs/resources/TestCase.xlsx file.

    ![image](https://user-images.githubusercontent.com/8579501/62817670-d2981880-bb7d-11e9-90f0-0e19ea52948b.png)



# INFORMATION SECURITY AND USER DATA
  * Discuss and analyse information security and methods
    * Current information security issues:
      * User authentication
        * Issues:
        - Authenticate users before they access certain pages like member only pages
        - Minimum access right
        - Account information storage
        - Backup for user information

        * Solutions:
          - Use before_action to authenticate users when they access certain pages like member only pages
          - User account should be given minimum access right that allows them to use the website features
          - Cloud backup could be a good solution that keeps user information secure and recoverable
  
      * Payment checkout
        * Issues:
          - Checkout session includes sensitive user information
          - Secure checkout session
        * Solutions
          - Use third party checkout service Stripe which provides better security for checkout
          - Using one-time checkout so that sensitive information won't be recorded
          - Stripe JavaScript library is included in each page to detect anomalous behaviour that may be indicative of fraud as customers browse the website
  
    * Future information security features
    * Access, Authentication, and Authorization Management
      - Grant the minimum, enough access or privileges
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
      - Encrypt data at rest in data centres
      - Encrypt data at rest with cloud providers
  
    * Information security risk management
      - Categorize IT assets according to their sensitivity and criticality
      - Conduct risk assessments annually
      - Maintain risk assessment data as confidential, classified as High
      - Implement the appropriate risk-reducing controls

  * Research legality
    As this app handles personal information, therefore, we have obligations to protect user information from theft, misuse, interference, loss, unauthorised access, modification and disclosure. And these obligations are under the Privacy Act 1988 that regulates business owners who require to handle personal information. 

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
    The database of this app is composed of 5 tables for current version which are User table, Order table, OrderItem table, Stock table and Card table. Each table uses a unique ID generated from postgres as its primary key that can be used to identify each record. We also use foreign keys in some of tables to prevent data duplication and to keep the integrity of data. Both user table and OrderItem are good examples of this. Besides this, we valid all input information that enters our database to minimize the risks of database contamination. The purpose of each table is explained below.

    * User table
      User table stores all information about a user including id (or user_id as pk), email, password, username and registered (as a seller). This table is generated from devise gem. Therefore, it has a complete validation for email format and password such as minimum length of password and email must be example@email.com format. 
      
      The original design is to have a seller table that stores all registered sellers. Since we simplified the process of being a seller, seller table will only have duplicated user data. As a result, we decide to remove the seller table from current version and add a new column in user table to indicate who is a seller. But we will add the seller table later as we will require more detail from a user when he/she wants to register as a seller.

      Hence when a user is created, it is assumed to be a buyer only unless the user wants to register as a seller later.

      As one of the features of this app, users can decide their usernames. But this is optional, if user doesn't choose a username, their email address will be displayed instead.

    * Order table
      Order table stores all information related to cart including id (or order_id as pk) buyer_id (as fk) and total cost. Every time when user makes an action (such as add/update/delete/checkout an item) in the cart, the order needs to update itself and save the changes. Since an order needs to know who ordered what, it uses foreign keys to access user table and orderitem table.

    * OrderItem table
      OrderItem table stores information about an item that is placed in a user's order. It includes id (or order_item_id as pk), order_id (as fk), stock_id (as fk) and quantity. This table is a good example of using foreign key. It accessed order table and stock table for required information instead of storing them in the table itself. The benefit of doing this is to prevent data duplication, keep the integrity of data and reduce the amount of database access. 
    
    * Stock table
      Stock table stores information about a seller's stock. It includes id (or stock_id as pk), card_id (as fk), seller_id (as fk), quantity, price and condition. Once a seller stocks an item, the stocked item will be displayed in the market. This table uses foreign keys to access to user table and card table for required information.

    * Card table
      Card table stores all attributes about a card. This includes id (card_id as pk), title, type, color, rarity, converted_mana_cost, set and date. As Magic cards are released by Wizards of Coast, this table is designed as a card library that stores all published cards (which is a future feature). Therefore, this table should only be edited by admin users (which is also another future feature).

  * Entities
    * User table
      - id (integer)
        Each user has a unique id to identify himself/herself. It is auto generated by postgres as a compulsory part of each table. It serves as the primary key of this table and used as foreign keys in other tables.

      - username (string)
        Users can choose their own usernames to display instead of email. But this is optional. If username doesn't exist, the app will show user's email instead.

      - email (string)
        Email is a compulsory element in this table. It is generated from devise. When username doesn't exist, this will be displayed in this app. Devise gem will valid user input such as the correct email format.

      - password (string)
        Password is a compulsory element in this table. It is generated from devise. Devise gem will valid user input such as the minimum length.

      - registered (boolean)
        Registered indicates that if a user is registered as a seller. Therefore, it is a true or false. By default, it is initialized as false. But user can register themselves later.
    
    * Order table
      - id (integer)
        Each order has a unique id to identify itself. It is auto generated by postgres as a compulsory part of each table. It serves as the primary key of this table and used as foreign keys in other tables.

      - buyer_id (integer)
        Buyer_id is a compulsory element of this table as an order must have a buyer who makes the order.

        It is also a foreign key that references the id in user table as a buyer is another user. By setting this foreign key, order table can access user table for required data such as buyer information. Since user id is integer type, the buyer id is set the same.

      - total (decimal)
        Total is the total cost of the order. It is compulsory in this table as an order must have a total price. In this version of app, the total calculates the total price of each individual order item. Since it indicates the price, it is set to be decimal that with 2 decimal places.
    
    * OrderItem table
      - id (integer)
        Each order item has a unique id to identify itself. It is auto generated by postgres as a compulsory part of each table. It serves as the primary key of this table.
    
      - order_id (integer)
        Order_id is a compulsory element of this table as an order item must be listed in a buyer's order.

        It is also a foreign key that references the id in order table as it indicates which order this order item belongs to. By setting this foreign key, order item table can access order table for required data such as the buyer information. Since order id is integer type, the reference id is set the same.

      - quantity (integer)
        Quantity is a compulsory element of this table as an order item must have a quantity. It is required to calculate the total price in order table. Since it counts the quantity, it is set to be integer type.

      - stock_id (integer)
        Stock_id is a compulsory element of this table as an order item must be ordered from a seller's stock.

        It is also a foreign key that references the id in stock table as it indicates which stock this order item purchases from. By setting this foreign key, order item table can access stock table for required data such as the seller information. Since stock id is integer type, the reference id is set the same.

    * Stock table
      - id (integer)
        Each stock has a unique id to identify itself. It is auto generated by postgres as a compulsory part of each table. It serves as the primary key of this table and used as foreign keys in other tables.

      - card_id (integer)
        Card_id is a compulsory element of this table as a stock must have a list of cards.

        It is also a foreign key that references the id in card table as it indicates which card is in stock. By setting this foreign key, stock table can access card table for required data such as the card title. Since card id is integer type, the reference id is set the same.

      - seller_id (integer)
        Seller_id is a compulsory element of this table as a stock must belong to a user.

        It is also a foreign key that references the id in user table as it indicates which user this stock belongs to. By setting this foreign key, stock table can access user table for required data such as the username. Since user id is integer type, the reference id is set the same.
        
      - quantity (integer)
        Quantity is a compulsory element of this table as an order item must have a quantity. It is required to calculate the total price in order table. Since it counts the quantity, it is set to integer type.

      - price (decimal)
        Price is a compulsory element of this table as an order item must have price. It is required to calculate the total price in order table. Since it is a price, it is set to decimal type with 2 decimal places.
    
      - condition (string)
        Condition is a compulsory element of this table as a card has different conditions such as brand new, lightly player etc. To minimize the input error, the stock model confines the results into a list of options for user to choose. Since the condition consists of characters, it is set to string type.

    * Card table
      A standard magic card is showed below as an example. The basic attributes include title, card type, color,
      rarity, converted mana cost, attack (not included at this version), life point (not included at this version), special effects (not included at this version), released set and released date.
<br>
      Use the example below,
      
      Title is Nicol Bolas, Dragon-God
      Card type: Plane walkers
      Color: Blue, black, red
      Rarity: Rare
      Converted mana cost: 1 blue mana, 3 black mana and 1 red mana
      Released set: Spark of war
      Released date: 2019
<br>
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
        Converted mana cost is a compulsory element in this table as a card must have a converted mana cost. As a future feature, it will be confined into a list of options for user to choose from. This is also designed to be a searching condition for advanced searching feature in the future.

      - set (string)
        Set is a compulsory element in this table as a card must have a set. As a future feature, it will be confined into a list of options with auto complete feature for user to choose from. This is also designed to be a searching condition for advanced searching feature in the future.

      - date (date)
        Release date is a compulsory element in this table as a card must have a release date. As a future feature, it will be confined into a list of options with auto complete feature for user to choose from. This is also designed to be a searching condition for advanced searching feature in the future.

  * Model relationships
    
    * User has one order (one mandatory to one mandatory)

      This relationship is designed for easy checkout and better user experience. And a user must have an order which serves as a cart. 
      
      The original design is one to many which means a user can have multiple orders. But this will cause great confusion to users as user may need to browse through all orders to find the one he/she needs in the worst scenario. Therefore, we design this to be a cart so that all orders will be placed in one place. Consequently, it is easier to implement and more user friendly.

    * User can have many stocks (one option to many)

      This relationship is designed when a user is registered as a seller. Since there is a probability that a user may never register himself/herself as a seller, it is one option to many. But a registered seller can stock multiple items.

      Another reason we set this relationship is that if we set a one to one relationship, users can stock one item a time which is inconvenient and unreasonable for users.
      
    * An order can have many order items (one mandatory to many)

      As explained in user relationship section, order serves as a cart in this project. The reason we choose this relationship is that this allows user to add multiple items in his/her cart. And an order item must belong to a buyer, otherwise it will be a lost order. But the order can be empty.

    * A stock can have many order items (one mandatory to many)

      There is a possibility that multiple users order the same item at the same time. In this case, a stock item will be listed as an order item by multiple users. And an order item must come from an existing stock, otherwise this will be an invalid order since the stock doesn't exist.

    * A card has many stocks (one to many)

      It is possible that a popular card is stocked by many sellers. It is reasonable to assume any users can stock card. Otherwise, only one user can stock a card if we choose one to one relationship.

  * Model discussion
    * User
      In user model, we use has_many to define the one to many relationship with stock table. And we use has _one to define the one to one relationship with order table. Devise is used because we used devise gem. After_initialize is used to set registered to be false when a record is initialized. 
  
    * Order
      In order model, we use belongs_to to define the relationship with buyer. And we reference the buyer to user table. The 'dependent :destroy' allows a record to be deleted from all associated tables. We also use has_many to define the one to many relationship with order item. Validates is used to validate user input to ensure some entities are not null.
  
    * OrderItem
      In order item model, validates is used to validate user input to ensure some entities are not null. We use belongs_to define the relationship with stock table and order table.
  
    * Stock
      In stock model, validates is used to validate user input to ensure some entities are not null. And the inclusion confines the user input. We use belongs_to to define the relationships with user table and card table. Has_many is used to define the one to many relationship with order item table. The 'dependent :destroy' allows a record to be deleted from all associated tables. 
  
    * Card
      In card model, validates is used to validate user input to ensure some entities are not null. And we use has_many to define the relationship with stock table. The 'dependent :destroy' allows a record to be deleted from all associated tables. 'Has_one_attached' is used for image attachment which is a future feature.


