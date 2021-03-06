class VotesController < ApplicationController
  before_action :set_vote, only: [:show, :edit, :update, :destroy]
  skip_before_action :verify_authenticity_token, only: [:create]

  # GET /votes
  # GET /votes.json
  def index
    @votes = Vote.all
  end

  # GET /votes/1
  # GET /votes/1.json
  def show
  end

  # GET /votes/new
  def new
    @election = Election.friendly.find(params[:election_id])
    @vote = Vote.new(election: @election)
  end

  # GET /votes/1/edit
  def edit
    @election = @vote.election || Election.new
  end

  # POST /votes
  # POST /votes.json
  def create
    @vote = Vote.new(vote_params)
    @election = @vote.election

    respond_to do |format|
      if @vote.save
        format.html { redirect_to @vote.election || root_path, notice: 'Vote was successfully cast.' }
        format.json { render :show, status: :created, location: @vote }
      else
        format.html { render :new }
        format.json { render json: @vote.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /votes/1
  # PATCH/PUT /votes/1.json
  def update
    @election = @vote.election

    respond_to do |format|
      if @vote.update(vote_params)
        format.html { redirect_to @vote, notice: 'Vote was successfully updated.' }
        format.json { render :show, status: :ok, location: @vote }
      else
        format.html { render :edit }
        format.json { render json: @vote.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /votes/1
  # DELETE /votes/1.json
  def destroy
    @vote.destroy
    respond_to do |format|
      format.html { redirect_to votes_url, notice: 'Vote was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_vote
      @vote = Vote.friendly.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def vote_params
      params.require(:vote).permit(:election_id,
        :choice0, :choice1, :choice2,
        :choice3, :choice4, :choice5,
        :choice6, :choice7, :choice8)
    end
end
