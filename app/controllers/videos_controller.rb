class VideosController < ApplicationController
  # GET /videos
  # GET /videos.json
  def index
    # @api_key = "5875231" # Replace with your OpenTok API key.
    #    @api_secret = "8f5cde4ade6b11ea22cfd73ea345c64b4e423d29"  # Replace with your OpenTok API secret.
    # 
    #    @opentok = OpenTok::OpenTokSDK.new @api_key, @api_secret
    #    @location = 'localhost'
    #    @session_id = @opentok.create_session(@location)
    # 
    #    @token = @opentok.generate_token :session_id => @session_id, :role => OpenTok::RoleConstants::PUBLISHER, :connection_data => "username=Bob, level=4"
   
    @videos = Video.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @videos }
    end
  end

  # GET /videos/1
  # GET /videos/1.json
  def show
    @video = Video.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @video }
    end
  end

  # GET /videos/new
  # GET /videos/new.json
  def new
    @video = Video.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @video }
    end
  end

  # GET /videos/1/edit
  def edit
    @video = Video.find(params[:id])
  end

  # POST /videos
  # POST /videos.json
  def create
    # @video = Video.new(params[:video])
    
    # @video = current_user.videos.new(params[:video])
    
    @video = Video.new
    @video.user_id = current_user.id
    @video.archive_id = params[:video][:archive_id]
    
    current_user.videos << @video

    respond_to do |format|
      if @video.save
        # format.html { redirect_to @video, notice: 'Video was successfully created.' }
        format.json { render json: @video, status: :created, location: @video }
      else
        # format.html 3{ render action: "new" }
        format.json { render json: @video.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /videos/1
  # PUT /videos/1.json
  def update
    # @video = Video.find(params[:id])
    @video = current_user.videos.find(params[:id])

    respond_to do |format|
      if @video.update_attributes(params[:video])
        format.html { redirect_to @video, notice: 'Video was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @video.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /videos/1
  # DELETE /videos/1.json
  def destroy
    # @video = Video.find(params[:id])
    @video = current_user.videos.find(params[:id])
    @video.destroy

    respond_to do |format|
      format.html { redirect_to videos_url }
      format.json { head :no_content }
    end
  end
end
