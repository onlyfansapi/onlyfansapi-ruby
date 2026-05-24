# frozen_string_literal: true

module Onlyfansapi
  module Models
    # @see Onlyfansapi::Resources::ReleaseForms#list_taggable_users
    class ReleaseFormListTaggableUsersResponse < Onlyfansapi::Internal::Type::BaseModel
      # @!attribute _meta
      #
      #   @return [Onlyfansapi::Models::ReleaseFormListTaggableUsersResponse::Meta, nil]
      optional :_meta, -> { Onlyfansapi::Models::ReleaseFormListTaggableUsersResponse::Meta }

      # @!attribute _pagination
      #
      #   @return [Onlyfansapi::Models::ReleaseFormListTaggableUsersResponse::Pagination, nil]
      optional :_pagination, -> { Onlyfansapi::Models::ReleaseFormListTaggableUsersResponse::Pagination }

      # @!attribute data
      #
      #   @return [Onlyfansapi::Models::ReleaseFormListTaggableUsersResponse::Data, nil]
      optional :data, -> { Onlyfansapi::Models::ReleaseFormListTaggableUsersResponse::Data }

      # @!method initialize(_meta: nil, _pagination: nil, data: nil)
      #   @param _meta [Onlyfansapi::Models::ReleaseFormListTaggableUsersResponse::Meta]
      #   @param _pagination [Onlyfansapi::Models::ReleaseFormListTaggableUsersResponse::Pagination]
      #   @param data [Onlyfansapi::Models::ReleaseFormListTaggableUsersResponse::Data]

      # @see Onlyfansapi::Models::ReleaseFormListTaggableUsersResponse#_meta
      class Meta < Onlyfansapi::Internal::Type::BaseModel
        # @!attribute _cache
        #
        #   @return [Onlyfansapi::Models::ReleaseFormListTaggableUsersResponse::Meta::Cache, nil]
        optional :_cache, -> { Onlyfansapi::Models::ReleaseFormListTaggableUsersResponse::Meta::Cache }

        # @!attribute _credits
        #
        #   @return [Onlyfansapi::Models::ReleaseFormListTaggableUsersResponse::Meta::Credits, nil]
        optional :_credits, -> { Onlyfansapi::Models::ReleaseFormListTaggableUsersResponse::Meta::Credits }

        # @!attribute _rate_limits
        #
        #   @return [Onlyfansapi::Models::ReleaseFormListTaggableUsersResponse::Meta::RateLimits, nil]
        optional :_rate_limits, -> { Onlyfansapi::Models::ReleaseFormListTaggableUsersResponse::Meta::RateLimits }

        # @!method initialize(_cache: nil, _credits: nil, _rate_limits: nil)
        #   @param _cache [Onlyfansapi::Models::ReleaseFormListTaggableUsersResponse::Meta::Cache]
        #   @param _credits [Onlyfansapi::Models::ReleaseFormListTaggableUsersResponse::Meta::Credits]
        #   @param _rate_limits [Onlyfansapi::Models::ReleaseFormListTaggableUsersResponse::Meta::RateLimits]

        # @see Onlyfansapi::Models::ReleaseFormListTaggableUsersResponse::Meta#_cache
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

        # @see Onlyfansapi::Models::ReleaseFormListTaggableUsersResponse::Meta#_credits
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

        # @see Onlyfansapi::Models::ReleaseFormListTaggableUsersResponse::Meta#_rate_limits
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

      # @see Onlyfansapi::Models::ReleaseFormListTaggableUsersResponse#_pagination
      class Pagination < Onlyfansapi::Internal::Type::BaseModel
        # @!attribute next_page
        #
        #   @return [String, nil]
        optional :next_page, String

        # @!method initialize(next_page: nil)
        #   @param next_page [String]
      end

      # @see Onlyfansapi::Models::ReleaseFormListTaggableUsersResponse#data
      class Data < Onlyfansapi::Internal::Type::BaseModel
        # @!attribute has_more
        #
        #   @return [Boolean, nil]
        optional :has_more, Onlyfansapi::Internal::Type::Boolean, api_name: :hasMore

        # @!attribute items
        #
        #   @return [Array<Onlyfansapi::Models::ReleaseFormListTaggableUsersResponse::Data::Item>, nil]
        optional :items,
                 -> { Onlyfansapi::Internal::Type::ArrayOf[Onlyfansapi::Models::ReleaseFormListTaggableUsersResponse::Data::Item] }

        # @!method initialize(has_more: nil, items: nil)
        #   @param has_more [Boolean]
        #   @param items [Array<Onlyfansapi::Models::ReleaseFormListTaggableUsersResponse::Data::Item>]

        class Item < Onlyfansapi::Internal::Type::BaseModel
          # @!attribute id
          #
          #   @return [Integer, nil]
          optional :id, Integer

          # @!attribute name
          #
          #   @return [String, nil]
          optional :name, String

          # @!attribute type
          #
          #   @return [String, nil]
          optional :type, String

          # @!attribute user
          #
          #   @return [Onlyfansapi::Models::ReleaseFormListTaggableUsersResponse::Data::Item::User, nil]
          optional :user, -> { Onlyfansapi::Models::ReleaseFormListTaggableUsersResponse::Data::Item::User }

          # @!method initialize(id: nil, name: nil, type: nil, user: nil)
          #   @param id [Integer]
          #   @param name [String]
          #   @param type [String]
          #   @param user [Onlyfansapi::Models::ReleaseFormListTaggableUsersResponse::Data::Item::User]

          # @see Onlyfansapi::Models::ReleaseFormListTaggableUsersResponse::Data::Item#user
          class User < Onlyfansapi::Internal::Type::BaseModel
            # @!attribute id
            #
            #   @return [Integer, nil]
            optional :id, Integer

            # @!attribute avatar
            #
            #   @return [String, nil]
            optional :avatar, String

            # @!attribute avatar_thumbs
            #
            #   @return [Onlyfansapi::Models::ReleaseFormListTaggableUsersResponse::Data::Item::User::AvatarThumbs, nil]
            optional :avatar_thumbs,
                     -> { Onlyfansapi::Models::ReleaseFormListTaggableUsersResponse::Data::Item::User::AvatarThumbs },
                     api_name: :avatarThumbs

            # @!attribute hidden_for_rf
            #
            #   @return [Boolean, nil]
            optional :hidden_for_rf, Onlyfansapi::Internal::Type::Boolean, api_name: :hiddenForRf

            # @!attribute is_from_guest
            #
            #   @return [Boolean, nil]
            optional :is_from_guest, Onlyfansapi::Internal::Type::Boolean, api_name: :isFromGuest

            # @!attribute is_verified
            #
            #   @return [Boolean, nil]
            optional :is_verified, Onlyfansapi::Internal::Type::Boolean, api_name: :isVerified

            # @!attribute iv_status
            #
            #   @return [String, nil]
            optional :iv_status, String, api_name: :ivStatus

            # @!attribute name
            #
            #   @return [String, nil]
            optional :name, String

            # @!attribute username
            #
            #   @return [String, nil]
            optional :username, String

            # @!attribute view
            #
            #   @return [String, nil]
            optional :view, String

            # @!method initialize(id: nil, avatar: nil, avatar_thumbs: nil, hidden_for_rf: nil, is_from_guest: nil, is_verified: nil, iv_status: nil, name: nil, username: nil, view: nil)
            #   @param id [Integer]
            #   @param avatar [String]
            #   @param avatar_thumbs [Onlyfansapi::Models::ReleaseFormListTaggableUsersResponse::Data::Item::User::AvatarThumbs]
            #   @param hidden_for_rf [Boolean]
            #   @param is_from_guest [Boolean]
            #   @param is_verified [Boolean]
            #   @param iv_status [String]
            #   @param name [String]
            #   @param username [String]
            #   @param view [String]

            # @see Onlyfansapi::Models::ReleaseFormListTaggableUsersResponse::Data::Item::User#avatar_thumbs
            class AvatarThumbs < Onlyfansapi::Internal::Type::BaseModel
              # @!attribute c144
              #
              #   @return [String, nil]
              optional :c144, String

              # @!attribute c50
              #
              #   @return [String, nil]
              optional :c50, String

              # @!method initialize(c144: nil, c50: nil)
              #   @param c144 [String]
              #   @param c50 [String]
            end
          end
        end
      end
    end
  end
end
