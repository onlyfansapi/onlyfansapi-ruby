# frozen_string_literal: true

module Onlyfans
  module Models
    # @see Onlyfans::Resources::Stored#list_shared_tracking_links
    class StoredListSharedTrackingLinksResponse < Onlyfans::Internal::Type::BaseModel
      # @!attribute _meta
      #
      #   @return [Onlyfans::Models::StoredListSharedTrackingLinksResponse::Meta, nil]
      optional :_meta, -> { Onlyfans::Models::StoredListSharedTrackingLinksResponse::Meta }

      # @!attribute _pagination
      #
      #   @return [Onlyfans::Models::StoredListSharedTrackingLinksResponse::Pagination, nil]
      optional :_pagination, -> { Onlyfans::Models::StoredListSharedTrackingLinksResponse::Pagination }

      # @!attribute data
      #
      #   @return [Onlyfans::Models::StoredListSharedTrackingLinksResponse::Data, nil]
      optional :data, -> { Onlyfans::Models::StoredListSharedTrackingLinksResponse::Data }

      # @!method initialize(_meta: nil, _pagination: nil, data: nil)
      #   @param _meta [Onlyfans::Models::StoredListSharedTrackingLinksResponse::Meta]
      #   @param _pagination [Onlyfans::Models::StoredListSharedTrackingLinksResponse::Pagination]
      #   @param data [Onlyfans::Models::StoredListSharedTrackingLinksResponse::Data]

      # @see Onlyfans::Models::StoredListSharedTrackingLinksResponse#_meta
      class Meta < Onlyfans::Internal::Type::BaseModel
        # @!attribute _cache
        #
        #   @return [Onlyfans::Models::StoredListSharedTrackingLinksResponse::Meta::Cache, nil]
        optional :_cache, -> { Onlyfans::Models::StoredListSharedTrackingLinksResponse::Meta::Cache }

        # @!attribute _credits
        #
        #   @return [Onlyfans::Models::StoredListSharedTrackingLinksResponse::Meta::Credits, nil]
        optional :_credits, -> { Onlyfans::Models::StoredListSharedTrackingLinksResponse::Meta::Credits }

        # @!attribute _rate_limits
        #
        #   @return [Onlyfans::Models::StoredListSharedTrackingLinksResponse::Meta::RateLimits, nil]
        optional :_rate_limits, -> { Onlyfans::Models::StoredListSharedTrackingLinksResponse::Meta::RateLimits }

        # @!method initialize(_cache: nil, _credits: nil, _rate_limits: nil)
        #   @param _cache [Onlyfans::Models::StoredListSharedTrackingLinksResponse::Meta::Cache]
        #   @param _credits [Onlyfans::Models::StoredListSharedTrackingLinksResponse::Meta::Credits]
        #   @param _rate_limits [Onlyfans::Models::StoredListSharedTrackingLinksResponse::Meta::RateLimits]

        # @see Onlyfans::Models::StoredListSharedTrackingLinksResponse::Meta#_cache
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

        # @see Onlyfans::Models::StoredListSharedTrackingLinksResponse::Meta#_credits
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

        # @see Onlyfans::Models::StoredListSharedTrackingLinksResponse::Meta#_rate_limits
        class RateLimits < Onlyfans::Internal::Type::BaseModel
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

      # @see Onlyfans::Models::StoredListSharedTrackingLinksResponse#_pagination
      class Pagination < Onlyfans::Internal::Type::BaseModel
        # @!attribute next_page
        #
        #   @return [String, nil]
        optional :next_page, String, nil?: true

        # @!attribute notice
        #
        #   @return [String, nil]
        optional :notice, String, nil?: true

        # @!method initialize(next_page: nil, notice: nil)
        #   @param next_page [String, nil]
        #   @param notice [String, nil]
      end

      # @see Onlyfans::Models::StoredListSharedTrackingLinksResponse#data
      class Data < Onlyfans::Internal::Type::BaseModel
        # @!attribute has_more
        #
        #   @return [Boolean, nil]
        optional :has_more, Onlyfans::Internal::Type::Boolean, api_name: :hasMore

        # @!attribute list
        #
        #   @return [Array<Onlyfans::Models::StoredListSharedTrackingLinksResponse::Data::List>, nil]
        optional :list,
                 -> { Onlyfans::Internal::Type::ArrayOf[Onlyfans::Models::StoredListSharedTrackingLinksResponse::Data::List] }

        # @!method initialize(has_more: nil, list: nil)
        #   @param has_more [Boolean]
        #   @param list [Array<Onlyfans::Models::StoredListSharedTrackingLinksResponse::Data::List>]

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

          # @!attribute is_deleted
          #
          #   @return [Boolean, nil]
          optional :is_deleted, Onlyfans::Internal::Type::Boolean, api_name: :isDeleted

          # @!attribute owner
          #
          #   @return [Onlyfans::Models::StoredListSharedTrackingLinksResponse::Data::List::Owner, nil]
          optional :owner, -> { Onlyfans::Models::StoredListSharedTrackingLinksResponse::Data::List::Owner }

          # @!attribute subscribers_count
          #
          #   @return [Integer, nil]
          optional :subscribers_count, Integer, api_name: :subscribersCount

          # @!attribute tags
          #
          #   @return [Array<Object>, nil]
          optional :tags, Onlyfans::Internal::Type::ArrayOf[Onlyfans::Internal::Type::Unknown]

          # @!method initialize(id: nil, campaign_code: nil, campaign_name: nil, campaign_url: nil, clicks_count: nil, created_at: nil, end_date: nil, is_deleted: nil, owner: nil, subscribers_count: nil, tags: nil)
          #   @param id [Integer]
          #   @param campaign_code [Integer]
          #   @param campaign_name [String]
          #   @param campaign_url [String]
          #   @param clicks_count [Integer]
          #   @param created_at [String]
          #   @param end_date [String, nil]
          #   @param is_deleted [Boolean]
          #   @param owner [Onlyfans::Models::StoredListSharedTrackingLinksResponse::Data::List::Owner]
          #   @param subscribers_count [Integer]
          #   @param tags [Array<Object>]

          # @see Onlyfans::Models::StoredListSharedTrackingLinksResponse::Data::List#owner
          class Owner < Onlyfans::Internal::Type::BaseModel
            # @!attribute id
            #
            #   @return [Integer, nil]
            optional :id, Integer

            # @!attribute avatar_thumb_url
            #
            #   @return [String, nil]
            optional :avatar_thumb_url, String, api_name: :avatarThumbUrl

            # @!attribute name
            #
            #   @return [String, nil]
            optional :name, String

            # @!attribute username
            #
            #   @return [String, nil]
            optional :username, String

            # @!method initialize(id: nil, avatar_thumb_url: nil, name: nil, username: nil)
            #   @param id [Integer]
            #   @param avatar_thumb_url [String]
            #   @param name [String]
            #   @param username [String]
          end
        end
      end
    end
  end
end
