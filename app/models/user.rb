class User < ApplicationRecord
    # added by Theo on Monday 12.7.2020
    has_many :notebooks, dependent: :destroy
    has_secure_password
end
