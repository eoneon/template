class AttributesController < ApplicationController
  def index
    @attributes = Attribute.all
  end

  def import
    Attribute.import(params[:file])
    redirect_to root_url, notice: "Attribute Data imported"
  end
end
