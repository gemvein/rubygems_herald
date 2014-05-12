class GemDisplaysController < ApplicationController

  # GET /gem_displays
  def index
    @gem_displays = GemDisplay.all
    if @gem_displays.empty?
      @gem_displays = GemDisplay.load_rubygems
    end
  end

  # GET /gem_displays/1
  def show
    @gem_display = GemDisplay.find_by_name(params[:id])
  end

  # PATCH/PUT /gem_displays/1/refresh
  def refresh
    @gem_display = GemDisplay.find_by_name(params[:id])
    if @gem_display.update
      redirect_to @gem_display, notice: 'Gem display was successfully refreshed.'
    else
      redirect_to @gem_display, error: 'Gem display failed to refresh.'
    end
  end


end
