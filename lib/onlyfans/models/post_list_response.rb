# frozen_string_literal: true

module Onlyfans
  module Models
    # @see Onlyfans::Resources::Posts#list
    class PostListResponse < Onlyfans::Internal::Type::BaseModel
      # @!attribute _meta
      #
      #   @return [Onlyfans::Models::PostListResponse::Meta, nil]
      optional :_meta, -> { Onlyfans::Models::PostListResponse::Meta }

      # @!attribute data
      #
      #   @return [Onlyfans::Models::PostListResponse::Data, nil]
      optional :data, -> { Onlyfans::Models::PostListResponse::Data }

      # @!method initialize(_meta: nil, data: nil)
      #   @param _meta [Onlyfans::Models::PostListResponse::Meta]
      #   @param data [Onlyfans::Models::PostListResponse::Data]

      # @see Onlyfans::Models::PostListResponse#_meta
      class Meta < Onlyfans::Internal::Type::BaseModel
        # @!attribute _cache
        #
        #   @return [Onlyfans::Models::PostListResponse::Meta::Cache, nil]
        optional :_cache, -> { Onlyfans::Models::PostListResponse::Meta::Cache }

        # @!attribute _credits
        #
        #   @return [Onlyfans::Models::PostListResponse::Meta::Credits, nil]
        optional :_credits, -> { Onlyfans::Models::PostListResponse::Meta::Credits }

        # @!attribute _rate_limits
        #
        #   @return [Onlyfans::Models::PostListResponse::Meta::RateLimits, nil]
        optional :_rate_limits, -> { Onlyfans::Models::PostListResponse::Meta::RateLimits }

        # @!method initialize(_cache: nil, _credits: nil, _rate_limits: nil)
        #   @param _cache [Onlyfans::Models::PostListResponse::Meta::Cache]
        #   @param _credits [Onlyfans::Models::PostListResponse::Meta::Credits]
        #   @param _rate_limits [Onlyfans::Models::PostListResponse::Meta::RateLimits]

        # @see Onlyfans::Models::PostListResponse::Meta#_cache
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

        # @see Onlyfans::Models::PostListResponse::Meta#_credits
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

        # @see Onlyfans::Models::PostListResponse::Meta#_rate_limits
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

      # @see Onlyfans::Models::PostListResponse#data
      class Data < Onlyfans::Internal::Type::BaseModel
        # @!attribute counters
        #
        #   @return [Onlyfans::Models::PostListResponse::Data::Counters, nil]
        optional :counters, -> { Onlyfans::Models::PostListResponse::Data::Counters }

        # @!attribute has_more
        #
        #   @return [Boolean, nil]
        optional :has_more, Onlyfans::Internal::Type::Boolean, api_name: :hasMore

        # @!attribute head_marker
        #
        #   @return [String, nil]
        optional :head_marker, String, api_name: :headMarker

        # @!attribute list
        #
        #   @return [Array<Onlyfans::Models::PostListResponse::Data::List>, nil]
        optional :list, -> { Onlyfans::Internal::Type::ArrayOf[Onlyfans::Models::PostListResponse::Data::List] }

        # @!attribute tail_marker
        #
        #   @return [String, nil]
        optional :tail_marker, String, api_name: :tailMarker

        # @!method initialize(counters: nil, has_more: nil, head_marker: nil, list: nil, tail_marker: nil)
        #   @param counters [Onlyfans::Models::PostListResponse::Data::Counters]
        #   @param has_more [Boolean]
        #   @param head_marker [String]
        #   @param list [Array<Onlyfans::Models::PostListResponse::Data::List>]
        #   @param tail_marker [String]

        # @see Onlyfans::Models::PostListResponse::Data#counters
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

        class List < Onlyfans::Internal::Type::BaseModel
          # @!attribute id
          #
          #   @return [Integer, nil]
          optional :id, Integer

          # @!attribute author
          #
          #   @return [Onlyfans::Models::PostListResponse::Data::List::Author, nil]
          optional :author, -> { Onlyfans::Models::PostListResponse::Data::List::Author }

          # @!attribute can_comment
          #
          #   @return [Boolean, nil]
          optional :can_comment, Onlyfans::Internal::Type::Boolean, api_name: :canComment

          # @!attribute can_delete
          #
          #   @return [Boolean, nil]
          optional :can_delete, Onlyfans::Internal::Type::Boolean, api_name: :canDelete

          # @!attribute can_edit
          #
          #   @return [Boolean, nil]
          optional :can_edit, Onlyfans::Internal::Type::Boolean, api_name: :canEdit

          # @!attribute can_toggle_favorite
          #
          #   @return [Boolean, nil]
          optional :can_toggle_favorite, Onlyfans::Internal::Type::Boolean, api_name: :canToggleFavorite

          # @!attribute can_view_media
          #
          #   @return [Boolean, nil]
          optional :can_view_media, Onlyfans::Internal::Type::Boolean, api_name: :canViewMedia

          # @!attribute is_markdown_disabled
          #
          #   @return [Boolean, nil]
          optional :is_markdown_disabled, Onlyfans::Internal::Type::Boolean, api_name: :isMarkdownDisabled

          # @!attribute is_media_ready
          #
          #   @return [Boolean, nil]
          optional :is_media_ready, Onlyfans::Internal::Type::Boolean, api_name: :isMediaReady

          # @!attribute is_opened
          #
          #   @return [Boolean, nil]
          optional :is_opened, Onlyfans::Internal::Type::Boolean, api_name: :isOpened

          # @!attribute posted_at
          #
          #   @return [String, nil]
          optional :posted_at, String, api_name: :postedAt

          # @!attribute posted_at_precise
          #
          #   @return [String, nil]
          optional :posted_at_precise, String, api_name: :postedAtPrecise

          # @!attribute raw_text
          #
          #   @return [String, nil]
          optional :raw_text, String, api_name: :rawText

          # @!attribute response_type
          #
          #   @return [String, nil]
          optional :response_type, String, api_name: :responseType

          # @!attribute text
          #
          #   @return [String, nil]
          optional :text, String

          # @!attribute tips_amount
          #
          #   @return [String, nil]
          optional :tips_amount, String, api_name: :tipsAmount

          # @!method initialize(id: nil, author: nil, can_comment: nil, can_delete: nil, can_edit: nil, can_toggle_favorite: nil, can_view_media: nil, is_markdown_disabled: nil, is_media_ready: nil, is_opened: nil, posted_at: nil, posted_at_precise: nil, raw_text: nil, response_type: nil, text: nil, tips_amount: nil)
          #   @param id [Integer]
          #   @param author [Onlyfans::Models::PostListResponse::Data::List::Author]
          #   @param can_comment [Boolean]
          #   @param can_delete [Boolean]
          #   @param can_edit [Boolean]
          #   @param can_toggle_favorite [Boolean]
          #   @param can_view_media [Boolean]
          #   @param is_markdown_disabled [Boolean]
          #   @param is_media_ready [Boolean]
          #   @param is_opened [Boolean]
          #   @param posted_at [String]
          #   @param posted_at_precise [String]
          #   @param raw_text [String]
          #   @param response_type [String]
          #   @param text [String]
          #   @param tips_amount [String]

          # @see Onlyfans::Models::PostListResponse::Data::List#author
          class Author < Onlyfans::Internal::Type::BaseModel
            # @!attribute id
            #
            #   @return [Integer, nil]
            optional :id, Integer

            # @!attribute _view
            #
            #   @return [String, nil]
            optional :_view, String

            # @!method initialize(id: nil, _view: nil)
            #   @param id [Integer]
            #   @param _view [String]
          end
        end
      end
    end
  end
end
