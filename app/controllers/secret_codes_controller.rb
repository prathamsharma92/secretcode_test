class SecretCodesController < ApplicationController
	before_action :authenticate_user!
  def index
  	@sc = SecretCode.new
  	@codes = SecretCode.all.order("created_at desc")
  end
  def create
  	SecretCode.generate_codes(params[:count].to_i)
  	redirect_to secret_codes_path
  end
end
