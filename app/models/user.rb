class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :articles, dependent: :destroy
  has_and_belongs_to_many :roles
  has_many :comments, dependent: :destroy
  has_many :subscriptions, dependent: :destroy
  has_many :categories, :through => :subscriptions

  validates :name, presence: true
  validates :email, email_format: { message: "Не выглядит как электронный адресс" }

  def role?(role)
    !!self.roles.find_by_name(role.to_s.camelize)
  end
end
