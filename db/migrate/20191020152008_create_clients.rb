class CreateClients < ActiveRecord::Migration[5.2]
  def change
    create_table :clients do |t|
      t.string :name, presence: true
      t.string :email, presence: true
      t.string :phone, presence: true
      t.timestamps
    end
  end
end
