# frozen_string_literal: true

module Onlyfansapi
  module Models
    # @see Onlyfansapi::Resources::MassMessaging#list_statistics
    class MassMessagingListStatisticsResponse < Onlyfansapi::Internal::Type::BaseModel
      # @!attribute _meta
      #
      #   @return [Onlyfansapi::Models::MassMessagingListStatisticsResponse::Meta, nil]
      optional :_meta, -> { Onlyfansapi::Models::MassMessagingListStatisticsResponse::Meta }

      # @!attribute data
      #
      #   @return [Onlyfansapi::Models::MassMessagingListStatisticsResponse::Data, nil]
      optional :data, -> { Onlyfansapi::Models::MassMessagingListStatisticsResponse::Data }

      # @!method initialize(_meta: nil, data: nil)
      #   @param _meta [Onlyfansapi::Models::MassMessagingListStatisticsResponse::Meta]
      #   @param data [Onlyfansapi::Models::MassMessagingListStatisticsResponse::Data]

      # @see Onlyfansapi::Models::MassMessagingListStatisticsResponse#_meta
      class Meta < Onlyfansapi::Internal::Type::BaseModel
        # @!attribute _cache
        #
        #   @return [Onlyfansapi::Models::MassMessagingListStatisticsResponse::Meta::Cache, nil]
        optional :_cache, -> { Onlyfansapi::Models::MassMessagingListStatisticsResponse::Meta::Cache }

        # @!attribute _credits
        #
        #   @return [Onlyfansapi::Models::MassMessagingListStatisticsResponse::Meta::Credits, nil]
        optional :_credits, -> { Onlyfansapi::Models::MassMessagingListStatisticsResponse::Meta::Credits }

        # @!attribute _rate_limits
        #
        #   @return [Onlyfansapi::Models::MassMessagingListStatisticsResponse::Meta::RateLimits, nil]
        optional :_rate_limits, -> { Onlyfansapi::Models::MassMessagingListStatisticsResponse::Meta::RateLimits }

        # @!method initialize(_cache: nil, _credits: nil, _rate_limits: nil)
        #   @param _cache [Onlyfansapi::Models::MassMessagingListStatisticsResponse::Meta::Cache]
        #   @param _credits [Onlyfansapi::Models::MassMessagingListStatisticsResponse::Meta::Credits]
        #   @param _rate_limits [Onlyfansapi::Models::MassMessagingListStatisticsResponse::Meta::RateLimits]

        # @see Onlyfansapi::Models::MassMessagingListStatisticsResponse::Meta#_cache
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

        # @see Onlyfansapi::Models::MassMessagingListStatisticsResponse::Meta#_credits
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

        # @see Onlyfansapi::Models::MassMessagingListStatisticsResponse::Meta#_rate_limits
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

      # @see Onlyfansapi::Models::MassMessagingListStatisticsResponse#data
      class Data < Onlyfansapi::Internal::Type::BaseModel
        # @!attribute has_more
        #
        #   @return [Boolean, nil]
        optional :has_more, Onlyfansapi::Internal::Type::Boolean, api_name: :hasMore

        # @!attribute list
        #
        #   @return [Array<Onlyfansapi::Models::MassMessagingListStatisticsResponse::Data::List>, nil]
        optional :list,
                 -> { Onlyfansapi::Internal::Type::ArrayOf[Onlyfansapi::Models::MassMessagingListStatisticsResponse::Data::List] }

        # @!method initialize(has_more: nil, list: nil)
        #   @param has_more [Boolean]
        #   @param list [Array<Onlyfansapi::Models::MassMessagingListStatisticsResponse::Data::List>]

        class List < Onlyfansapi::Internal::Type::BaseModel
          # @!attribute id
          #
          #   @return [Integer, nil]
          optional :id, Integer

          # @!attribute can_unsend
          #
          #   @return [Boolean, nil]
          optional :can_unsend, Onlyfansapi::Internal::Type::Boolean, api_name: :canUnsend

          # @!attribute date
          #
          #   @return [String, nil]
          optional :date, String

          # @!attribute giphy_id
          #
          #   @return [String, nil]
          optional :giphy_id, String, api_name: :giphyId

          # @!attribute has_error
          #
          #   @return [Boolean, nil]
          optional :has_error, Onlyfansapi::Internal::Type::Boolean, api_name: :hasError

          # @!attribute is_canceled
          #
          #   @return [Boolean, nil]
          optional :is_canceled, Onlyfansapi::Internal::Type::Boolean, api_name: :isCanceled

          # @!attribute is_free
          #
          #   @return [Boolean, nil]
          optional :is_free, Onlyfansapi::Internal::Type::Boolean, api_name: :isFree

          # @!attribute media_types
          #
          #   @return [String, nil]
          optional :media_types, String, api_name: :mediaTypes

          # @!attribute release_forms
          #
          #   @return [Array<Object>, nil]
          optional :release_forms,
                   Onlyfansapi::Internal::Type::ArrayOf[Onlyfansapi::Internal::Type::Unknown],
                   api_name: :releaseForms

          # @!attribute sent_count
          #
          #   @return [Integer, nil]
          optional :sent_count, Integer, api_name: :sentCount

          # @!attribute text
          #
          #   @return [String, nil]
          optional :text, String

          # @!attribute text_cropped
          #
          #   @return [String, nil]
          optional :text_cropped, String, api_name: :textCropped

          # @!attribute unsend_seconds
          #
          #   @return [Integer, nil]
          optional :unsend_seconds, Integer, api_name: :unsendSeconds

          # @!attribute viewed_count
          #
          #   @return [Integer, nil]
          optional :viewed_count, Integer, api_name: :viewedCount

          # @!method initialize(id: nil, can_unsend: nil, date: nil, giphy_id: nil, has_error: nil, is_canceled: nil, is_free: nil, media_types: nil, release_forms: nil, sent_count: nil, text: nil, text_cropped: nil, unsend_seconds: nil, viewed_count: nil)
          #   @param id [Integer]
          #   @param can_unsend [Boolean]
          #   @param date [String]
          #   @param giphy_id [String]
          #   @param has_error [Boolean]
          #   @param is_canceled [Boolean]
          #   @param is_free [Boolean]
          #   @param media_types [String]
          #   @param release_forms [Array<Object>]
          #   @param sent_count [Integer]
          #   @param text [String]
          #   @param text_cropped [String]
          #   @param unsend_seconds [Integer]
          #   @param viewed_count [Integer]
        end
      end
    end
  end
end
