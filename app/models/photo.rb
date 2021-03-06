class Photo < ApplicationRecord
  # Direct associations

  belongs_to :poster,
             :class_name => "User",
             :foreign_key => "owner_id"

  has_many   :comments,
             :dependent => :destroy

  has_many   :likes,
             :dependent => :destroy

  # Indirect associations

  has_many   :fans,
             :through => :likes,
             :source => :fan

  has_many   :comment_authors,
             :through => :comments,
             :source => :author

  has_many   :discoverers,
             :through => :fans,
             :source => :following

  has_many   :followers,
             :through => :poster,
             :source => :following

  # Validations

end
