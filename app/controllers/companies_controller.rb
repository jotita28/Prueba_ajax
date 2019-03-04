class CompaniesController < ApplicationController
  def index
    @company = Company.new()
    @companies = Company.all()
  end

  def create 
    @company = Company.new(
      name: params[:company][:name]
    )
    respond_to do |format|
      if @company.save
        format.js
      else
        format.html {redirect_to root_path, alert: 'Por favor intente nuevamente'} 
      end
    end
  end

  def show
    @company = Company.find(params[:id])
    respond_to do |format|
      format.js 
    end
  end
  
  
  def edit
    @company = Company.find(params[:id])
    respond_to do |format|
      format.js
    end
  end
  
  def update 
    @company = Company.find(params[:id])
    
    respond_to do |format|
    if @company.update(
      name: params[:company][:name]
    ) 
      format.js
    else 
      format.html {redirect_to root_path, alert: 'Por favor intente nuevamente'} 
    end
    end
  end
  

  def destroy 
    @company = Company.find(params[:id])
    @company.destroy 
    respond_to do |format|
      format.js 
    end   
  end
  
  
end
