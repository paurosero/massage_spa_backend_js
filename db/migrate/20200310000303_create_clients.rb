class CreateClients < ActiveRecord::Migration[6.0]
  def change
    create_table :clients do |t|
      t.string :name
      t.string :password_digest
      t.string :medical_history
      t.string :address
      t.string :email
      t.belongs_to :appointment, null: false, foreign_key: true

      t.timestamps
    end
  end
end
