class Status < ApplicationRecord
  # Direct associations

  has_many   :songs,
             :dependent => :nullify

  belongs_to :user,
             :required => false

  # Indirect associations

  # Validations

end
