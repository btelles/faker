module Faker
  class Internet
    class << self
      def email(name = nil)
        [ user_name(name), domain_name ].join('@')
      end
      
      def free_email(name = nil)
        [ user_name(name), %w(gmail.com yahoo.com hotmail.com).rand ].join('@')
      end
      
      def user_name(name = nil)
        return name.scan(/\w+/).shuffle.join(%w(. _).rand).downcase if name
        
        [ 
          Proc.new { Name.first_name.gsub(/\W/, '').downcase },
          Proc.new { 
            [ Name.first_name, Name.last_name ].map {|n| 
              n.gsub(/\W/, '')
            }.join(%w(. _).rand).downcase }
        ].rand.call
      end
      
      def domain_name
        [ domain_word, domain_suffix ].join('.')
      end
      
      def domain_word
        Company.name.split(' ').first.gsub(/\W/, '').downcase
      end
      
      def domain_suffix
        %w(co.uk com us uk ca biz info name).rand
      end

      def ip_address
        [rand(254)+1, rand(255), rand(255), rand(255)].join('.')
      end

      def url
        [schema, domain_name, url_path].join('/')
      end

      def url_path
        Lorem.words(rand(3)).join('/')
      end

      def schema
        %w|http:/ https:/ http:/|.rand
      end

      def user_agent
        [
        "Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_2; en-US) AppleWebKit/533.3 (KHTML, like Gecko) Chrome/5.0.356.2 Safari/533.3",
        "Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.4; en-US; rv:1.9.1.7) Gecko/20091221 Firefox/3.5.7",
        "Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.6; de; rv:1.9.2) Gecko/20100115 Firefox/3.6",
        "Mozilla/5.0 (Windows; U; Windows NT 6.1; en-US) AppleWebKit/532.9 (KHTML, like Gecko) Chrome/5.0.317.2 Safari/532.9",
        "Mozilla/5.0 (Windows; U; Windows NT 6.0; en-US; rv:1.9.1.5) Gecko/20091102 Firefox/3.5.5 (.NET CLR 3.5.30729)",
        "Mozilla/5.0 (Windows; U; Windows NT 5.2; en-US; rv:1.9.1.7) Gecko/20091221 Firefox/3.5.7",
        "Opera/9.80 (Windows NT 6.1; U; en) Presto/2.6.22 Version/10.50",
        "Mozilla/5.0 (X11; U; Linux i686; en-GB; rv:1.9.1.8) Gecko/20100214 Ubuntu/9.10 (karmic) Firefox/3.5.8",
        "Mozilla/5.0 (X11; U; Linux i686; en-US) AppleWebKit/532.5 (KHTML, like Gecko) Chrome/4.0.249.43 Safari/532.5",
        "Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.6; en-US; rv:1.9.2) Gecko/20100121 Namoroka/3.6",
        ].rand
      end
    end
  end
end
