class HomeController < ApplicationController
  def top
  	@members = Member.all
  end

  def about
  end
end
