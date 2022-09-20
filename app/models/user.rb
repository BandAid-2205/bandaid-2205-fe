class User < ApplicationRecord
   validates :uid, presence: true
   validates :email, presence: true
   validates :token, presence: true

   enum role: %w(default artist venue)
end
