nokogiri = Nokogiri.HTML(content)

listings = nokogiri.css('ul.b-list__items_nofooter > li.s-item')

listings.each do |listing|
    product = {}
    product['title'] = item.at_css('h3.s-item__title')&.text

    product['price'] = item.at_css('span.s-item__price')&.text
    
    item_link = item.at_css('a.s-item__link')

    product['url'] = item_link['href'] unless item_link.nil?

    product['_collection'] = 'listings'

    outputs << product

    pages << {
        url: product['url'],
        page_type: 'details',
        vars: {
            title: product['title'],
            price: product['price']
        }
      }

end