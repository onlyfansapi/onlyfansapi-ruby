# frozen_string_literal: true

module Onlyfansapi
  module Models
    module Engagement
      module Messages
        # @see Onlyfansapi::Resources::Engagement::Messages::MassMessages#list
        class MassMessageListResponse < Onlyfansapi::Internal::Type::BaseModel
          # @!attribute _meta
          #
          #   @return [Onlyfansapi::Models::Engagement::Messages::MassMessageListResponse::Meta, nil]
          optional :_meta, -> { Onlyfansapi::Models::Engagement::Messages::MassMessageListResponse::Meta }

          # @!attribute _pagination
          #
          #   @return [Onlyfansapi::Models::Engagement::Messages::MassMessageListResponse::Pagination, nil]
          optional :_pagination,
                   -> { Onlyfansapi::Models::Engagement::Messages::MassMessageListResponse::Pagination }

          # @!attribute data
          #
          #   @return [Onlyfansapi::Models::Engagement::Messages::MassMessageListResponse::Data, nil]
          optional :data, -> { Onlyfansapi::Models::Engagement::Messages::MassMessageListResponse::Data }

          # @!method initialize(_meta: nil, _pagination: nil, data: nil)
          #   @param _meta [Onlyfansapi::Models::Engagement::Messages::MassMessageListResponse::Meta]
          #   @param _pagination [Onlyfansapi::Models::Engagement::Messages::MassMessageListResponse::Pagination]
          #   @param data [Onlyfansapi::Models::Engagement::Messages::MassMessageListResponse::Data]

          # @see Onlyfansapi::Models::Engagement::Messages::MassMessageListResponse#_meta
          class Meta < Onlyfansapi::Internal::Type::BaseModel
            # @!attribute _cache
            #
            #   @return [Onlyfansapi::Models::Engagement::Messages::MassMessageListResponse::Meta::Cache, nil]
            optional :_cache, -> { Onlyfansapi::Models::Engagement::Messages::MassMessageListResponse::Meta::Cache }

            # @!attribute _credits
            #
            #   @return [Onlyfansapi::Models::Engagement::Messages::MassMessageListResponse::Meta::Credits, nil]
            optional :_credits,
                     -> { Onlyfansapi::Models::Engagement::Messages::MassMessageListResponse::Meta::Credits }

            # @!attribute _rate_limits
            #
            #   @return [Onlyfansapi::Models::Engagement::Messages::MassMessageListResponse::Meta::RateLimits, nil]
            optional :_rate_limits,
                     -> { Onlyfansapi::Models::Engagement::Messages::MassMessageListResponse::Meta::RateLimits }

            # @!method initialize(_cache: nil, _credits: nil, _rate_limits: nil)
            #   @param _cache [Onlyfansapi::Models::Engagement::Messages::MassMessageListResponse::Meta::Cache]
            #   @param _credits [Onlyfansapi::Models::Engagement::Messages::MassMessageListResponse::Meta::Credits]
            #   @param _rate_limits [Onlyfansapi::Models::Engagement::Messages::MassMessageListResponse::Meta::RateLimits]

            # @see Onlyfansapi::Models::Engagement::Messages::MassMessageListResponse::Meta#_cache
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

            # @see Onlyfansapi::Models::Engagement::Messages::MassMessageListResponse::Meta#_credits
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

            # @see Onlyfansapi::Models::Engagement::Messages::MassMessageListResponse::Meta#_rate_limits
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

          # @see Onlyfansapi::Models::Engagement::Messages::MassMessageListResponse#_pagination
          class Pagination < Onlyfansapi::Internal::Type::BaseModel
            # @!attribute next_page
            #
            #   @return [String, nil]
            optional :next_page, String

            # @!method initialize(next_page: nil)
            #   @param next_page [String]
          end

          # @see Onlyfansapi::Models::Engagement::Messages::MassMessageListResponse#data
          class Data < Onlyfansapi::Internal::Type::BaseModel
            # @!attribute has_more
            #
            #   @return [Boolean, nil]
            optional :has_more, Onlyfansapi::Internal::Type::Boolean, api_name: :hasMore

            # @!attribute items
            #
            #   @return [Array<Onlyfansapi::Models::Engagement::Messages::MassMessageListResponse::Data::Item>, nil]
            optional :items,
                     -> { Onlyfansapi::Internal::Type::ArrayOf[Onlyfansapi::Models::Engagement::Messages::MassMessageListResponse::Data::Item] }

            # @!method initialize(has_more: nil, items: nil)
            #   @param has_more [Boolean]
            #   @param items [Array<Onlyfansapi::Models::Engagement::Messages::MassMessageListResponse::Data::Item>]

            class Item < Onlyfansapi::Internal::Type::BaseModel
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
              optional :giphy_id, String, api_name: :giphyId, nil?: true

              # @!attribute is_canceled
              #
              #   @return [Boolean, nil]
              optional :is_canceled, Onlyfansapi::Internal::Type::Boolean, api_name: :isCanceled

              # @!attribute is_free
              #
              #   @return [Boolean, nil]
              optional :is_free, Onlyfansapi::Internal::Type::Boolean, api_name: :isFree

              # @!attribute is_media_ready
              #
              #   @return [Boolean, nil]
              optional :is_media_ready, Onlyfansapi::Internal::Type::Boolean, api_name: :isMediaReady

              # @!attribute is_reported_by_me
              #
              #   @return [Boolean, nil]
              optional :is_reported_by_me, Onlyfansapi::Internal::Type::Boolean, api_name: :isReportedByMe

              # @!attribute is_tip
              #
              #   @return [Boolean, nil]
              optional :is_tip, Onlyfansapi::Internal::Type::Boolean, api_name: :isTip

              # @!attribute media
              #
              #   @return [Array<Object>, nil]
              optional :media, Onlyfansapi::Internal::Type::ArrayOf[Onlyfansapi::Internal::Type::Unknown]

              # @!attribute media_count
              #
              #   @return [Integer, nil]
              optional :media_count, Integer, api_name: :mediaCount

              # @!attribute previews
              #
              #   @return [Array<Object>, nil]
              optional :previews, Onlyfansapi::Internal::Type::ArrayOf[Onlyfansapi::Internal::Type::Unknown]

              # @!attribute raw_text
              #
              #   @return [String, nil]
              optional :raw_text, String, api_name: :rawText

              # @!attribute response_type
              #
              #   @return [String, nil]
              optional :response_type, String, api_name: :responseType

              # @!attribute sent_count
              #
              #   @return [Integer, nil]
              optional :sent_count, Integer, api_name: :sentCount

              # @!attribute template
              #
              #   @return [String, nil]
              optional :template, String

              # @!attribute text
              #
              #   @return [String, nil]
              optional :text, String

              # @!attribute unsend_seconds
              #
              #   @return [Integer, nil]
              optional :unsend_seconds, Integer, api_name: :unsendSeconds

              # @!attribute viewed_count
              #
              #   @return [Integer, nil]
              optional :viewed_count, Integer, api_name: :viewedCount

              # @!method initialize(id: nil, can_unsend: nil, date: nil, giphy_id: nil, is_canceled: nil, is_free: nil, is_media_ready: nil, is_reported_by_me: nil, is_tip: nil, media: nil, media_count: nil, previews: nil, raw_text: nil, response_type: nil, sent_count: nil, template: nil, text: nil, unsend_seconds: nil, viewed_count: nil)
              #   @param id [Integer]
              #   @param can_unsend [Boolean]
              #   @param date [String]
              #   @param giphy_id [String, nil]
              #   @param is_canceled [Boolean]
              #   @param is_free [Boolean]
              #   @param is_media_ready [Boolean]
              #   @param is_reported_by_me [Boolean]
              #   @param is_tip [Boolean]
              #   @param media [Array<Object>]
              #   @param media_count [Integer]
              #   @param previews [Array<Object>]
              #   @param raw_text [String]
              #   @param response_type [String]
              #   @param sent_count [Integer]
              #   @param template [String]
              #   @param text [String]
              #   @param unsend_seconds [Integer]
              #   @param viewed_count [Integer]
            end
          end
        end
      end
    end
  end
end
