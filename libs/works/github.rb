
class Github
	def self.works(username)
		@username = username
		website = OpenStruct.new YAML.load_file 'data/site.yaml'
		github = ["0"]
		username_github = "#{website.github}#{@username}"

		begin
		  github_auth = Nokogiri::HTML(open("#{username_github}"))
		rescue => e
		  github << "1"
		end

		if github.last == "0"
			puts username_github
		else
		end
	end
end









