# frozen_string_literal: true

module Onlyfansapi
  module Models
    # @see Onlyfansapi::Resources::SmartLinks#list_clicks
    class SmartLinkListClicksResponse < Onlyfansapi::Internal::Type::BaseModel
      # @!attribute _meta
      #
      #   @return [Onlyfansapi::Models::SmartLinkListClicksResponse::Meta, nil]
      optional :_meta, -> { Onlyfansapi::Models::SmartLinkListClicksResponse::Meta }

      # @!attribute data
      #
      #   @return [Onlyfansapi::Models::SmartLinkListClicksResponse::Data, nil]
      optional :data, -> { Onlyfansapi::Models::SmartLinkListClicksResponse::Data }

      # @!method initialize(_meta: nil, data: nil)
      #   @param _meta [Onlyfansapi::Models::SmartLinkListClicksResponse::Meta]
      #   @param data [Onlyfansapi::Models::SmartLinkListClicksResponse::Data]

      # @see Onlyfansapi::Models::SmartLinkListClicksResponse#_meta
      class Meta < Onlyfansapi::Internal::Type::BaseModel
        # @!attribute _cache
        #
        #   @return [Onlyfansapi::Models::SmartLinkListClicksResponse::Meta::Cache, nil]
        optional :_cache, -> { Onlyfansapi::Models::SmartLinkListClicksResponse::Meta::Cache }

        # @!attribute _credits
        #
        #   @return [Onlyfansapi::Models::SmartLinkListClicksResponse::Meta::Credits, nil]
        optional :_credits, -> { Onlyfansapi::Models::SmartLinkListClicksResponse::Meta::Credits }

        # @!method initialize(_cache: nil, _credits: nil)
        #   @param _cache [Onlyfansapi::Models::SmartLinkListClicksResponse::Meta::Cache]
        #   @param _credits [Onlyfansapi::Models::SmartLinkListClicksResponse::Meta::Credits]

        # @see Onlyfansapi::Models::SmartLinkListClicksResponse::Meta#_cache
        class Cache < Onlyfansapi::Internal::Type::BaseModel
          # @!attribute is_cached
          #
          #   @return [Boolean, nil]
          optional :is_cached, Onlyfansapi::Internal::Type::Boolean

          # @!attribute note
          #
          #   @return [String, nil]
          optional :note, String

          # @!method initialize(is_cached: nil, note: nil)
          #   @param is_cached [Boolean]
          #   @param note [String]
        end

        # @see Onlyfansapi::Models::SmartLinkListClicksResponse::Meta#_credits
        class Credits < Onlyfansapi::Internal::Type::BaseModel
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

      # @see Onlyfansapi::Models::SmartLinkListClicksResponse#data
      class Data < Onlyfansapi::Internal::Type::BaseModel
        # @!attribute chart
        #
        #   @return [Array<Onlyfansapi::Models::SmartLinkListClicksResponse::Data::Chart>, nil]
        optional :chart,
                 -> { Onlyfansapi::Internal::Type::ArrayOf[Onlyfansapi::Models::SmartLinkListClicksResponse::Data::Chart] }

        # @!attribute filters
        #
        #   @return [Onlyfansapi::Models::SmartLinkListClicksResponse::Data::Filters, nil]
        optional :filters, -> { Onlyfansapi::Models::SmartLinkListClicksResponse::Data::Filters }

        # @!attribute rows
        #
        #   @return [Array<Onlyfansapi::Models::SmartLinkListClicksResponse::Data::Row>, nil]
        optional :rows,
                 -> { Onlyfansapi::Internal::Type::ArrayOf[Onlyfansapi::Models::SmartLinkListClicksResponse::Data::Row] }

        # @!attribute summary
        #
        #   @return [Onlyfansapi::Models::SmartLinkListClicksResponse::Data::Summary, nil]
        optional :summary, -> { Onlyfansapi::Models::SmartLinkListClicksResponse::Data::Summary }

        # @!method initialize(chart: nil, filters: nil, rows: nil, summary: nil)
        #   @param chart [Array<Onlyfansapi::Models::SmartLinkListClicksResponse::Data::Chart>]
        #   @param filters [Onlyfansapi::Models::SmartLinkListClicksResponse::Data::Filters]
        #   @param rows [Array<Onlyfansapi::Models::SmartLinkListClicksResponse::Data::Row>]
        #   @param summary [Onlyfansapi::Models::SmartLinkListClicksResponse::Data::Summary]

        class Chart < Onlyfansapi::Internal::Type::BaseModel
          # @!attribute clicks
          #
          #   @return [Integer, nil]
          optional :clicks, Integer

          # @!attribute timestamp
          #
          #   @return [String, nil]
          optional :timestamp, String

          # @!method initialize(clicks: nil, timestamp: nil)
          #   @param clicks [Integer]
          #   @param timestamp [String]
        end

        # @see Onlyfansapi::Models::SmartLinkListClicksResponse::Data#filters
        class Filters < Onlyfansapi::Internal::Type::BaseModel
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
          optional :include_bots, Onlyfansapi::Internal::Type::Boolean

          # @!attribute include_duplicates
          #
          #   @return [Boolean, nil]
          optional :include_duplicates, Onlyfansapi::Internal::Type::Boolean

          # @!attribute limit
          #
          #   @return [Integer, nil]
          optional :limit, Integer

          # @!attribute offset
          #
          #   @return [Integer, nil]
          optional :offset, Integer

          # @!method initialize(date_end: nil, date_start: nil, include_bots: nil, include_duplicates: nil, limit: nil, offset: nil)
          #   @param date_end [String]
          #   @param date_start [String]
          #   @param include_bots [Boolean]
          #   @param include_duplicates [Boolean]
          #   @param limit [Integer]
          #   @param offset [Integer]
        end

        class Row < Onlyfansapi::Internal::Type::BaseModel
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
          optional :is_bot, Onlyfansapi::Internal::Type::Boolean

          # @!attribute is_duplicate
          #
          #   @return [Boolean, nil]
          optional :is_duplicate, Onlyfansapi::Internal::Type::Boolean

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

        # @see Onlyfansapi::Models::SmartLinkListClicksResponse::Data#summary
        class Summary < Onlyfansapi::Internal::Type::BaseModel
          # @!attribute clicks_total
          #
          #   @return [Integer, nil]
          optional :clicks_total, Integer

          # @!method initialize(clicks_total: nil)
          #   @param clicks_total [Integer]
        end
      end
    end
  end
end
