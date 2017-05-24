import scrapy
from scrapy.selector import Selector

class testSpider(scrapy.spiders.Spider):
    name = "test"
    allowed_domains = ["dianping.com"]
    start_urls = [
        "http://www.dianping.com/shop/19568624"
    ]

    def parse(self, response):
        filename = response.url.split("/")[-2]
        with open(filename, 'wb') as f:
            f.write(response.body)

        hxs = Selector(response)
        items = []

        newurls = hxs.xpath('//a/@href').extract()
        validurls = []
        for url in newurls:
            if url.startswith("//"):
                url = "http:" + url
                print(url)
            if url.startswith("http"):
                validurls.append(url)
        #print(validurls)
        for url in newurls:
            yield scrapy.Request(url, callback=self.parse,dont_filter=True)
        """
        items.extend([self.make_requests_from_url(url).replace(callback=self.parse) for url in validurls])
        sites = hxs.select('//ul/li')
        items = []
        print(sites)
        for site in sites:
            item = testSpider()
            item['title'] = site.select('a/text()').extract()
            item['link'] = site.select('a/@href').extract()
            item['desc'] = site.select('text()').extract()
            items.append(item)
        """