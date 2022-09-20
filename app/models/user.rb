class User < ApplicationRecord
  validates :email, presence: true
  validates :name, presence: true
   

   enum role: %w(default artist venue)
end
