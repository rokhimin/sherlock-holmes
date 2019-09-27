
class Gitlab
	def self.works(username)
		@username = username
		website = OpenStruct.new YAML.load_file 'data/site.yaml'
		gitlab = ["0"]
		username_gitlab = "#{website.gitlab}#{@username}"

		gitlab_auth = Nokogiri::HTML(open("#{username_gitlab}"))
		
		identity = gitlab_auth.css('h3')
		
		puts identity
	end
end











