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
    load_gem_display
  end

  # PATCH/PUT /gem_displays/1/refresh
  def refresh
    if load_gem_display
      if @gem_display.update
        redirect_to @gem_display.reload, notice: 'Gem display was successfully refreshed.'
      else
        redirect_to @gem_display, error: 'Gem display failed to refresh.'
      end
    end
  end

  private

  def not_found
    render :file => "#{Rails.root}/public/404", :status => :not_found
    false #return false so things will fail
  end

  def load_gem_display
    @gem_display = GemDisplay.find_by_name(params[:id]) or not_found
  end

end
