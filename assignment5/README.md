# Assignment 5: OOP in Dart

## Question

Write a Dart program that manages information for students using object-oriented programming principles. Your task is to create a `Student` class that stores both required and optional student data, and to demonstrate how to work with these objects in a list.

## OOP Concepts to Demonstrate

- Constructor with required and optional properties
- Getters and setters
- Default values for properties
- Saving objects in a list
- Searching for students by grade
- Updating optional properties after creation

## Instructions

1. Define a class named `Student` with the following properties:
   - `name` (String, **required** in constructor)
   - `grade` (double, **required** in constructor)
   - `email` (String, optional, can be set later)
   - `address` (String, optional, can be set later)
   - `phone` (String, optional, can be set later)

2. Create a constructor for `Student` that requires only `name` and `grade` upon initialization.

3. Implement getters and setters for all properties.
   - The setter for `grade` must validate that the value is between 0 and 100.

4. Create a list to store multiple `Student` objects.

5. Add at least three students to the list, setting only the required fields at creation.

6. Use setters to update at least two optional properties (`email`, `address`, or `phone`) for each student after they are added to the list.

7. Write a function that searches for all students whose grades are either **greater than** or **less than** a specific value.
   - The function should accept:
     - the list of students,
     - a grade value,
     - a boolean to specify `greater` or `less`.

8. Demonstrate usage by:
   - Printing all students with their full information.
   - Showing the search results for students with grades greater than a specific value.
   - Updating an optional property for at least one student after creation and displaying the updated student.

## Additional Questions

1. Add a `toString()` method to the `Student` class to make printing student info easier.
2. Modify your program to allow sorting the list of students by grade in descending order. Print the sorted list.
3. Add an `id` property (integer) to each student, and ensure that each student has a unique ID assigned automatically when they are created.
4. Write a method in the `Student` class called `isPassed()` that returns `true` if the student's grade is **60 or above**, and `false` otherwise. Use this method to print the names of all students who **passed**.


