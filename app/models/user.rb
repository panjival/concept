class User < ApplicationRecord
  has_secure_password
  # cek email tidak ada yang sama
  validates_uniqueness_of :email
end
