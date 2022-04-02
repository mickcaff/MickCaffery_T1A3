# About
## RECIPE PRO
Recipe pro is a terminal application which was created as a part of Coder Academy's T1A3 assignment. The app was born from the idea to digitise all of my favourite recipes, to make them easier to navigate, and the process of creating a groceries list simpler. The user can navigate through the apps recipes by searching for there chosen ingredient. 

### Features
- Search recipes based on ingredients
- View recipes
- Select ingredients to be added to a groceries list

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

**If you do not have Bundler**, then please install Bundler before continuing...


**If you do have Bundler**, then please continue below:

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




### Command Line Arguments ###

# Dependencies

This application is written in Ruby programming language, and requires Ruby to be installed to run. Instructions on how to download and install Ruby can be found at [ruby-lang.org](https://www.ruby-lang.org/en/downloads/).

The app uses the following Ruby Gems:
```
source "https://rubygems.org"
gem "rspec", "~> 3.11"
gem "coderay", "~> 1.1"
gem 'tty-font'
gem "tty-prompt"
gem "colorize", "~> 0.8.1"
```
# System and Hardware Requirements