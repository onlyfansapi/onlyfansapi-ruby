# frozen_string_literal: true

module Onlyfans
  module Models
    # @see Onlyfans::Resources::TrackingLinks#list
    class TrackingLinkListResponse < Onlyfans::Internal::Type::BaseModel
      # @!attribute _meta
      #
      #   @return [Onlyfans::Models::TrackingLinkListResponse::Meta, nil]
      optional :_meta, -> { Onlyfans::Models::TrackingLinkListResponse::Meta }

      # @!attribute _pagination
      #
      #   @return [Onlyfans::Models::TrackingLinkListResponse::Pagination, nil]
      optional :_pagination, -> { Onlyfans::Models::TrackingLinkListResponse::Pagination }

      # @!attribute data
      #
      #   @return [Onlyfans::Models::TrackingLinkListResponse::Data, nil]
      optional :data, -> { Onlyfans::Models::TrackingLinkListResponse::Data }

      # @!method initialize(_meta: nil, _pagination: nil, data: nil)
      #   @param _meta [Onlyfans::Models::TrackingLinkListResponse::Meta]
      #   @param _pagination [Onlyfans::Models::TrackingLinkListResponse::Pagination]
      #   @param data [Onlyfans::Models::TrackingLinkListResponse::Data]

      # @see Onlyfans::Models::TrackingLinkListResponse#_meta
      class Meta < Onlyfans::Internal::Type::BaseModel
        # @!attribute _cache
        #
        #   @return [Onlyfans::Models::TrackingLinkListResponse::Meta::Cache, nil]
        optional :_cache, -> { Onlyfans::Models::TrackingLinkListResponse::Meta::Cache }

        # @!attribute _credits
        #
        #   @return [Onlyfans::Models::TrackingLinkListResponse::Meta::Credits, nil]
        optional :_credits, -> { Onlyfans::Models::TrackingLinkListResponse::Meta::Credits }

        # @!attribute _rate_limits
        #
        #   @return [Onlyfans::Models::TrackingLinkListResponse::Meta::RateLimits, nil]
        optional :_rate_limits, -> { Onlyfans::Models::TrackingLinkListResponse::Meta::RateLimits }

        # @!method initialize(_cache: nil, _credits: nil, _rate_limits: nil)
        #   @param _cache [Onlyfans::Models::TrackingLinkListResponse::Meta::Cache]
        #   @param _credits [Onlyfans::Models::TrackingLinkListResponse::Meta::Credits]
        #   @param _rate_limits [Onlyfans::Models::TrackingLinkListResponse::Meta::RateLimits]

        # @see Onlyfans::Models::TrackingLinkListResponse::Meta#_cache
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

        # @see Onlyfans::Models::TrackingLinkListResponse::Meta#_credits
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

        # @see Onlyfans::Models::TrackingLinkListResponse::Meta#_rate_limits
        class RateLimits < Onlyfans::Internal::Type::BaseModel
          # @!attribute limit_day
          #
          #   @return [Integer, nil]
          optional :limit_day, Integer

          # @!attribute limit_minute
          #
          #   @return [Integer, nil]
          optional :limit_minute, Integer

          # @!attribute remaining_day
          #
          #   @return [Integer, nil]
          optional :remaining_day, Integer

          # @!attribute remaining_minute
          #
          #   @return [Integer, nil]
          optional :remaining_minute, Integer

          # @!method initialize(limit_day: nil, limit_minute: nil, remaining_day: nil, remaining_minute: nil)
          #   @param limit_day [Integer]
          #   @param limit_minute [Integer]
          #   @param remaining_day [Integer]
          #   @param remaining_minute [Integer]
        end
      end

      # @see Onlyfans::Models::TrackingLinkListResponse#_pagination
      class Pagination < Onlyfans::Internal::Type::BaseModel
        # @!attribute next_page
        #
        #   @return [String, nil]
        optional :next_page, String

        # @!method initialize(next_page: nil)
        #   @param next_page [String]
      end

      # @see Onlyfans::Models::TrackingLinkListResponse#data
      class Data < Onlyfans::Internal::Type::BaseModel
        # @!attribute has_more
        #
        #   @return [Boolean, nil]
        optional :has_more, Onlyfans::Internal::Type::Boolean, api_name: :hasMore

        # @!attribute list
        #
        #   @return [Array<Onlyfans::Models::TrackingLinkListResponse::Data::List>, nil]
        optional :list,
                 -> { Onlyfans::Internal::Type::ArrayOf[Onlyfans::Models::TrackingLinkListResponse::Data::List] }

        # @!method initialize(has_more: nil, list: nil)
        #   @param has_more [Boolean]
        #   @param list [Array<Onlyfans::Models::TrackingLinkListResponse::Data::List>]

        class List < Onlyfans::Internal::Type::BaseModel
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
          #   @return [Integer, nil]
          optional :clicks_count, Integer, api_name: :clicksCount

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
          #   @return [Onlyfans::Models::TrackingLinkListResponse::Data::List::Links, nil]
          optional :links, -> { Onlyfans::Models::TrackingLinkListResponse::Data::List::Links }

          # @!attribute revenue
          #
          #   @return [Onlyfans::Models::TrackingLinkListResponse::Data::List::Revenue, nil]
          optional :revenue, -> { Onlyfans::Models::TrackingLinkListResponse::Data::List::Revenue }

          # @!attribute subscribers_count
          #
          #   @return [Integer, nil]
          optional :subscribers_count, Integer, api_name: :subscribersCount

          # @!attribute tags
          #
          #   @return [Array<String>, nil]
          optional :tags, Onlyfans::Internal::Type::ArrayOf[String]

          # @!method initialize(id: nil, campaign_code: nil, campaign_name: nil, campaign_url: nil, clicks_count: nil, created_at: nil, end_date: nil, links: nil, revenue: nil, subscribers_count: nil, tags: nil)
          #   @param id [Integer]
          #   @param campaign_code [Integer]
          #   @param campaign_name [String]
          #   @param campaign_url [String]
          #   @param clicks_count [Integer]
          #   @param created_at [String]
          #   @param end_date [String, nil]
          #   @param links [Onlyfans::Models::TrackingLinkListResponse::Data::List::Links]
          #   @param revenue [Onlyfans::Models::TrackingLinkListResponse::Data::List::Revenue]
          #   @param subscribers_count [Integer]
          #   @param tags [Array<String>]

          # @see Onlyfans::Models::TrackingLinkListResponse::Data::List#links
          class Links < Onlyfans::Internal::Type::BaseModel
            # @!attribute related
            #
            #   @return [Onlyfans::Models::TrackingLinkListResponse::Data::List::Links::Related, nil]
            optional :related, -> { Onlyfans::Models::TrackingLinkListResponse::Data::List::Links::Related }

            # @!method initialize(related: nil)
            #   @param related [Onlyfans::Models::TrackingLinkListResponse::Data::List::Links::Related]

            # @see Onlyfans::Models::TrackingLinkListResponse::Data::List::Links#related
            class Related < Onlyfans::Internal::Type::BaseModel
              # @!attribute subscribers
              #
              #   @return [String, nil]
              optional :subscribers, String

              # @!method initialize(subscribers: nil)
              #   @param subscribers [String]
            end
          end

          # @see Onlyfans::Models::TrackingLinkListResponse::Data::List#revenue
          class Revenue < Onlyfans::Internal::Type::BaseModel
            # @!attribute calculated_at
            #
            #   @return [String, nil]
            optional :calculated_at, String, api_name: :calculatedAt

            # @!attribute is_loading
            #
            #   @return [Boolean, nil]
            optional :is_loading, Onlyfans::Internal::Type::Boolean, api_name: :isLoading

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
end
