# frozen_string_literal: true

module Onlyfansapi
  module Models
    module SavedForLater
      # @see Onlyfansapi::Resources::SavedForLater::Posts#list
      class PostListResponse < Onlyfansapi::Internal::Type::BaseModel
        # @!attribute _meta
        #
        #   @return [Onlyfansapi::Models::SavedForLater::PostListResponse::Meta, nil]
        optional :_meta, -> { Onlyfansapi::Models::SavedForLater::PostListResponse::Meta }

        # @!attribute data
        #
        #   @return [Onlyfansapi::Models::SavedForLater::PostListResponse::Data, nil]
        optional :data, -> { Onlyfansapi::Models::SavedForLater::PostListResponse::Data }

        # @!method initialize(_meta: nil, data: nil)
        #   @param _meta [Onlyfansapi::Models::SavedForLater::PostListResponse::Meta]
        #   @param data [Onlyfansapi::Models::SavedForLater::PostListResponse::Data]

        # @see Onlyfansapi::Models::SavedForLater::PostListResponse#_meta
        class Meta < Onlyfansapi::Internal::Type::BaseModel
          # @!attribute _cache
          #
          #   @return [Onlyfansapi::Models::SavedForLater::PostListResponse::Meta::Cache, nil]
          optional :_cache, -> { Onlyfansapi::Models::SavedForLater::PostListResponse::Meta::Cache }

          # @!attribute _credits
          #
          #   @return [Onlyfansapi::Models::SavedForLater::PostListResponse::Meta::Credits, nil]
          optional :_credits, -> { Onlyfansapi::Models::SavedForLater::PostListResponse::Meta::Credits }

          # @!attribute _rate_limits
          #
          #   @return [Onlyfansapi::Models::SavedForLater::PostListResponse::Meta::RateLimits, nil]
          optional :_rate_limits, -> { Onlyfansapi::Models::SavedForLater::PostListResponse::Meta::RateLimits }

          # @!method initialize(_cache: nil, _credits: nil, _rate_limits: nil)
          #   @param _cache [Onlyfansapi::Models::SavedForLater::PostListResponse::Meta::Cache]
          #   @param _credits [Onlyfansapi::Models::SavedForLater::PostListResponse::Meta::Credits]
          #   @param _rate_limits [Onlyfansapi::Models::SavedForLater::PostListResponse::Meta::RateLimits]

          # @see Onlyfansapi::Models::SavedForLater::PostListResponse::Meta#_cache
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

          # @see Onlyfansapi::Models::SavedForLater::PostListResponse::Meta#_credits
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

          # @see Onlyfansapi::Models::SavedForLater::PostListResponse::Meta#_rate_limits
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

        # @see Onlyfansapi::Models::SavedForLater::PostListResponse#data
        class Data < Onlyfansapi::Internal::Type::BaseModel
          # @!attribute has_more
          #
          #   @return [Boolean, nil]
          optional :has_more, Onlyfansapi::Internal::Type::Boolean, api_name: :hasMore

          # @!attribute list
          #
          #   @return [Array<Onlyfansapi::Models::SavedForLater::PostListResponse::Data::List>, nil]
          optional :list,
                   -> { Onlyfansapi::Internal::Type::ArrayOf[Onlyfansapi::Models::SavedForLater::PostListResponse::Data::List] }

          # @!attribute sync_in_process
          #
          #   @return [Boolean, nil]
          optional :sync_in_process, Onlyfansapi::Internal::Type::Boolean, api_name: :syncInProcess

          # @!method initialize(has_more: nil, list: nil, sync_in_process: nil)
          #   @param has_more [Boolean]
          #   @param list [Array<Onlyfansapi::Models::SavedForLater::PostListResponse::Data::List>]
          #   @param sync_in_process [Boolean]

          class List < Onlyfansapi::Internal::Type::BaseModel
            # @!attribute id
            #
            #   @return [Integer, nil]
            optional :id, Integer

            # @!attribute created_date_time
            #
            #   @return [String, nil]
            optional :created_date_time, String, api_name: :createdDateTime

            # @!attribute entity
            #
            #   @return [Onlyfansapi::Models::SavedForLater::PostListResponse::Data::List::Entity, nil]
            optional :entity, -> { Onlyfansapi::Models::SavedForLater::PostListResponse::Data::List::Entity }

            # @!attribute publish_date_time
            #
            #   @return [String, nil]
            optional :publish_date_time, String, api_name: :publishDateTime, nil?: true

            # @!attribute type
            #
            #   @return [String, nil]
            optional :type, String

            # @!method initialize(id: nil, created_date_time: nil, entity: nil, publish_date_time: nil, type: nil)
            #   @param id [Integer]
            #   @param created_date_time [String]
            #   @param entity [Onlyfansapi::Models::SavedForLater::PostListResponse::Data::List::Entity]
            #   @param publish_date_time [String, nil]
            #   @param type [String]

            # @see Onlyfansapi::Models::SavedForLater::PostListResponse::Data::List#entity
            class Entity < Onlyfansapi::Internal::Type::BaseModel
              # @!attribute id
              #
              #   @return [Integer, nil]
              optional :id, Integer

              # @!attribute can_delete
              #
              #   @return [Boolean, nil]
              optional :can_delete, Onlyfansapi::Internal::Type::Boolean, api_name: :canDelete

              # @!attribute can_edit
              #
              #   @return [Boolean, nil]
              optional :can_edit, Onlyfansapi::Internal::Type::Boolean, api_name: :canEdit

              # @!attribute can_toggle_favorite
              #
              #   @return [Boolean, nil]
              optional :can_toggle_favorite,
                       Onlyfansapi::Internal::Type::Boolean,
                       api_name: :canToggleFavorite

              # @!attribute can_view_media
              #
              #   @return [Boolean, nil]
              optional :can_view_media, Onlyfansapi::Internal::Type::Boolean, api_name: :canViewMedia

              # @!attribute is_markdown_disabled
              #
              #   @return [Boolean, nil]
              optional :is_markdown_disabled,
                       Onlyfansapi::Internal::Type::Boolean,
                       api_name: :isMarkdownDisabled

              # @!attribute is_media_ready
              #
              #   @return [Boolean, nil]
              optional :is_media_ready, Onlyfansapi::Internal::Type::Boolean, api_name: :isMediaReady

              # @!attribute is_opened
              #
              #   @return [Boolean, nil]
              optional :is_opened, Onlyfansapi::Internal::Type::Boolean, api_name: :isOpened

              # @!attribute is_published_with_period
              #
              #   @return [Boolean, nil]
              optional :is_published_with_period,
                       Onlyfansapi::Internal::Type::Boolean,
                       api_name: :isPublishedWithPeriod

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

              # @!method initialize(id: nil, can_delete: nil, can_edit: nil, can_toggle_favorite: nil, can_view_media: nil, is_markdown_disabled: nil, is_media_ready: nil, is_opened: nil, is_published_with_period: nil, posted_at: nil, posted_at_precise: nil, raw_text: nil, response_type: nil, text: nil, tips_amount: nil)
              #   @param id [Integer]
              #   @param can_delete [Boolean]
              #   @param can_edit [Boolean]
              #   @param can_toggle_favorite [Boolean]
              #   @param can_view_media [Boolean]
              #   @param is_markdown_disabled [Boolean]
              #   @param is_media_ready [Boolean]
              #   @param is_opened [Boolean]
              #   @param is_published_with_period [Boolean]
              #   @param posted_at [String]
              #   @param posted_at_precise [String]
              #   @param raw_text [String]
              #   @param response_type [String]
              #   @param text [String]
              #   @param tips_amount [String]
            end
          end
        end
      end
    end
  end
end
