# frozen_string_literal: true

class TalksphereController < ApplicationController
  def index
    @user = User.all
    @message = Message.all
  end

end
