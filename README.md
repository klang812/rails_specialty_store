# Specialty Food Store

#### Week 4 Ruby Specialty Food Store - created:  3/19/2021

#### By _**Kerry Lang**_

## Technologies Used

* _Ruby 2.6.5_
* _Rails 5.2.0_
* _Bundler 1.17.2_
* _RSpec 3.10_
* _pry 0.14.0_
* _Capybara_
* _Postresql_

## Description
_This application is a product and review website for a fictitious specialty food store.  You can add/edit/delete products and reviews utlilizing a one to many relationship.  Please follow the directions below for installation and setup._

# Project Database Schema

![Table Schema](/public/img/specialty_store_schema.png)

## Setup/Installation Requirements

View directly:
* You can view this directly on my <a href="https://github.com/klang812/rails_specialty_store" target="_blank">GitHub pages</a>.

Requirements:
* You will need to use your system's **terminal emulator** to setup and use this program.
* You **must** have `Ruby 2.6.5` installed to be able to run this program ([how to install Ruby 2.6.5](https://www.learnhowtoprogram.com/ruby-and-rails/getting-started-with-ruby/installing-ruby)).
* `Bundler` is also **required**. *After you install `Ruby`*, it can be installed with the following command.
  `$ gem install bundler`

Download the repo:
* Go to https://github.com/klang812/rails_specialty_store.
* Navigate to and click the green <img src="code.PNG" alt="code" height="20"> button on middle upper right part of webpage.
* Click on "Download ZIP"
* Navigate to the downloaded zip and open it.
* Open the folder inside the zip.
* Double-click on the HTML file to open it in your default browser.

Clone the repo:
* Go to https://github.com/klang812/rails_specialty_store.
* Navigate to and click the green <img src="code.PNG" alt="code" height="20"> that is near the right edge of the tab bar atop this README.
* Copy the HTTPs address to your clipboard.
* Open terminal or bash and navigate to or create a directory into which you will store the entire project on your machine.
* Once you have switched into your desired directory, in your terminal or command line prompt, enter the following:
> `$ git clone https://github.com/klang812/rails_specialty_store` and press <kbd>ENTER</kdb>
* Change directory into the new root folder of this project
> `$ cd rails_specialty_store`
* Type "code ." into your terminal to launch your default text/code editer at this directory
> `$ code .`
* Install all application dependencies using `Bundler`.  This will install all packages listed in the `Gemfile`.
  `$ bundle install`

* You will need to use rails to set up the database on Postgres by running the following commands:
> `$ rake db:create`<br>
> `$ rake db:migrate`<br>
> `$ db:test:prepare`<br>
> `$ db:seed`

* After set up please open the local version on your browser, `$ rails s`.  To open on your browser you will need to navigate to `http://localhost:3000/`.

* In order for you to get access to the site, you will need to sign up and set your account to an admin.  The first step is set up your accout and then access the rails console via the terminal.  Please follow the instructions below:

> `$ rails console`<br>
> `user = User.last`<br>
> `user.admin = true`<br>
> `user.password_hash = "[enter your password here]"`<br>
> `user.save`<br>
> `exit`


Testing:
* This is a testing project utilizing Test-Driven Development (TDD).
* Using the test command `$ rspec` you will be able to test the program yourself and verify its functionality.

## Known Bugs

* _None at this time_


## License
_GPL_

Copyright (c) 2021 **_Kerry Lang_**

## Contact Information
* Reach Kerry: via <a href="https://www.linkedin.com/in/klang812/" target="_blank">LinkedIn</a> or <a href="mailto:klang812@gmail.com" target="_blank">Email</a>.<br>
* Checkout Kerry's <a href="https://github.com/klang812" target="_blank">GitHub profile</a>.</li>