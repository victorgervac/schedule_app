class FetchHostAway
  require 'faraday'
  def initialize( )
    @location = @location
  end

  def self.run()
    self.new().fetch_locations
  end

  def fetch_locations
    
  end

  private
  def fetch_raw_data
    response = api_conn.post("#{project_api_url}/assigned_terms/?period_id=#{@period_id}&term_ids=#{@term_ids}")

    response.status == 200 ? formatted_data(response.body) : response.body
  end

  def api_conn
    Faraday.new(
      headers: { 'Content-Type': 'application/x-www-form-urlencoded', 'Accept': 'application/json',
                 'SystemGrantToken': '40b4e45529a7cacc91a6c297c369e0cf2ebf94bb3f10ad086252afd8d7ae9405' }
    )
  end
end