class Document < ActiveRecord::Base
  belongs_to :user
  has_one :category
  has_many :comments

  attr_accessible :title, :body, :category_id

  validates :title, :body, presence: true
end
