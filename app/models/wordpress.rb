class Wordpress
  def self.posts
    source = WORDPRESS_CONFIG['rss_url']
    content = ''
    open(source) do |s| content = s.read end
    REXML::Document.new(content).root.elements.to_a('channel/item')
  end
end