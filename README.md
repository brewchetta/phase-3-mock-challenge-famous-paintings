# Phase 3 Mock Code Challenge: Famous Paintings

We have three models: `Museum`, `Painting`, and `Artist`.

For our purposes, a `Museum` has many `Painting`s, an `Artist` has many
`Painting`s, and a `Painting` belongs to a `Museum` and to an `Artist`.

`Museum` - `Artist` is a many to many relationship.

**Note**: You should draw your domain on paper or on a whiteboard _before you
start coding_. Remember to identify a single source of truth for your data.

## Instructions

To get started, run `bundle install` while inside of this directory.

The migrations, models, and seeds have already been built out so run `rake db:migrate` and `rake db:seed` in order to prepare your data.

Build out all of the methods listed in the deliverables. The methods are listed
in a suggested order, but you can feel free to tackle the ones you think are
easiest. Some of the later methods may rely on earlier ones.

This mock code challenge has no tests. You'll need to create your own sample instances so that you can try out your code on your own. Make sure your associations and methods work in the console.

We've provided you with a tool that you can use to test your code. To use it,
run `rake console` from the command line. This will start a `pry` session with
your classes defined. You can test out the methods that you write here. You are
also encouraged to use the `seeds.rb` file to create sample data to test your
models and associations.

## What You Already Have

The starter code has migrations and models for the initial `Museum`,
`Artist`, and `Painting` models, and seed data for three. The
schema currently looks like this:

### `museums` Table

| Column | Type    |
| ------ | ------- |
| name   | String  |
| city   | String |

### `artists` Table

| Column     | Type    |
| ---------- | ------- |
| first_name | String  |
| last_name  | String  |
| birthyear  | Integer |
| style      | String  |

### `paintings` Table

| Column              | Type    |
| ------------------- | ------- |
| title               | String  |
| price_in_us_dollars | Integer |
| artist_id           | Integer |
| museum_id           | String  |

## Deliverables

Write the following methods in the classes in the files provided. Feel free to
build out any helper methods if needed.

Deliverables use the notation `#` for instance methods, and `.` for class
methods.

Remember: Active Record gives your classes access to a lot of methods already!
Keep in mind what methods Active Record gives you access to on each of your
classes when you're approaching the deliverables below.

### Aggregate and Association Methods

#### Artist

- `Artist#total_value`
  - returns the combined total worth of all of that artist's paintings.
- `Artist.sort_by_total_value`
  - uses `sort_by` or `order` to return the artists sorted by the total value of their paintings.

#### Painting

- `Painting#create_forgery`
  - create a new painting instance with all the same attributes as the current painting instance.

#### Museum

- `Museum#remove_forgeries`
  - if there are forgeries in the museum, find and delete them so no two paintings in a museum have the same attributes.
