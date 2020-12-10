class Notebook < ApplicationRecord
  belongs_to :user
  # added by Theo on Monday 12.7.2020
  has_many :notes
end
