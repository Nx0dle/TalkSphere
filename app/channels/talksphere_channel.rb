class TalksphereChannel < ApplicationCable::Channel
  def subscribed
    stream_from "talksphere_channel"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end
