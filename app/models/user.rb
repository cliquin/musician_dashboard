class User < ApplicationRecord
  # Direct associations

  has_many   :statuses,
             :dependent => :destroy

  has_many   :set_lists,
             :dependent => :destroy

  has_many   :songs,
             :dependent => :destroy

  # Indirect associations

  # Validations

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
