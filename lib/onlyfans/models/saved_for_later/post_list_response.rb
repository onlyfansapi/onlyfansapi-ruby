# frozen_string_literal: true

module Onlyfans
  module Models
    module SavedForLater
      # @see Onlyfans::Resources::SavedForLater::Posts#list
      class PostListResponse < Onlyfans::Internal::Type::BaseModel
        # @!attribute _meta
        #
        #   @return [Onlyfans::Models::SavedForLater::PostListResponse::Meta, nil]
        optional :_meta, -> { Onlyfans::Models::SavedForLater::PostListResponse::Meta }

        # @!attribute data
        #
        #   @return [Onlyfans::Models::SavedForLater::PostListResponse::Data, nil]
        optional :data, -> { Onlyfans::Models::SavedForLater::PostListResponse::Data }

        # @!method initialize(_meta: nil, data: nil)
        #   @param _meta [Onlyfans::Models::SavedForLater::PostListResponse::Meta]
        #   @param data [Onlyfans::Models::SavedForLater::PostListResponse::Data]

        # @see Onlyfans::Models::SavedForLater::PostListResponse#_meta
        class Meta < Onlyfans::Internal::Type::BaseModel
          # @!attribute _cache
          #
          #   @return [Onlyfans::Models::SavedForLater::PostListResponse::Meta::Cache, nil]
          optional :_cache, -> { Onlyfans::Models::SavedForLater::PostListResponse::Meta::Cache }

          # @!attribute _credits
          #
          #   @return [Onlyfans::Models::SavedForLater::PostListResponse::Meta::Credits, nil]
          optional :_credits, -> { Onlyfans::Models::SavedForLater::PostListResponse::Meta::Credits }

          # @!attribute _rate_limits
          #
          #   @return [Onlyfans::Models::SavedForLater::PostListResponse::Meta::RateLimits, nil]
          optional :_rate_limits, -> { Onlyfans::Models::SavedForLater::PostListResponse::Meta::RateLimits }

          # @!method initialize(_cache: nil, _credits: nil, _rate_limits: nil)
          #   @param _cache [Onlyfans::Models::SavedForLater::PostListResponse::Meta::Cache]
          #   @param _credits [Onlyfans::Models::SavedForLater::PostListResponse::Meta::Credits]
          #   @param _rate_limits [Onlyfans::Models::SavedForLater::PostListResponse::Meta::RateLimits]

          # @see Onlyfans::Models::SavedForLater::PostListResponse::Meta#_cache
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

          # @see Onlyfans::Models::SavedForLater::PostListResponse::Meta#_credits
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

          # @see Onlyfans::Models::SavedForLater::PostListResponse::Meta#_rate_limits
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

        # @see Onlyfans::Models::SavedForLater::PostListResponse#data
        class Data < Onlyfans::Internal::Type::BaseModel
          # @!attribute has_more
          #
          #   @return [Boolean, nil]
          optional :has_more, Onlyfans::Internal::Type::Boolean, api_name: :hasMore

          # @!attribute list
          #
          #   @return [Array<Onlyfans::Models::SavedForLater::PostListResponse::Data::List>, nil]
          optional :list,
                   -> { Onlyfans::Internal::Type::ArrayOf[Onlyfans::Models::SavedForLater::PostListResponse::Data::List] }

          # @!attribute sync_in_process
          #
          #   @return [Boolean, nil]
          optional :sync_in_process, Onlyfans::Internal::Type::Boolean, api_name: :syncInProcess

          # @!method initialize(has_more: nil, list: nil, sync_in_process: nil)
          #   @param has_more [Boolean]
          #   @param list [Array<Onlyfans::Models::SavedForLater::PostListResponse::Data::List>]
          #   @param sync_in_process [Boolean]

          class List < Onlyfans::Internal::Type::BaseModel
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
            #   @return [Onlyfans::Models::SavedForLater::PostListResponse::Data::List::Entity, nil]
            optional :entity, -> { Onlyfans::Models::SavedForLater::PostListResponse::Data::List::Entity }

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
            #   @param entity [Onlyfans::Models::SavedForLater::PostListResponse::Data::List::Entity]
            #   @param publish_date_time [String, nil]
            #   @param type [String]

            # @see Onlyfans::Models::SavedForLater::PostListResponse::Data::List#entity
            class Entity < Onlyfans::Internal::Type::BaseModel
              # @!attribute id
              #
              #   @return [Integer, nil]
              optional :id, Integer

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

              # @!attribute is_published_with_period
              #
              #   @return [Boolean, nil]
              optional :is_published_with_period,
                       Onlyfans::Internal::Type::Boolean,
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
