class StatusesController < ApplicationController
  def index
    @statuses = Status.page(params[:page]).per(10)

    render("status_templates/index.html.erb")
  end

  def show
    @song = Song.new
    @status = Status.find(params.fetch("id_to_display"))

    render("status_templates/show.html.erb")
  end

  def new_form
    @status = Status.new

    render("status_templates/new_form.html.erb")
  end

  def create_row
    @status = Status.new

    @status.name = params.fetch("name")
    @status.user_id = params.fetch("user_id")

    if @status.valid?
      @status.save

      redirect_back(:fallback_location => "/statuses", :notice => "Status created successfully.")
    else
      render("status_templates/new_form_with_errors.html.erb")
    end
  end

  def edit_form
    @status = Status.find(params.fetch("prefill_with_id"))

    render("status_templates/edit_form.html.erb")
  end

  def update_row
    @status = Status.find(params.fetch("id_to_modify"))

    @status.name = params.fetch("name")
    @status.user_id = params.fetch("user_id")

    if @status.valid?
      @status.save

      redirect_to("/statuses/#{@status.id}", :notice => "Status updated successfully.")
    else
      render("status_templates/edit_form_with_errors.html.erb")
    end
  end

  def destroy_row_from_user
    @status = Status.find(params.fetch("id_to_remove"))

    @status.destroy

    redirect_to("/users/#{@status.user_id}", notice: "Status deleted successfully.")
  end

  def destroy_row
    @status = Status.find(params.fetch("id_to_remove"))

    @status.destroy

    redirect_to("/statuses", :notice => "Status deleted successfully.")
  end
end
