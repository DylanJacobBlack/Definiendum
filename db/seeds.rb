# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Creating users..."
admin = User.create(
  email: "system@admin.com",
  password: "something",
  username: "Jerry the Admin"
)

puts "Creating languages..."
english = Language.create(
  name: "English"
)

puts "Creating lessons..."

Lesson.create(
  title: "Story One: Mike is a Cook",
  difficulty_level: 1,
  user: admin,
  language: english,
  text:
  "Story One: Mike is a Cook

Hi there.

These are stories that I want you to listen to.

They use the most common verbs in the language.

It's a place to practice basic structures in the language.

The story is told twice, and then there are questions.

And you can choose to answer the questions, or just listen to the answers that I provide.

So, story number one about Mike who works in a restaurant.

A) Mike gets up at six am every morning.

He makes breakfast and drinks a coffee.

He drives to work in his car.

His work starts at seven thirty am.

Mike is a cook at a restaurant.

He makes food for hungry customers.

The customers are from many countries.

They speak many different languages.

Mike can meet many friendly people.

Mike is happy when he talks to the customers.

Now I want you to listen to the same story, but this time told by Mike.

You'll notice it's a little different.

Here's Mike.

B) I get up at six am every morning.

I make breakfast and drink a coffee.

I drive to work in my car.

My work starts at seven thirty am.

I am a cook at a restaurant.

I make food for hungry customers.

The customers are from many different countries.

They speak many different languages.

I can meet many friendly people.

I am happy when I talk to the customers.

Now I want you to listen to the questions and if you think you can answer, please do so.

Out loud or not out loud, or just listen to the answers – it's up to you.

Questions:

One: Mike wakes up at six am every morning.

Does Mike wake up early?

Yes, Mike wakes up at six am every morning.

Two: Mike drinks a coffee.

Does Mike drink a tea?

No, Mike does not drink a tea, he drinks a coffee.

Three: Mike drives his car to work.

Does Mike drive his car to work?

Yes, Mike drives his car to work.

Four: Mike's work starts at seven thirty am.

Does Mike's work start at seven am?

No, Mike's work does not start at seven am.

It starts at seven thirty am.

Five: Mike is a cook at a restaurant.

Is Mike a cook?

Yes, Mike is a cook at a restaurant.

Six: The customers are from many different countries.

Are the customers from one country?

No, the customers are not from one country.

They are from many different countries.

Seven: The customers are friendly.

Are the customers friendly?

Yes, the customers are friendly.

Eight: Mike feels happy when he talks to the customers.

Does Mike feel happy when he talks to the customers?

Yes, Mike feels happy when he talks to the customers.

Alright, and that completes your first lesson in this series of mini stories that are going to help you understand and be able to use the English language.

I invite you to listen to the next story.

Bye for now."
)
