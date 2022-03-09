class Issue < ActiveRecord::Migration[6.0]
  def change
    create_table :issues do |t|
      t.jsonb :payload
      t.integer :issue_id

      t.timestamps null: false
    end
  end
end
