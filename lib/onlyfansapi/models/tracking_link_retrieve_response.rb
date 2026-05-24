# frozen_string_literal: true

module Onlyfansapi
  module Models
    # @see Onlyfansapi::Resources::TrackingLinks#retrieve
    class TrackingLinkRetrieveResponse < Onlyfansapi::Internal::Type::BaseModel
      # @!attribute _meta
      #
      #   @return [Onlyfansapi::Models::TrackingLinkRetrieveResponse::Meta, nil]
      optional :_meta, -> { Onlyfansapi::Models::TrackingLinkRetrieveResponse::Meta }

      # @!attribute data
      #
      #   @return [Onlyfansapi::Models::TrackingLinkRetrieveResponse::Data, nil]
      optional :data, -> { Onlyfansapi::Models::TrackingLinkRetrieveResponse::Data }

      # @!method initialize(_meta: nil, data: nil)
      #   @param _meta [Onlyfansapi::Models::TrackingLinkRetrieveResponse::Meta]
      #   @param data [Onlyfansapi::Models::TrackingLinkRetrieveResponse::Data]

      # @see Onlyfansapi::Models::TrackingLinkRetrieveResponse#_meta
      class Meta < Onlyfansapi::Internal::Type::BaseModel
        # @!attribute _cache
        #
        #   @return [Onlyfansapi::Models::TrackingLinkRetrieveResponse::Meta::Cache, nil]
        optional :_cache, -> { Onlyfansapi::Models::TrackingLinkRetrieveResponse::Meta::Cache }

        # @!attribute _credits
        #
        #   @return [Onlyfansapi::Models::TrackingLinkRetrieveResponse::Meta::Credits, nil]
        optional :_credits, -> { Onlyfansapi::Models::TrackingLinkRetrieveResponse::Meta::Credits }

        # @!attribute _rate_limits
        #
        #   @return [Onlyfansapi::Models::TrackingLinkRetrieveResponse::Meta::RateLimits, nil]
        optional :_rate_limits, -> { Onlyfansapi::Models::TrackingLinkRetrieveResponse::Meta::RateLimits }

        # @!method initialize(_cache: nil, _credits: nil, _rate_limits: nil)
        #   @param _cache [Onlyfansapi::Models::TrackingLinkRetrieveResponse::Meta::Cache]
        #   @param _credits [Onlyfansapi::Models::TrackingLinkRetrieveResponse::Meta::Credits]
        #   @param _rate_limits [Onlyfansapi::Models::TrackingLinkRetrieveResponse::Meta::RateLimits]

        # @see Onlyfansapi::Models::TrackingLinkRetrieveResponse::Meta#_cache
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

        # @see Onlyfansapi::Models::TrackingLinkRetrieveResponse::Meta#_credits
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

        # @see Onlyfansapi::Models::TrackingLinkRetrieveResponse::Meta#_rate_limits
        class RateLimits < Onlyfansapi::Internal::Type::BaseModel
          # @!attribute limit_day
          #
          #   @return [String, nil]
          optional :limit_day, String, nil?: true

          # @!attribute limit_minute
          #
          #   @return [Integer, nil]
          optional :limit_minute, Integer

          # @!attribute notice
          #
          #   @return [String, nil]
          optional :notice, String

          # @!attribute remaining_day
          #
          #   @return [String, nil]
          optional :remaining_day, String, nil?: true

          # @!attribute remaining_minute
          #
          #   @return [Integer, nil]
          optional :remaining_minute, Integer

          # @!method initialize(limit_day: nil, limit_minute: nil, notice: nil, remaining_day: nil, remaining_minute: nil)
          #   @param limit_day [String, nil]
          #   @param limit_minute [Integer]
          #   @param notice [String]
          #   @param remaining_day [String, nil]
          #   @param remaining_minute [Integer]
        end
      end

      # @see Onlyfansapi::Models::TrackingLinkRetrieveResponse#data
      class Data < Onlyfansapi::Internal::Type::BaseModel
        # @!attribute id
        #
        #   @return [Integer, nil]
        optional :id, Integer

        # @!attribute campaign_code
        #
        #   @return [Integer, nil]
        optional :campaign_code, Integer, api_name: :campaignCode

        # @!attribute campaign_name
        #
        #   @return [String, nil]
        optional :campaign_name, String, api_name: :campaignName

        # @!attribute campaign_url
        #
        #   @return [String, nil]
        optional :campaign_url, String, api_name: :campaignUrl

        # @!attribute clicks_count
        #
        #   @return [String, nil]
        optional :clicks_count, String, api_name: :clicksCount, nil?: true

        # @!attribute cost
        #
        #   @return [Onlyfansapi::Models::TrackingLinkRetrieveResponse::Data::Cost, nil]
        optional :cost, -> { Onlyfansapi::Models::TrackingLinkRetrieveResponse::Data::Cost }

        # @!attribute created_at
        #
        #   @return [String, nil]
        optional :created_at, String, api_name: :createdAt

        # @!attribute end_date
        #
        #   @return [String, nil]
        optional :end_date, String, api_name: :endDate, nil?: true

        # @!attribute links
        #
        #   @return [Onlyfansapi::Models::TrackingLinkRetrieveResponse::Data::Links, nil]
        optional :links, -> { Onlyfansapi::Models::TrackingLinkRetrieveResponse::Data::Links }

        # @!attribute revenue
        #
        #   @return [Onlyfansapi::Models::TrackingLinkRetrieveResponse::Data::Revenue, nil]
        optional :revenue, -> { Onlyfansapi::Models::TrackingLinkRetrieveResponse::Data::Revenue }

        # @!attribute subscribers_count
        #
        #   @return [String, nil]
        optional :subscribers_count, String, api_name: :subscribersCount, nil?: true

        # @!attribute tags
        #
        #   @return [Array<String>, nil]
        optional :tags, Onlyfansapi::Internal::Type::ArrayOf[String]

        # @!method initialize(id: nil, campaign_code: nil, campaign_name: nil, campaign_url: nil, clicks_count: nil, cost: nil, created_at: nil, end_date: nil, links: nil, revenue: nil, subscribers_count: nil, tags: nil)
        #   @param id [Integer]
        #   @param campaign_code [Integer]
        #   @param campaign_name [String]
        #   @param campaign_url [String]
        #   @param clicks_count [String, nil]
        #   @param cost [Onlyfansapi::Models::TrackingLinkRetrieveResponse::Data::Cost]
        #   @param created_at [String]
        #   @param end_date [String, nil]
        #   @param links [Onlyfansapi::Models::TrackingLinkRetrieveResponse::Data::Links]
        #   @param revenue [Onlyfansapi::Models::TrackingLinkRetrieveResponse::Data::Revenue]
        #   @param subscribers_count [String, nil]
        #   @param tags [Array<String>]

        # @see Onlyfansapi::Models::TrackingLinkRetrieveResponse::Data#cost
        class Cost < Onlyfansapi::Internal::Type::BaseModel
          # @!attribute click_source_count
          #
          #   @return [Integer, nil]
          optional :click_source_count, Integer, api_name: :clickSourceCount

          # @!attribute input_mode
          #
          #   @return [String, nil]
          optional :input_mode, String, api_name: :inputMode, nil?: true

          # @!attribute input_value
          #
          #   @return [String, nil]
          optional :input_value, String, api_name: :inputValue, nil?: true

          # @!attribute per_click
          #
          #   @return [String, nil]
          optional :per_click, String, api_name: :perClick, nil?: true

          # @!attribute per_promo
          #
          #   @return [String, nil]
          optional :per_promo, String, api_name: :perPromo, nil?: true

          # @!attribute per_sub
          #
          #   @return [String, nil]
          optional :per_sub, String, api_name: :perSub, nil?: true

          # @!attribute subscriber_source_count
          #
          #   @return [Integer, nil]
          optional :subscriber_source_count, Integer, api_name: :subscriberSourceCount

          # @!method initialize(click_source_count: nil, input_mode: nil, input_value: nil, per_click: nil, per_promo: nil, per_sub: nil, subscriber_source_count: nil)
          #   @param click_source_count [Integer]
          #   @param input_mode [String, nil]
          #   @param input_value [String, nil]
          #   @param per_click [String, nil]
          #   @param per_promo [String, nil]
          #   @param per_sub [String, nil]
          #   @param subscriber_source_count [Integer]
        end

        # @see Onlyfansapi::Models::TrackingLinkRetrieveResponse::Data#links
        class Links < Onlyfansapi::Internal::Type::BaseModel
          # @!attribute related
          #
          #   @return [Onlyfansapi::Models::TrackingLinkRetrieveResponse::Data::Links::Related, nil]
          optional :related, -> { Onlyfansapi::Models::TrackingLinkRetrieveResponse::Data::Links::Related }

          # @!method initialize(related: nil)
          #   @param related [Onlyfansapi::Models::TrackingLinkRetrieveResponse::Data::Links::Related]

          # @see Onlyfansapi::Models::TrackingLinkRetrieveResponse::Data::Links#related
          class Related < Onlyfansapi::Internal::Type::BaseModel
            # @!attribute spenders
            #
            #   @return [String, nil]
            optional :spenders, String

            # @!attribute subscribers
            #
            #   @return [String, nil]
            optional :subscribers, String

            # @!method initialize(spenders: nil, subscribers: nil)
            #   @param spenders [String]
            #   @param subscribers [String]
          end
        end

        # @see Onlyfansapi::Models::TrackingLinkRetrieveResponse::Data#revenue
        class Revenue < Onlyfansapi::Internal::Type::BaseModel
          # @!attribute calculated_at
          #
          #   @return [String, nil]
          optional :calculated_at, String, api_name: :calculatedAt

          # @!attribute is_loading
          #
          #   @return [Boolean, nil]
          optional :is_loading, Onlyfansapi::Internal::Type::Boolean, api_name: :isLoading

          # @!attribute revenue_per_click
          #
          #   @return [Float, nil]
          optional :revenue_per_click, Float, api_name: :revenuePerClick

          # @!attribute revenue_per_subscriber
          #
          #   @return [Integer, nil]
          optional :revenue_per_subscriber, Integer, api_name: :revenuePerSubscriber

          # @!attribute spenders_count
          #
          #   @return [Integer, nil]
          optional :spenders_count, Integer, api_name: :spendersCount

          # @!attribute total
          #
          #   @return [Integer, nil]
          optional :total, Integer

          # @!method initialize(calculated_at: nil, is_loading: nil, revenue_per_click: nil, revenue_per_subscriber: nil, spenders_count: nil, total: nil)
          #   @param calculated_at [String]
          #   @param is_loading [Boolean]
          #   @param revenue_per_click [Float]
          #   @param revenue_per_subscriber [Integer]
          #   @param spenders_count [Integer]
          #   @param total [Integer]
        end
      end
    end
  end
end
