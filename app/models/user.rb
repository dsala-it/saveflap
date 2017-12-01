class User < ApplicationRecord

  # Devise stuff (put it first as we may override some methods)
  devise :database_authenticatable, :recoverable, :rememberable, :trackable, :validatable, :timeoutable


  def to_s
    "#{first_name} #{last_name}"
  end
end