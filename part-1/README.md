# Part 1: JavaScript Objects
## Summary
In Part 1 of the assessment, we're going to write JavaScript.  Specifically, we're going to define a pair of custom objects:  `Student` and `Classroom`.  Each of these custom objects will have properties and behaviors specific to itself.  Tests have been written to guide you through the development of each object.


### Running Jasmine Tests
We won't run the tests from the command line.  Instead we'll run them in the browser, by opening the file `SpecRunner.html`.  This HTML file loads the Jasmine JavaScript library, the application code that we'll write, and the files containing the tests.  It runs the tests and then displays the outcome of the tests in the browser.

## Releases
### Release 0: Student

We'll start by focusing on the tests describing our student (see
`spec/student_spec.js`).  To run the tests, open the file `SpecRunner.html` in
a browser. On the command line navigate to the `part-1` directory and then run
...

```
$ open SpecRunner.html
```
... this should open the HTML file in the default browser.

When the page loads, the tests in `spec/student_spec.js` will run. All of them
will be failing.  Start by fixing the first test in `spec/student_spec.js`. To
make the test in `spec/student_spec.js` pass you will make edits to
`student.js`. Continue onward by fixing the remaining tests.


### Release 1: Classroom

Once the tests for the custom student object pass, move on to the classroom
object type.  Just as above, start by fixing the first test in
`spec/classroom_spec.js`. To make the test in `spec/classroom_spec.js` pass you
will make edits to `classroom.js`. Continue onward by fixing the remaining
tests.


You are also provided an English-language version of the tests below:

#### Context

Assume that four `Student`s are created. A new instance of `Classroom` is
initialized with an Array of these `Student`s.  You may assume this
initialization happens before each test.


You are also provided an English-language version of the tests below:

#### Context

Assume we create an instance of `Student` that is initialized with a first name
and an `Array` of numbers representing their grades. You may assume this
happens before each test.

#### Tests

* The new instance's `students` Array has the same scores as the scores that were passed in during initialization
* The new instance's method `find` searches through the `students` array to find the one whose first name matches
* The new instance's method `honorRollStudents` searches through the `students` array to find the one whose average score is 95 or greater

## Conclusion

Once all the tests have passed, you have completed Part 1 of the assessment. If
you haven't done so already, commit your changes and move on to Part 2.
