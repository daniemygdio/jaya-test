class CreateOctoevents < ActiveRecord::Migration[5.2]
  def change
    create_table :octoevents do |t|
      t.integer :issue
      t.string :github_action
      t.string :url
    end
  end
end
