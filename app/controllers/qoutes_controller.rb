class QoutesController < ApplicationController
  def index
    @qoutes = Qoute.order("created_at ASC")
  end
end
