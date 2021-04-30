# AppTrackr

## Table of Contents
1. [Overview](#Overview)
1. [Product Spec](#Product-Spec)
1. [Wireframes](#Wireframes)
2. [Schema](#Schema)

## Overview
### Description
Tracks the amount of paid subscribed apps a user has and sends lets the user set a monthly budget and informs the user when the amount is over that budget. Could potentially be used to track more than just apps, e.g groceries, gas, daily expenses etc. Additionally, companies could acquire more customers from this app if the user decides to download it.(like another app store) 

### App Evaluation
[Evaluation of your app across the following attributes]
- **Category:** Daily Utilities/Self-Improvement 
- **Mobile:** This is app is mainly for mobile use becuase its made for quick info and decisions. However, it can be developed for computer as well. 
- **Story:** Analyzes the amount of apps and total subscription fees by a user. User can add subscriptions they currently use. 
- **Market:** Anyone who feels unorganized or stressed out with their expenses. 
- **Habit:** This app can be used whenever a user decides that they need to know their monthly expenses or would like to make changes from these expenses.
- **Scope:** At first, it can be used for paid apps for each user, but can eventually branch into other expenses the user has. 

## Product Spec

### 1. User Stories (Required and Optional)

**Required Must-have Stories**
- [x] User can register a new account 
- [x] User can login
- [ ] User can loginUser can see a stream of trending apps and can add it to their subscribed list 
- [ ] User can login User can add a new subscribed app that they want to track 
- [ ] User can loginUser can set a budget per month 
- [ ] User can loginUser can see all subscribed apps in the display
- [ ] User can loginUser can see the detail/description for each app they subscribed to (when they click on the subscribed app)

**Optional Nice-to-have Stories**

* User can see use calender app to remind when budget per month is exceeded 
* User can add something other than subscribed apps such as daily expenses (groceries, gas, etc...)

### 2. Screen Archetypes

* Login
   * User can login
* Register
   * User can register a new account 
* Detail 
    * User can see the detail/description for each app they subscribed to
* Profile 
    * User can see all subscribed apps in the display
    * User can set a budget per month 
* Creation
    * User can add a new subscribed app + add the subscription per month for that app that they want to track 
* Stream 
    * User can see a stream of trending apps and can add it to their subscribed list 


### 3. Navigation

**Tab Navigation** (Tab to Screen)

* Stream
* Create
* Profile 

**Flow Navigation** (Screen to Screen)

* Login - User logs into their account 
    * Stream
* Register - User signs up into their account
    * Stream
* Detail 
* Profile 
    * Detail
* Creation
    * Stream
* Stream - User can see trending apps in a list 
    * Detail

## Wireframes
![202104121811521000](https://user-images.githubusercontent.com/74073256/115314124-9aaeea00-a142-11eb-874b-9c4274abdb43.jpg)

**Models**

| Property | Type     | Description |
| -------- | -------- | -------- |
| userId    | String   |unique id for each user |
| name    | pointer to user   | user name
| appId    | String   |unique id for trending app |
| image    | file     | image for app logo |
| description | String   | describes app |
| title    | String   |title for each app |
| budget   | number   |budget per month in total|
| appCost   | number   |cost per month of app |
| numApps   | number   |number of app subscriptions |

**Networking**

List of network requests by screen

Sign Up 
(CREATE) Sign up Create a user 


func myMethod() {
  var userId = PFUser()
  userId.username = "myUsername"
  userId.password = "myPassword"

  user.signUpInBackground {
    (succeeded: Bool, error: Error?) -> Void in
    if let error = error {
      let errorString = error.localizedDescription
      // Show the errorString somewhere and let the user try again.
    } else {
      // Hooray! Let them use the app now.
    }
  }
}

Login
(GET) Get user information and authenticate 

Home Feed Screen 
(READ/GET) read app info + get app feed from api 


Single App 
(GET) get description and title from api for that app

Create 
(GET) get budget for the app we choose + get total monthly budget 

Profile 
(READ/GET/UPDATE) get profile info. + subscribed app info + get budget + edit profile info. 


![Screen Shot 2021-04-19 at 7 03 41 PM](https://user-images.githubusercontent.com/74073256/115314244-d053d300-a142-11eb-9219-80b8df94369a.png)

### Sign Up / Log Out
<img src="http://g.recordit.co/8phYK2mEWn.gif" width=600><br>

### Log In 
<img src="http://g.recordit.co/W2dPn8FiFa.gif" width=600><br>

### [BONUS] Digital Wireframes & Mockups

### [BONUS] Interactive Prototype

## Schema 
[This section will be completed in Unit 9]
### Models
[Add table of models]
### Networking
- [Add list of network requests by screen ]
- [Create basic snippets for each Parse network request]
- [OPTIONAL: List endpoints if using existing API such as Yelp]
