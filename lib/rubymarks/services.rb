module Rubymarks

  RUBYMARKS_SERVICES = {
    :facebook => {
      :name => 'Facebook',
      :base_url => 'http://www.facebook.com/share.php?',
      :url_param => 'u'
    },
    :digg => {
      :name => 'Digg',
      :base_url => 'http://digg.com/submit?phase=2&',
      :url_param => 'url',
      :title_param => 'title'
    },
    :delicious => {
      :name => 'Delicious',
      :base_url => 'http://del.icio.us/post?',
      :url_param => 'url',
      :title_param => 'title'
    },
    :stumbleupon => {
      :name => 'StumbleUpon',
      :base_url => 'http://www.stumbleupon.com/submit?',
      :url_param => 'url',
      :title_param => 'title'
    },
    :twitter => {
      :name => 'Twitter',
      :base_url => 'http://twitthis.com/twit?',
      :url_param => 'url',
      :title_param => 'title'
    },
    :reddit => {
      :name => 'Reddit',
      :base_url => 'http://reddit.com/submit',
      :url_param => 'url',
      :title_param => 'title'
    },
    :windowslive => {
      :name => 'Windows Live',
      :base_url => 'https://favorites.live.com/quickadd.aspx?marklet=1&mkt=en-gb&top=0&',
      :url_param => 'url',
      :title_param => 'title'
    },
    :google => {
      :name => 'Google Bookmarks',
      :base_url => 'http://www.google.com/bookmarks/mark?op=edit&output=popup&',
      :url_param => 'bkmk',
      :title_param => 'title'
    },
    :myaol => {
      :name => 'My AOL',
      :base_url => 'http://favorites.my.aol.com/ffclient/AddBookmark?favelet=true&',
      :url_param => 'url',
      :title_param => 'title'
    },
    :magnolia => {
      :name => 'Magnolia',
      :base_url => 'http://ma.gnolia.com/bookmarklet/add?',
      :url_param => 'url',
      :title_param => 'title'
    },
    :technorati => {
      :name => 'Technorati',
      :base_url => 'http://technorati.com/faves?sub=addfavbtn&',
      :url_param => 'add'
    },
    :newsvine => {
      :name => 'Newsvine',
      :base_url => 'http://www.newsvine.com/_tools/seed&save?',
      :url_param => 'u',
      :title_param => 'h'
    },
    :myspace => {
      :name => 'MySpace',
      :base_url => 'http://www.myspace.com/index.cfm?fuseaction=postto&l=1&',
      :url_param => 'u',
      :title_param => 't',
      :text_param => 'c'
    },
    :tinyurl => {
      :name => "TinyURL",
      :base_url => 'http://tinyurl.com/create.php?',
      :url_param => 'url'
    },
    :snurl => {
      :name => "Snurl",
      :base_url => 'http://snipr.com/site/snip?r=simple&',
      :url_param => 'link',
      :title_param => 'title'
    }
  }

end