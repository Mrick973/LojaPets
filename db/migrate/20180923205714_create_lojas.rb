class CreateLojas < ActiveRecord::Migration[5.2]
  def change
    create_table :lojas do |t|
      t.string :name
      t.string :speciality
      t.string :address
      t.string :phone
      t.text :description
      t.string :website

      t.timestamps
    end
  end
end
