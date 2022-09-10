class User < ApplicationRecord
  # Include default devise modules.
  devise  :rememberable, :omniauthable
  include DeviseTokenAuth::Concerns::User
end
