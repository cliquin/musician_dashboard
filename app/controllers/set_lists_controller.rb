class SetListsController < ApplicationController
  def index
    @set_lists = SetList.all

    render("set_list_templates/index.html.erb")
  end

  def show
    @set_list = SetList.find(params.fetch("id_to_display"))

    render("set_list_templates/show.html.erb")
  end

  def new_form
    @set_list = SetList.new

    render("set_list_templates/new_form.html.erb")
  end

  def create_row
    @set_list = SetList.new

    @set_list.title = params.fetch("title")
    @set_list.user_id = params.fetch("user_id")

    if @set_list.valid?
      @set_list.save

      redirect_back(:fallback_location => "/set_lists", :notice => "Set list created successfully.")
    else
      render("set_list_templates/new_form_with_errors.html.erb")
    end
  end

  def edit_form
    @set_list = SetList.find(params.fetch("prefill_with_id"))

    render("set_list_templates/edit_form.html.erb")
  end

  def update_row
    @set_list = SetList.find(params.fetch("id_to_modify"))

    @set_list.title = params.fetch("title")
    @set_list.user_id = params.fetch("user_id")

    if @set_list.valid?
      @set_list.save

      redirect_to("/set_lists/#{@set_list.id}", :notice => "Set list updated successfully.")
    else
      render("set_list_templates/edit_form_with_errors.html.erb")
    end
  end

  def destroy_row_from_user
    @set_list = SetList.find(params.fetch("id_to_remove"))

    @set_list.destroy

    redirect_to("/users/#{@set_list.user_id}", notice: "SetList deleted successfully.")
  end

  def destroy_row
    @set_list = SetList.find(params.fetch("id_to_remove"))

    @set_list.destroy

    redirect_to("/set_lists", :notice => "Set list deleted successfully.")
  end
end
