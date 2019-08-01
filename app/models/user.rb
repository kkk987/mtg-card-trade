class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  after_initialize :init
  has_many :stocks, foreign_key: "seller_id", dependent: :destroy
  has_many :orders, foreign_key: "buyer_id", dependent: :destroy
  # Set the default seller registration to false
  def init
    self.registered ||= false
  end

  def name
    return username ? username : email
  end

  def self.register_seller(current_user, registered)
    if !current_user.id.nil? && !registered.nil?
      # byebug
      current_user.registered = !registered.zero?
      return current_user.save
    end
  end
end
