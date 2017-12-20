# Hell Triangle

The purpose for this repo is to solve the [Hell Triangle](https://s3.amazonaws.com/sample-login/attachments/files/000/000/465/original/HellsTriangle.pdf?1513355063) challenge using Ruby. Also, I am currently studying **Ruby** and that's why the reason of the chosen language.

The challenge:
```
Given a triangle of numbers, find the maximum total from top to bottom
Example:
       6
      3 5
     9 7 1
    4 6 8 4
In this triangle the maximum total is: 6 + 5 + 7 + 8 = 26

An element can only be summed with one of the two nearest elements in the next row.
For example: The element 3 in the 2nd row can only be summed with 9 and 7, but not with
1

Your code will receive an (multidimensional) array as input.
The triangle from above would be:

    example = [[6],[3,5],[9,7,1],[4,6,8,4]]
```

## Prerequisites

### Install Ruby
Before we begin, make sure you have ruby version >=2.2.2 and rails version 5.

`$ ruby -v # ruby 2.3.0p0 (2015-12-25 revision 53290) [x86_64-darwin16]`

### Bundler
Bundler provides a consistent environment for Ruby projects by tracking and installing the exact gems and versions that are needed.

Bundler is an exit from dependency hell, and ensures that the gems you need are present in development, staging, and production. Starting work on a project is as simple as bundle install.

After installing ruby tap `gem install bundler`

## Running the example

The project is set to resolve the given challenge example. If you want to, open the **main.rb** file to setup the challenge with other inputs examples changing the **example** variable to the one of your preference.

* Clone the repo
  * `$ git clone https://github.com/lsfernandes92/hell-triangle.git`
* Enter in the folder
  * `cd hell-triangle/`
* Tap the command and see the result in the terminal
  * `ruby lib/main.rb`


## How to run the test suite
The tests are build with RSpec and they are found in **rails-api/spec** folder.

Follow the instructions to run:
* Enter in the folder
  * `cd rails-api/`
* Install RSpec gem
  * `bundle install`
* Let's execute the specs by running:
  * `rspec --format doc`

You should get something like that if all good.
```
HellTriangle
  .verify_triangle
    verify a given triangle if its a valid one
      return false if triangle equal nil
Favor inserir um triangulo válido para o exercício
      return false if no number added
Favor inserir um triangulo válido para o exercício
      return false if just one number added
      the real triangle

Triangle
  .<<
    add some elements
      return empty if no number added
      return empty if triangle is nil
      possible to put element on it
  .total_lines
    get sizes of triangle
      verify size after added nil
      validate size if no number added
      validate size if number added
  .is_triangle?
    garantee that the input is an triangle
      not triangle if nil added
      not triangle if no number added
      not triangle if just one element added
      the real triangle
  .empty?
    test possibilities of triangle been empty
      should be empty if nil added
      should be empty if no number added
      shouldn't be empty if just one element added

Finished in 0.00727 seconds (files took 0.12734 seconds to load)
17 examples, 0 failures
```

## License

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details
