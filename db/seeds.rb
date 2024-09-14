require 'faker'

200.times do
  Article.create!(
    title: Faker::Book.title,
    description: Faker::Lorem.paragraph(sentence_count: 5),
    author: Faker::Book.author,
    available: Faker::Boolean.boolean # Genera true/false aleatoriamente
  )
end

puts "200 articles created!"