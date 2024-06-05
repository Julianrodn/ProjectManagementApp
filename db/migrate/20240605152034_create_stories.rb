class CreateStories < ActiveRecord::Migration[7.1]
  def change
    create_table :stories do |t|
      t.text :name
      t.references :project, null: false, foreign_key: true

      t.timestamps
    end
  end
end
