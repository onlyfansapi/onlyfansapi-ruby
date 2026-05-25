# frozen_string_literal: true

module Onlyfans
  module Models
    # @see Onlyfans::Resources::Search#profiles
    class SearchProfilesResponse < Onlyfans::Internal::Type::BaseModel
      # @!attribute _meta
      #
      #   @return [Onlyfans::Models::SearchProfilesResponse::Meta, nil]
      optional :_meta, -> { Onlyfans::Models::SearchProfilesResponse::Meta }

      # @!attribute _pagination
      #
      #   @return [Onlyfans::Models::SearchProfilesResponse::Pagination, nil]
      optional :_pagination, -> { Onlyfans::Models::SearchProfilesResponse::Pagination }

      # @!attribute data
      #
      #   @return [Array<Onlyfans::Models::SearchProfilesResponse::Data>, nil]
      optional :data, -> { Onlyfans::Internal::Type::ArrayOf[Onlyfans::Models::SearchProfilesResponse::Data] }

      # @!method initialize(_meta: nil, _pagination: nil, data: nil)
      #   @param _meta [Onlyfans::Models::SearchProfilesResponse::Meta]
      #   @param _pagination [Onlyfans::Models::SearchProfilesResponse::Pagination]
      #   @param data [Array<Onlyfans::Models::SearchProfilesResponse::Data>]

      # @see Onlyfans::Models::SearchProfilesResponse#_meta
      class Meta < Onlyfans::Internal::Type::BaseModel
        # @!attribute _cache
        #
        #   @return [Onlyfans::Models::SearchProfilesResponse::Meta::Cache, nil]
        optional :_cache, -> { Onlyfans::Models::SearchProfilesResponse::Meta::Cache }

        # @!attribute _credits
        #
        #   @return [Onlyfans::Models::SearchProfilesResponse::Meta::Credits, nil]
        optional :_credits, -> { Onlyfans::Models::SearchProfilesResponse::Meta::Credits }

        # @!attribute _rate_limits
        #
        #   @return [Onlyfans::Models::SearchProfilesResponse::Meta::RateLimits, nil]
        optional :_rate_limits, -> { Onlyfans::Models::SearchProfilesResponse::Meta::RateLimits }

        # @!method initialize(_cache: nil, _credits: nil, _rate_limits: nil)
        #   @param _cache [Onlyfans::Models::SearchProfilesResponse::Meta::Cache]
        #   @param _credits [Onlyfans::Models::SearchProfilesResponse::Meta::Credits]
        #   @param _rate_limits [Onlyfans::Models::SearchProfilesResponse::Meta::RateLimits]

        # @see Onlyfans::Models::SearchProfilesResponse::Meta#_cache
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

        # @see Onlyfans::Models::SearchProfilesResponse::Meta#_credits
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

        # @see Onlyfans::Models::SearchProfilesResponse::Meta#_rate_limits
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

      # @see Onlyfans::Models::SearchProfilesResponse#_pagination
      class Pagination < Onlyfans::Internal::Type::BaseModel
        # @!attribute next_cursor
        #
        #   @return [String, nil]
        optional :next_cursor, String

        # @!attribute next_page_url
        #
        #   @return [String, nil]
        optional :next_page_url, String

        # @!attribute total_results
        #
        #   @return [Integer, nil]
        optional :total_results, Integer

        # @!method initialize(next_cursor: nil, next_page_url: nil, total_results: nil)
        #   @param next_cursor [String]
        #   @param next_page_url [String]
        #   @param total_results [Integer]
      end

      class Data < Onlyfans::Internal::Type::BaseModel
        # @!attribute about
        #
        #   @return [String, nil]
        optional :about, String

        # @!attribute audios_count
        #
        #   @return [Integer, nil]
        optional :audios_count, Integer

        # @!attribute avatar_url
        #
        #   @return [String, nil]
        optional :avatar_url, String

        # @!attribute bundles
        #
        #   @return [String, nil]
        optional :bundles, String, nil?: true

        # @!attribute facebook
        #
        #   @return [String, nil]
        optional :facebook, String, nil?: true

        # @!attribute fansly
        #
        #   @return [String, nil]
        optional :fansly, String, nil?: true

        # @!attribute favorited_count
        #
        #   @return [Integer, nil]
        optional :favorited_count, Integer

        # @!attribute favorites_count
        #
        #   @return [Integer, nil]
        optional :favorites_count, Integer

        # @!attribute header_url
        #
        #   @return [String, nil]
        optional :header_url, String

        # @!attribute instagram
        #
        #   @return [String, nil]
        optional :instagram, String, nil?: true

        # @!attribute is_adult_content
        #
        #   @return [Boolean, nil]
        optional :is_adult_content, Onlyfans::Internal::Type::Boolean

        # @!attribute is_performer
        #
        #   @return [Boolean, nil]
        optional :is_performer, Onlyfans::Internal::Type::Boolean

        # @!attribute is_real_performer
        #
        #   @return [Boolean, nil]
        optional :is_real_performer, Onlyfans::Internal::Type::Boolean

        # @!attribute is_verified
        #
        #   @return [Boolean, nil]
        optional :is_verified, Onlyfans::Internal::Type::Boolean

        # @!attribute join_date
        #
        #   @return [String, nil]
        optional :join_date, String

        # @!attribute last_seen_at
        #
        #   @return [String, nil]
        optional :last_seen_at, String, nil?: true

        # @!attribute location
        #
        #   @return [String, nil]
        optional :location, String

        # @!attribute manyvids
        #
        #   @return [String, nil]
        optional :manyvids, String, nil?: true

        # @!attribute min_subscribe_price
        #
        #   @return [Integer, nil]
        optional :min_subscribe_price, Integer

        # @!attribute name
        #
        #   @return [String, nil]
        optional :name, String

        # @!attribute ofapi_gender
        #
        #   @return [String, nil]
        optional :ofapi_gender, String

        # @!attribute ofapi_gender_confidence
        #
        #   @return [Float, nil]
        optional :ofapi_gender_confidence, Float

        # @!attribute onlyfans_id
        #
        #   @return [Integer, nil]
        optional :onlyfans_id, Integer

        # @!attribute photos_count
        #
        #   @return [Integer, nil]
        optional :photos_count, Integer

        # @!attribute pornhub
        #
        #   @return [String, nil]
        optional :pornhub, String, nil?: true

        # @!attribute posts_count
        #
        #   @return [Integer, nil]
        optional :posts_count, Integer

        # @!attribute promotions
        #
        #   @return [String, nil]
        optional :promotions, String, nil?: true

        # @!attribute stats_updated_at
        #
        #   @return [String, nil]
        optional :stats_updated_at, String

        # @!attribute subscribe_price
        #
        #   @return [Integer, nil]
        optional :subscribe_price, Integer

        # @!attribute subscribers_count
        #
        #   @return [String, nil]
        optional :subscribers_count, String, nil?: true

        # @!attribute tiktok
        #
        #   @return [String, nil]
        optional :tiktok, String, nil?: true

        # @!attribute twitter
        #
        #   @return [String, nil]
        optional :twitter, String, nil?: true

        # @!attribute username
        #
        #   @return [String, nil]
        optional :username, String

        # @!attribute videos_count
        #
        #   @return [Integer, nil]
        optional :videos_count, Integer

        # @!attribute website
        #
        #   @return [String, nil]
        optional :website, String

        # @!attribute wishlist
        #
        #   @return [String, nil]
        optional :wishlist, String, nil?: true

        # @!method initialize(about: nil, audios_count: nil, avatar_url: nil, bundles: nil, facebook: nil, fansly: nil, favorited_count: nil, favorites_count: nil, header_url: nil, instagram: nil, is_adult_content: nil, is_performer: nil, is_real_performer: nil, is_verified: nil, join_date: nil, last_seen_at: nil, location: nil, manyvids: nil, min_subscribe_price: nil, name: nil, ofapi_gender: nil, ofapi_gender_confidence: nil, onlyfans_id: nil, photos_count: nil, pornhub: nil, posts_count: nil, promotions: nil, stats_updated_at: nil, subscribe_price: nil, subscribers_count: nil, tiktok: nil, twitter: nil, username: nil, videos_count: nil, website: nil, wishlist: nil)
        #   @param about [String]
        #   @param audios_count [Integer]
        #   @param avatar_url [String]
        #   @param bundles [String, nil]
        #   @param facebook [String, nil]
        #   @param fansly [String, nil]
        #   @param favorited_count [Integer]
        #   @param favorites_count [Integer]
        #   @param header_url [String]
        #   @param instagram [String, nil]
        #   @param is_adult_content [Boolean]
        #   @param is_performer [Boolean]
        #   @param is_real_performer [Boolean]
        #   @param is_verified [Boolean]
        #   @param join_date [String]
        #   @param last_seen_at [String, nil]
        #   @param location [String]
        #   @param manyvids [String, nil]
        #   @param min_subscribe_price [Integer]
        #   @param name [String]
        #   @param ofapi_gender [String]
        #   @param ofapi_gender_confidence [Float]
        #   @param onlyfans_id [Integer]
        #   @param photos_count [Integer]
        #   @param pornhub [String, nil]
        #   @param posts_count [Integer]
        #   @param promotions [String, nil]
        #   @param stats_updated_at [String]
        #   @param subscribe_price [Integer]
        #   @param subscribers_count [String, nil]
        #   @param tiktok [String, nil]
        #   @param twitter [String, nil]
        #   @param username [String]
        #   @param videos_count [Integer]
        #   @param website [String]
        #   @param wishlist [String, nil]
      end
    end
  end
end
