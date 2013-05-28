class LogEventsController < ApplicationController
  # GET /log_events
  # GET /log_events.json
  def index
    @log_events = LogEvent.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @log_events }
    end
  end

  # GET /log_events/1
  # GET /log_events/1.json
  def show
    @log_event = LogEvent.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @log_event }
    end
  end

  # GET /log_events/new
  # GET /log_events/new.json
  def new
    @log_event = LogEvent.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @log_event }
    end
  end

  # GET /log_events/1/edit
  def edit
    @log_event = LogEvent.find(params[:id])
  end

  # POST /log_events
  # POST /log_events.json
  def create
    @log_event = LogEvent.new(params[:log_event])

    respond_to do |format|
      if @log_event.save
        format.html { redirect_to @log_event, notice: 'Log event was successfully created.' }
        format.json { render json: @log_event, status: :created, location: @log_event }
      else
        format.html { render action: "new" }
        format.json { render json: @log_event.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /log_events/1
  # PUT /log_events/1.json
  def update
    @log_event = LogEvent.find(params[:id])

    respond_to do |format|
      if @log_event.update_attributes(params[:log_event])
        format.html { redirect_to @log_event, notice: 'Log event was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @log_event.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /log_events/1
  # DELETE /log_events/1.json
  def destroy
    @log_event = LogEvent.find(params[:id])
    @log_event.destroy

    respond_to do |format|
      format.html { redirect_to log_events_url }
      format.json { head :no_content }
    end
  end
end
