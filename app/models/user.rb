class User < ApplicationRecord
   enum role: %w(artist venue)
end
