class EventsController < ApplicationController
  
  #
  # Show a listing of events for the current lan party
  #
  def index
	@instance    = LanParty.FindNextScheduled
	@events      = Event.FindAllByLanParty( @instance )
	@events_list = []   
	lastDay      = nil

	#
	# Break up the events into groups by day
	#
	@events.each do |event|
		if( lastDay != event.start.mday )
			# Create a new section
			@events_list.push( Array.new )
			lastDay = event.start.mday
		end

		# Add the event
		@events_list.last.push( event )
	end

	#
	# Print the page
	#
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @events }
    end
  end

  # GET /events/1
  # GET /events/1.xml
  def show
    @event = Event.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @event }
    end
  end

  #
  # Show the form to create a new lan party event
  #
  def new
    @event           = Event.new
	@instances       = LanParty.all.map { |i| [ i.title, i.id ] }
    @currentInstance = LanParty.FindNextScheduled	

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @event }
    end
  end

  # 
  # Edit the selected event
  #
  def edit
    @event           = Event.find(params[:id])
	@instances       = LanParty.all.map { |i| [ i.title, i.id ] }
  end

  # 
  # Create the lan party event
  #
  def create
    @event = Event.new(params[:event])

    respond_to do |format|
      if @event.save
        flash[:notice] = 'Event was successfully created.'
        format.html { redirect_to(@event) }
        format.xml  { render :xml => @event, :status => :created, :location => @event }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @event.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /events/1
  # PUT /events/1.xml
  def update
    @event = Event.find(params[:id])

    respond_to do |format|
      if @event.update_attributes(params[:event])
        flash[:notice] = 'Event was successfully updated.'
        format.html { redirect_to(@event) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @event.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /events/1
  # DELETE /events/1.xml
  def destroy
    @event = Event.find(params[:id])
    @event.destroy

    respond_to do |format|
      format.html { redirect_to(events_url) }
      format.xml  { head :ok }
    end
  end
end
