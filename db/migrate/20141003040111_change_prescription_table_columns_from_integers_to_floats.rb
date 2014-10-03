class ChangePrescriptionTableColumnsFromIntegersToFloats < ActiveRecord::Migration
  def change
    change_column :prescriptions, :od_sph,  :decimal
    change_column :prescriptions, :od_cyl,  :decimal
    change_column :prescriptions, :od_axis,  :decimal
    change_column :prescriptions, :os_sph,  :decimal
    change_column :prescriptions, :os_cyl,  :decimal
    change_column :prescriptions, :os_axis,  :decimal
  end
end
