class DynamicController < ApplicationController
  def welcome
    @gossips = Gossip.all
    @users = User.all
  end
end