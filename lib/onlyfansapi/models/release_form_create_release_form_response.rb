# frozen_string_literal: true

module Onlyfansapi
  module Models
    # @see Onlyfansapi::Resources::ReleaseForms#create_release_form
    class ReleaseFormCreateReleaseFormResponse < Onlyfansapi::Internal::Type::BaseModel
      # @!attribute _meta
      #
      #   @return [Onlyfansapi::Models::ReleaseFormCreateReleaseFormResponse::Meta, nil]
      optional :_meta, -> { Onlyfansapi::Models::ReleaseFormCreateReleaseFormResponse::Meta }

      # @!attribute data
      #
      #   @return [Onlyfansapi::Models::ReleaseFormCreateReleaseFormResponse::Data, nil]
      optional :data, -> { Onlyfansapi::Models::ReleaseFormCreateReleaseFormResponse::Data }

      # @!method initialize(_meta: nil, data: nil)
      #   @param _meta [Onlyfansapi::Models::ReleaseFormCreateReleaseFormResponse::Meta]
      #   @param data [Onlyfansapi::Models::ReleaseFormCreateReleaseFormResponse::Data]

      # @see Onlyfansapi::Models::ReleaseFormCreateReleaseFormResponse#_meta
      class Meta < Onlyfansapi::Internal::Type::BaseModel
        # @!attribute _cache
        #
        #   @return [Onlyfansapi::Models::ReleaseFormCreateReleaseFormResponse::Meta::Cache, nil]
        optional :_cache, -> { Onlyfansapi::Models::ReleaseFormCreateReleaseFormResponse::Meta::Cache }

        # @!attribute _credits
        #
        #   @return [Onlyfansapi::Models::ReleaseFormCreateReleaseFormResponse::Meta::Credits, nil]
        optional :_credits, -> { Onlyfansapi::Models::ReleaseFormCreateReleaseFormResponse::Meta::Credits }

        # @!attribute _rate_limits
        #
        #   @return [Onlyfansapi::Models::ReleaseFormCreateReleaseFormResponse::Meta::RateLimits, nil]
        optional :_rate_limits, -> { Onlyfansapi::Models::ReleaseFormCreateReleaseFormResponse::Meta::RateLimits }

        # @!method initialize(_cache: nil, _credits: nil, _rate_limits: nil)
        #   @param _cache [Onlyfansapi::Models::ReleaseFormCreateReleaseFormResponse::Meta::Cache]
        #   @param _credits [Onlyfansapi::Models::ReleaseFormCreateReleaseFormResponse::Meta::Credits]
        #   @param _rate_limits [Onlyfansapi::Models::ReleaseFormCreateReleaseFormResponse::Meta::RateLimits]

        # @see Onlyfansapi::Models::ReleaseFormCreateReleaseFormResponse::Meta#_cache
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

        # @see Onlyfansapi::Models::ReleaseFormCreateReleaseFormResponse::Meta#_credits
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

        # @see Onlyfansapi::Models::ReleaseFormCreateReleaseFormResponse::Meta#_rate_limits
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

      # @see Onlyfansapi::Models::ReleaseFormCreateReleaseFormResponse#data
      class Data < Onlyfansapi::Internal::Type::BaseModel
        # @!attribute id
        #
        #   @return [Integer, nil]
        optional :id, Integer

        # @!attribute approved_at
        #
        #   @return [String, nil]
        optional :approved_at, String, api_name: :approvedAt, nil?: true

        # @!attribute code
        #
        #   @return [String, nil]
        optional :code, String

        # @!attribute created_at
        #
        #   @return [String, nil]
        optional :created_at, String, api_name: :createdAt

        # @!attribute name
        #
        #   @return [String, nil]
        optional :name, String

        # @!attribute signature
        #
        #   @return [String, nil]
        optional :signature, String

        # @!attribute signed
        #
        #   @return [Array<Object>, nil]
        optional :signed, Onlyfansapi::Internal::Type::ArrayOf[Onlyfansapi::Internal::Type::Unknown]

        # @!attribute signers_count
        #
        #   @return [Integer, nil]
        optional :signers_count, Integer, api_name: :signersCount

        # @!attribute submission_url
        #
        #   @return [String, nil]
        optional :submission_url, String, api_name: :submissionUrl

        # @!attribute type
        #
        #   @return [String, nil]
        optional :type, String

        # @!attribute user
        #
        #   @return [Onlyfansapi::Models::ReleaseFormCreateReleaseFormResponse::Data::User, nil]
        optional :user, -> { Onlyfansapi::Models::ReleaseFormCreateReleaseFormResponse::Data::User }

        # @!method initialize(id: nil, approved_at: nil, code: nil, created_at: nil, name: nil, signature: nil, signed: nil, signers_count: nil, submission_url: nil, type: nil, user: nil)
        #   @param id [Integer]
        #   @param approved_at [String, nil]
        #   @param code [String]
        #   @param created_at [String]
        #   @param name [String]
        #   @param signature [String]
        #   @param signed [Array<Object>]
        #   @param signers_count [Integer]
        #   @param submission_url [String]
        #   @param type [String]
        #   @param user [Onlyfansapi::Models::ReleaseFormCreateReleaseFormResponse::Data::User]

        # @see Onlyfansapi::Models::ReleaseFormCreateReleaseFormResponse::Data#user
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
          #   @return [Onlyfansapi::Models::ReleaseFormCreateReleaseFormResponse::Data::User::AvatarThumbs, nil]
          optional :avatar_thumbs,
                   -> { Onlyfansapi::Models::ReleaseFormCreateReleaseFormResponse::Data::User::AvatarThumbs },
                   api_name: :avatarThumbs

          # @!attribute can_pay_internal
          #
          #   @return [Boolean, nil]
          optional :can_pay_internal, Onlyfansapi::Internal::Type::Boolean, api_name: :canPayInternal

          # @!attribute can_trial_send
          #
          #   @return [Boolean, nil]
          optional :can_trial_send, Onlyfansapi::Internal::Type::Boolean, api_name: :canTrialSend

          # @!attribute header
          #
          #   @return [String, nil]
          optional :header, String

          # @!attribute header_size
          #
          #   @return [Onlyfansapi::Models::ReleaseFormCreateReleaseFormResponse::Data::User::HeaderSize, nil]
          optional :header_size,
                   -> { Onlyfansapi::Models::ReleaseFormCreateReleaseFormResponse::Data::User::HeaderSize },
                   api_name: :headerSize

          # @!attribute header_thumbs
          #
          #   @return [Onlyfansapi::Models::ReleaseFormCreateReleaseFormResponse::Data::User::HeaderThumbs, nil]
          optional :header_thumbs,
                   -> { Onlyfansapi::Models::ReleaseFormCreateReleaseFormResponse::Data::User::HeaderThumbs },
                   api_name: :headerThumbs

          # @!attribute is_verified
          #
          #   @return [Boolean, nil]
          optional :is_verified, Onlyfansapi::Internal::Type::Boolean, api_name: :isVerified

          # @!attribute name
          #
          #   @return [String, nil]
          optional :name, String

          # @!attribute subscribe_price
          #
          #   @return [Float, nil]
          optional :subscribe_price, Float, api_name: :subscribePrice

          # @!attribute tips_enabled
          #
          #   @return [Boolean, nil]
          optional :tips_enabled, Onlyfansapi::Internal::Type::Boolean, api_name: :tipsEnabled

          # @!attribute tips_max
          #
          #   @return [Integer, nil]
          optional :tips_max, Integer, api_name: :tipsMax

          # @!attribute tips_min
          #
          #   @return [Integer, nil]
          optional :tips_min, Integer, api_name: :tipsMin

          # @!attribute tips_min_internal
          #
          #   @return [Integer, nil]
          optional :tips_min_internal, Integer, api_name: :tipsMinInternal

          # @!attribute username
          #
          #   @return [String, nil]
          optional :username, String

          # @!attribute view
          #
          #   @return [String, nil]
          optional :view, String

          # @!method initialize(id: nil, avatar: nil, avatar_thumbs: nil, can_pay_internal: nil, can_trial_send: nil, header: nil, header_size: nil, header_thumbs: nil, is_verified: nil, name: nil, subscribe_price: nil, tips_enabled: nil, tips_max: nil, tips_min: nil, tips_min_internal: nil, username: nil, view: nil)
          #   @param id [Integer]
          #   @param avatar [String]
          #   @param avatar_thumbs [Onlyfansapi::Models::ReleaseFormCreateReleaseFormResponse::Data::User::AvatarThumbs]
          #   @param can_pay_internal [Boolean]
          #   @param can_trial_send [Boolean]
          #   @param header [String]
          #   @param header_size [Onlyfansapi::Models::ReleaseFormCreateReleaseFormResponse::Data::User::HeaderSize]
          #   @param header_thumbs [Onlyfansapi::Models::ReleaseFormCreateReleaseFormResponse::Data::User::HeaderThumbs]
          #   @param is_verified [Boolean]
          #   @param name [String]
          #   @param subscribe_price [Float]
          #   @param tips_enabled [Boolean]
          #   @param tips_max [Integer]
          #   @param tips_min [Integer]
          #   @param tips_min_internal [Integer]
          #   @param username [String]
          #   @param view [String]

          # @see Onlyfansapi::Models::ReleaseFormCreateReleaseFormResponse::Data::User#avatar_thumbs
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

          # @see Onlyfansapi::Models::ReleaseFormCreateReleaseFormResponse::Data::User#header_size
          class HeaderSize < Onlyfansapi::Internal::Type::BaseModel
            # @!attribute height
            #
            #   @return [Integer, nil]
            optional :height, Integer

            # @!attribute width
            #
            #   @return [Integer, nil]
            optional :width, Integer

            # @!method initialize(height: nil, width: nil)
            #   @param height [Integer]
            #   @param width [Integer]
          end

          # @see Onlyfansapi::Models::ReleaseFormCreateReleaseFormResponse::Data::User#header_thumbs
          class HeaderThumbs < Onlyfansapi::Internal::Type::BaseModel
            # @!attribute w480
            #
            #   @return [String, nil]
            optional :w480, String

            # @!attribute w760
            #
            #   @return [String, nil]
            optional :w760, String

            # @!method initialize(w480: nil, w760: nil)
            #   @param w480 [String]
            #   @param w760 [String]
          end
        end
      end
    end
  end
end
