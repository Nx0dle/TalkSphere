class TalksphereController < ApplicationController
  def index
    @messages = Message.all
  end
end
