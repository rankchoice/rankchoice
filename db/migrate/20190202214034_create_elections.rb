class CreateElections < ActiveRecord::Migration[5.2]
  def change
    create_table :elections do |t|
      t.string :title
      t.string :description
      t.string :candidate0
      t.string :candidate1
      t.string :candidate2
      t.string :candidate3
      t.string :candidate4
      t.string :candidate5
      t.string :candidate6
      t.string :candidate7
      t.string :candidate8
      t.integer :result
      t.string :slug

      t.timestamps
    end

    add_index :elections, :slug, unique: true
  end
end
