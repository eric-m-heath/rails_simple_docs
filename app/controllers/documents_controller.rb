class DocumentsController < ApplicationController

  def index

  end

  def new
    @document = Document.new
  end

  def create
    @user = current_user
    @document = @user.documents.build(params[:document])
    if @document.save
      redirect_to document_path @document
    else
      flash[:error] = "Form not saved"
      render 'new'
    end
  end

  def show
    @document = Document.find(params[:id])
  end

end
