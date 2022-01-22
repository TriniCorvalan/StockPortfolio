# Welcome to [TriniCorvalan](mailto:trini.4595@gmail.com)'s Job Application exercise!

## Briefing

Construct a simple Portfolio class that has a collection of Stocks and a "Profit" method that receives 2 dates and returns the profit of the Portfolio between those dates. Assume each Stock has a "Price" method that receives a date and returns its price.
Bonus Track: make the Profit method return the "annualized return" of the portfolio between the given dates.

## Solution

The implemented solution uses Ruby to create Stock, Portfolio and the requested profit method with annualized option.

### Description

The solution is placed in app/solution.rb file. It contains:
  - Stock class with price method defined. 
    _For the purposes of this exercise, price gives a random float value. To put it into practice, it would be necessary to request the historical values of the stocks prices according to the given date._
  - Portfolio class with profit method defined with annualized option.
    - The regular profit is the sum of stock's price differences between given dates.
    - If annualized is given, the return is calculated according to the relative revenue and the relative time formula.
    - In both cases, it returns a float value rounded with 2 digits for readability.

### Assumptions

The attributes to be entered will be of the data type required as parameter.
_For extended use of this solution, error handling could be added depending on the needs. This could include transformation of data to the required type or a notification message for correct input. This and other features should be tested properly._

### Getting Started

This project contains in the 'app/solution.rb' file the requested classes and methods. These are available for use on a larger project or where required.
