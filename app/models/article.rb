# == Schema Information
#
# Table name: articles
#
#  id          :bigint           not null, primary key
#  title       :string
#  description :text
#  author      :string
#  available   :boolean          default(TRUE)
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
class Article < ApplicationRecord
  validates :title, presence: true
  validates :description, presence: true
  validates :author, presence: true
  validates :available, inclusion: { in: [true, false] }
end
