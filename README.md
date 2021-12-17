# Title

Dashboard web application made using various back-end and front-end technologies.

## Description

The purpose of  this web application is to show a dashboard, which includes some charts of different types. These charts show some data of twelve European countries. There are three pages with charts:
* **Salary**. The chart on the left side allows us to compare salaries by country, and the chart of the right side shows us the comparison between gross and net salary of each country.
* **GDP**. This pie chart allows us to compare Gross Domestic Product (nominal) for each country.
* **Covid**. This map gives us a vision of the Covid situation on each country.
* The footer contains two links: the first one redirects to home page and the second one is my Github link.

### Technology

The front-end part was build using:
* HTML5
* Bootstrap 5
* Javascript

The backend part was build using Java Spring framework. It allows to create well structured web applications, however it's more difficult than PHP. Here is a little explanation of each package:
* **Controller**. The controller allows us to intercept HTML hyperlinks and assign a view to each. Every local direction must have a method which controls it.
* **Entity**. This package allows us to define data models. In this case, we have one class Country which has four attributes: name, GDP, gross wage and net wage.
* **Repository**. The content of this package allows us to make structured connections to MySQL database. The interface already has all methods we are going to need, so no need to create new methods or override any.
* **Webapp**. This package contains all views and front-end sources, such as scripts and images. Each view file has *.jsp* extension (Java Server Page). These files are executed by Java Machine and converted into HTML. IN this files we can write Java code using the library JSTL. For example, we need it to iterate over all countries to generate data for our Javascript. For example, here we create categories for a column chart.
```
xAxis: {
  categories: [
  //Java code which generates all the categories
  <c:forEach var="country" items="${countries}">
  <%="`"%>
  ${country.name}
  <%="`,"%>
  </c:forEach>
  ]
},
```
The variable *countries* is a list of objects of type **Country** created by a controller before. Also, JSTL is used to include one *.jsp* into another.


## Installing and executing

* Install XAMPP or MySQL Workbench
* Load [this database](https://github.com/morj12/adiiu-charts-spring/blob/main/country_info.sql)
* Open the project with Intellij Idea
* Run it
* Go to localhost:8080/

## Tasks to do

- [ ] Add accessibility options
- [ ] Add an accessibility chapter to this documentation
- [ ] Add comments to the code
- [ ] Create a video explaining the structure
