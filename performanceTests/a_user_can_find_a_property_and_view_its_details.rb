             # Scenario Name: A user can find a property and view its details

    class A_user_can_find_a_property_and_view_its_details

      def initialize()

      end

      def v_init()


          #v_init end
      end

      def v_action()
          @curl = Curl::Easy.new
          @curl.follow_location = true
          @curl.enable_cookies = true

             genData0 = generic_register_data()

             trans_time1 = start_traction("I_search_for_the_property_on_gov.uk")

             data = {}
             data["header"] = {}
             data["header"]["User-Agent"] = "Mozilla/5.0 (Macintosh; PPC Mac OS X) AppleWebKit/534.34 (KHTML, like Gecko) PhantomJS/1.9.7 Safari/534.34"
             data["header"]["Accept"] = "text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8"
             data["header"]["Authorization"] = "Basic bGFuZHJlZ2lzdHJ5Om5vdHRvYmVzaGFyZWRv"
             response = http_get(@curl, data, "http://172.16.42.43:8002/search")
             assert_http_status(response, 200)

             data = {}
             data["header"] = {}
             data["header"]["User-Agent"] = "Mozilla/5.0 (Macintosh; PPC Mac OS X) AppleWebKit/534.34 (KHTML, like Gecko) PhantomJS/1.9.7 Safari/534.34"
             data["header"]["Accept"] = "text/css,*/*;q=0.1"
             data["header"]["Authorization"] = "Basic bGFuZHJlZ2lzdHJ5Om5vdHRvYmVzaGFyZWRv"
             response = http_get(@curl, data, "http://172.16.42.43:8002/static/build/stylesheets/govuk-template.css?0.8.1")
             assert_http_status(response, 200)

             data = {}
             data["header"] = {}
             data["header"]["User-Agent"] = "Mozilla/5.0 (Macintosh; PPC Mac OS X) AppleWebKit/534.34 (KHTML, like Gecko) PhantomJS/1.9.7 Safari/534.34"
             data["header"]["Accept"] = "text/css,*/*;q=0.1"
             data["header"]["Authorization"] = "Basic bGFuZHJlZ2lzdHJ5Om5vdHRvYmVzaGFyZWRv"
             response = http_get(@curl, data, "http://172.16.42.43:8002/static/build/stylesheets/fonts.css?0.8.1")
             assert_http_status(response, 200)

             data = {}
             data["header"] = {}
             data["header"]["User-Agent"] = "Mozilla/5.0 (Macintosh; PPC Mac OS X) AppleWebKit/534.34 (KHTML, like Gecko) PhantomJS/1.9.7 Safari/534.34"
             data["header"]["Accept"] = "text/css,*/*;q=0.1"
             data["header"]["Authorization"] = "Basic bGFuZHJlZ2lzdHJ5Om5vdHRvYmVzaGFyZWRv"
             response = http_get(@curl, data, "http://172.16.42.43:8002/static/build/stylesheets/landregistry-main.css")
             assert_http_status(response, 200)

             data = {}
             data["header"] = {}
             data["header"]["User-Agent"] = "Mozilla/5.0 (Macintosh; PPC Mac OS X) AppleWebKit/534.34 (KHTML, like Gecko) PhantomJS/1.9.7 Safari/534.34"
             data["header"]["Accept"] = "*/*"
             data["header"]["Authorization"] = "Basic bGFuZHJlZ2lzdHJ5Om5vdHRvYmVzaGFyZWRv"
             response = http_get(@curl, data, "http://172.16.42.43:8002/static/build/javascripts/govuk-template.js?0.8.1")
             assert_http_status(response, 200)

             data = {}
             data["header"] = {}
             data["header"]["User-Agent"] = "Mozilla/5.0 (Macintosh; PPC Mac OS X) AppleWebKit/534.34 (KHTML, like Gecko) PhantomJS/1.9.7 Safari/534.34"
             data["header"]["Accept"] = "*/*"
             data["header"]["Authorization"] = "Basic bGFuZHJlZ2lzdHJ5Om5vdHRvYmVzaGFyZWRv"
             response = http_get(@curl, data, "http://172.16.42.43:8002/static/build/images/gov.uk_logotype_crown.png?0.8.1")
             assert_http_status(response, 200)

             data = {}
             data["header"] = {}
             data["header"]["User-Agent"] = "Mozilla/5.0 (Macintosh; PPC Mac OS X) AppleWebKit/534.34 (KHTML, like Gecko) PhantomJS/1.9.7 Safari/534.34"
             data["header"]["Accept"] = "*/*"
             data["header"]["Authorization"] = "Basic bGFuZHJlZ2lzdHJ5Om5vdHRvYmVzaGFyZWRv"
             response = http_get(@curl, data, "http://172.16.42.43:8002/static/build/images/search-button.png")
             assert_http_status(response, 200)

             data = {}
             data["header"] = {}
             data["header"]["User-Agent"] = "Mozilla/5.0 (Macintosh; PPC Mac OS X) AppleWebKit/534.34 (KHTML, like Gecko) PhantomJS/1.9.7 Safari/534.34"
             data["header"]["Accept"] = "*/*"
             data["header"]["Authorization"] = "Basic bGFuZHJlZ2lzdHJ5Om5vdHRvYmVzaGFyZWRv"
             response = http_get(@curl, data, "http://172.16.42.43:8002/static/build/images/separator.png")
             assert_http_status(response, 200)

             data = {}
             data["header"] = {}
             data["header"]["User-Agent"] = "Mozilla/5.0 (Macintosh; PPC Mac OS X) AppleWebKit/534.34 (KHTML, like Gecko) PhantomJS/1.9.7 Safari/534.34"
             data["header"]["Accept"] = "*/*"
             data["header"]["Authorization"] = "Basic bGFuZHJlZ2lzdHJ5Om5vdHRvYmVzaGFyZWRv"
             response = http_get(@curl, data, "http://172.16.42.43:8002/static/build/stylesheets/images/open-government-licence.png?0.8.1")
             assert_http_status(response, 200)

             data = {}
             data["header"] = {}
             data["header"]["User-Agent"] = "Mozilla/5.0 (Macintosh; PPC Mac OS X) AppleWebKit/534.34 (KHTML, like Gecko) PhantomJS/1.9.7 Safari/534.34"
             data["header"]["Accept"] = "*/*"
             data["header"]["Authorization"] = "Basic bGFuZHJlZ2lzdHJ5Om5vdHRvYmVzaGFyZWRv"
             response = http_get(@curl, data, "http://172.16.42.43:8002/static/build/stylesheets/images/govuk-crest.png?0.8.1")
             assert_http_status(response, 200)

             data = {}
             data["header"] = {}
             data["header"]["User-Agent"] = "Mozilla/5.0 (Macintosh; PPC Mac OS X) AppleWebKit/534.34 (KHTML, like Gecko) PhantomJS/1.9.7 Safari/534.34"
             data["header"]["Accept"] = "text/css,*/*;q=0.1"
             data["header"]["Authorization"] = "Basic bGFuZHJlZ2lzdHJ5Om5vdHRvYmVzaGFyZWRv"
             response = http_get(@curl, data, "http://172.16.42.43:8002/static/build/stylesheets/govuk-template-print.css?0.8.1")
             assert_http_status(response, 200)

             data = {}
             data["header"] = {}
             data["header"]["User-Agent"] = "Mozilla/5.0 (Macintosh; PPC Mac OS X) AppleWebKit/534.34 (KHTML, like Gecko) PhantomJS/1.9.7 Safari/534.34"
             data["header"]["Accept"] = "text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8"
             data["header"]["Authorization"] = "Basic bGFuZHJlZ2lzdHJ5Om5vdHRvYmVzaGFyZWRv"
             response = http_get(@curl, data, "http://172.16.42.43:8002/search/results?search=#{genData0["payment"]["titles"][0]}")
             assert_http_status(response, 200)

             data = {}
             data["header"] = {}
             data["header"]["User-Agent"] = "Mozilla/5.0 (Macintosh; PPC Mac OS X) AppleWebKit/534.34 (KHTML, like Gecko) PhantomJS/1.9.7 Safari/534.34"
             data["header"]["Accept"] = "*/*"
             data["header"]["Authorization"] = "Basic bGFuZHJlZ2lzdHJ5Om5vdHRvYmVzaGFyZWRv"
             response = http_get(@curl, data, "http://placehold.it/240x160")
             assert_http_status(response, 200)

             end_traction("I_search_for_the_property_on_gov.uk", trans_time1)

             end

        def v_end()

            #v_end end
        end

        end

