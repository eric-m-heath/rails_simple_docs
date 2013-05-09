class DocumentsController < ApplicationController

  def index
    @all_documents = Document.order('created_at').all
  end

  def new
    @document = Document.new
  end

  def edit
    @document = Document.find(params[:id])
  end

  def update
    @document = Document.find(params[:document])
  end

  def create
    @user = current_user
    @document = @user.documents.build(params[:document])
    if @document.save
      flash[:success] = "Document added"
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
