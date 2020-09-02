class User < ApplicationRecord
    validates :first_name, length: {minimum: 3, maximum: 20}
    validates :last_name, length: {minimum: 3, maximum: 20}
    # validates :email, email: true
end
