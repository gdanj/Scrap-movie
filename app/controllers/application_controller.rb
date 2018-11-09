class ApplicationController < ActionController::Base

  add_flash_types :warning

  def pequenotest
    render html: SayHello.new.perform
  end
end
