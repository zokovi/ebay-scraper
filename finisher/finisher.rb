require 'dh_easy/qa'

collections = Datahen::Client::ScraperJobOutput.new.collections("ebay")
collection = collections.find{ |collection| collection['collection'] == "listings" }
if collection

  total = collection["outputs"]
   outputs << {
     "_collection" => "summary",
     "total_listings" => total
   }

else

   puts "no listings collection found"

end

vars = { "scraper_name" => "ebay", "collections" => ["listings"]}
DhEasy::Qa::Validator.new.validate_internal(vars, outputs)