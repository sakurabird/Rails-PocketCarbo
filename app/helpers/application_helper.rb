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

  def google_tag_manager_head
    if Rails.env.production?
  
      html = <<-EOF
        <!-- Google Tag Manager -->
        <script>(function(w,d,s,l,i){w[l]=w[l]||[];w[l].push({'gtm.start':
          new Date().getTime(),event:'gtm.js'});var f=d.getElementsByTagName(s)[0],
          j=d.createElement(s),dl=l!='dataLayer'?'&l='+l:'';j.async=true;j.src=
          'https://www.googletagmanager.com/gtm.js?id='+i+dl;f.parentNode.insertBefore(j,f);
        })(window,document,'script','dataLayer','GTM-NJBB4JT');</script>
        <!-- End Google Tag Manager -->
      EOF

    else

      html = <<-EOF
        <!-- Google Tag Manager -->
        <script>(function(w,d,s,l,i){w[l]=w[l]||[];w[l].push({'gtm.start':
        new Date().getTime(),event:'gtm.js'});var f=d.getElementsByTagName(s)[0],
        j=d.createElement(s),dl=l!='dataLayer'?'&l='+l:'';j.async=true;j.src=
        'https://www.googletagmanager.com/gtm.js?id='+i+dl;f.parentNode.insertBefore(j,f);
        })(window,document,'script','dataLayer','GTM-K733XJJ');</script>
        <!-- End Google Tag Manager -->
      EOF
      
    end
    html.html_safe
  end

  def google_tag_manager_body
    if Rails.env.production?

      html = <<-EOF
        <!-- Google Tag Manager (noscript) -->
        <noscript><iframe src="https://www.googletagmanager.com/ns.html?id=GTM-NJBB4JT"
        height="0" width="0" style="display:none;visibility:hidden"></iframe></noscript>
        <!-- End Google Tag Manager (noscript) -->
      EOF

      else
      html = <<-EOF
        <!-- Google Tag Manager (noscript) -->
        <noscript><iframe src="https://www.googletagmanager.com/ns.html?id=GTM-K733XJJ"
        height="0" width="0" style="display:none;visibility:hidden"></iframe></noscript>
        <!-- End Google Tag Manager (noscript) -->
      EOF
    end
    html.html_safe
  end

  def google_adsense
    html = <<-EOF
      <script async src="//pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
      <script>
          (adsbygoogle = window.adsbygoogle || []).push({
                google_ad_client: "ca-pub-6381489451756721",
                enable_page_level_ads: true
          });
      </script>
    EOF
    html.html_safe
  end
end
