class ClientsController < ApplicationController


def show
    @client = Client.find(params[:id])
  end

  def new
@client = Client.new
  end

def create
    @client = Client.new(params[:client])
    if @client.save
flash[:success] = "Welcome to the Enyumba website!"
redirect_to @client
      # Handle a successful save.
    else
      render 'new'
    end
  end

end
