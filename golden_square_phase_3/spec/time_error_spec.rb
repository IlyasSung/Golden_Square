require "time_error"

RSpec.describe TimeError do
    it "returns the difference between the remote clock and the local clock" do
        fake_requester = double :requester
        allow(fake_requester).to receive(:get).with(
            URI("https://worldtimeapi.org/api/ip")
        ).and_return('{"abbreviation":"BST","client_ip":"104.132.45.110","datetime":"2022-10-13T12:39:51.180623+01:00","day_of_week":4,"day_of_year":286,"dst":true,"dst_from":"2022-03-27T01:00:00+00:00","dst_offset":3600,"dst_until":"2022-10-30T01:00:00+00:00","raw_offset":0,"timezone":"Europe/London","unixtime":1665661191,"utc_datetime":"2022-10-13T11:39:51.180623+00:00","utc_offset":"+01:00","week_number":41}')
        time = Time.new(2022, 10, 13, 12, 39, 51) 
        time_error = TimeError.new(fake_requester)
        expect(time_error.error(time)).to eq 0.180623
    end
end

