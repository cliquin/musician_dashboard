class SetListSongsController < ApplicationController
  def index
    @set_list_songs = SetListSong.all

    render("set_list_song_templates/index.html.erb")
  end

  def show
    @set_list_song = SetListSong.find(params.fetch("id_to_display"))

    render("set_list_song_templates/show.html.erb")
  end

  def new_form
    @set_list_song = SetListSong.new

    render("set_list_song_templates/new_form.html.erb")
  end

  def create_row
    @set_list_song = SetListSong.new

    @set_list_song.song_id = params.fetch("song_id")
    @set_list_song.set_list_id = params.fetch("set_list_id")
    @set_list_song.position = params.fetch("position")

    if @set_list_song.valid?
      @set_list_song.save

      redirect_back(:fallback_location => "/set_list_songs", :notice => "Set list song created successfully.")
    else
      render("set_list_song_templates/new_form_with_errors.html.erb")
    end
  end

  def create_row_from_song
    @set_list_song = SetListSong.new

    @set_list_song.song_id = params.fetch("song_id")
    @set_list_song.set_list_id = params.fetch("set_list_id")
    @set_list_song.position = params.fetch("position")

    if @set_list_song.valid?
      @set_list_song.save

      redirect_to("/songs/#{@set_list_song.song_id}", notice: "SetListSong created successfully.")
    else
      render("set_list_song_templates/new_form_with_errors.html.erb")
    end
  end

  def create_row_from_set_list
    @set_list_song = SetListSong.new

    @set_list_song.song_id = params.fetch("song_id")
    @set_list_song.set_list_id = params.fetch("set_list_id")
    @set_list_song.position = params.fetch("position")

    if @set_list_song.valid?
      @set_list_song.save

      redirect_to("/set_lists/#{@set_list_song.set_list_id}", notice: "SetListSong created successfully.")
    else
      render("set_list_song_templates/new_form_with_errors.html.erb")
    end
  end

  def edit_form
    @set_list_song = SetListSong.find(params.fetch("prefill_with_id"))

    render("set_list_song_templates/edit_form.html.erb")
  end

  def update_row
    @set_list_song = SetListSong.find(params.fetch("id_to_modify"))

    @set_list_song.song_id = params.fetch("song_id")
    @set_list_song.set_list_id = params.fetch("set_list_id")
    @set_list_song.position = params.fetch("position")

    if @set_list_song.valid?
      @set_list_song.save

      redirect_to("/set_list_songs/#{@set_list_song.id}", :notice => "Set list song updated successfully.")
    else
      render("set_list_song_templates/edit_form_with_errors.html.erb")
    end
  end

  def destroy_row_from_song
    @set_list_song = SetListSong.find(params.fetch("id_to_remove"))

    @set_list_song.destroy

    redirect_to("/songs/#{@set_list_song.song_id}", notice: "SetListSong deleted successfully.")
  end

  def destroy_row_from_set_list
    @set_list_song = SetListSong.find(params.fetch("id_to_remove"))

    @set_list_song.destroy

    redirect_to("/set_lists/#{@set_list_song.set_list_id}", notice: "SetListSong deleted successfully.")
  end

  def destroy_row
    @set_list_song = SetListSong.find(params.fetch("id_to_remove"))

    @set_list_song.destroy

    redirect_to("/set_list_songs", :notice => "Set list song deleted successfully.")
  end
end
