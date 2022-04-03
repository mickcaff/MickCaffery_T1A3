# About
## RECIPE PRO
Welcome to my very first terminal application!

Recipe pro is a terminal app which was created for Coder Academy's Web Development Bootcamp - Term 1 assignment. 

I really enjoy cooking, and have collected all my favourite recipes over the years and have them stored either as a paper copy in a folder or a picture on my phone or onedrive. 

The weekly time consuming tradition of searching through my recipes and writing out a grocery list, is what gave birth to the idea for Recipe Pro! The app stores all of my favourite recipes and allows the user to search by ingredient, then takes the hard work out of creating a grocery list.

### The app currently has three main features:
- Search recipes based on ingredients
- View recipes
- Select ingredients to be added to a groceries list

I hope you enjoy using it! I'll be aiming to add more features to it as my Ruby coding skills improve.

Happy cheffing!

## Other Information

### Source Repository
- The link to the source control repository is: https://github.com/mickcaff/MickCaffery_T1A3

### Implementation Plan
- The implementation plan for this project was tracked using trello, which can be viewed using the following link: https://trello.com/b/3sBg2v6P/mickcafferyt1a3

### Code Styling
- The code styling was implemented by [rubocop](https://github.com/rubocop/rubocop), which follows the conventions laid out in **The Ruby Style Guide**: https://rubystyle.guide/


# Installation #

## First time installation ##
If it is your first time using the app on your local machine, then it is recommended to install all of the dependencies using Bundler. The steps to do this are shown below.

If you do not have Bundler, please first run `gem install bundler`


The simplest way to run this application on your local machine is to:
1. Download the MickCaffery_T1A3-master.zip file from the github respository https://github.com/mickcaff/MickCaffery_T1A3
2. Unzip the file
3. Using the terminal, navigate to the unzipped folder
3. Type the following command into the terminal: 
```
./install.sh
```

## Running the APP
1. Please make sure you have navigated to the unzipped folder using terminal 

2. Type the following command into the terminal:
```
./run_app.sh
```
3. It is recommend to view the terminal in full screen.




# Command Line Arguments

The following commands can be entered into the terminal:

-  'ruby rpro.rb --about' -----> About page

-  'ruby rpro.rb --help' -----> Help page

-  'ruby rpro.rb --list' -----> To see the entire list of recipes sorted alphabetically. 

-  'ruby rpro.rb chef 'name'' -----> If you would like add a personal touch. i.e 'ruby rpro.rb chef matt'

-  './run_app.sh' -----> To run the app



# Dependencies

This application is written in Ruby programming language, and requires Ruby to be installed to run. Instructions on how to download and install Ruby can be found at [ruby-lang.org](https://www.ruby-lang.org/en/downloads/).

The app uses the following Ruby Gems. These can be installed automatically through Bundler, by following the installation guide.
```
source "https://rubygems.org"
gem "rspec", "~> 3.11"
gem "coderay", "~> 1.1"
gem 'tty-font'
gem "tty-prompt"
gem "colorize", "~> 0.8.1"
gem 'tty-link'
```
# System/Hardware Requirements
There are no system/hardware requirements, apart from what is already stated in the installation and dependencies sections. 
