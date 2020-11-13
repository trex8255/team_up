class CreateTeams < ActiveRecord::Migration[5.2]
  def change
    create_table :teams do |t|
      t.references :user, foreign_key: true
      t.string :name
      t.string :short_desc
      t.date :start_date

      t.timestamps
    end
  end
end
