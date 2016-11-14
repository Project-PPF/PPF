class MembersController < ApplicationController
	before_action :set_member, only:[:show, :edit, :update]

  def index
  	@members = Member.all
  end

  def show
  end

  def edit
  end

  def update
  	# @member.name = params[:member][:name]
  	# @member.email = params[:member][:email]
  	# @member.job = params[:member][:job]
  	# @member.barth = params[:member][:barth]
  	# @member.month = params[:member][:month]
  	# @member.description = params[:member][:description]

  	# @member.update(configure_permitted_parameters)
  end

  private

  def set_member
  	@member = Member.find(params[:id])
  end
end
