class FollowRequest < ApplicationRecord
  # Direct associations

  belongs_to :recipient,
             :class_name => "User"

  # Indirect associations

  # Validations

end
