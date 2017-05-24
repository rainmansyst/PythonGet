# -*- coding: utf-8 -*-
#author weihf
#
import scrapy
from scrapy.spiders import CrawlSpider
from scrapy.http import request, Request
from scrapy.selector import Selector
from getstore.items import GetstoreItem  #引入items中的类


class StoreSpider(CrawlSpider):
    name = "storespider"
    #redis_key = 'storespider:start_urls'
    #get start url to crawl
    allowed_domains = ["dianping.com"]
    start_urls = ['http://www.dianping.com/search/category/2/70/g188']
    url = 'http://www.dianping.com/search/category/2/70/g188'
    urlroot = 'http://www.dianping.com/shop/'

    def parse(self, response):
        item = GetstoreItem()
        #所有的网页数据
        selector = Selector(response)
        stores = selector.xpath('//ul[@class="shop-list"]/li')
        #print(stores)
        for store in stores:
            storeid = store.xpath('@data-shopid').extract()[-1]
            #print(storeid)
            yield Request(self.urlroot+storeid, callback=self.parse_item)
        # nextpage 的标签容易出现变动
        nextpage = selector.xpath('//div[@class="Pages"]/a/@href').extract()[-1]
        if nextpage:
#            print nextpage,  '*************************next page******************************'
            # 字符串切片 拼接
            #nextpage = nextpage[23:]
            nextpage = nextpage[26:]
            #print(nextpage)
            yield Request(self.url+nextpage, callback=self.parse)


    def parse_item(self, response):
        itemstore = GetstoreItem()
        selector = Selector(response)
        #detailstores = selector.xpath('//ul[@class="shop-list"]')
        #for detailstore in detailstores:
        storename = selector.xpath('//h1[@class="shop-title"]/text()').extract()
        storeid = response.url
        phone = selector.xpath('//div[@class="shopinfor"]/p[1]/span[1]/text()').extract()
        #phone.replace(u'\xa0', u' ')
        summary = selector.xpath('//div[@class="block_all"]/div/span/text()').extract()
        print(summary)
        addr = selector.xpath('//div[@class="shop-addr"]/span/text()').extract()
        if storename:
            itemstore['storename'] = storename[0]
        else:
            itemstore['storename'] = None
        if storeid:
            itemstore['storeid'] = storeid[0]
        else:
            itemstore['storeid'] = None
        if phone:
            itemstore['phone'] = phone[0]
        else:
            itemstore['phone'] = None
        if summary:
            itemstore['summary'] = summary[0]
        else:
            itemstore['summary'] = None
        if addr:
            itemstore['addr'] = addr[0]
        else:
            itemstore['addr'] = None
        yield itemstore

