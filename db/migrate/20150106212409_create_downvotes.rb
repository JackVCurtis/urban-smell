class CreateDownvotes < ActiveRecord::Migration
  def change
    create_table :downvotes do |t|
      t.references :smell, index: true
    end
  end
end
