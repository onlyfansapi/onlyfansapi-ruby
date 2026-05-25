# frozen_string_literal: true

module Onlyfans
  module Models
    # @see Onlyfans::Resources::Posts#archive
    class PostArchiveResponse < Onlyfans::Internal::Type::BaseModel
      # @!attribute _meta
      #
      #   @return [Onlyfans::Models::PostArchiveResponse::Meta, nil]
      optional :_meta, -> { Onlyfans::Models::PostArchiveResponse::Meta }

      # @!attribute data
      #
      #   @return [Onlyfans::Models::PostArchiveResponse::Data, nil]
      optional :data, -> { Onlyfans::Models::PostArchiveResponse::Data }

      # @!method initialize(_meta: nil, data: nil)
      #   @param _meta [Onlyfans::Models::PostArchiveResponse::Meta]
      #   @param data [Onlyfans::Models::PostArchiveResponse::Data]

      # @see Onlyfans::Models::PostArchiveResponse#_meta
      class Meta < Onlyfans::Internal::Type::BaseModel
        # @!attribute _cache
        #
        #   @return [Onlyfans::Models::PostArchiveResponse::Meta::Cache, nil]
        optional :_cache, -> { Onlyfans::Models::PostArchiveResponse::Meta::Cache }

        # @!attribute _credits
        #
        #   @return [Onlyfans::Models::PostArchiveResponse::Meta::Credits, nil]
        optional :_credits, -> { Onlyfans::Models::PostArchiveResponse::Meta::Credits }

        # @!attribute _rate_limits
        #
        #   @return [Onlyfans::Models::PostArchiveResponse::Meta::RateLimits, nil]
        optional :_rate_limits, -> { Onlyfans::Models::PostArchiveResponse::Meta::RateLimits }

        # @!method initialize(_cache: nil, _credits: nil, _rate_limits: nil)
        #   @param _cache [Onlyfans::Models::PostArchiveResponse::Meta::Cache]
        #   @param _credits [Onlyfans::Models::PostArchiveResponse::Meta::Credits]
        #   @param _rate_limits [Onlyfans::Models::PostArchiveResponse::Meta::RateLimits]

        # @see Onlyfans::Models::PostArchiveResponse::Meta#_cache
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

        # @see Onlyfans::Models::PostArchiveResponse::Meta#_credits
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

        # @see Onlyfans::Models::PostArchiveResponse::Meta#_rate_limits
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

      # @see Onlyfans::Models::PostArchiveResponse#data
      class Data < Onlyfans::Internal::Type::BaseModel
        # @!attribute counters
        #
        #   @return [Onlyfans::Models::PostArchiveResponse::Data::Counters, nil]
        optional :counters, -> { Onlyfans::Models::PostArchiveResponse::Data::Counters }

        # @!attribute label_states
        #
        #   @return [Array<Onlyfans::Models::PostArchiveResponse::Data::LabelState>, nil]
        optional :label_states,
                 -> { Onlyfans::Internal::Type::ArrayOf[Onlyfans::Models::PostArchiveResponse::Data::LabelState] },
                 api_name: :labelStates

        # @!method initialize(counters: nil, label_states: nil)
        #   @param counters [Onlyfans::Models::PostArchiveResponse::Data::Counters]
        #   @param label_states [Array<Onlyfans::Models::PostArchiveResponse::Data::LabelState>]

        # @see Onlyfans::Models::PostArchiveResponse::Data#counters
        class Counters < Onlyfans::Internal::Type::BaseModel
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

          # @!attribute private_archived_posts_count
          #
          #   @return [Integer, nil]
          optional :private_archived_posts_count, Integer, api_name: :privateArchivedPostsCount

          # @!attribute streams_count
          #
          #   @return [Integer, nil]
          optional :streams_count, Integer, api_name: :streamsCount

          # @!attribute videos_count
          #
          #   @return [Integer, nil]
          optional :videos_count, Integer, api_name: :videosCount

          # @!method initialize(archived_posts_count: nil, audios_count: nil, medias_count: nil, photos_count: nil, posts_count: nil, private_archived_posts_count: nil, streams_count: nil, videos_count: nil)
          #   @param archived_posts_count [Integer]
          #   @param audios_count [Integer]
          #   @param medias_count [Integer]
          #   @param photos_count [Integer]
          #   @param posts_count [Integer]
          #   @param private_archived_posts_count [Integer]
          #   @param streams_count [Integer]
          #   @param videos_count [Integer]
        end

        class LabelState < Onlyfans::Internal::Type::BaseModel
          # @!attribute id
          #
          #   @return [String, nil]
          optional :id, String

          # @!attribute is_clear_in_progress
          #
          #   @return [Boolean, nil]
          optional :is_clear_in_progress, Onlyfans::Internal::Type::Boolean, api_name: :isClearInProgress

          # @!attribute name
          #
          #   @return [String, nil]
          optional :name, String

          # @!attribute posts
          #
          #   @return [Array<Object>, nil]
          optional :posts, Onlyfans::Internal::Type::ArrayOf[Onlyfans::Internal::Type::Unknown]

          # @!attribute posts_count
          #
          #   @return [Integer, nil]
          optional :posts_count, Integer, api_name: :postsCount

          # @!attribute type
          #
          #   @return [String, nil]
          optional :type, String

          # @!method initialize(id: nil, is_clear_in_progress: nil, name: nil, posts: nil, posts_count: nil, type: nil)
          #   @param id [String]
          #   @param is_clear_in_progress [Boolean]
          #   @param name [String]
          #   @param posts [Array<Object>]
          #   @param posts_count [Integer]
          #   @param type [String]
        end
      end
    end
  end
end
