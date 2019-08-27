require 'rss'
require 'open-uri'

module Jekyll
  module ExternalRssFilter
    def get_feed(input)
      url = input.to_s
      title = ''
      posts = []

      open(url) do |rss|
        feed = RSS::Parser.parse(rss)
        title = feed.channel.title
        posts = []
        feed.items.each do |item|
          date = DateTime.parse(item.pubDate.to_s)
          post = {
            title: item.title.to_s,
            url: item.link.to_s,
            date: date.strftime('%A, %B %-d, %Y')
          }
          posts.push(post)
        end
      end

      r = "<h2>#{title}</h2>\n<ul>\n"
      posts.each do |post|
        r += "<li><strong><a href=\"#{post[:url]}\">#{post[:title]}</a>:</strong> posted #{post[:date]}</li>\n"
      end
      r += "</ul>"
      return r
    end
  end
end

Liquid::Template.register_filter(Jekyll::ExternalRssFilter)
