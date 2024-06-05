class CreateTickets < ActiveRecord::Migration[7.1]
  def change
    create_table :tickets do |t|
      t.text :name
      t.string :status
      t.text :comments
      t.references :story, null: false, foreign_key: true

      t.timestamps
    end
  end
end
