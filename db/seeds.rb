# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'
10.times do
  new_article = Article.new(title: Faker::TvShows::DrWho.quote, content: Faker::TvShows::MichaelScott.quote)
  new_article.valid?  # => should be `true`
  new_article.save    # => should not display rollback warnings
  Article.last        # => should be the one you just saved
end
