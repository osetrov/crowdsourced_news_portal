class Article < ActiveRecord::Base
  belongs_to :user
  has_many :article_categories
  has_many :categories, :through => :article_categories

  validates :title, presence: true, length: { minimum: 2 }
  validates :description, presence: true, length: { maximum: 500 }
  validates :content, presence: true
  validates_associated :categories

end
