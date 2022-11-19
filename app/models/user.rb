class User < ApplicationRecord
  validates :username, presence: true, length: { in: 3..15 }
  validates :email,
            presence: true,
            format: {
              with: /(.+)@(.+)/,
              message: "invalid"
            },
            uniqueness: {
              case_sensitive: false
            },
            length: {
              minimum: 4,
              maximum: 254
            }
  validates :password,
            presence: true,
            format: {
              with: /(?=.*[a-zA-Z])(?=.*[0-9]).{8,}/,
              message:
                "must be at least 8 characters and include one number and one letter."
            }
end
