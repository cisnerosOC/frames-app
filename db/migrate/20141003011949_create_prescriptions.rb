class CreatePrescriptions < ActiveRecord::Migration
  def change
    create_table :prescriptions do |t|
      t.integer :user_id
      t.integer :od_sph
      t.integer :od_cyl
      t.integer :od_axis
      t.integer :os_sph
      t.integer :os_cyl
      t.integer :os_axis

      t.timestamps
    end
  end
end
