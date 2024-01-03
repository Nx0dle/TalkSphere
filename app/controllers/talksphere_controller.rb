# frozen_string_literal: true

class TalksphereController < ApplicationController
  before_action :require_user
  def index
    @user = User.all
    @message = Message.all
  end

end
