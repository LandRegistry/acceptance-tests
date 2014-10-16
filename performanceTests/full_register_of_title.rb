             # Scenario Name: Full register of title

    class Full_register_of_title

      def initialize()

      end

      def v_init()


          #v_init end
      end

      def v_action()
          @curl = Curl::Easy.new
          @curl.follow_location = true
          @curl.enable_cookies = true

             genData0 = unblock_user("citizen@example.org")

             genData1 = create_base_register([["CHARACTERISTICS"], ["restictive covenants"], ["bankruptcy notice"], ["easement"], ["provision"], ["price paid"], ["restriction"], ["charge"], ["other"]])

             trans_time1 = start_traction("I_view_the_full_register_of_title")

             data = {}
             data["header"] = {}
             data["header"]["User-Agent"] = "Mozilla/5.0 (Macintosh; PPC Mac OS X) AppleWebKit/534.34 (KHTML, like Gecko) PhantomJS/1.9.7 Safari/534.34"
             data["header"]["Accept"] = "text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8"
             data["header"]["Authorization"] = "Basic Og=="
             response = http_get(@curl, data, "http://172.16.42.43:8007/property/#{genData1["title_number"]}")
             assert_http_status(response, 200)

             data = {}
             data["header"] = {}
             data["header"]["Origin"] = "http://172.16.42.43:8007"
             data["header"]["User-Agent"] = "Mozilla/5.0 (Macintosh; PPC Mac OS X) AppleWebKit/534.34 (KHTML, like Gecko) PhantomJS/1.9.7 Safari/534.34"
             data["header"]["Content-Type"] = "application/x-www-form-urlencoded"
             data["header"]["Accept"] = "text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8"
             data["header"]["Authorization"] = "Basic Og=="
             data["post_data"] = {}
             data["post_data"]["email"] = "citizen@example.org"
             data["post_data"]["password"] = "dummypassword"
             data["post_data"]["submit"] = "Sign in"
             data["post_data"]["csrf_token"] = "None"
             data["post_data"]["next"] = "/property/#{genData1["title_number"]}"
             response = http_post(@curl, data, "http://172.16.42.43:8007/auth/login")
             assert_http_status(response, 200)

             data = {}
             data["header"] = {}
             data["header"]["User-Agent"] = "Mozilla/5.0 (Macintosh; PPC Mac OS X) AppleWebKit/534.34 (KHTML, like Gecko) PhantomJS/1.9.7 Safari/534.34"
             data["header"]["Accept"] = "*/*"
             data["header"]["Authorization"] = "Basic Og=="
             response = http_get(@curl, data, "http://172.16.42.43:8007/static/build/javascripts/map.js")
             assert_http_status(response, 200)

             end_traction("I_view_the_full_register_of_title", trans_time1)

             end

        def v_end()

            #v_end end
        end

        end

