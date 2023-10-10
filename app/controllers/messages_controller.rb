# frozen_string_literal: true

class MessagesController < ApplicationController
  def index
    @message = Message.random
  end
end
