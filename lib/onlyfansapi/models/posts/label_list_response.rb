# frozen_string_literal: true

module Onlyfansapi
  module Models
    module Posts
      # @see Onlyfansapi::Resources::Posts::Labels#list
      class LabelListResponse < Onlyfansapi::Internal::Type::BaseModel
        # @!attribute _meta
        #
        #   @return [Onlyfansapi::Models::Posts::LabelListResponse::Meta, nil]
        optional :_meta, -> { Onlyfansapi::Models::Posts::LabelListResponse::Meta }

        # @!attribute data
        #
        #   @return [Onlyfansapi::Models::Posts::LabelListResponse::Data, nil]
        optional :data, -> { Onlyfansapi::Models::Posts::LabelListResponse::Data }

        # @!method initialize(_meta: nil, data: nil)
        #   @param _meta [Onlyfansapi::Models::Posts::LabelListResponse::Meta]
        #   @param data [Onlyfansapi::Models::Posts::LabelListResponse::Data]

        # @see Onlyfansapi::Models::Posts::LabelListResponse#_meta
        class Meta < Onlyfansapi::Internal::Type::BaseModel
          # @!attribute _cache
          #
          #   @return [Onlyfansapi::Models::Posts::LabelListResponse::Meta::Cache, nil]
          optional :_cache, -> { Onlyfansapi::Models::Posts::LabelListResponse::Meta::Cache }

          # @!attribute _credits
          #
          #   @return [Onlyfansapi::Models::Posts::LabelListResponse::Meta::Credits, nil]
          optional :_credits, -> { Onlyfansapi::Models::Posts::LabelListResponse::Meta::Credits }

          # @!attribute _rate_limits
          #
          #   @return [Onlyfansapi::Models::Posts::LabelListResponse::Meta::RateLimits, nil]
          optional :_rate_limits, -> { Onlyfansapi::Models::Posts::LabelListResponse::Meta::RateLimits }

          # @!method initialize(_cache: nil, _credits: nil, _rate_limits: nil)
          #   @param _cache [Onlyfansapi::Models::Posts::LabelListResponse::Meta::Cache]
          #   @param _credits [Onlyfansapi::Models::Posts::LabelListResponse::Meta::Credits]
          #   @param _rate_limits [Onlyfansapi::Models::Posts::LabelListResponse::Meta::RateLimits]

          # @see Onlyfansapi::Models::Posts::LabelListResponse::Meta#_cache
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

          # @see Onlyfansapi::Models::Posts::LabelListResponse::Meta#_credits
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

          # @see Onlyfansapi::Models::Posts::LabelListResponse::Meta#_rate_limits
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

        # @see Onlyfansapi::Models::Posts::LabelListResponse#data
        class Data < Onlyfansapi::Internal::Type::BaseModel
          # @!attribute hash_sort
          #
          #   @return [String, nil]
          optional :hash_sort, String, api_name: :hashSort

          # @!attribute has_more
          #
          #   @return [Boolean, nil]
          optional :has_more, Onlyfansapi::Internal::Type::Boolean, api_name: :hasMore

          # @!attribute list
          #
          #   @return [Array<Onlyfansapi::Models::Posts::LabelListResponse::Data::List>, nil]
          optional :list,
                   -> { Onlyfansapi::Internal::Type::ArrayOf[Onlyfansapi::Models::Posts::LabelListResponse::Data::List] }

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
          #   @param list [Array<Onlyfansapi::Models::Posts::LabelListResponse::Data::List>]
          #   @param next_offset [Integer]
          #   @param order [String]
          #   @param sort [String]

          class List < Onlyfansapi::Internal::Type::BaseModel
            # @!attribute id
            #
            #   @return [String, nil]
            optional :id, String

            # @!attribute is_clear_in_progress
            #
            #   @return [Boolean, nil]
            optional :is_clear_in_progress, Onlyfansapi::Internal::Type::Boolean, api_name: :isClearInProgress

            # @!attribute name
            #
            #   @return [String, nil]
            optional :name, String

            # @!attribute posts
            #
            #   @return [Array<Object>, nil]
            optional :posts, Onlyfansapi::Internal::Type::ArrayOf[Onlyfansapi::Internal::Type::Unknown]

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
