class Api::V1::PrescriptionsController < ApplicationController
  respond_to :json
  def index
    render json: Prescription.where(:user_id =>current_user.id )
  end
  def create
    Prescription.create!(:user_id => current_user.id,:od_sph =>params["od_sph"],:od_cyl =>params["od_cyl"],:od_axis =>params["od_axis"],:os_sph=>params["os_sph"],:os_cyl=>params["os_cyl"],:os_axis=>params["os_axis"])
    respond_with(Prescription.where(:user_id =>current_user.id ), :include => :status)
    
  end
  
  private
  def script_params
  return params.require(:prescription).permit(:user_id,:od_sph,:od_cyl,:od_axis,:os_sph,:os_cyl,:os_axis)
  end
  
end
