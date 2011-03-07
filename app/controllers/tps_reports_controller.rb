class TpsReportsController < ApplicationController
  # GET /tps_reports
  # GET /tps_reports.xml
  def index
    @tps_reports = TpsReport.all
    SampleTask.async(:do_something, :sleep_for => 2)

    # @tps_reports.first.shred_report
    # @tps_reports.first.background.shred_report
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @tps_reports }
    end
  end

  # GET /tps_reports/1
  # GET /tps_reports/1.xml
  def show
    @tps_report = TpsReport.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @tps_report }
    end
  end

  # GET /tps_reports/new
  # GET /tps_reports/new.xml
  def new
    @tps_report = TpsReport.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @tps_report }
    end
  end

  # GET /tps_reports/1/edit
  def edit
    @tps_report = TpsReport.find(params[:id])
  end

  # POST /tps_reports
  # POST /tps_reports.xml
  def create
    @tps_report = TpsReport.new(params[:tps_report])

    respond_to do |format|
      if @tps_report.save
        format.html { redirect_to(@tps_report, :notice => 'Tps report was successfully created.') }
        format.xml  { render :xml => @tps_report, :status => :created, :location => @tps_report }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @tps_report.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /tps_reports/1
  # PUT /tps_reports/1.xml
  def update
    @tps_report = TpsReport.find(params[:id])

    respond_to do |format|
      if @tps_report.update_attributes(params[:tps_report])
        format.html { redirect_to(@tps_report, :notice => 'Tps report was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @tps_report.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /tps_reports/1
  # DELETE /tps_reports/1.xml
  def destroy
    @tps_report = TpsReport.find(params[:id])
    @tps_report.destroy

    respond_to do |format|
      format.html { redirect_to(tps_reports_url) }
      format.xml  { head :ok }
    end
  end
end
