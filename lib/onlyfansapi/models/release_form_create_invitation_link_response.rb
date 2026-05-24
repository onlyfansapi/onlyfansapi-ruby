# frozen_string_literal: true

module Onlyfansapi
  module Models
    # @see Onlyfansapi::Resources::ReleaseForms#create_invitation_link
    class ReleaseFormCreateInvitationLinkResponse < Onlyfansapi::Internal::Type::BaseModel
      # @!attribute _meta
      #
      #   @return [Onlyfansapi::Models::ReleaseFormCreateInvitationLinkResponse::Meta, nil]
      optional :_meta, -> { Onlyfansapi::Models::ReleaseFormCreateInvitationLinkResponse::Meta }

      # @!attribute data
      #
      #   @return [Onlyfansapi::Models::ReleaseFormCreateInvitationLinkResponse::Data, nil]
      optional :data, -> { Onlyfansapi::Models::ReleaseFormCreateInvitationLinkResponse::Data }

      # @!method initialize(_meta: nil, data: nil)
      #   @param _meta [Onlyfansapi::Models::ReleaseFormCreateInvitationLinkResponse::Meta]
      #   @param data [Onlyfansapi::Models::ReleaseFormCreateInvitationLinkResponse::Data]

      # @see Onlyfansapi::Models::ReleaseFormCreateInvitationLinkResponse#_meta
      class Meta < Onlyfansapi::Internal::Type::BaseModel
        # @!attribute _cache
        #
        #   @return [Onlyfansapi::Models::ReleaseFormCreateInvitationLinkResponse::Meta::Cache, nil]
        optional :_cache, -> { Onlyfansapi::Models::ReleaseFormCreateInvitationLinkResponse::Meta::Cache }

        # @!attribute _credits
        #
        #   @return [Onlyfansapi::Models::ReleaseFormCreateInvitationLinkResponse::Meta::Credits, nil]
        optional :_credits, -> { Onlyfansapi::Models::ReleaseFormCreateInvitationLinkResponse::Meta::Credits }

        # @!attribute _rate_limits
        #
        #   @return [Onlyfansapi::Models::ReleaseFormCreateInvitationLinkResponse::Meta::RateLimits, nil]
        optional :_rate_limits,
                 -> { Onlyfansapi::Models::ReleaseFormCreateInvitationLinkResponse::Meta::RateLimits }

        # @!method initialize(_cache: nil, _credits: nil, _rate_limits: nil)
        #   @param _cache [Onlyfansapi::Models::ReleaseFormCreateInvitationLinkResponse::Meta::Cache]
        #   @param _credits [Onlyfansapi::Models::ReleaseFormCreateInvitationLinkResponse::Meta::Credits]
        #   @param _rate_limits [Onlyfansapi::Models::ReleaseFormCreateInvitationLinkResponse::Meta::RateLimits]

        # @see Onlyfansapi::Models::ReleaseFormCreateInvitationLinkResponse::Meta#_cache
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

        # @see Onlyfansapi::Models::ReleaseFormCreateInvitationLinkResponse::Meta#_credits
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

        # @see Onlyfansapi::Models::ReleaseFormCreateInvitationLinkResponse::Meta#_rate_limits
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

      # @see Onlyfansapi::Models::ReleaseFormCreateInvitationLinkResponse#data
      class Data < Onlyfansapi::Internal::Type::BaseModel
        # @!attribute id
        #
        #   @return [Integer, nil]
        optional :id, Integer

        # @!attribute token
        #
        #   @return [String, nil]
        optional :token, String

        # @!attribute date
        #
        #   @return [String, nil]
        optional :date, String

        # @!attribute invitation_url
        #
        #   @return [String, nil]
        optional :invitation_url, String, api_name: :invitationUrl

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
        #   @return [Onlyfansapi::Models::ReleaseFormCreateInvitationLinkResponse::Data::User, nil]
        optional :user, -> { Onlyfansapi::Models::ReleaseFormCreateInvitationLinkResponse::Data::User }

        # @!method initialize(id: nil, token: nil, date: nil, invitation_url: nil, name: nil, type: nil, user: nil)
        #   @param id [Integer]
        #   @param token [String]
        #   @param date [String]
        #   @param invitation_url [String]
        #   @param name [String]
        #   @param type [String]
        #   @param user [Onlyfansapi::Models::ReleaseFormCreateInvitationLinkResponse::Data::User]

        # @see Onlyfansapi::Models::ReleaseFormCreateInvitationLinkResponse::Data#user
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
          #   @return [Onlyfansapi::Models::ReleaseFormCreateInvitationLinkResponse::Data::User::AvatarThumbs, nil]
          optional :avatar_thumbs,
                   -> { Onlyfansapi::Models::ReleaseFormCreateInvitationLinkResponse::Data::User::AvatarThumbs },
                   api_name: :avatarThumbs

          # @!attribute is_active
          #
          #   @return [Boolean, nil]
          optional :is_active, Onlyfansapi::Internal::Type::Boolean, api_name: :isActive

          # @!attribute is_deleted
          #
          #   @return [Boolean, nil]
          optional :is_deleted, Onlyfansapi::Internal::Type::Boolean, api_name: :isDeleted

          # @!attribute is_verified
          #
          #   @return [Boolean, nil]
          optional :is_verified, Onlyfansapi::Internal::Type::Boolean, api_name: :isVerified

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

          # @!method initialize(id: nil, avatar: nil, avatar_thumbs: nil, is_active: nil, is_deleted: nil, is_verified: nil, name: nil, username: nil, view: nil)
          #   @param id [Integer]
          #   @param avatar [String]
          #   @param avatar_thumbs [Onlyfansapi::Models::ReleaseFormCreateInvitationLinkResponse::Data::User::AvatarThumbs]
          #   @param is_active [Boolean]
          #   @param is_deleted [Boolean]
          #   @param is_verified [Boolean]
          #   @param name [String]
          #   @param username [String]
          #   @param view [String]

          # @see Onlyfansapi::Models::ReleaseFormCreateInvitationLinkResponse::Data::User#avatar_thumbs
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
