class Category < ActiveRecord::Base
  has_many :documents
  attr_accessible :name

  validates :name, presence: true
  validates :name, uniqueness: true
end
