# **5x5 Trainer Terminal Application**

I am developing a health and fitness terminal application as my submission for the T1A3 assignment.  The main function of the application will be the workout logger; it will allow users to enter a workout and save it.  

The tracker allows users to keep a record of any progress a user has made and keep it stored in one place and it is primarily targetted towards other developers who are interested in keeping healthy and fit.  

The application itself should, after installation greet the user and bring them to a terminal menu and ask them to enter their name, if they are in the database it will then ask them to either enter their weight or view their history.  

When a user views their history the application will allow the user to delete an entry should they choose to if for example they have accidently entered an incorrect entry.

The fitness application will offer a beginners guide to a 5x5 workout routine - a great place to start in the gym for a full body workout and to start making gains.# VittorioBianco_T1A3

## **Features**

### Feature 1

The 5x5 Workout Terminal Application features a Menu system made by using the Ruby Gem TTY Prompt in a Loop.  It also contains if/else statements which correlate to the menu options, for example if the user chooses the first menu option depicted by a number one and the descriptor it will print a brief summary of the 5x5 workout regiment.

### Feature 2

The second feature the application has is it is able to read external text files and print their contents to the screen.  Variables are used to link a File.read function where the argument points to the assosciated text files and their directory.

### Feature 3

The last feature that the application has is the ability for users to log their workouts and view them.  When the user selects the menu option to log a workout they will see a printed message asking them which exercises they would like to log along with a short list of the applicable exercises in the 5x5 regiment.  The user types in their exercise which is taken with a variable "gets".  They then see another printed question asking them how many sets of the excercise they performed which again is recieved as a variable "gets" with to_i(nteger) type coercion.
Finally, the input is pushed to an empty array as a interpolated string along with a date.
This feature is wrapped side of a method / function.


## **Reference Citation**

#### **5x5 workout regiment**
- Article title:	5x5 Workout Program - The Ultimate Guide (2021)
- Website title:	Hevy - #1 Workout Tracker & Planner Gym Log App
- [URL](Https://www.hevyapp.com/5x5-workout/)
#### **Style guidance**
- Article title:	Ruby Style Guide
- Website title:	Ruby-style-guide.shopify.dev
- [URL](https://ruby-style-guide.shopify.dev/)

#### **Use of TTY Prompt**
- Article title:	File: README — Documentation for tty-prompt (0.23.1)
- Website title:	Rubydoc.info
- [URL](https://www.rubydoc.info/gems/tty-prompt)


### Project Source Repository
[T1A3 Terminal Application](https://github.com/VittorioBianco/VittorioBianco_T1A3)

### Coding Style
[![Ruby Style Guide](https://img.shields.io/badge/code_style-rubocop-brightgreen.svg)](https://github.com/rubocop/rubocop)

[![Ruby Style Guide](https://img.shields.io/badge/code_style-community-brightgreen.svg)](https://rubystyle.guide)

### Trello

### Install Guide


<!-- R17	Utilise developer tools to facilitate the execution of the application:
For example,
- writing a script which turns the application into an executable; OR
- packaging the application for use as a module or dependency --> -->