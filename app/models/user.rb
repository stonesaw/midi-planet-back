# frozen_string_literal: true

class User < ActiveRecord::Base
  devise :rememberable, :omniauthable
  include DeviseTokenAuth::Concerns::User
end
