# frozen_string_literal: true

class TalksphereController < ApplicationController
  before_action :require_user
  def index
    @user = User.all
    @messages = Message.custom_display
    @message = Message.new
  end

end
