class Shoutout::SMS

    def self.send(apikey,from,to,body)

        return RestClient.postJson(
            body:{
                'source' => from, 
                'transports':['sms'],
                'content' => {
                'sms'=>body
            }, 
            'destinations' => [to]},
            url:"https://api.getshoutout.com/coreservice/messages",
            apikey:apikey

        )


        
    end
end


require 'shoutout/restclient'