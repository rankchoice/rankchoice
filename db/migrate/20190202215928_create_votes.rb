class CreateVotes < ActiveRecord::Migration[5.2]
  def change
    create_table :votes do |t|
      t.integer :election_id
      t.integer :choice0
      t.integer :choice1
      t.integer :choice2
      t.integer :choice3
      t.integer :choice4
      t.integer :choice5
      t.integer :choice6
      t.integer :choice7
      t.integer :choice8
      t.string :slug

      t.timestamps
    end
    add_index :votes, :election_id
    add_index :votes, :slug, unique: true
  end
end
