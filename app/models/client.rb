class Client < ApplicationRecord
  validates_presence_of :name, :email, :phone
end
