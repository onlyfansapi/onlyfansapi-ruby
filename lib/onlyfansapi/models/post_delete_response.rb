# frozen_string_literal: true

module Onlyfansapi
  module Models
    # @see Onlyfansapi::Resources::Posts#delete
    class PostDeleteResponse < Onlyfansapi::Internal::Type::BaseModel
      # @!attribute _meta
      #
      #   @return [Onlyfansapi::Models::PostDeleteResponse::Meta, nil]
      optional :_meta, -> { Onlyfansapi::Models::PostDeleteResponse::Meta }

      # @!attribute data
      #
      #   @return [Onlyfansapi::Models::PostDeleteResponse::Data, nil]
      optional :data, -> { Onlyfansapi::Models::PostDeleteResponse::Data }

      # @!method initialize(_meta: nil, data: nil)
      #   @param _meta [Onlyfansapi::Models::PostDeleteResponse::Meta]
      #   @param data [Onlyfansapi::Models::PostDeleteResponse::Data]

      # @see Onlyfansapi::Models::PostDeleteResponse#_meta
      class Meta < Onlyfansapi::Internal::Type::BaseModel
        # @!attribute _cache
        #
        #   @return [Onlyfansapi::Models::PostDeleteResponse::Meta::Cache, nil]
        optional :_cache, -> { Onlyfansapi::Models::PostDeleteResponse::Meta::Cache }

        # @!attribute _credits
        #
        #   @return [Onlyfansapi::Models::PostDeleteResponse::Meta::Credits, nil]
        optional :_credits, -> { Onlyfansapi::Models::PostDeleteResponse::Meta::Credits }

        # @!attribute _rate_limits
        #
        #   @return [Onlyfansapi::Models::PostDeleteResponse::Meta::RateLimits, nil]
        optional :_rate_limits, -> { Onlyfansapi::Models::PostDeleteResponse::Meta::RateLimits }

        # @!method initialize(_cache: nil, _credits: nil, _rate_limits: nil)
        #   @param _cache [Onlyfansapi::Models::PostDeleteResponse::Meta::Cache]
        #   @param _credits [Onlyfansapi::Models::PostDeleteResponse::Meta::Credits]
        #   @param _rate_limits [Onlyfansapi::Models::PostDeleteResponse::Meta::RateLimits]

        # @see Onlyfansapi::Models::PostDeleteResponse::Meta#_cache
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

        # @see Onlyfansapi::Models::PostDeleteResponse::Meta#_credits
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

        # @see Onlyfansapi::Models::PostDeleteResponse::Meta#_rate_limits
        class RateLimits < Onlyfansapi::Internal::Type::BaseModel
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

      # @see Onlyfansapi::Models::PostDeleteResponse#data
      class Data < Onlyfansapi::Internal::Type::BaseModel
        # @!attribute counters
        #
        #   @return [Onlyfansapi::Models::PostDeleteResponse::Data::Counters, nil]
        optional :counters, -> { Onlyfansapi::Models::PostDeleteResponse::Data::Counters }

        # @!attribute success
        #
        #   @return [Boolean, nil]
        optional :success, Onlyfansapi::Internal::Type::Boolean

        # @!method initialize(counters: nil, success: nil)
        #   @param counters [Onlyfansapi::Models::PostDeleteResponse::Data::Counters]
        #   @param success [Boolean]

        # @see Onlyfansapi::Models::PostDeleteResponse::Data#counters
        class Counters < Onlyfansapi::Internal::Type::BaseModel
          # @!attribute archived_posts_count
          #
          #   @return [Integer, nil]
          optional :archived_posts_count, Integer, api_name: :archivedPostsCount

          # @!attribute audios_count
          #
          #   @return [Integer, nil]
          optional :audios_count, Integer, api_name: :audiosCount

          # @!attribute medias_count
          #
          #   @return [Integer, nil]
          optional :medias_count, Integer, api_name: :mediasCount

          # @!attribute photos_count
          #
          #   @return [Integer, nil]
          optional :photos_count, Integer, api_name: :photosCount

          # @!attribute posts_count
          #
          #   @return [Integer, nil]
          optional :posts_count, Integer, api_name: :postsCount

          # @!attribute streams_count
          #
          #   @return [Integer, nil]
          optional :streams_count, Integer, api_name: :streamsCount

          # @!attribute videos_count
          #
          #   @return [Integer, nil]
          optional :videos_count, Integer, api_name: :videosCount

          # @!method initialize(archived_posts_count: nil, audios_count: nil, medias_count: nil, photos_count: nil, posts_count: nil, streams_count: nil, videos_count: nil)
          #   @param archived_posts_count [Integer]
          #   @param audios_count [Integer]
          #   @param medias_count [Integer]
          #   @param photos_count [Integer]
          #   @param posts_count [Integer]
          #   @param streams_count [Integer]
          #   @param videos_count [Integer]
        end
      end
    end
  end
end
