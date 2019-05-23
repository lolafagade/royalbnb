class MyCastlesController < ApplicationController
  def new
    @castle = Castle.new
  end
end
