# frozen_string_literal: true

module Onlyfansapi
  module Models
    module Posts
      # @see Onlyfansapi::Resources::Posts::Comments#list
      class CommentListResponse < Onlyfansapi::Internal::Type::BaseModel
        # @!attribute _meta
        #
        #   @return [Onlyfansapi::Models::Posts::CommentListResponse::Meta, nil]
        optional :_meta, -> { Onlyfansapi::Models::Posts::CommentListResponse::Meta }

        # @!attribute data
        #
        #   @return [Onlyfansapi::Models::Posts::CommentListResponse::Data, nil]
        optional :data, -> { Onlyfansapi::Models::Posts::CommentListResponse::Data }

        # @!method initialize(_meta: nil, data: nil)
        #   @param _meta [Onlyfansapi::Models::Posts::CommentListResponse::Meta]
        #   @param data [Onlyfansapi::Models::Posts::CommentListResponse::Data]

        # @see Onlyfansapi::Models::Posts::CommentListResponse#_meta
        class Meta < Onlyfansapi::Internal::Type::BaseModel
          # @!attribute _cache
          #
          #   @return [Onlyfansapi::Models::Posts::CommentListResponse::Meta::Cache, nil]
          optional :_cache, -> { Onlyfansapi::Models::Posts::CommentListResponse::Meta::Cache }

          # @!attribute _credits
          #
          #   @return [Onlyfansapi::Models::Posts::CommentListResponse::Meta::Credits, nil]
          optional :_credits, -> { Onlyfansapi::Models::Posts::CommentListResponse::Meta::Credits }

          # @!attribute _rate_limits
          #
          #   @return [Onlyfansapi::Models::Posts::CommentListResponse::Meta::RateLimits, nil]
          optional :_rate_limits, -> { Onlyfansapi::Models::Posts::CommentListResponse::Meta::RateLimits }

          # @!method initialize(_cache: nil, _credits: nil, _rate_limits: nil)
          #   @param _cache [Onlyfansapi::Models::Posts::CommentListResponse::Meta::Cache]
          #   @param _credits [Onlyfansapi::Models::Posts::CommentListResponse::Meta::Credits]
          #   @param _rate_limits [Onlyfansapi::Models::Posts::CommentListResponse::Meta::RateLimits]

          # @see Onlyfansapi::Models::Posts::CommentListResponse::Meta#_cache
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

          # @see Onlyfansapi::Models::Posts::CommentListResponse::Meta#_credits
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

          # @see Onlyfansapi::Models::Posts::CommentListResponse::Meta#_rate_limits
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

        # @see Onlyfansapi::Models::Posts::CommentListResponse#data
        class Data < Onlyfansapi::Internal::Type::BaseModel
          # @!attribute has_more
          #
          #   @return [Boolean, nil]
          optional :has_more, Onlyfansapi::Internal::Type::Boolean, api_name: :hasMore

          # @!attribute list
          #
          #   @return [Array<Onlyfansapi::Models::Posts::CommentListResponse::Data::List>, nil]
          optional :list,
                   -> { Onlyfansapi::Internal::Type::ArrayOf[Onlyfansapi::Models::Posts::CommentListResponse::Data::List] }

          # @!attribute next_offset
          #
          #   @return [Integer, nil]
          optional :next_offset, Integer, api_name: :nextOffset

          # @!method initialize(has_more: nil, list: nil, next_offset: nil)
          #   @param has_more [Boolean]
          #   @param list [Array<Onlyfansapi::Models::Posts::CommentListResponse::Data::List>]
          #   @param next_offset [Integer]

          class List < Onlyfansapi::Internal::Type::BaseModel
            # @!attribute id
            #
            #   @return [Integer, nil]
            optional :id, Integer

            # @!attribute author
            #
            #   @return [Onlyfansapi::Models::Posts::CommentListResponse::Data::List::Author, nil]
            optional :author, -> { Onlyfansapi::Models::Posts::CommentListResponse::Data::List::Author }

            # @!attribute can_like
            #
            #   @return [Boolean, nil]
            optional :can_like, Onlyfansapi::Internal::Type::Boolean, api_name: :canLike

            # @!attribute changed_at
            #
            #   @return [String, nil]
            optional :changed_at, String, api_name: :changedAt

            # @!attribute giphy_id
            #
            #   @return [String, nil]
            optional :giphy_id, String, api_name: :giphyId

            # @!attribute is_liked
            #
            #   @return [Boolean, nil]
            optional :is_liked, Onlyfansapi::Internal::Type::Boolean, api_name: :isLiked

            # @!attribute is_liked_by_author
            #
            #   @return [Boolean, nil]
            optional :is_liked_by_author, Onlyfansapi::Internal::Type::Boolean, api_name: :isLikedByAuthor

            # @!attribute is_pinned
            #
            #   @return [Boolean, nil]
            optional :is_pinned, Onlyfansapi::Internal::Type::Boolean, api_name: :isPinned

            # @!attribute likes_count
            #
            #   @return [Integer, nil]
            optional :likes_count, Integer, api_name: :likesCount

            # @!attribute posted_at
            #
            #   @return [String, nil]
            optional :posted_at, String, api_name: :postedAt

            # @!attribute text
            #
            #   @return [String, nil]
            optional :text, String

            # @!method initialize(id: nil, author: nil, can_like: nil, changed_at: nil, giphy_id: nil, is_liked: nil, is_liked_by_author: nil, is_pinned: nil, likes_count: nil, posted_at: nil, text: nil)
            #   @param id [Integer]
            #   @param author [Onlyfansapi::Models::Posts::CommentListResponse::Data::List::Author]
            #   @param can_like [Boolean]
            #   @param changed_at [String]
            #   @param giphy_id [String]
            #   @param is_liked [Boolean]
            #   @param is_liked_by_author [Boolean]
            #   @param is_pinned [Boolean]
            #   @param likes_count [Integer]
            #   @param posted_at [String]
            #   @param text [String]

            # @see Onlyfansapi::Models::Posts::CommentListResponse::Data::List#author
            class Author < Onlyfansapi::Internal::Type::BaseModel
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
end
