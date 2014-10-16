             # Scenario Name: View Change of Name in work queue (no Checking)

    class View_change_of_name_in_work_queue_no_checking

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

             genData1 = create_marriage_data("GB", "#{genData0["proprietorship"]["fields"]["proprietors"][0]["name"]["full_name"]}", "#{genData0["title_number"]}")

             genData2 = create_change_of_name_marriage_request({"confirm"=>genData1["confirm"], "proprietor_full_name"=>"#{genData0["proprietorship"]["fields"]["proprietors"][0]["name"]["full_name"]}", "proprietor_new_full_name"=>"#{genData1["proprietor_new_full_name"]}", "partner_name"=>"#{genData1["partner_name"]}", "application_type"=>"#{genData1["application_type"]}", "marriage_country"=>"#{genData1["marriage_country"]}", "marriage_place"=>"#{genData1["marriage_place"]}", "title_number"=>"#{genData0["title_number"]}", "marriage_certificate_number"=>genData1["marriage_certificate_number"], "marriage_date"=>genData1["marriage_date"]})

             trans_time1 = start_traction("I_view_the_caseworker_worklist")

             data = {}
             data["header"] = {}
             data["header"]["User-Agent"] = "Mozilla/5.0 (Macintosh; PPC Mac OS X) AppleWebKit/534.34 (KHTML, like Gecko) PhantomJS/1.9.7 Safari/534.34"
             data["header"]["Accept"] = "text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8"
             data["header"]["Authorization"] = "Basic Og=="
             response = http_get(@curl, data, "http://172.16.42.43:8004/")
             assert_http_status(response, 200)

             data = {}
             data["header"] = {}
             data["header"]["User-Agent"] = "Mozilla/5.0 (Macintosh; PPC Mac OS X) AppleWebKit/534.34 (KHTML, like Gecko) PhantomJS/1.9.7 Safari/534.34"
             data["header"]["Accept"] = "text/css,*/*;q=0.1"
             data["header"]["Authorization"] = "Basic Og=="
             response = http_get(@curl, data, "http://172.16.42.43:8004/static/vendor/bootstrap/css/bootstrap.min.css")
             assert_http_status(response, 200)

             data = {}
             data["header"] = {}
             data["header"]["User-Agent"] = "Mozilla/5.0 (Macintosh; PPC Mac OS X) AppleWebKit/534.34 (KHTML, like Gecko) PhantomJS/1.9.7 Safari/534.34"
             data["header"]["Accept"] = "text/css,*/*;q=0.1"
             data["header"]["Authorization"] = "Basic Og=="
             response = http_get(@curl, data, "http://172.16.42.43:8004/static/vendor/bootstrap/css/bootstrap-theme.min.css")
             assert_http_status(response, 200)

             data = {}
             data["header"] = {}
             data["header"]["User-Agent"] = "Mozilla/5.0 (Macintosh; PPC Mac OS X) AppleWebKit/534.34 (KHTML, like Gecko) PhantomJS/1.9.7 Safari/534.34"
             data["header"]["Accept"] = "text/css,*/*;q=0.1"
             data["header"]["Authorization"] = "Basic Og=="
             response = http_get(@curl, data, "http://172.16.42.43:8004/static/stylesheets/main.css")
             assert_http_status(response, 200)

             data = {}
             data["header"] = {}
             data["header"]["User-Agent"] = "Mozilla/5.0 (Macintosh; PPC Mac OS X) AppleWebKit/534.34 (KHTML, like Gecko) PhantomJS/1.9.7 Safari/534.34"
             data["header"]["Accept"] = "*/*"
             data["header"]["Authorization"] = "Basic Og=="
             response = http_get(@curl, data, "http://172.16.42.43:8004/static/javascript/vendor/jquery-1.11.1.min.js")
             assert_http_status(response, 200)

             data = {}
             data["header"] = {}
             data["header"]["User-Agent"] = "Mozilla/5.0 (Macintosh; PPC Mac OS X) AppleWebKit/534.34 (KHTML, like Gecko) PhantomJS/1.9.7 Safari/534.34"
             data["header"]["Accept"] = "*/*"
             data["header"]["Authorization"] = "Basic Og=="
             response = http_get(@curl, data, "http://172.16.42.43:8004/static/images/lr-logo.png")
             assert_http_status(response, 200)

             data = {}
             data["header"] = {}
             data["header"]["Origin"] = "http://172.16.42.43:8004"
             data["header"]["User-Agent"] = "Mozilla/5.0 (Macintosh; PPC Mac OS X) AppleWebKit/534.34 (KHTML, like Gecko) PhantomJS/1.9.7 Safari/534.34"
             data["header"]["Content-Type"] = "application/x-www-form-urlencoded"
             data["header"]["Accept"] = "text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8"
             data["header"]["Authorization"] = "Basic Og=="
             data["post_data"] = {}
             data["post_data"]["email"] = "caseworker@example.org"
             data["post_data"]["password"] = "dummypassword"
             data["post_data"]["submit"] = "Login"
             data["post_data"]["csrf_token"] = "None"
             data["post_data"]["next"] = "/"
             response = http_post(@curl, data, "http://172.16.42.43:8004/login")
             assert_http_status(response, 200)

             data = {}
             data["header"] = {}
             data["header"]["User-Agent"] = "Mozilla/5.0 (Macintosh; PPC Mac OS X) AppleWebKit/534.34 (KHTML, like Gecko) PhantomJS/1.9.7 Safari/534.34"
             data["header"]["Accept"] = "text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8"
             data["header"]["Authorization"] = "Basic Og=="
             response = http_get(@curl, data, "http://172.16.42.43:8004/casework")
             assert_http_status(response, 200)

             end_traction("I_view_the_caseworker_worklist", trans_time1)

             end

        def v_end()

            #v_end end
        end

        end

