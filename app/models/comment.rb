class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :article
  belongs_to :comment
  has_many :comments, dependent: :destroy

  validates :name, presence: true
  validates :content, presence: true

end
