class AdminController < ApplicationController
  before_action :authenticate_admin!

  def hacker_list
  	@hackers = Hacker.all
  end
end
