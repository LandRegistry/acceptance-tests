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

             genData0 = create_base_register()

             trans_time1 = start_traction("I_search_for_the_property_on_gov.uk")

             data = {}
             data["header"] = {}
             data["header"]["User-Agent"] = "Mozilla/5.0 (Macintosh; PPC Mac OS X) AppleWebKit/534.34 (KHTML, like Gecko) PhantomJS/1.9.7 Safari/534.34"
             data["header"]["Accept"] = "text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8"
             data["header"]["Authorization"] = "Basic Og=="
             response = http_get(@curl, data, "http://172.16.42.43:8002/search")
             assert_http_status(response, 200)

             data = {}
             data["header"] = {}
             data["header"]["User-Agent"] = "Mozilla/5.0 (Macintosh; PPC Mac OS X) AppleWebKit/534.34 (KHTML, like Gecko) PhantomJS/1.9.7 Safari/534.34"
             data["header"]["Accept"] = "text/css,*/*;q=0.1"
             data["header"]["Authorization"] = "Basic Og=="
             response = http_get(@curl, data, "http://172.16.42.43:8002/static/build/stylesheets/govuk-template.css?0.8.1")
             assert_http_status(response, 200)

             data = {}
             data["header"] = {}
             data["header"]["User-Agent"] = "Mozilla/5.0 (Macintosh; PPC Mac OS X) AppleWebKit/534.34 (KHTML, like Gecko) PhantomJS/1.9.7 Safari/534.34"
             data["header"]["Accept"] = "text/css,*/*;q=0.1"
             data["header"]["Authorization"] = "Basic Og=="
             response = http_get(@curl, data, "http://172.16.42.43:8002/static/build/stylesheets/fonts.css?0.8.1")
             assert_http_status(response, 200)

             data = {}
             data["header"] = {}
             data["header"]["User-Agent"] = "Mozilla/5.0 (Macintosh; PPC Mac OS X) AppleWebKit/534.34 (KHTML, like Gecko) PhantomJS/1.9.7 Safari/534.34"
             data["header"]["Accept"] = "text/css,*/*;q=0.1"
             data["header"]["Authorization"] = "Basic Og=="
             response = http_get(@curl, data, "http://172.16.42.43:8002/static/build/stylesheets/landregistry-main.css")
             assert_http_status(response, 200)

             data = {}
             data["header"] = {}
             data["header"]["User-Agent"] = "Mozilla/5.0 (Macintosh; PPC Mac OS X) AppleWebKit/534.34 (KHTML, like Gecko) PhantomJS/1.9.7 Safari/534.34"
             data["header"]["Accept"] = "text/css,*/*;q=0.1"
             data["header"]["Authorization"] = "Basic Og=="
             response = http_get(@curl, data, "http://172.16.42.43:8002/static/build/javascripts/vendor/leaflet-0.7.3/leaflet.css")
             assert_http_status(response, 200)

             data = {}
             data["header"] = {}
             data["header"]["User-Agent"] = "Mozilla/5.0 (Macintosh; PPC Mac OS X) AppleWebKit/534.34 (KHTML, like Gecko) PhantomJS/1.9.7 Safari/534.34"
             data["header"]["Accept"] = "*/*"
             data["header"]["Authorization"] = "Basic Og=="
             response = http_get(@curl, data, "http://172.16.42.43:8002/static/build/javascripts/govuk-template.js?0.8.1")
             assert_http_status(response, 200)

             data = {}
             data["header"] = {}
             data["header"]["User-Agent"] = "Mozilla/5.0 (Macintosh; PPC Mac OS X) AppleWebKit/534.34 (KHTML, like Gecko) PhantomJS/1.9.7 Safari/534.34"
             data["header"]["Accept"] = "*/*"
             data["header"]["Authorization"] = "Basic Og=="
             response = http_get(@curl, data, "http://172.16.42.43:8002/static/build/javascripts/land-registry-scripts.js")
             assert_http_status(response, 200)

             data = {}
             data["header"] = {}
             data["header"]["User-Agent"] = "Mozilla/5.0 (Macintosh; PPC Mac OS X) AppleWebKit/534.34 (KHTML, like Gecko) PhantomJS/1.9.7 Safari/534.34"
             data["header"]["Accept"] = "*/*"
             data["header"]["Authorization"] = "Basic Og=="
             response = http_get(@curl, data, "http://172.16.42.43:8002/static/build/javascripts/vendor/leaflet-0.7.3/leaflet.js")
             assert_http_status(response, 200)

             data = {}
             data["header"] = {}
             data["header"]["User-Agent"] = "Mozilla/5.0 (Macintosh; PPC Mac OS X) AppleWebKit/534.34 (KHTML, like Gecko) PhantomJS/1.9.7 Safari/534.34"
             data["header"]["Accept"] = "*/*"
             data["header"]["Authorization"] = "Basic Og=="
             response = http_get(@curl, data, "http://172.16.42.43:8002/static/build//javascripts/proj4.js")
             assert_http_status(response, 200)

             data = {}
             data["header"] = {}
             data["header"]["User-Agent"] = "Mozilla/5.0 (Macintosh; PPC Mac OS X) AppleWebKit/534.34 (KHTML, like Gecko) PhantomJS/1.9.7 Safari/534.34"
             data["header"]["Accept"] = "*/*"
             data["header"]["Authorization"] = "Basic Og=="
             response = http_get(@curl, data, "http://172.16.42.43:8002/static/build//javascripts/proj4leaflet.js")
             assert_http_status(response, 200)

             data = {}
             data["header"] = {}
             data["header"]["User-Agent"] = "Mozilla/5.0 (Macintosh; PPC Mac OS X) AppleWebKit/534.34 (KHTML, like Gecko) PhantomJS/1.9.7 Safari/534.34"
             data["header"]["Accept"] = "*/*"
             data["header"]["Authorization"] = "Basic Og=="
             response = http_get(@curl, data, "http://172.16.42.43:8002/static/build//javascripts/osopenspace.js")
             assert_http_status(response, 200)

             data = {}
             data["header"] = {}
             data["header"]["User-Agent"] = "Mozilla/5.0 (Macintosh; PPC Mac OS X) AppleWebKit/534.34 (KHTML, like Gecko) PhantomJS/1.9.7 Safari/534.34"
             data["header"]["Accept"] = "*/*"
             data["header"]["Authorization"] = "Basic Og=="
             response = http_get(@curl, data, "http://172.16.42.43:8002/static/build/images/gov.uk_logotype_crown.png?0.8.1")
             assert_http_status(response, 200)

             data = {}
             data["header"] = {}
             data["header"]["User-Agent"] = "Mozilla/5.0 (Macintosh; PPC Mac OS X) AppleWebKit/534.34 (KHTML, like Gecko) PhantomJS/1.9.7 Safari/534.34"
             data["header"]["Accept"] = "*/*"
             data["header"]["Authorization"] = "Basic Og=="
             response = http_get(@curl, data, "http://172.16.42.43:8002/static/build/images/search-button.png")
             assert_http_status(response, 200)

             data = {}
             data["header"] = {}
             data["header"]["User-Agent"] = "Mozilla/5.0 (Macintosh; PPC Mac OS X) AppleWebKit/534.34 (KHTML, like Gecko) PhantomJS/1.9.7 Safari/534.34"
             data["header"]["Accept"] = "*/*"
             data["header"]["Authorization"] = "Basic Og=="
             response = http_get(@curl, data, "http://172.16.42.43:8002/static/build/images/separator.png")
             assert_http_status(response, 200)

             data = {}
             data["header"] = {}
             data["header"]["User-Agent"] = "Mozilla/5.0 (Macintosh; PPC Mac OS X) AppleWebKit/534.34 (KHTML, like Gecko) PhantomJS/1.9.7 Safari/534.34"
             data["header"]["Accept"] = "*/*"
             data["header"]["Authorization"] = "Basic Og=="
             response = http_get(@curl, data, "http://172.16.42.43:8002/static/build/stylesheets/images/open-government-licence.png?0.8.1")
             assert_http_status(response, 200)

             data = {}
             data["header"] = {}
             data["header"]["User-Agent"] = "Mozilla/5.0 (Macintosh; PPC Mac OS X) AppleWebKit/534.34 (KHTML, like Gecko) PhantomJS/1.9.7 Safari/534.34"
             data["header"]["Accept"] = "*/*"
             data["header"]["Authorization"] = "Basic Og=="
             response = http_get(@curl, data, "http://172.16.42.43:8002/static/build/stylesheets/images/govuk-crest.png?0.8.1")
             assert_http_status(response, 200)

             data = {}
             data["header"] = {}
             data["header"]["User-Agent"] = "Mozilla/5.0 (Macintosh; PPC Mac OS X) AppleWebKit/534.34 (KHTML, like Gecko) PhantomJS/1.9.7 Safari/534.34"
             data["header"]["Accept"] = "text/css,*/*;q=0.1"
             data["header"]["Authorization"] = "Basic Og=="
             response = http_get(@curl, data, "http://172.16.42.43:8002/static/build/stylesheets/govuk-template-print.css?0.8.1")
             assert_http_status(response, 200)

             data = {}
             data["header"] = {}
             data["header"]["User-Agent"] = "Mozilla/5.0 (Macintosh; PPC Mac OS X) AppleWebKit/534.34 (KHTML, like Gecko) PhantomJS/1.9.7 Safari/534.34"
             data["header"]["Accept"] = "text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8"
             data["header"]["Authorization"] = "Basic Og=="
             response = http_get(@curl, data, "http://172.16.42.43:8002/search/results?search=#{genData0["title_number"]}")
             assert_http_status(response, 200)

             data = {}
             data["header"] = {}
             data["header"]["User-Agent"] = "Mozilla/5.0 (Macintosh; PPC Mac OS X) AppleWebKit/534.34 (KHTML, like Gecko) PhantomJS/1.9.7 Safari/534.34"
             data["header"]["Accept"] = "*/*"
             data["header"]["Authorization"] = "Basic Og=="
             response = http_get(@curl, data, "http://placehold.it/240x160")
             assert_http_status(response, 200)

             data = {}
             data["header"] = {}
             data["header"]["User-Agent"] = "Mozilla/5.0 (Macintosh; PPC Mac OS X) AppleWebKit/534.34 (KHTML, like Gecko) PhantomJS/1.9.7 Safari/534.34"
             data["header"]["Accept"] = "*/*"
             data["header"]["Authorization"] = "Basic Og=="
             response = http_get(@curl, data, "http://openspace.ordnancesurvey.co.uk/osmapapi/ts?KEY=FFB702322FDF714DE0430B6CA40A06C6&URL=file%3A%2F%2F%2F&SERVICE=WMS&REQUEST=GetMap&VERSION=1.1.1&FORMAT=image%2Fpng&height=200&width=200&debug=true&srs=EPSG%3A27700&BBOX=404000,369500,0,0&WIDTH=200&HEIGHT=200&LAYERS=2.5")
             assert_http_status(response, 200)

             data = {}
             data["header"] = {}
             data["header"]["User-Agent"] = "Mozilla/5.0 (Macintosh; PPC Mac OS X) AppleWebKit/534.34 (KHTML, like Gecko) PhantomJS/1.9.7 Safari/534.34"
             data["header"]["Accept"] = "*/*"
             data["header"]["Authorization"] = "Basic Og=="
             response = http_get(@curl, data, "http://openspace.ordnancesurvey.co.uk/osmapapi/ts?KEY=FFB702322FDF714DE0430B6CA40A06C6&URL=file%3A%2F%2F%2F&SERVICE=WMS&REQUEST=GetMap&VERSION=1.1.1&FORMAT=image%2Fpng&height=200&width=200&debug=true&srs=EPSG%3A27700&BBOX=404500,369500,0,0&WIDTH=200&HEIGHT=200&LAYERS=2.5")
             assert_http_status(response, 200)

             data = {}
             data["header"] = {}
             data["header"]["User-Agent"] = "Mozilla/5.0 (Macintosh; PPC Mac OS X) AppleWebKit/534.34 (KHTML, like Gecko) PhantomJS/1.9.7 Safari/534.34"
             data["header"]["Accept"] = "*/*"
             data["header"]["Authorization"] = "Basic Og=="
             response = http_get(@curl, data, "http://openspace.ordnancesurvey.co.uk/osmapapi/ts?KEY=FFB702322FDF714DE0430B6CA40A06C6&URL=file%3A%2F%2F%2F&SERVICE=WMS&REQUEST=GetMap&VERSION=1.1.1&FORMAT=image%2Fpng&height=200&width=200&debug=true&srs=EPSG%3A27700&BBOX=404000,369000,0,0&WIDTH=200&HEIGHT=200&LAYERS=2.5")
             assert_http_status(response, 200)

             data = {}
             data["header"] = {}
             data["header"]["User-Agent"] = "Mozilla/5.0 (Macintosh; PPC Mac OS X) AppleWebKit/534.34 (KHTML, like Gecko) PhantomJS/1.9.7 Safari/534.34"
             data["header"]["Accept"] = "*/*"
             data["header"]["Authorization"] = "Basic Og=="
             response = http_get(@curl, data, "http://openspace.ordnancesurvey.co.uk/osmapapi/ts?KEY=FFB702322FDF714DE0430B6CA40A06C6&URL=file%3A%2F%2F%2F&SERVICE=WMS&REQUEST=GetMap&VERSION=1.1.1&FORMAT=image%2Fpng&height=200&width=200&debug=true&srs=EPSG%3A27700&BBOX=404500,369000,0,0&WIDTH=200&HEIGHT=200&LAYERS=2.5")
             assert_http_status(response, 200)

             end_traction("I_search_for_the_property_on_gov.uk", trans_time1)

             trans_time2 = start_traction("I_choose_to_view_the_property_details")

             data = {}
             data["header"] = {}
             data["header"]["User-Agent"] = "Mozilla/5.0 (Macintosh; PPC Mac OS X) AppleWebKit/534.34 (KHTML, like Gecko) PhantomJS/1.9.7 Safari/534.34"
             data["header"]["Accept"] = "text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8"
             data["header"]["Authorization"] = "Basic Og=="
             response = http_get(@curl, data, "http://172.16.42.43:8002/property/#{genData0["title_number"]}")
             assert_http_status(response, 200)

             data = {}
             data["header"] = {}
             data["header"]["User-Agent"] = "Mozilla/5.0 (Macintosh; PPC Mac OS X) AppleWebKit/534.34 (KHTML, like Gecko) PhantomJS/1.9.7 Safari/534.34"
             data["header"]["Accept"] = "*/*"
             data["header"]["Authorization"] = "Basic Og=="
             response = http_get(@curl, data, "http://placehold.it/465x300")
             assert_http_status(response, 200)

             data = {}
             data["header"] = {}
             data["header"]["User-Agent"] = "Mozilla/5.0 (Macintosh; PPC Mac OS X) AppleWebKit/534.34 (KHTML, like Gecko) PhantomJS/1.9.7 Safari/534.34"
             data["header"]["Accept"] = "*/*"
             data["header"]["Authorization"] = "Basic Og=="
             response = http_get(@curl, data, "http://172.16.42.43:8002/static/build//javascripts/map.js")
             assert_http_status(response, 200)

             data = {}
             data["header"] = {}
             data["header"]["User-Agent"] = "Mozilla/5.0 (Macintosh; PPC Mac OS X) AppleWebKit/534.34 (KHTML, like Gecko) PhantomJS/1.9.7 Safari/534.34"
             data["header"]["Accept"] = "*/*"
             data["header"]["Authorization"] = "Basic Og=="
             response = http_get(@curl, data, "http://openspace.ordnancesurvey.co.uk/osmapapi/ts?KEY=FFB702322FDF714DE0430B6CA40A06C6&URL=file%3A%2F%2F%2F&SERVICE=WMS&REQUEST=GetMap&VERSION=1.1.1&FORMAT=image%2Fpng&height=200&width=200&debug=true&srs=EPSG%3A27700&BBOX=404500,370000,0,0&WIDTH=200&HEIGHT=200&LAYERS=2.5")
             assert_http_status(response, 200)

             data = {}
             data["header"] = {}
             data["header"]["User-Agent"] = "Mozilla/5.0 (Macintosh; PPC Mac OS X) AppleWebKit/534.34 (KHTML, like Gecko) PhantomJS/1.9.7 Safari/534.34"
             data["header"]["Accept"] = "*/*"
             data["header"]["Authorization"] = "Basic Og=="
             response = http_get(@curl, data, "http://openspace.ordnancesurvey.co.uk/osmapapi/ts?KEY=FFB702322FDF714DE0430B6CA40A06C6&URL=file%3A%2F%2F%2F&SERVICE=WMS&REQUEST=GetMap&VERSION=1.1.1&FORMAT=image%2Fpng&height=200&width=200&debug=true&srs=EPSG%3A27700&BBOX=405000,369500,0,0&WIDTH=200&HEIGHT=200&LAYERS=2.5")
             assert_http_status(response, 200)

             data = {}
             data["header"] = {}
             data["header"]["User-Agent"] = "Mozilla/5.0 (Macintosh; PPC Mac OS X) AppleWebKit/534.34 (KHTML, like Gecko) PhantomJS/1.9.7 Safari/534.34"
             data["header"]["Accept"] = "*/*"
             data["header"]["Authorization"] = "Basic Og=="
             response = http_get(@curl, data, "http://openspace.ordnancesurvey.co.uk/osmapapi/ts?KEY=FFB702322FDF714DE0430B6CA40A06C6&URL=file%3A%2F%2F%2F&SERVICE=WMS&REQUEST=GetMap&VERSION=1.1.1&FORMAT=image%2Fpng&height=200&width=200&debug=true&srs=EPSG%3A27700&BBOX=404000,370000,0,0&WIDTH=200&HEIGHT=200&LAYERS=2.5")
             assert_http_status(response, 200)

             data = {}
             data["header"] = {}
             data["header"]["User-Agent"] = "Mozilla/5.0 (Macintosh; PPC Mac OS X) AppleWebKit/534.34 (KHTML, like Gecko) PhantomJS/1.9.7 Safari/534.34"
             data["header"]["Accept"] = "*/*"
             data["header"]["Authorization"] = "Basic Og=="
             response = http_get(@curl, data, "http://openspace.ordnancesurvey.co.uk/osmapapi/ts?KEY=FFB702322FDF714DE0430B6CA40A06C6&URL=file%3A%2F%2F%2F&SERVICE=WMS&REQUEST=GetMap&VERSION=1.1.1&FORMAT=image%2Fpng&height=200&width=200&debug=true&srs=EPSG%3A27700&BBOX=405000,370000,0,0&WIDTH=200&HEIGHT=200&LAYERS=2.5")
             assert_http_status(response, 200)

             data = {}
             data["header"] = {}
             data["header"]["User-Agent"] = "Mozilla/5.0 (Macintosh; PPC Mac OS X) AppleWebKit/534.34 (KHTML, like Gecko) PhantomJS/1.9.7 Safari/534.34"
             data["header"]["Accept"] = "*/*"
             data["header"]["Authorization"] = "Basic Og=="
             response = http_get(@curl, data, "http://openspace.ordnancesurvey.co.uk/osmapapi/ts?KEY=FFB702322FDF714DE0430B6CA40A06C6&URL=file%3A%2F%2F%2F&SERVICE=WMS&REQUEST=GetMap&VERSION=1.1.1&FORMAT=image%2Fpng&height=200&width=200&debug=true&srs=EPSG%3A27700&BBOX=405000,369000,0,0&WIDTH=200&HEIGHT=200&LAYERS=2.5")
             assert_http_status(response, 200)

             end_traction("I_choose_to_view_the_property_details", trans_time2)

             end

        def v_end()

            #v_end end
        end

        end

