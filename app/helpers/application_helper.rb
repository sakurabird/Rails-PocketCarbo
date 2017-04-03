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

  def google_analytics
      html = <<-EOF
<script>
  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  })(window,document,'script','https://www.google-analytics.com/analytics.js','ga');

  ga('create', 'UA-96548997-1', 'auto');
  ga('send', 'pageview');

</script>
      EOF
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

  def google_adsense_unit1
    html = <<-EOF
    <script async src="//pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
    <!-- レスポンシブ -->
    <ins class="adsbygoogle"
         style="display:block"
         data-ad-client="ca-pub-6381489451756721"
         data-ad-slot="6685554091"
         data-ad-format="auto"></ins>
    <script>
    (adsbygoogle = window.adsbygoogle || []).push({});
    </script>
    EOF
    html.html_safe
  end

end
