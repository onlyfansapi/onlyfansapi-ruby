# frozen_string_literal: true

module Onlyfans
  module Models
    # @see Onlyfans::Resources::SmartLinks#list_conversions
    class SmartLinkListConversionsResponse < Onlyfans::Internal::Type::BaseModel
      # @!attribute _meta
      #
      #   @return [Onlyfans::Models::SmartLinkListConversionsResponse::Meta, nil]
      optional :_meta, -> { Onlyfans::Models::SmartLinkListConversionsResponse::Meta }

      # @!attribute data
      #
      #   @return [Onlyfans::Models::SmartLinkListConversionsResponse::Data, nil]
      optional :data, -> { Onlyfans::Models::SmartLinkListConversionsResponse::Data }

      # @!method initialize(_meta: nil, data: nil)
      #   @param _meta [Onlyfans::Models::SmartLinkListConversionsResponse::Meta]
      #   @param data [Onlyfans::Models::SmartLinkListConversionsResponse::Data]

      # @see Onlyfans::Models::SmartLinkListConversionsResponse#_meta
      class Meta < Onlyfans::Internal::Type::BaseModel
        # @!attribute _cache
        #
        #   @return [Onlyfans::Models::SmartLinkListConversionsResponse::Meta::Cache, nil]
        optional :_cache, -> { Onlyfans::Models::SmartLinkListConversionsResponse::Meta::Cache }

        # @!attribute _credits
        #
        #   @return [Onlyfans::Models::SmartLinkListConversionsResponse::Meta::Credits, nil]
        optional :_credits, -> { Onlyfans::Models::SmartLinkListConversionsResponse::Meta::Credits }

        # @!method initialize(_cache: nil, _credits: nil)
        #   @param _cache [Onlyfans::Models::SmartLinkListConversionsResponse::Meta::Cache]
        #   @param _credits [Onlyfans::Models::SmartLinkListConversionsResponse::Meta::Credits]

        # @see Onlyfans::Models::SmartLinkListConversionsResponse::Meta#_cache
        class Cache < Onlyfans::Internal::Type::BaseModel
          # @!attribute is_cached
          #
          #   @return [Boolean, nil]
          optional :is_cached, Onlyfans::Internal::Type::Boolean

          # @!attribute note
          #
          #   @return [String, nil]
          optional :note, String

          # @!method initialize(is_cached: nil, note: nil)
          #   @param is_cached [Boolean]
          #   @param note [String]
        end

        # @see Onlyfans::Models::SmartLinkListConversionsResponse::Meta#_credits
        class Credits < Onlyfans::Internal::Type::BaseModel
          # @!attribute balance
          #
          #   @return [Integer, nil]
          optional :balance, Integer

          # @!attribute note
          #
          #   @return [String, nil]
          optional :note, String

          # @!attribute used
          #
          #   @return [Integer, nil]
          optional :used, Integer

          # @!method initialize(balance: nil, note: nil, used: nil)
          #   @param balance [Integer]
          #   @param note [String]
          #   @param used [Integer]
        end
      end

      # @see Onlyfans::Models::SmartLinkListConversionsResponse#data
      class Data < Onlyfans::Internal::Type::BaseModel
        # @!attribute chart
        #
        #   @return [Array<Onlyfans::Models::SmartLinkListConversionsResponse::Data::Chart>, nil]
        optional :chart,
                 -> { Onlyfans::Internal::Type::ArrayOf[Onlyfans::Models::SmartLinkListConversionsResponse::Data::Chart] }

        # @!attribute filters
        #
        #   @return [Onlyfans::Models::SmartLinkListConversionsResponse::Data::Filters, nil]
        optional :filters, -> { Onlyfans::Models::SmartLinkListConversionsResponse::Data::Filters }

        # @!attribute rows
        #
        #   @return [Array<Onlyfans::Models::SmartLinkListConversionsResponse::Data::Row>, nil]
        optional :rows,
                 -> { Onlyfans::Internal::Type::ArrayOf[Onlyfans::Models::SmartLinkListConversionsResponse::Data::Row] }

        # @!attribute summary
        #
        #   @return [Onlyfans::Models::SmartLinkListConversionsResponse::Data::Summary, nil]
        optional :summary, -> { Onlyfans::Models::SmartLinkListConversionsResponse::Data::Summary }

        # @!method initialize(chart: nil, filters: nil, rows: nil, summary: nil)
        #   @param chart [Array<Onlyfans::Models::SmartLinkListConversionsResponse::Data::Chart>]
        #   @param filters [Onlyfans::Models::SmartLinkListConversionsResponse::Data::Filters]
        #   @param rows [Array<Onlyfans::Models::SmartLinkListConversionsResponse::Data::Row>]
        #   @param summary [Onlyfans::Models::SmartLinkListConversionsResponse::Data::Summary]

        class Chart < Onlyfans::Internal::Type::BaseModel
          # @!attribute conversions
          #
          #   @return [Integer, nil]
          optional :conversions, Integer

          # @!attribute timestamp
          #
          #   @return [String, nil]
          optional :timestamp, String

          # @!method initialize(conversions: nil, timestamp: nil)
          #   @param conversions [Integer]
          #   @param timestamp [String]
        end

        # @see Onlyfans::Models::SmartLinkListConversionsResponse::Data#filters
        class Filters < Onlyfans::Internal::Type::BaseModel
          # @!attribute conversion_type
          #
          #   @return [String, nil]
          optional :conversion_type, String

          # @!attribute date_end
          #
          #   @return [String, nil]
          optional :date_end, String

          # @!attribute date_start
          #
          #   @return [String, nil]
          optional :date_start, String

          # @!attribute include_bots
          #
          #   @return [Boolean, nil]
          optional :include_bots, Onlyfans::Internal::Type::Boolean

          # @!attribute include_duplicates
          #
          #   @return [Boolean, nil]
          optional :include_duplicates, Onlyfans::Internal::Type::Boolean

          # @!attribute limit
          #
          #   @return [Integer, nil]
          optional :limit, Integer

          # @!attribute offset
          #
          #   @return [Integer, nil]
          optional :offset, Integer

          # @!method initialize(conversion_type: nil, date_end: nil, date_start: nil, include_bots: nil, include_duplicates: nil, limit: nil, offset: nil)
          #   @param conversion_type [String]
          #   @param date_end [String]
          #   @param date_start [String]
          #   @param include_bots [Boolean]
          #   @param include_duplicates [Boolean]
          #   @param limit [Integer]
          #   @param offset [Integer]
        end

        class Row < Onlyfans::Internal::Type::BaseModel
          # @!attribute id
          #
          #   @return [String, nil]
          optional :id, String

          # @!attribute amount_gross
          #
          #   @return [Float, nil]
          optional :amount_gross, Float

          # @!attribute amount_net
          #
          #   @return [Float, nil]
          optional :amount_net, Float

          # @!attribute click
          #
          #   @return [Onlyfans::Models::SmartLinkListConversionsResponse::Data::Row::Click, nil]
          optional :click, -> { Onlyfans::Models::SmartLinkListConversionsResponse::Data::Row::Click }

          # @!attribute conversion_at
          #
          #   @return [String, nil]
          optional :conversion_at, String

          # @!attribute conversion_type
          #
          #   @return [String, nil]
          optional :conversion_type, String

          # @!attribute fan
          #
          #   @return [Onlyfans::Models::SmartLinkListConversionsResponse::Data::Row::Fan, nil]
          optional :fan, -> { Onlyfans::Models::SmartLinkListConversionsResponse::Data::Row::Fan }

          # @!attribute fan_onlyfans_id
          #
          #   @return [String, nil]
          optional :fan_onlyfans_id, String

          # @!method initialize(id: nil, amount_gross: nil, amount_net: nil, click: nil, conversion_at: nil, conversion_type: nil, fan: nil, fan_onlyfans_id: nil)
          #   @param id [String]
          #   @param amount_gross [Float]
          #   @param amount_net [Float]
          #   @param click [Onlyfans::Models::SmartLinkListConversionsResponse::Data::Row::Click]
          #   @param conversion_at [String]
          #   @param conversion_type [String]
          #   @param fan [Onlyfans::Models::SmartLinkListConversionsResponse::Data::Row::Fan]
          #   @param fan_onlyfans_id [String]

          # @see Onlyfans::Models::SmartLinkListConversionsResponse::Data::Row#click
          class Click < Onlyfans::Internal::Type::BaseModel
            # @!attribute id
            #
            #   @return [String, nil]
            optional :id, String

            # @!attribute aff_s1
            #
            #   @return [String, nil]
            optional :aff_s1, String

            # @!attribute aff_s2
            #
            #   @return [String, nil]
            optional :aff_s2, String, nil?: true

            # @!attribute aff_s3
            #
            #   @return [String, nil]
            optional :aff_s3, String, nil?: true

            # @!attribute aff_s4
            #
            #   @return [String, nil]
            optional :aff_s4, String, nil?: true

            # @!attribute aff_s5
            #
            #   @return [String, nil]
            optional :aff_s5, String, nil?: true

            # @!attribute browser_device_type
            #
            #   @return [String, nil]
            optional :browser_device_type, String

            # @!attribute browser_family
            #
            #   @return [String, nil]
            optional :browser_family, String

            # @!attribute browser_name
            #
            #   @return [String, nil]
            optional :browser_name, String

            # @!attribute browser_platform
            #
            #   @return [String, nil]
            optional :browser_platform, String

            # @!attribute country_code
            #
            #   @return [String, nil]
            optional :country_code, String

            # @!attribute created_at
            #
            #   @return [String, nil]
            optional :created_at, String

            # @!attribute external_click_id
            #
            #   @return [String, nil]
            optional :external_click_id, String

            # @!attribute fbclid
            #
            #   @return [String, nil]
            optional :fbclid, String, nil?: true

            # @!attribute gclid
            #
            #   @return [String, nil]
            optional :gclid, String

            # @!attribute gross_clicks
            #
            #   @return [Integer, nil]
            optional :gross_clicks, Integer

            # @!attribute ip_address
            #
            #   @return [String, nil]
            optional :ip_address, String

            # @!attribute is_bot
            #
            #   @return [Boolean, nil]
            optional :is_bot, Onlyfans::Internal::Type::Boolean

            # @!attribute is_duplicate
            #
            #   @return [Boolean, nil]
            optional :is_duplicate, Onlyfans::Internal::Type::Boolean

            # @!attribute referrer
            #
            #   @return [String, nil]
            optional :referrer, String

            # @!attribute ttclid
            #
            #   @return [String, nil]
            optional :ttclid, String

            # @!attribute user_agent
            #
            #   @return [String, nil]
            optional :user_agent, String

            # @!attribute utm_campaign
            #
            #   @return [String, nil]
            optional :utm_campaign, String

            # @!attribute utm_content
            #
            #   @return [String, nil]
            optional :utm_content, String

            # @!attribute utm_medium
            #
            #   @return [String, nil]
            optional :utm_medium, String

            # @!attribute utm_source
            #
            #   @return [String, nil]
            optional :utm_source, String

            # @!attribute utm_term
            #
            #   @return [String, nil]
            optional :utm_term, String

            # @!method initialize(id: nil, aff_s1: nil, aff_s2: nil, aff_s3: nil, aff_s4: nil, aff_s5: nil, browser_device_type: nil, browser_family: nil, browser_name: nil, browser_platform: nil, country_code: nil, created_at: nil, external_click_id: nil, fbclid: nil, gclid: nil, gross_clicks: nil, ip_address: nil, is_bot: nil, is_duplicate: nil, referrer: nil, ttclid: nil, user_agent: nil, utm_campaign: nil, utm_content: nil, utm_medium: nil, utm_source: nil, utm_term: nil)
            #   @param id [String]
            #   @param aff_s1 [String]
            #   @param aff_s2 [String, nil]
            #   @param aff_s3 [String, nil]
            #   @param aff_s4 [String, nil]
            #   @param aff_s5 [String, nil]
            #   @param browser_device_type [String]
            #   @param browser_family [String]
            #   @param browser_name [String]
            #   @param browser_platform [String]
            #   @param country_code [String]
            #   @param created_at [String]
            #   @param external_click_id [String]
            #   @param fbclid [String, nil]
            #   @param gclid [String]
            #   @param gross_clicks [Integer]
            #   @param ip_address [String]
            #   @param is_bot [Boolean]
            #   @param is_duplicate [Boolean]
            #   @param referrer [String]
            #   @param ttclid [String]
            #   @param user_agent [String]
            #   @param utm_campaign [String]
            #   @param utm_content [String]
            #   @param utm_medium [String]
            #   @param utm_source [String]
            #   @param utm_term [String]
          end

          # @see Onlyfans::Models::SmartLinkListConversionsResponse::Data::Row#fan
          class Fan < Onlyfans::Internal::Type::BaseModel
            # @!attribute avatar_url
            #
            #   @return [String, nil]
            optional :avatar_url, String

            # @!attribute name
            #
            #   @return [String, nil]
            optional :name, String

            # @!attribute onlyfans_id
            #
            #   @return [String, nil]
            optional :onlyfans_id, String

            # @!attribute onlyfans_url
            #
            #   @return [String, nil]
            optional :onlyfans_url, String

            # @!attribute username
            #
            #   @return [String, nil]
            optional :username, String

            # @!method initialize(avatar_url: nil, name: nil, onlyfans_id: nil, onlyfans_url: nil, username: nil)
            #   @param avatar_url [String]
            #   @param name [String]
            #   @param onlyfans_id [String]
            #   @param onlyfans_url [String]
            #   @param username [String]
          end
        end

        # @see Onlyfans::Models::SmartLinkListConversionsResponse::Data#summary
        class Summary < Onlyfans::Internal::Type::BaseModel
          # @!attribute conversions_total
          #
          #   @return [Integer, nil]
          optional :conversions_total, Integer

          # @!attribute revenue_total
          #
          #   @return [Float, nil]
          optional :revenue_total, Float

          # @!attribute subscribers_total
          #
          #   @return [Integer, nil]
          optional :subscribers_total, Integer

          # @!method initialize(conversions_total: nil, revenue_total: nil, subscribers_total: nil)
          #   @param conversions_total [Integer]
          #   @param revenue_total [Float]
          #   @param subscribers_total [Integer]
        end
      end
    end
  end
end
