class CreateOctoevents < ActiveRecord::Migration[5.2]
  def change
    create_table :octoevents do |t|
      t.integer :issue_number
      t.string :issue_action
      t.string :url
      t.datetime :created_at
      t.datetime :updated_at
    end
  end
end
