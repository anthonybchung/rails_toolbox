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
    primary: EEEEFF,
    secondary: B2B1F0,
    tertiary: 7674EF,
    text: 01002C,
  }
}
```

## application.html.erb the primary layout.

application.html.erb contains 3 sections:

- header: contain navbar
- main: all the features of the webapp
- footer: links to faq, contacts, etc.

|![application_mobile](https://github.com/anthonybchung/toolbox/assets/99620815/3c0783fb-d64a-4ba1-b6e2-691818b8e5d3)|![application_desktop](https://github.com/anthonybchung/toolbox/assets/99620815/b1c968d1-5616-43b3-a30a-d086381a820e)|
| :---: | :---: |
| Mobile | Desktop |







