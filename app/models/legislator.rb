class Legislator
  def self.service
    @service ||= SunlightService.new
  end

  def self.find_by(zipcode: "")
    service.legislators(zipcode)
  end
end
