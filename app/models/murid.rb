class Murid < ActiveRecord::Base
    has_many :daftar_kursus, :dependent => :restrict_with_error

  def self.to_csv(options = {})
    CSV.generate(options) do |csv|
      csv << column_names
      all.each do |product|
      csv << product.attributes.values_at(*column_names)
      end
    end
  end
end
