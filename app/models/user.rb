class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Como validar desde el backend
  # validates :email, length: {in: 5..10, too_short: "el email es muy corto"} uniqueness: true
  # validates :email_confirmation on: :email_changed?

end
