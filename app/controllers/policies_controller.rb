class PoliciesController < ApplicationController
  before_filter :authenticate_admin!
  
  
  def new
    @client = Client.find(params[:id])
    @policy = @client.policies.new(params[:policy])
  end

  
  def create
    @client = Client.find(params[:policy][:client_id])
    @c = @client.policies.new(params[:policy])
    if @c.save
    redirect_to "/clients/#{@client.id}" , :notice => "Success Policy created !"
    else
    redirect_to "/policies/new?id=#{@client.id}" , :notice => "Oops policy creation failed"  
    end
    
  end
  
  def show
  end
  
  def edit
  end
  
  def update
  end
  
  def destroy
  end




end
