class UserNotification < ApplicationRecord

	def self.storesubscriberusersparty(mails)
      details = Hash.new
        params = {"subscribers" => mails}
        result = HTTParty.post("http://api.mailerlite.com/api/v2/groups/your_group_number/subscribers/import", 
                  :body => params,
                  :headers => { 'X-MailerLite-ApiKey' => 'your_Api_Key'})
        response = JSON.parse(result.body)
        if (result.code == 200)
          details["details"] = response["imported"]
        end
      return response
    end
end
