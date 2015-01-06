class DownvotesController < ApplicationController

def create
  @smell = Smell.find(params[:smell_id])
  @downvote = @smell.downvotes.create()
  redirect_to @smell
end

def destroy
  @smell = Smell.find(params[:smell_id])
  @downvote = Downvote.find(params[:id])
  if @downvote.destroy
    redirect_to @smell
  end
end


end