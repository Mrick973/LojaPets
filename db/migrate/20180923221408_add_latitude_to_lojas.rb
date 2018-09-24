class AddLatitudeToLojas < ActiveRecord::Migration[5.2]
  def change
    add_column :lojas, :latitude, :float
  end
end
