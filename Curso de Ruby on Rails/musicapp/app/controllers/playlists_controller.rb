class PlaylistsController < ApplicationController
	def index
		@playlists = Playlist.all
	end

	def show
	  @playlist_show = Playlist.find(params[:id])
	  # respond_to do |format|
	  #   # format.html show.html.erb
	  #   format.json  { render :json => @playlist_show }
	  # end
	end

	def new
	  @playnew = Playlist.new
	end

	def create
 	  @playsave = Playlist.new(params.require(:playlist).permit(:name, :number_of_votes))
	  if @playsave.save
	  	redirect_to @playsave
	  else
	  	render :index 
	  end
	end 

	def edit
	  @playedit = Playlist.find(params[:id])
  	end

  	def update
	  @play = Playlist.find(params[:id])
		
	   if @play.update(playlist_params)
	      redirect_to :action => 'index', :id => @play
	   else
	      @play = Subject.all
	      render :action => 'edit'
	   end
  	end

  	def destroy
  	  @playdel = Playlist.find(params[:id])
  	  @playdel.destroy
	  respond_to do |format|
     	# format.html { redirect_to tracks_url, notice: 'Track was successfully destroyed.' }	    
	    # format.js   { render :layout => false }
	    format.js   { render :layout => false }
	  end  	   
  	   	# if @playdel
  	  	 #  redirect_to @playdel
  	   	# else
  	  	 #  redirect_to :action => 'show', :id => @play
  	    # end
  	end

	private
	  def playlist_params
	    params.require(:playlist).permit(:name, :number_of_votes)
	  end

end
