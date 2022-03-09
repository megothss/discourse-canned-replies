# frozen_string_literal: true

class CreateDiscourseCannedRepliesUsageCount < ActiveRecord::Migration[6.1]
  def up
    create_table :discourse_canned_replies_usage_count do |t|
      t.integer :topic_id
      t.integer :usage_count

      t.timestamps
    end
    add_index :discourse_canned_replies_usage_count, :topic_id, unique: true
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end