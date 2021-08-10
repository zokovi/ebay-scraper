html = Nokogiri.HTML(content)



seller = html.at_css('div.seller-persona > span > a')&.text


feedback = html.at_css('div.seller-persona > span:nth-child(3)')&.text



outputs << {
    _collection: 'products',
    title: page['vars']['title'],
    price: page['vars']['price'],
    seller: seller,
    feedback: feedback
}
















