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

             genData0 = generic_register_data()

             genData1 = create_marriage_data("GB", "#{genData0["provisions"][0]["deeds"][0]["parties"][0]["full_name"]}", "#{genData0["payment"]["titles"][0]}")

             genData2 = create_change_of_name_marriage_request({"title_number"=>"#{genData0["payment"]["titles"][0]}", "proprietors"=>[{"full_name"=>"#{genData0["provisions"][0]["deeds"][0]["parties"][0]["full_name"]}"}, {"full_name"=>""}], "property"=>{"address"=>{"house_number"=>genData0["property_description"]["fields"]["address"]["house_no"], "road"=>"#{genData0["property_description"]["fields"]["address"]["street_name"]}", "town"=>"#{genData0["property_description"]["fields"]["address"]["town"]}", "postcode"=>"#{genData0["property_description"]["fields"]["address"]["postal_county"]}", "address_line_1"=>genData0["property_description"]["fields"]["address"]["house_no"], "address_line_2"=>"#{genData0["property_description"]["fields"]["address"]["street_name"]}"}, "tenure"=>"#{genData0["property"]["tenure"]}", "class_of_title"=>"#{genData0["property"]["class_of_title"]}"}, "payment"=>{"price_paid"=>genData0["payment"]["price_paid"], "titles"=>["#{genData0["payment"]["titles"][0]}"]}, "proprietorship"=>{"text"=>"PROPRIETOR(S): *RP*", "fields"=>{"proprietors"=>[{"#{genData0["extent"]["crs"]["type"]}"=>{"title"=>"#{genData0["provisions"][0]["deeds"][0]["parties"][0]["title"]}", "full_name"=>"#{genData0["provisions"][0]["deeds"][0]["parties"][0]["full_name"]}", "decoration"=>""}, "address"=>{"full_address"=>"#{genData0["property_description"]["fields"]["address"]["full_address"]}", "house_no"=>genData0["property_description"]["fields"]["address"]["house_no"], "street_name"=>"#{genData0["property_description"]["fields"]["address"]["street_name"]}", "town"=>"#{genData0["property_description"]["fields"]["address"]["town"]}", "postal_county"=>"", "country"=>"", "region_name"=>""}}]}, "deeds"=>[], "notes"=>[]}, "property_description"=>{"text"=>"The Freehold land shown edged with red on the plan of the above Title filed at the Registry and being *AD*", "fields"=>{"address"=>{"full_address"=>"#{genData0["property_description"]["fields"]["address"]["full_address"]}", "house_no"=>genData0["property_description"]["fields"]["address"]["house_no"], "street_name"=>"#{genData0["property_description"]["fields"]["address"]["street_name"]}", "town"=>"#{genData0["property_description"]["fields"]["address"]["town"]}", "postal_county"=>"#{genData0["property_description"]["fields"]["address"]["postal_county"]}", "region_name"=>"", "country"=>""}}, "deeds"=>[], "notes"=>[]}, "price_paid"=>{}, "provisions"=>[{"text"=>"A *DT**DE* dated *DD* made between *DP* contains the following provision:-*VT*", "fields"=>{"extent"=>"#{genData0["provisions"][0]["fields"]["extent"]}", "verbatim_text"=>"#{genData0["provisions"][0]["fields"]["verbatim_text"]}"}, "deeds"=>[{"type"=>"#{genData0["provisions"][0]["deeds"][0]["type"]}", "date"=>"#{genData0["provisions"][0]["deeds"][0]["date"]}", "parties"=>[{"title"=>"#{genData0["provisions"][0]["deeds"][0]["parties"][0]["title"]}", "full_name"=>"#{genData0["provisions"][0]["deeds"][0]["parties"][0]["full_name"]}", "decoration"=>""}]}], "notes"=>[]}], "extent"=>{"type"=>"#{genData0["extent"]["type"]}", "crs"=>{"type"=>"#{genData0["extent"]["crs"]["type"]}", "properties"=>{"#{genData0["extent"]["crs"]["type"]}"=>"#{genData0["extent"]["crs"]["properties"]["#{genData0["extent"]["crs"]["type"]}"]}"}}, "geometry"=>{"type"=>"#{genData0["extent"]["geometry"]["properties"]["Description"]}", "coordinates"=>[[[genData0["extent"]["geometry"]["coordinates"][0][4][0], genData0["extent"]["geometry"]["coordinates"][0][4][1]], [genData0["extent"]["geometry"]["coordinates"][0][1][0], genData0["extent"]["geometry"]["coordinates"][0][1][1]], [genData0["extent"]["geometry"]["coordinates"][0][2][0], genData0["extent"]["geometry"]["coordinates"][0][2][1]], [genData0["extent"]["geometry"]["coordinates"][0][3][0], genData0["extent"]["geometry"]["coordinates"][0][3][1]], [genData0["extent"]["geometry"]["coordinates"][0][4][0], genData0["extent"]["geometry"]["coordinates"][0][4][1]]]], "properties"=>{"Description"=>"#{genData0["extent"]["geometry"]["properties"]["Description"]}"}}}}, {"confirm"=>genData1["confirm"], "proprietor_full_name"=>"#{genData0["provisions"][0]["deeds"][0]["parties"][0]["full_name"]}", "proprietor_new_full_name"=>"#{genData1["proprietor_new_full_name"]}", "partner_name"=>"#{genData0["provisions"][0]["deeds"][0]["parties"][0]["full_name"]}", "application_type"=>"#{genData1["application_type"]}", "marriage_country"=>"#{genData1["marriage_country"]}", "marriage_place"=>"#{genData1["marriage_place"]}", "title_number"=>"#{genData0["payment"]["titles"][0]}", "marriage_certificate_number"=>genData1["marriage_certificate_number"], "marriage_date"=>genData1["marriage_date"], "title"=>{"title_number"=>"#{genData0["payment"]["titles"][0]}", "proprietors"=>[{"full_name"=>"#{genData0["provisions"][0]["deeds"][0]["parties"][0]["full_name"]}"}, {"full_name"=>""}], "property"=>{"address"=>{"house_number"=>genData0["property_description"]["fields"]["address"]["house_no"], "road"=>"#{genData0["property_description"]["fields"]["address"]["street_name"]}", "town"=>"#{genData0["property_description"]["fields"]["address"]["town"]}", "postcode"=>"#{genData0["property_description"]["fields"]["address"]["postal_county"]}", "address_line_1"=>genData0["property_description"]["fields"]["address"]["house_no"], "address_line_2"=>"#{genData0["property_description"]["fields"]["address"]["street_name"]}"}, "tenure"=>"#{genData0["property"]["tenure"]}", "class_of_title"=>"#{genData0["property"]["class_of_title"]}"}, "payment"=>{"price_paid"=>genData0["payment"]["price_paid"], "titles"=>["#{genData0["payment"]["titles"][0]}"]}, "proprietorship"=>{"text"=>"PROPRIETOR(S): *RP*", "fields"=>{"proprietors"=>[{"#{genData0["extent"]["crs"]["type"]}"=>{"title"=>"#{genData0["provisions"][0]["deeds"][0]["parties"][0]["title"]}", "full_name"=>"#{genData0["provisions"][0]["deeds"][0]["parties"][0]["full_name"]}", "decoration"=>""}, "address"=>{"full_address"=>"#{genData0["property_description"]["fields"]["address"]["full_address"]}", "house_no"=>genData0["property_description"]["fields"]["address"]["house_no"], "street_name"=>"#{genData0["property_description"]["fields"]["address"]["street_name"]}", "town"=>"#{genData0["property_description"]["fields"]["address"]["town"]}", "postal_county"=>"", "country"=>"", "region_name"=>""}}]}, "deeds"=>[], "notes"=>[]}, "property_description"=>{"text"=>"The Freehold land shown edged with red on the plan of the above Title filed at the Registry and being *AD*", "fields"=>{"address"=>{"full_address"=>"#{genData0["property_description"]["fields"]["address"]["full_address"]}", "house_no"=>genData0["property_description"]["fields"]["address"]["house_no"], "street_name"=>"#{genData0["property_description"]["fields"]["address"]["street_name"]}", "town"=>"#{genData0["property_description"]["fields"]["address"]["town"]}", "postal_county"=>"#{genData0["property_description"]["fields"]["address"]["postal_county"]}", "region_name"=>"", "country"=>""}}, "deeds"=>[], "notes"=>[]}, "price_paid"=>{}, "provisions"=>[{"text"=>"A *DT**DE* dated *DD* made between *DP* contains the following provision:-*VT*", "fields"=>{"extent"=>"#{genData0["provisions"][0]["fields"]["extent"]}", "verbatim_text"=>"#{genData0["provisions"][0]["fields"]["verbatim_text"]}"}, "deeds"=>[{"type"=>"#{genData0["provisions"][0]["deeds"][0]["type"]}", "date"=>"#{genData0["provisions"][0]["deeds"][0]["date"]}", "parties"=>[{"title"=>"#{genData0["provisions"][0]["deeds"][0]["parties"][0]["title"]}", "full_name"=>"#{genData0["provisions"][0]["deeds"][0]["parties"][0]["full_name"]}", "decoration"=>""}]}], "notes"=>[]}], "extent"=>{"type"=>"#{genData0["extent"]["type"]}", "crs"=>{"type"=>"#{genData0["extent"]["crs"]["type"]}", "properties"=>{"#{genData0["extent"]["crs"]["type"]}"=>"#{genData0["extent"]["crs"]["properties"]["#{genData0["extent"]["crs"]["type"]}"]}"}}, "geometry"=>{"type"=>"#{genData0["extent"]["geometry"]["properties"]["Description"]}", "coordinates"=>[[[genData0["extent"]["geometry"]["coordinates"][0][4][0], genData0["extent"]["geometry"]["coordinates"][0][4][1]], [genData0["extent"]["geometry"]["coordinates"][0][1][0], genData0["extent"]["geometry"]["coordinates"][0][1][1]], [genData0["extent"]["geometry"]["coordinates"][0][2][0], genData0["extent"]["geometry"]["coordinates"][0][2][1]], [genData0["extent"]["geometry"]["coordinates"][0][3][0], genData0["extent"]["geometry"]["coordinates"][0][3][1]], [genData0["extent"]["geometry"]["coordinates"][0][4][0], genData0["extent"]["geometry"]["coordinates"][0][4][1]]]], "properties"=>{"Description"=>"#{genData0["extent"]["geometry"]["properties"]["Description"]}"}}}}})

             trans_time1 = start_traction("I_view_the_caseworker_worklist")

             data = {}
             data["header"] = {}
             data["header"]["User-Agent"] = "Mozilla/5.0 (Macintosh; PPC Mac OS X) AppleWebKit/534.34 (KHTML, like Gecko) PhantomJS/1.9.7 Safari/534.34"
             data["header"]["Accept"] = "text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8"
             data["header"]["Authorization"] = "Basic bGFuZHJlZ2lzdHJ5Om5vdHRvYmVzaGFyZWRv"
             response = http_get(@curl, data, "http://172.16.42.43:8004/")
             assert_http_status(response, 200)

             data = {}
             data["header"] = {}
             data["header"]["Origin"] = "http://172.16.42.43:8004"
             data["header"]["User-Agent"] = "Mozilla/5.0 (Macintosh; PPC Mac OS X) AppleWebKit/534.34 (KHTML, like Gecko) PhantomJS/1.9.7 Safari/534.34"
             data["header"]["Content-Type"] = "application/x-www-form-urlencoded"
             data["header"]["Accept"] = "text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8"
             data["header"]["Authorization"] = "Basic bGFuZHJlZ2lzdHJ5Om5vdHRvYmVzaGFyZWRv"
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
             data["header"]["Authorization"] = "Basic bGFuZHJlZ2lzdHJ5Om5vdHRvYmVzaGFyZWRv"
             response = http_get(@curl, data, "http://172.16.42.43:8004/casework")
             assert_http_status(response, 200)

             end_traction("I_view_the_caseworker_worklist", trans_time1)

             end

        def v_end()

            #v_end end
        end

        end
