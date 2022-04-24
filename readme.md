Placeholder Readme.

# Terminal App Idea

I am developing a health and fitness terminal application as my submission for the T1A3 assignment.  The main function of the application will be the workout logger; it will allow users to enter a workout and save it.  

The tracker allows users to keep a record of any progress a user has made and keep it stored in one place and it is primarily targetted towards other developers who are interested in keeping healthy and fit.  

The application itself should, after installation greet the user and bring them to a terminal menu and ask them to enter their name, if they are in the database it will then ask them to either enter their weight or view their history.  

When a user views their history the application will allow the user to delete an entry should they choose to if for example they have accidently entered an incorrect entry.

The fitness application will offer a beginners guide to a 5x5 workout routine - a great place to start in the gym for a full body workout and to start making gains.# VittorioBianco_T1A3


R6	Develop a list of features that will be included in the application. It must include:
- at least THREE features
- describe each feature

Note: Ensure that your features above allow you to demonstrate your understanding of the following language elements and concepts:
- use of variables and the concept of variable scope
- loops and conditional control structures
- error handling


### Features

## Feature 1

The 5x5 Workout Terminal Application features a Menu system made by using the Ruby Gem TTY Prompt in a Loop.  It also contains if/else statements which correlate to the menu options, for example if the user chooses the first menu option depicted by a number one and the descriptor it will print a brief summary of the 5x5 workout regiment.

## Feature 2

The second feature the application has is it is able to read external text files and print their contents to the screen.  Variables are used to link a File.read function where the argument points to the assosciated text files and their directory.

## Feature 3

The last feature that the application has is the ability for users to log their workouts and view them.  When the user selects the menu option to log a workout they will see a printed message asking them which exercises they would like to log along with a short list of the applicable exercises in the 5x5 regiment.  The user types in their exercise which is taken with a variable "gets".  They then see another printed question asking them how many sets of the excercise they performed which again is recieved as a variable "gets" with to_i(nteger) type coercion.
Finally, the input is pushed to an empty array as a interpolated string along with a date.
This feature is wrapped side of a method / function.

<!-- 
R3	Provide full attribution to referenced sources (where applicable).


R4	Provide a link to your source control repository -->


R5	
Identify any code style guide or styling conventions that the application will adhere to.

Reference the chosen style guide appropriately.




Consult with your educator to check your features are sufficient.


R7	
Develop an implementation plan which:
- outlines how each feature will be implemented and a checklist of tasks for each feature
- prioritise the implementation of different features, or checklist items within a feature
- provide a deadline, duration or other time indicator for each feature or checklist/checklist-item

Utilise a suitable project management platform to track this implementation plan.

Provide screenshots/images and/or a reference to an accessible project management platform used to track this implementation plan. 


> Your checklists for each feature should have at least 5 items.

R8	
Design help documentation which includes a set of instructions which accurately describe how to use and install the application.

You must include:
- steps to install the application
- any dependencies required by the application to operate
- any system/hardware requirements
- how to use any command line arguments made for the application -->







<!-- Implement features in the software development plan you have designed. You must utilise a range of programming concepts and structures using Ruby such as:
- variables and variable scope
- loops and conditional control structures
- write and utilise simple functions
- error handling
- input and output
- importing a Ruby Gem
- using functions from a Ruby Gem


R12	Apply DRY (Don’t Repeat Yourself) coding principles to all code produced.



R13	Apply all style and conventions for the programming language consistently to all code produced.



R14	Creates an application which runs without error and has features that are consistent with the development plan.



R15	Design TWO tests which check that the application is running as expected.



Each test should:
- cover a different feature of the application
- state what is being tested
- provide at least TWO test cases and the expected results for each test case

> An outline of the testing procedure and cases should be included with the source code of the application


R16	Utilise source control throughout the development of the application by:
- making regular commits (at least 20 commits) with a commit message that summarises the changes
- pushing all commits to a remote repository


R17	Utilise developer tools to facilitate the execution of the application:
For example,
- writing a script which turns the application into an executable; OR
- packaging the application for use as a module or dependency -->