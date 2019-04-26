class CreateFronts < ActiveRecord::Migration[5.2]
  def change
    create_table :fronts do |t|

      t.timestamps
    end
  end
end
