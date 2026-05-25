# frozen_string_literal: true

module Onlyfans
  module Models
    module Posts
      # @see Onlyfans::Resources::Posts::Comments#list
      class CommentListResponse < Onlyfans::Internal::Type::BaseModel
        # @!attribute _meta
        #
        #   @return [Onlyfans::Models::Posts::CommentListResponse::Meta, nil]
        optional :_meta, -> { Onlyfans::Models::Posts::CommentListResponse::Meta }

        # @!attribute data
        #
        #   @return [Onlyfans::Models::Posts::CommentListResponse::Data, nil]
        optional :data, -> { Onlyfans::Models::Posts::CommentListResponse::Data }

        # @!method initialize(_meta: nil, data: nil)
        #   @param _meta [Onlyfans::Models::Posts::CommentListResponse::Meta]
        #   @param data [Onlyfans::Models::Posts::CommentListResponse::Data]

        # @see Onlyfans::Models::Posts::CommentListResponse#_meta
        class Meta < Onlyfans::Internal::Type::BaseModel
          # @!attribute _cache
          #
          #   @return [Onlyfans::Models::Posts::CommentListResponse::Meta::Cache, nil]
          optional :_cache, -> { Onlyfans::Models::Posts::CommentListResponse::Meta::Cache }

          # @!attribute _credits
          #
          #   @return [Onlyfans::Models::Posts::CommentListResponse::Meta::Credits, nil]
          optional :_credits, -> { Onlyfans::Models::Posts::CommentListResponse::Meta::Credits }

          # @!attribute _rate_limits
          #
          #   @return [Onlyfans::Models::Posts::CommentListResponse::Meta::RateLimits, nil]
          optional :_rate_limits, -> { Onlyfans::Models::Posts::CommentListResponse::Meta::RateLimits }

          # @!method initialize(_cache: nil, _credits: nil, _rate_limits: nil)
          #   @param _cache [Onlyfans::Models::Posts::CommentListResponse::Meta::Cache]
          #   @param _credits [Onlyfans::Models::Posts::CommentListResponse::Meta::Credits]
          #   @param _rate_limits [Onlyfans::Models::Posts::CommentListResponse::Meta::RateLimits]

          # @see Onlyfans::Models::Posts::CommentListResponse::Meta#_cache
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

          # @see Onlyfans::Models::Posts::CommentListResponse::Meta#_credits
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

          # @see Onlyfans::Models::Posts::CommentListResponse::Meta#_rate_limits
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

        # @see Onlyfans::Models::Posts::CommentListResponse#data
        class Data < Onlyfans::Internal::Type::BaseModel
          # @!attribute has_more
          #
          #   @return [Boolean, nil]
          optional :has_more, Onlyfans::Internal::Type::Boolean, api_name: :hasMore

          # @!attribute list
          #
          #   @return [Array<Onlyfans::Models::Posts::CommentListResponse::Data::List>, nil]
          optional :list,
                   -> { Onlyfans::Internal::Type::ArrayOf[Onlyfans::Models::Posts::CommentListResponse::Data::List] }

          # @!attribute next_offset
          #
          #   @return [Integer, nil]
          optional :next_offset, Integer, api_name: :nextOffset

          # @!method initialize(has_more: nil, list: nil, next_offset: nil)
          #   @param has_more [Boolean]
          #   @param list [Array<Onlyfans::Models::Posts::CommentListResponse::Data::List>]
          #   @param next_offset [Integer]

          class List < Onlyfans::Internal::Type::BaseModel
            # @!attribute id
            #
            #   @return [Integer, nil]
            optional :id, Integer

            # @!attribute author
            #
            #   @return [Onlyfans::Models::Posts::CommentListResponse::Data::List::Author, nil]
            optional :author, -> { Onlyfans::Models::Posts::CommentListResponse::Data::List::Author }

            # @!attribute can_like
            #
            #   @return [Boolean, nil]
            optional :can_like, Onlyfans::Internal::Type::Boolean, api_name: :canLike

            # @!attribute changed_at
            #
            #   @return [String, nil]
            optional :changed_at, String, api_name: :changedAt

            # @!attribute giphy_id
            #
            #   @return [String, nil]
            optional :giphy_id, String, api_name: :giphyId, nil?: true

            # @!attribute is_liked
            #
            #   @return [Boolean, nil]
            optional :is_liked, Onlyfans::Internal::Type::Boolean, api_name: :isLiked

            # @!attribute is_liked_by_author
            #
            #   @return [Boolean, nil]
            optional :is_liked_by_author, Onlyfans::Internal::Type::Boolean, api_name: :isLikedByAuthor

            # @!attribute is_pinned
            #
            #   @return [Boolean, nil]
            optional :is_pinned, Onlyfans::Internal::Type::Boolean, api_name: :isPinned

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
            #   @param author [Onlyfans::Models::Posts::CommentListResponse::Data::List::Author]
            #   @param can_like [Boolean]
            #   @param changed_at [String]
            #   @param giphy_id [String, nil]
            #   @param is_liked [Boolean]
            #   @param is_liked_by_author [Boolean]
            #   @param is_pinned [Boolean]
            #   @param likes_count [Integer]
            #   @param posted_at [String]
            #   @param text [String]

            # @see Onlyfans::Models::Posts::CommentListResponse::Data::List#author
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
end
