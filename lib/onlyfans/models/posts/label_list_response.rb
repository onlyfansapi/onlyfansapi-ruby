# frozen_string_literal: true

module Onlyfans
  module Models
    module Posts
      # @see Onlyfans::Resources::Posts::Labels#list
      class LabelListResponse < Onlyfans::Internal::Type::BaseModel
        # @!attribute _meta
        #
        #   @return [Onlyfans::Models::Posts::LabelListResponse::Meta, nil]
        optional :_meta, -> { Onlyfans::Models::Posts::LabelListResponse::Meta }

        # @!attribute data
        #
        #   @return [Onlyfans::Models::Posts::LabelListResponse::Data, nil]
        optional :data, -> { Onlyfans::Models::Posts::LabelListResponse::Data }

        # @!method initialize(_meta: nil, data: nil)
        #   @param _meta [Onlyfans::Models::Posts::LabelListResponse::Meta]
        #   @param data [Onlyfans::Models::Posts::LabelListResponse::Data]

        # @see Onlyfans::Models::Posts::LabelListResponse#_meta
        class Meta < Onlyfans::Internal::Type::BaseModel
          # @!attribute _cache
          #
          #   @return [Onlyfans::Models::Posts::LabelListResponse::Meta::Cache, nil]
          optional :_cache, -> { Onlyfans::Models::Posts::LabelListResponse::Meta::Cache }

          # @!attribute _credits
          #
          #   @return [Onlyfans::Models::Posts::LabelListResponse::Meta::Credits, nil]
          optional :_credits, -> { Onlyfans::Models::Posts::LabelListResponse::Meta::Credits }

          # @!attribute _rate_limits
          #
          #   @return [Onlyfans::Models::Posts::LabelListResponse::Meta::RateLimits, nil]
          optional :_rate_limits, -> { Onlyfans::Models::Posts::LabelListResponse::Meta::RateLimits }

          # @!method initialize(_cache: nil, _credits: nil, _rate_limits: nil)
          #   @param _cache [Onlyfans::Models::Posts::LabelListResponse::Meta::Cache]
          #   @param _credits [Onlyfans::Models::Posts::LabelListResponse::Meta::Credits]
          #   @param _rate_limits [Onlyfans::Models::Posts::LabelListResponse::Meta::RateLimits]

          # @see Onlyfans::Models::Posts::LabelListResponse::Meta#_cache
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

          # @see Onlyfans::Models::Posts::LabelListResponse::Meta#_credits
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

          # @see Onlyfans::Models::Posts::LabelListResponse::Meta#_rate_limits
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

        # @see Onlyfans::Models::Posts::LabelListResponse#data
        class Data < Onlyfans::Internal::Type::BaseModel
          # @!attribute hash_sort
          #
          #   @return [String, nil]
          optional :hash_sort, String, api_name: :hashSort

          # @!attribute has_more
          #
          #   @return [Boolean, nil]
          optional :has_more, Onlyfans::Internal::Type::Boolean, api_name: :hasMore

          # @!attribute list
          #
          #   @return [Array<Onlyfans::Models::Posts::LabelListResponse::Data::List>, nil]
          optional :list,
                   -> { Onlyfans::Internal::Type::ArrayOf[Onlyfans::Models::Posts::LabelListResponse::Data::List] }

          # @!attribute next_offset
          #
          #   @return [Integer, nil]
          optional :next_offset, Integer, api_name: :nextOffset

          # @!attribute order
          #
          #   @return [String, nil]
          optional :order, String

          # @!attribute sort
          #
          #   @return [String, nil]
          optional :sort, String

          # @!method initialize(hash_sort: nil, has_more: nil, list: nil, next_offset: nil, order: nil, sort: nil)
          #   @param hash_sort [String]
          #   @param has_more [Boolean]
          #   @param list [Array<Onlyfans::Models::Posts::LabelListResponse::Data::List>]
          #   @param next_offset [Integer]
          #   @param order [String]
          #   @param sort [String]

          class List < Onlyfans::Internal::Type::BaseModel
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
end
