class DynamicController < ApplicationController
  def welcome
    @gossips = Gossip.all
    @users = User.all
  end
  def gossip
    @gossips = Gossip.all
    @users = User.all
  end
  def author
    @gossips = Gossip.all
    @users = User.all
  end
end