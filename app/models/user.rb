class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  after_initialize :init
  has_many :stocks, foreign_key: "seller_id", dependent: :destroy
  has_one :order, foreign_key: "buyer_id", dependent: :destroy
  
  # Set the default seller registration to false
  def init
    self.registered ||= false
  end

  # Display username if there is one
  # Otherwise, display email instead
  def name
    return username ? username : email
  end

  # Register a user as a seller
  def self.register_seller(current_user, registered)
    # Check if the user and registered exist
    if !current_user.id.nil? && !registered.nil?
      # Assign ture to registered attribute
      current_user.registered = !registered.zero?
      return current_user.save
    end
  end
end
