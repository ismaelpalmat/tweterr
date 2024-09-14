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
require "test_helper"

class ArticleTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
