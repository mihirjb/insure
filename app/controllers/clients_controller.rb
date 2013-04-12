class ClientsController < ApplicationController
  
  before_filter :authenticate_admin!
  
  def index
    @client = Client.find_all_by_admin_id(current_admin.id)
  end
  
  def new
    @client = current_admin.clients.new(params[:client])
  end
  
  def show
     if Client.find(params[:id])
        @client = current_admin.clients.find(params[:id])
      else
        @client = ""
      end    
  end
  
  def create
    
    @client = current_admin.clients.new(params[:client])
    if @client.save
      redirect_to root_path, :notice => "Success, Client Created!"
    else 
    render :new, :notice => "Oops, Client creation failed!"
    
    end
    
  end 
  
  def edit
    @client = Client.find(params[:id])
    
  end
  
  def update
     if current_admin.clients.find(params[:id]).update_attributes(params[:client])
          redirect_to root_path, :notice => "Success, Client Updated!"
        else
          redirect_to edit_client_path, :notice => "Oops, Client updation failed!"
      end
    
  end
  
  def destroy
     if current_admin.clients.find(params[:id]).delete
          redirect_to root_path, :notice => "Success, Client deleted!"
      end
    
  end
  
  
  
  
  
  
  
end
