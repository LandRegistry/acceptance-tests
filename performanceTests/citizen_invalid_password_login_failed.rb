             # Scenario Name: Citizen Invalid password login failed

    class Citizen_invalid_password_login_failed

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

             genData1 = set_user_view_count("citizen@example.org", 0)

             trans_time1 = start_traction("I_have_private_citizen_login_credentials")

             data = {}
             data["header"] = {}
             data["header"]["User-Agent"] = "Mozilla/5.0 (Macintosh; PPC Mac OS X) AppleWebKit/534.34 (KHTML, like Gecko) PhantomJS/1.9.7 Safari/534.34"
             data["header"]["Accept"] = "text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8"
             data["header"]["Authorization"] = "Basic Og=="
             response = http_get(@curl, data, "http://172.16.42.43:8007/auth/logout")
             assert_http_status(response, 200)

             data = {}
             data["header"] = {}
             data["header"]["User-Agent"] = "Mozilla/5.0 (Macintosh; PPC Mac OS X) AppleWebKit/534.34 (KHTML, like Gecko) PhantomJS/1.9.7 Safari/534.34"
             data["header"]["Accept"] = "text/css,*/*;q=0.1"
             data["header"]["Authorization"] = "Basic Og=="
             response = http_get(@curl, data, "http://172.16.42.43:8007/static/build/stylesheets/govuk-template.css?0.8.1")
             assert_http_status(response, 200)

             data = {}
             data["header"] = {}
             data["header"]["User-Agent"] = "Mozilla/5.0 (Macintosh; PPC Mac OS X) AppleWebKit/534.34 (KHTML, like Gecko) PhantomJS/1.9.7 Safari/534.34"
             data["header"]["Accept"] = "text/css,*/*;q=0.1"
             data["header"]["Authorization"] = "Basic Og=="
             response = http_get(@curl, data, "http://172.16.42.43:8007/static/build/stylesheets/fonts.css?0.8.1")
             assert_http_status(response, 200)

             data = {}
             data["header"] = {}
             data["header"]["User-Agent"] = "Mozilla/5.0 (Macintosh; PPC Mac OS X) AppleWebKit/534.34 (KHTML, like Gecko) PhantomJS/1.9.7 Safari/534.34"
             data["header"]["Accept"] = "text/css,*/*;q=0.1"
             data["header"]["Authorization"] = "Basic Og=="
             response = http_get(@curl, data, "http://172.16.42.43:8007/static/build/stylesheets/landregistry-main.css")
             assert_http_status(response, 200)

             data = {}
             data["header"] = {}
             data["header"]["User-Agent"] = "Mozilla/5.0 (Macintosh; PPC Mac OS X) AppleWebKit/534.34 (KHTML, like Gecko) PhantomJS/1.9.7 Safari/534.34"
             data["header"]["Accept"] = "text/css,*/*;q=0.1"
             data["header"]["Authorization"] = "Basic Og=="
             response = http_get(@curl, data, "http://172.16.42.43:8007/static/build/javascripts/vendor/leaflet-0.7.3/leaflet.css")
             assert_http_status(response, 200)

             data = {}
             data["header"] = {}
             data["header"]["User-Agent"] = "Mozilla/5.0 (Macintosh; PPC Mac OS X) AppleWebKit/534.34 (KHTML, like Gecko) PhantomJS/1.9.7 Safari/534.34"
             data["header"]["Accept"] = "*/*"
             data["header"]["Authorization"] = "Basic Og=="
             response = http_get(@curl, data, "http://172.16.42.43:8007/static/build/javascripts/govuk-template.js?0.8.1")
             assert_http_status(response, 200)

             data = {}
             data["header"] = {}
             data["header"]["User-Agent"] = "Mozilla/5.0 (Macintosh; PPC Mac OS X) AppleWebKit/534.34 (KHTML, like Gecko) PhantomJS/1.9.7 Safari/534.34"
             data["header"]["Accept"] = "*/*"
             data["header"]["Authorization"] = "Basic Og=="
             response = http_get(@curl, data, "http://172.16.42.43:8007/static/build/javascripts/land-registry-scripts.js")
             assert_http_status(response, 200)

             data = {}
             data["header"] = {}
             data["header"]["User-Agent"] = "Mozilla/5.0 (Macintosh; PPC Mac OS X) AppleWebKit/534.34 (KHTML, like Gecko) PhantomJS/1.9.7 Safari/534.34"
             data["header"]["Accept"] = "*/*"
             data["header"]["Authorization"] = "Basic Og=="
             response = http_get(@curl, data, "http://172.16.42.43:8007/static/build/javascripts/vendor/leaflet-0.7.3/leaflet.js")
             assert_http_status(response, 200)

             data = {}
             data["header"] = {}
             data["header"]["User-Agent"] = "Mozilla/5.0 (Macintosh; PPC Mac OS X) AppleWebKit/534.34 (KHTML, like Gecko) PhantomJS/1.9.7 Safari/534.34"
             data["header"]["Accept"] = "*/*"
             data["header"]["Authorization"] = "Basic Og=="
             response = http_get(@curl, data, "http://172.16.42.43:8007/static/build//javascripts/proj4.js")
             assert_http_status(response, 200)

             data = {}
             data["header"] = {}
             data["header"]["User-Agent"] = "Mozilla/5.0 (Macintosh; PPC Mac OS X) AppleWebKit/534.34 (KHTML, like Gecko) PhantomJS/1.9.7 Safari/534.34"
             data["header"]["Accept"] = "*/*"
             data["header"]["Authorization"] = "Basic Og=="
             response = http_get(@curl, data, "http://172.16.42.43:8007/static/build//javascripts/proj4leaflet.js")
             assert_http_status(response, 200)

             data = {}
             data["header"] = {}
             data["header"]["User-Agent"] = "Mozilla/5.0 (Macintosh; PPC Mac OS X) AppleWebKit/534.34 (KHTML, like Gecko) PhantomJS/1.9.7 Safari/534.34"
             data["header"]["Accept"] = "*/*"
             data["header"]["Authorization"] = "Basic Og=="
             response = http_get(@curl, data, "http://172.16.42.43:8007/static/build//javascripts/osopenspace.js")
             assert_http_status(response, 200)

             data = {}
             data["header"] = {}
             data["header"]["User-Agent"] = "Mozilla/5.0 (Macintosh; PPC Mac OS X) AppleWebKit/534.34 (KHTML, like Gecko) PhantomJS/1.9.7 Safari/534.34"
             data["header"]["Accept"] = "*/*"
             data["header"]["Authorization"] = "Basic Og=="
             response = http_get(@curl, data, "http://172.16.42.43:8007/static/build/images/gov.uk_logotype_crown.png?0.8.1")
             assert_http_status(response, 200)

             data = {}
             data["header"] = {}
             data["header"]["User-Agent"] = "Mozilla/5.0 (Macintosh; PPC Mac OS X) AppleWebKit/534.34 (KHTML, like Gecko) PhantomJS/1.9.7 Safari/534.34"
             data["header"]["Accept"] = "*/*"
             data["header"]["Authorization"] = "Basic Og=="
             response = http_get(@curl, data, "http://172.16.42.43:8007/static/build/stylesheets/images/open-government-licence.png?0.8.1")
             assert_http_status(response, 200)

             data = {}
             data["header"] = {}
             data["header"]["User-Agent"] = "Mozilla/5.0 (Macintosh; PPC Mac OS X) AppleWebKit/534.34 (KHTML, like Gecko) PhantomJS/1.9.7 Safari/534.34"
             data["header"]["Accept"] = "*/*"
             data["header"]["Authorization"] = "Basic Og=="
             response = http_get(@curl, data, "http://172.16.42.43:8007/static/build/stylesheets/images/govuk-crest.png?0.8.1")
             assert_http_status(response, 200)

             data = {}
             data["header"] = {}
             data["header"]["User-Agent"] = "Mozilla/5.0 (Macintosh; PPC Mac OS X) AppleWebKit/534.34 (KHTML, like Gecko) PhantomJS/1.9.7 Safari/534.34"
             data["header"]["Accept"] = "text/css,*/*;q=0.1"
             data["header"]["Authorization"] = "Basic Og=="
             response = http_get(@curl, data, "http://172.16.42.43:8007/static/build/stylesheets/govuk-template-print.css?0.8.1")
             assert_http_status(response, 200)

             end_traction("I_have_private_citizen_login_credentials", trans_time1)

             trans_time2 = start_traction("I_login_to_the_service_frontend_with_incorrect_password")

             data = {}
             data["header"] = {}
             data["header"]["Origin"] = "http://172.16.42.43:8007"
             data["header"]["User-Agent"] = "Mozilla/5.0 (Macintosh; PPC Mac OS X) AppleWebKit/534.34 (KHTML, like Gecko) PhantomJS/1.9.7 Safari/534.34"
             data["header"]["Content-Type"] = "application/x-www-form-urlencoded"
             data["header"]["Accept"] = "text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8"
             data["header"]["Authorization"] = "Basic Og=="
             data["post_data"] = {}
             data["post_data"]["email"] = "citizen@example.org"
             data["post_data"]["password"] = "incorrect"
             data["post_data"]["submit"] = "Sign in"
             data["post_data"]["csrf_token"] = "None"
             data["post_data"]["next"] = "/auth/logout"
             response = http_post(@curl, data, "http://172.16.42.43:8007/auth/login")
             assert_http_status(response, 200)

             end_traction("I_login_to_the_service_frontend_with_incorrect_password", trans_time2)

             end

        def v_end()

            #v_end end
        end

        end

