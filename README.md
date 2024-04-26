# ToolBox

## Introduction

Building a web application in my spare time using ROR(Ruby on Rails). I hope this project will also assist any beginners who want to come along on the Rails journey. Also all criticisms are welcomed to improve my Rails skills.

## Create new ROR application.

I will use the following for my ROR

- css: tailwind
- database: postgresql
- javascript: esbuild

```console
  rails new toolbox --database=postgresql --javascript=esbuild --css=tailwind
```

## Setup Tailwind theme in tailwind.config.js

```javascript
theme: {
  colors: {
    'primary': '#7674EF',
    'secondary': '#B2B1F0',
    'tertiary': '#EEEEFF',
    'text': '#01002C',
  }
}
```

Don't forget to restart the server after modifying the config.js file.

## application.html.erb the primary layout.

application.html.erb contains 3 sections:

- header: contain navbar
- main: all the features of the webapp
- footer: links to faq, contacts, etc.

|![application_mobile](https://github.com/anthonybchung/toolbox/assets/99620815/3c0783fb-d64a-4ba1-b6e2-691818b8e5d3)|![application_desktop](https://github.com/anthonybchung/toolbox/assets/99620815/b1c968d1-5616-43b3-a30a-d086381a820e)|
| :---: | :---: |
| Mobile | Desktop |

## Controller: static_pages

the StaticPages controller will be responsible for a visitor to browse the website.

```console
rails generate controller StaticPages home contact features
```

we will make **home.html.erb** the index root.

## View: Responsive nav using stimulus.

```console
rails generate stimulus nav
```

The header element will container the stimulus controller.
The button element will hold the action 
The nav element will be change according to a state in the controller.
```html
<header data-controller='nav'>
  <button data-action='click->nav#toggle'>
  <nav data-nav-tart='closed'>
</header>
```

## Devise: Authentication and Authorization.

```console
gem 'devise', '~> 4.9', '>= 4.9.3'
```

```console
rails generate devise:install
rails generate devise User
rails db:migrate
```

*** to be revisited for styling ***

## Golocation with Stimulus

```console
rails generate stimulus geolocation
```

### geolocation_controller.js

```javascript
geolocate(){
  navigator.geolocation
}
```




