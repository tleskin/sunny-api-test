require 'test_helper'

class SunlightServiceTest < ActiveSupport::TestCase
  test 'it gets all legislators by location' do
    VCR.use_cassette('sunlight_service#legislators') do
      service = SunlightService.new
      results = service.legislators('80202')

      assert_equal 3,         results.count
      assert_equal 'Cory',    results.first[:first_name]
      assert_equal 'Gardner', results.first[:last_name]
    end
  end
end
