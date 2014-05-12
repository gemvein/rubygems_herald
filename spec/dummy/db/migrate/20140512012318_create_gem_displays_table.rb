class CreateGemDisplaysTable < ActiveRecord::Migration
  def change
    create_table :gem_displays do |t|
      t.string :name
      t.string :info
      t.string :platform
      t.string :version
      t.integer :downloads
      t.integer :version_downloads
      t.string :authors
      t.string :project_uri
      t.string :gem_uri
      t.string :homepage_uri
      t.string :wiki_uri
      t.string :documentation_uri
      t.string :mailing_list_uri
      t.string :source_code_uri
      t.string :bug_tracker_uri
      t.text :description
      t.text :features
      t.text :readme
      t.text :license
      t.datetime :expires_at
      t.datetime :released_at

      t.timestamps
    end
    add_index :gem_displays, :name, unique: true
  end
end