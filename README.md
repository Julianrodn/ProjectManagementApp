# Project Manager

This is a simple project manager developed in Ruby on Rails. It allows users to create projects, add user stories, and manage tickets associated with each story.

## Features
* Creation, editing, and deletion of projects.
* Adding, editing, and deleting user stories within a project.
* Management of tickets associated with each user story.
* User authentication with Devise.
* Association of users with a company.

## Technologies Used
* Ruby on Rails
* HTML/Tailwind CSS
* JavaScript
* Devise
* PostgreSQL

## Installation
Clone this repository to your local machine:
```bash
git clone https://github.com/your-username/project-manager.git
```

Install Ruby dependencies:
```bash
bundle install
```

Install JavaScript dependencies:
```bash
yarn install
```

## Database
Create the database and run migrations:
```bash
rails db:create
rails db:migrate
```

If you want to seed the database with example data, you can run:
```bash
rails db:seed
```

## Running the Project

To run the development server, use the following command:
```bash
rails server
```

Then, open your web browser and go to http://localhost:3000 to see the application in action.
