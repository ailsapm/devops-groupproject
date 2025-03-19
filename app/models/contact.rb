class Contact < ApplicationRecord
    # just requiring first name and last name to create a record
    validates :firstname, presence: true  
    validates :lastname, presence: true
end
  