class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
    if current_user
      @chatroom = Chatroom.first
      redirect_to chatroom_path(@chatroom)
    end
  end
end
