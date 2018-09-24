class AddLongitudeToLojas < ActiveRecord::Migration[5.2]
  def change
    add_column :lojas, :longitude, :float
  end
end
