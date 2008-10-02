require 'rubymarks/services'

module Rubymarks

  def bookmark_url(service, url, options = {})
    service = RUBYMARKS_SERVICES[service]
    url_parts = ["#{service[:url_param]}=#{URI.encode(url)}"]
    url_parts << "#{service[:title_param]}=#{URI.encode(options[:title])}" if options[:title] && service[:title_param]
    url_parts << "#{service[:text_param]}=#{URI.encode(options[:text])}" if options[:text] && service[:text_param]
    service[:base_url] + url_parts.join('&')
  end

  def bookmark_tag(service, url, options = {})
    "<a href='#{bookmark_url(service, url, options)}'#{" target='new'" if options[:new_window] == true}>#{RUBYMARKS_SERVICES[service][:name]}</a>"
  end

  def rubymarks_services
    RUBYMARKS_SERVICES
  end

end