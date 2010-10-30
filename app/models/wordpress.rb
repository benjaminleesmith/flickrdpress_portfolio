class Wordpress
  def self.posts
    source = ::PORTFOLIO_CONFIG['wordpress_rss_url']
    content = ''
    open(source) do |s| content = s.read end
    REXML::Document.new(content).root.elements.to_a('channel/item')
  end
end