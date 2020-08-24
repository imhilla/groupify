# Groupify [![Awesome](https://cdn.rawgit.com/sindresorhus/awesome/d7305f38d29fed78fa85652e3a63e154dd8e8829/media/badge.svg)](https://github.com/imhilla/groupify)

[![License](https://img.shields.io/badge/License-MIT-green.svg)]()
![GitHub followers](https://img.shields.io/github/followers/imhilla?label=imhilla&style=social)
![Twitter URL](https://img.shields.io/twitter/follow/hillarykiptoo_?label=Follow&style=social) [![License]

> This is a Microverse Ruby on Rails Capstone Project

> Groupify!

## Description

Groupify is a web app that allows users with a particular mindset to share articles or any content that pertains to the group. Users get to create groups, then create articles under that group name and image. Users of the app can see all articles in the feeds section, while having the opportunity to view individuals' articles in their profile. Users can like articles and provide feedback and information. 

The apps function is so stellar that you can see who has liked and commented on an article. It shows group names as #hashtags and provides a default #groupify for stray articles.

There are sections for example in the recent section, users can see articles in the latest written articles. The viceversa is true since users can see articles in ancient order.



## Live version

This is a web app and not a website. Access the web app <a href="https://groupify-hilla.herokuapp.com/">here</a> via phone.



## Features

In this capstone project, the following actions were done;

### Functionalities added

This project was built from scratch and here's the MVP of this version
- The user logs in to the app with their username and password.
- The user is presented with a profile page that includes links to:
   - "Users profile with username, name, and image".
   - "Feed".
   - "External articles without group".
   - "All my transactions".
   - "All groups in the application".
- When user opens "Users profile with username, name, and image" page:
   - Total articles count is shown at the top.
   - All current user's articles are shown.
   - An action button create article is shown.
- When user opens "Feed link":
   - Total articles count is shown at the top.
   - All articles are shown.
   - An action button create article is shown.
- When user opens "Externals"
   - Articles without groups are shown, sorted by the most recent.
- When user opens "All groups" page:
   - A list of all groups is displayed
   - Each group displays its icon, name and creation date.
   - An action button "Create new" is displayed.
- When user opens "Create new group" page:
   - A form with all necessary fields is displayed.
 
More functionalities are added such as the ability to like and comment at articles.
 


### Tests

- Added tests for model and features of the app
- 'rspec', 'capybara' and 'shoulda-matchers' gems are used for tests

## Built with

- Ruby on rails
- Git
- PostgreSQL
- lucidchart for ERD
- Shields.io

## Setup

- Clone this repository
- Open terminal
- Change directory by using `cd groupify/`
- Run `bundle install --without production`
- Run `rails db:migrate`
- Open rails server by using `rails s`
- Open browser and go to http://localhost:3000

## Test app

- Follow steps given in Setup part
- Install Chrome from [main page of Chrome](https://www.google.com/chrome/) or [terminal](https://linuxize.com/post/how-to-install-google-chrome-web-browser-on-ubuntu-18-04/) 
- Run `rails db:test:prepare`
- Run `rspec`

## Authors

Reach out to me!

👤 **Hillary Kiptoo**

- LinkedIn: [Hillary Kiptoo](https://www.linkedin.com/in/hillarykiptoo)
- Github: [@imhilla](https://github.com/imhilla)
- Twitter: [@hillarykiptoo](https://twitter.com/hillarykiptoo_)

## Contributing 🤝

Contributions, issues, and feature requests are welcome!

Feel free to check the [issues page](https://github.com/imhilla/groupify/issues).

## Acknowledgments

- Thanks to Microverse for its support!
- Design idea by Gregoire Vella on Behance

## Show your support

Give a ⭐️ if you like this project!

## License

[![License](http://img.shields.io/:license-mit-blue.svg?style=flat-square)](http://badges.mit-license.org)

- **[MIT license](http://opensource.org/licenses/mit-license.php)**
