class HomeController < ApplicationController
  def index
  end

  def crypto
    if Crypto.first == nil 
            StartScrap.new.perform
    end
  end

  def movie

  end

  def resul
    @crypto = Crypto.all
    @a = @crypto.find_by crypto_name: params[:crypto_name].downcase
    if @a

    else

      redirect_to crypto_path ,  warning: "Error"
    end
  end
end
