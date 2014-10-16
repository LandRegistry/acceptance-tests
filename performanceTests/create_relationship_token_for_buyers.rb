             # Scenario Name: Create relationship token for buyers

    class Create_relationship_token_for_buyers

      def initialize()

      end

      def v_init()


          #v_init end
      end

      def v_action()
          @curl = Curl::Easy.new
          @curl.follow_location = true
          @curl.enable_cookies = true

             genData0 = unblock_user("conveyancer@example.org")

             trans_time1 = start_traction("I_am_not_already_logged_in_as_a_conveyancer")

             data = {}
             data["header"] = {}
             data["header"]["User-Agent"] = "Mozilla/5.0 (Macintosh; PPC Mac OS X) AppleWebKit/534.34 (KHTML, like Gecko) PhantomJS/1.9.7 Safari/534.34"
             data["header"]["Accept"] = "text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8"
             data["header"]["Authorization"] = "Basic Og=="
             response = http_get(@curl, data, "http://172.16.42.43:8007/auth/logout")
             assert_http_status(response, 200)

             end_traction("I_am_not_already_logged_in_as_a_conveyancer", trans_time1)

             genData1 = generate_client_details()

             genData2 = create_base_register()

             trans_time2 = start_traction("I_request_to_create_a_client_relationship")

             data = {}
             data["header"] = {}
             data["header"]["User-Agent"] = "Mozilla/5.0 (Macintosh; PPC Mac OS X) AppleWebKit/534.34 (KHTML, like Gecko) PhantomJS/1.9.7 Safari/534.34"
             data["header"]["Accept"] = "text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8"
             data["header"]["Authorization"] = "Basic Og=="
             response = http_get(@curl, data, "http://172.16.42.43:8007/relationship/conveyancer")
             assert_http_status(response, 200)

             end_traction("I_request_to_create_a_client_relationship", trans_time2)

             trans_time3 = start_traction("I_login_to_the_service_frontend_with_correct_credentials")

             data = {}
             data["header"] = {}
             data["header"]["Origin"] = "http://172.16.42.43:8007"
             data["header"]["User-Agent"] = "Mozilla/5.0 (Macintosh; PPC Mac OS X) AppleWebKit/534.34 (KHTML, like Gecko) PhantomJS/1.9.7 Safari/534.34"
             data["header"]["Content-Type"] = "application/x-www-form-urlencoded"
             data["header"]["Accept"] = "text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8"
             data["header"]["Authorization"] = "Basic Og=="
             data["post_data"] = {}
             data["post_data"]["email"] = "conveyancer@example.org"
             data["post_data"]["password"] = "dummypassword"
             data["post_data"]["submit"] = "Sign in"
             data["post_data"]["csrf_token"] = "None"
             data["post_data"]["next"] = "/relationship/conveyancer"
             response = http_post(@curl, data, "http://172.16.42.43:8007/auth/login")
             assert_http_status(response, 200)

             end_traction("I_login_to_the_service_frontend_with_correct_credentials", trans_time3)

             trans_time4 = start_traction("I_select_the_property")

             data = {}
             data["header"] = {}
             data["header"]["User-Agent"] = "Mozilla/5.0 (Macintosh; PPC Mac OS X) AppleWebKit/534.34 (KHTML, like Gecko) PhantomJS/1.9.7 Safari/534.34"
             data["header"]["Accept"] = "text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8"
             data["header"]["Authorization"] = "Basic Og=="
             response = http_get(@curl, data, "http://172.16.42.43:8007/relationship/conveyancer/search")
             assert_http_status(response, 200)

             data = {}
             data["header"] = {}
             data["header"]["Origin"] = "http://172.16.42.43:8007"
             data["header"]["User-Agent"] = "Mozilla/5.0 (Macintosh; PPC Mac OS X) AppleWebKit/534.34 (KHTML, like Gecko) PhantomJS/1.9.7 Safari/534.34"
             data["header"]["Content-Type"] = "application/x-www-form-urlencoded"
             data["header"]["Accept"] = "text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8"
             data["header"]["Authorization"] = "Basic Og=="
             data["post_data"] = {}
             data["post_data"]["search-text"] = genData2["title_number"]
             response = http_post(@curl, data, "http://172.16.42.43:8007/relationship/conveyancer/property")
             assert_http_status(response, 200)

             data = {}
             data["header"] = {}
             data["header"]["User-Agent"] = "Mozilla/5.0 (Macintosh; PPC Mac OS X) AppleWebKit/534.34 (KHTML, like Gecko) PhantomJS/1.9.7 Safari/534.34"
             data["header"]["Accept"] = "*/*"
             data["header"]["Authorization"] = "Basic Og=="
             response = http_get(@curl, data, "http://172.16.42.43:8007/static/build//javascripts/map.js")
             assert_http_status(response, 200)

             data = {}
             data["header"] = {}
             data["header"]["Origin"] = "http://172.16.42.43:8007"
             data["header"]["User-Agent"] = "Mozilla/5.0 (Macintosh; PPC Mac OS X) AppleWebKit/534.34 (KHTML, like Gecko) PhantomJS/1.9.7 Safari/534.34"
             data["header"]["Content-Type"] = "application/x-www-form-urlencoded"
             data["header"]["Accept"] = "text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8"
             data["header"]["Authorization"] = "Basic Og=="
             data["post_data"] = {}
             data["post_data"]["title_no"] = genData2["title_number"]
             data["post_data"]["property_full_address"] = genData2["property_description"]["fields"]["addresses"][0]["full_address"]
             response = http_post(@curl, data, "http://172.16.42.43:8007/relationship/conveyancer/task")
             assert_http_status(response, 200)

             end_traction("I_select_the_property", trans_time4)

             trans_time5 = start_traction("The_clients_want_to_buy_the_property")

             data = {}
             data["header"] = {}
             data["header"]["Origin"] = "http://172.16.42.43:8007"
             data["header"]["User-Agent"] = "Mozilla/5.0 (Macintosh; PPC Mac OS X) AppleWebKit/534.34 (KHTML, like Gecko) PhantomJS/1.9.7 Safari/534.34"
             data["header"]["Content-Type"] = "application/x-www-form-urlencoded"
             data["header"]["Accept"] = "text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8"
             data["header"]["Authorization"] = "Basic Og=="
             data["post_data"] = {}
             data["post_data"]["buying_or_selling_property"] = "buying"
             response = http_post(@curl, data, "http://172.16.42.43:8007/relationship/conveyancer/client")
             assert_http_status(response, 200)

             end_traction("The_clients_want_to_buy_the_property", trans_time5)

             trans_time6 = start_traction("I_enter_the_clients_details")

             data = {}
             data["header"] = {}
             data["header"]["Origin"] = "http://172.16.42.43:8007"
             data["header"]["User-Agent"] = "Mozilla/5.0 (Macintosh; PPC Mac OS X) AppleWebKit/534.34 (KHTML, like Gecko) PhantomJS/1.9.7 Safari/534.34"
             data["header"]["Content-Type"] = "application/x-www-form-urlencoded"
             data["header"]["Accept"] = "text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8"
             data["header"]["Authorization"] = "Basic Og=="
             data["post_data"] = {}
             data["post_data"]["csrf_token"] = "None"
             data["post_data"]["full_name"] = genData1["clients"]["full_#{genData2["extent"]["crs"]["type"]}"]
             data["post_data"]["date_of_birth"] = genData1["clients"]["date_of_birth"]
             data["post_data"]["address"] = genData1["clients"]["address"]
             data["post_data"]["telephone"] = genData1["clients"]["telephone"]
             data["post_data"]["email"] = genData1["clients"]["email"]
             data["post_data"]["gender"] = genData1["clients"]["gender"]
             response = http_post(@curl, data, "http://172.16.42.43:8007/relationship/conveyancer/confirm")
             assert_http_status(response, 200)

             end_traction("I_enter_the_clients_details", trans_time6)

             trans_time7 = start_traction("I_confirm_the_details_entered")

             data = {}
             data["header"] = {}
             data["header"]["User-Agent"] = "Mozilla/5.0 (Macintosh; PPC Mac OS X) AppleWebKit/534.34 (KHTML, like Gecko) PhantomJS/1.9.7 Safari/534.34"
             data["header"]["Accept"] = "text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8"
             data["header"]["Authorization"] = "Basic Og=="
             response = http_get(@curl, data, "http://172.16.42.43:8007/relationship/conveyancer/token")
             assert_http_status(response, 200)

             end_traction("I_confirm_the_details_entered", trans_time7)

             end

        def v_end()

            #v_end end
        end

        end

