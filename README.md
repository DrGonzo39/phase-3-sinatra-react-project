#Arthur Benware's Phase-3 Project Server

-Hello! all the files in this repository are related to my used bike website's server
-You'll find it's meetin all requirements for the project 

#3 Main areas that created my database

-Used Active Record migrations to build both my tables and their attributes

-There are two models, Users and Bikes, with a User has many Bikes relationship. Which is reflected appropriately on the front end.

-My application controller file has all of the Sinatra methods tha control the CRUD actions on the front end client

#Other notes

-To expand on the note in application controller, the bikes get requests are there to meet the requirements. this is because I am using all
  the data on the fronted through an intial get requests to /users and thus all data changes to the child table bikes are made through nested state
  which is users, per the project guidelines. I was told this was OK by my instructor.

#Thank you for your time and I look forward to the assessment! 
