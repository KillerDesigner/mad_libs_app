class CreateMadLibs < ActiveRecord::Migration
  def change
    create_table :mad_libs do |t|
      t.string :verb
      t.string :noun
      t.string :adjective
      t.string :proper_noun

      t.timestamps
    end
  end
end
