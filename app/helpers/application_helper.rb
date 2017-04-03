module ApplicationHelper

  def default_meta_tags
    {
        reverse: true,
        description: Settings.site.description,
        canonical: Settings.site.url,
        og: {
            title: :title,
            type: Settings.site.og.type,
            url: Settings.site.url,
            image: default_image_url,
            site_name: Settings.site.name,
            description: :description,
            locale: 'ja_JP'
        }
    }
  end

  def default_image_url
    image_url('kind1.jpg')
  end
end
