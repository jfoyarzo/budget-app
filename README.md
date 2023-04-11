<a name="readme-top"></a>

# 📗 Table of Contents

- [📗 Table of Contents](#-table-of-contents)
- [📖 Budget Pal (rails app) ](#-budget-pal-rails-app-)
  - [🛠 Built With ](#-built-with-)
    - [Tech Stack ](#tech-stack-)
    - [Key Features ](#key-features-)
  - [🚀 Live Demo ](#-live-demo-)
  - [💻 Getting Started ](#-getting-started-)
    - [Prerequisites](#prerequisites)
    - [Setup](#setup)
    - [Install](#install)
    - [Usage](#usage)
    - [Run tests](#run-tests)
    - [Deployment](#deployment)
  - [👥 Author ](#-author-)
  - [🔭 Future Features ](#-future-features-)
  - [🤝 Contributing ](#-contributing-)
  - [⭐️ Show your support ](#️-show-your-support-)
  - [🙏 Acknowledgments ](#-acknowledgments-)
  - [📝 License ](#-license-)


# 📖 Budget Pal (rails app) <a name="about-project"></a>

**Budget Pal** is a web app for keeping track of payments, where users can register, create categories, and add payments to one or more category. It also displays the total amount spent on each category. Ruby on Rails was used for the backend/frontend of the app and bulma-css for styles. Also uses the devise gem for authentication


## 🛠 Built With <a name="built-with"></a>

### Tech Stack <a name="tech-stack"></a>


<details>
  <summary>Client/Server</summary>
  <ul>
    <li><a href="https://guides.rubyonrails.org/index.html">Ruby on Rails</a></li>
  </ul>
</details>

<details>
<summary>Database</summary>
  <ul>
    <li><a href="https://www.postgresql.org/">PostgreSQL</a></li>
  </ul>
</details>


### Key Features <a name="key-features"></a>

- Data is processed in models
- Users can register
- Users can add categories
- Users can add payments

<p align="right">(<a href="#readme-top">back to top</a>)</p>


## 🚀 Live Demo <a name="live-demo"></a>
<br>

[Live Demo on Render](https://budget-pal.onrender.com/)

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## 💻 Getting Started <a name="getting-started"></a>

To get a local copy up and running, follow these steps.

### Prerequisites

In order to run this project you need:
ruby version 2.7.0+<br>
rails version 7+<br>
PostgreSQL<br>
Yarn<br>
Npm<br>

### Setup

Clone this repository to your desired folder using this command:

```
git clone git@github.com:jfoyarzo/budget-app.git
```

```
cd budget-app
```


### Install

Install this project's dependencies using:

  ```
  bundle install
  yarn install
  npm install
  ```


### Usage

This app uses postgreSQL databases for data preservation. Please provide valid credentials in a `.env` file and place it in the root folder.<br><br>
To initialize database run:<br>
```
rails db:create
```
```
rails db:schema:load
```

To run the server, execute the following command from the root folder of the app:
```
./bin/dev
```
You can also use
```
rails server
```
this will start the server on http://localhost:3000/

To use the features of the app, you'll have to sign up using:

http://127.0.0.1:3000/users/sign_up

Once you sign up, you can log in from:

http://127.0.0.1:3000/users/sign_in



### Run tests

To run tests, run the following command:

```
rspec
```


### Deployment

You can deploy this project using:

**TBA**


<p align="right">(<a href="#readme-top">back to top</a>)</p>


## 👥 Author <a name="authors"></a>

👤 **Felipe Oyarzo**

- GitHub: [@jfoyarzo](https://github.com/jfoyarzo)
- LinkedIn: [LinkedIn](https://www.linkedin.com/in/jorge-felipe-oyarzo-contreras)

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## 🔭 Future Features <a name="future-features"></a>

- Improved user interface
- Complete CRUD funcionality
- Historical data and metrics

<p align="right">(<a href="#readme-top">back to top</a>)</p>


## 🤝 Contributing <a name="contributing"></a>

Contributions, issues, and feature requests are welcome!

Feel free to check the [issues page]([../../issues/](https://github.com/jfoyarzo/budget-app/issues)).

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## ⭐️ Show your support <a name="support"></a>


If you like this project please consider giving it a star!

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## 🙏 Acknowledgments <a name="acknowledgements"></a>

Original design idea by [Gregoire Vella on Behance](https://www.behance.net/gregoirevella).<br>
I would like to thank [Microverse](https://www.microverse.org/) for the opportunity.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## 📝 License <a name="license"></a>

This project is [MIT](./LICENSE) licensed.

<p align="right">(<a href="#readme-top">back to top</a>)</p>
