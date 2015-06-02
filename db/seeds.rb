# response = HTTParty.get("http://api.openbeerdatabase.com/v1/beers.json/?per_page=50")

# response["beers"].shuffle.each do |beer|
#   Beer.create(name: beer["name"], description: beer["description"], brewery: beer["brewery"]["name"])
# end

Beer.create(name: "HELL OR HIGH WATERMELON", description: "Hell or High Watermelon Wheat is our summer seasonal beer available from April through September in six pack cans and on draft. We start by brewing a classic American wheat beer, which undergoes a traditional secondary fermentation using fresh watermelon. A straw-colored, refreshing beer with a kiss of watermelon aroma and flavor.", brewery: "21st Amendment Brewery")
