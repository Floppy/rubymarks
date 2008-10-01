module Rubymarks

  SERVICES = {
    :facebook => {
      :name => 'Facebook',
      :base_url => 'http://www.facebook.com/share.php?',
      :url_param => 'u',
      :title_param => nil,
      :text_param => nil
    },
    :myspace => {
      :name => 'MySpace',
      :base_url => 'http://www.myspace.com/index.cfm?fuseaction=postto&l=1&',
      :url_param => 'u',
      :title_param => 't',
      :text_param => 'c'
    }
  }

  def bookmark(service, url, options = {})
    service = SERVICES[service]
    url_parts = ["#{service[:url_param]}=#{URI.encode(url)}"]
    url_parts << "#{service[:title_param]}=#{URI.encode(options[:title])}" if options[:title] && service[:title_param]
    url_parts << "#{service[:text_param]}=#{URI.encode(options[:text])}" if options[:text] && service[:text_param]
    "<a href='#{service[:base_url]}#{url_parts.join('&')}'>#{service[:name]}</a>"
  end

end