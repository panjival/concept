class Murid < ApplicationRecord
    has_many :daftar_kursus, :dependent => :restrict_with_error
   
=begin
 before_destroy :check_for_daftar_kursus
    private

    def check_for_daftar_kursus
      if daftar_kursus.count > 0
        errors.add_to_base("cannot delete customer while orders exist")
        return false
      end
    end
=end
end
