# == Schema Information
#
# Table name: contacts
#
#  id         :bigint           not null, primary key
#  name       :string
#  email      :string
#  message    :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Contact < ApplicationRecord
  validates :name,      presence: true,
                        length: { minimum: 3 }
  validates :email,     presence: true,
                        format: { with: URI::MailTo::EMAIL_REGEXP }
  validates :message,   presence: true,
                        length: { maximum: 500 }
end
