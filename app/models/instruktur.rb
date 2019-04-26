class Instruktur < ApplicationRecord
    has_many :daftar_kursus, :dependent => :restrict_with_error
end
