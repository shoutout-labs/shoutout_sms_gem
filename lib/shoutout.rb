
class Shoutout
  attr_reader :apikey
  def initialize(apikey)
    @apikey=apikey
  end

  
  def sendSms(from:,to:,body:)
      return SMS.send(self.apikey,from,to,body)
  end
end

require 'shoutout/sms'