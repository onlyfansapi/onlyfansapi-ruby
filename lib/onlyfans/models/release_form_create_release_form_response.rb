# frozen_string_literal: true

module Onlyfans
  module Models
    # @see Onlyfans::Resources::ReleaseForms#create_release_form
    class ReleaseFormCreateReleaseFormResponse < Onlyfans::Internal::Type::BaseModel
      # @!attribute _meta
      #
      #   @return [Onlyfans::Models::ReleaseFormCreateReleaseFormResponse::Meta, nil]
      optional :_meta, -> { Onlyfans::Models::ReleaseFormCreateReleaseFormResponse::Meta }

      # @!attribute data
      #
      #   @return [Onlyfans::Models::ReleaseFormCreateReleaseFormResponse::Data, nil]
      optional :data, -> { Onlyfans::Models::ReleaseFormCreateReleaseFormResponse::Data }

      # @!method initialize(_meta: nil, data: nil)
      #   @param _meta [Onlyfans::Models::ReleaseFormCreateReleaseFormResponse::Meta]
      #   @param data [Onlyfans::Models::ReleaseFormCreateReleaseFormResponse::Data]

      # @see Onlyfans::Models::ReleaseFormCreateReleaseFormResponse#_meta
      class Meta < Onlyfans::Internal::Type::BaseModel
        # @!attribute _cache
        #
        #   @return [Onlyfans::Models::ReleaseFormCreateReleaseFormResponse::Meta::Cache, nil]
        optional :_cache, -> { Onlyfans::Models::ReleaseFormCreateReleaseFormResponse::Meta::Cache }

        # @!attribute _credits
        #
        #   @return [Onlyfans::Models::ReleaseFormCreateReleaseFormResponse::Meta::Credits, nil]
        optional :_credits, -> { Onlyfans::Models::ReleaseFormCreateReleaseFormResponse::Meta::Credits }

        # @!attribute _rate_limits
        #
        #   @return [Onlyfans::Models::ReleaseFormCreateReleaseFormResponse::Meta::RateLimits, nil]
        optional :_rate_limits, -> { Onlyfans::Models::ReleaseFormCreateReleaseFormResponse::Meta::RateLimits }

        # @!method initialize(_cache: nil, _credits: nil, _rate_limits: nil)
        #   @param _cache [Onlyfans::Models::ReleaseFormCreateReleaseFormResponse::Meta::Cache]
        #   @param _credits [Onlyfans::Models::ReleaseFormCreateReleaseFormResponse::Meta::Credits]
        #   @param _rate_limits [Onlyfans::Models::ReleaseFormCreateReleaseFormResponse::Meta::RateLimits]

        # @see Onlyfans::Models::ReleaseFormCreateReleaseFormResponse::Meta#_cache
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

        # @see Onlyfans::Models::ReleaseFormCreateReleaseFormResponse::Meta#_credits
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

        # @see Onlyfans::Models::ReleaseFormCreateReleaseFormResponse::Meta#_rate_limits
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

      # @see Onlyfans::Models::ReleaseFormCreateReleaseFormResponse#data
      class Data < Onlyfans::Internal::Type::BaseModel
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
        optional :signed, Onlyfans::Internal::Type::ArrayOf[Onlyfans::Internal::Type::Unknown]

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
        #   @return [Onlyfans::Models::ReleaseFormCreateReleaseFormResponse::Data::User, nil]
        optional :user, -> { Onlyfans::Models::ReleaseFormCreateReleaseFormResponse::Data::User }

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
        #   @param user [Onlyfans::Models::ReleaseFormCreateReleaseFormResponse::Data::User]

        # @see Onlyfans::Models::ReleaseFormCreateReleaseFormResponse::Data#user
        class User < Onlyfans::Internal::Type::BaseModel
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
          #   @return [Onlyfans::Models::ReleaseFormCreateReleaseFormResponse::Data::User::AvatarThumbs, nil]
          optional :avatar_thumbs,
                   -> { Onlyfans::Models::ReleaseFormCreateReleaseFormResponse::Data::User::AvatarThumbs },
                   api_name: :avatarThumbs

          # @!attribute can_pay_internal
          #
          #   @return [Boolean, nil]
          optional :can_pay_internal, Onlyfans::Internal::Type::Boolean, api_name: :canPayInternal

          # @!attribute can_trial_send
          #
          #   @return [Boolean, nil]
          optional :can_trial_send, Onlyfans::Internal::Type::Boolean, api_name: :canTrialSend

          # @!attribute header
          #
          #   @return [String, nil]
          optional :header, String

          # @!attribute header_size
          #
          #   @return [Onlyfans::Models::ReleaseFormCreateReleaseFormResponse::Data::User::HeaderSize, nil]
          optional :header_size,
                   -> { Onlyfans::Models::ReleaseFormCreateReleaseFormResponse::Data::User::HeaderSize },
                   api_name: :headerSize

          # @!attribute header_thumbs
          #
          #   @return [Onlyfans::Models::ReleaseFormCreateReleaseFormResponse::Data::User::HeaderThumbs, nil]
          optional :header_thumbs,
                   -> { Onlyfans::Models::ReleaseFormCreateReleaseFormResponse::Data::User::HeaderThumbs },
                   api_name: :headerThumbs

          # @!attribute is_verified
          #
          #   @return [Boolean, nil]
          optional :is_verified, Onlyfans::Internal::Type::Boolean, api_name: :isVerified

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
          optional :tips_enabled, Onlyfans::Internal::Type::Boolean, api_name: :tipsEnabled

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
          #   @param avatar_thumbs [Onlyfans::Models::ReleaseFormCreateReleaseFormResponse::Data::User::AvatarThumbs]
          #   @param can_pay_internal [Boolean]
          #   @param can_trial_send [Boolean]
          #   @param header [String]
          #   @param header_size [Onlyfans::Models::ReleaseFormCreateReleaseFormResponse::Data::User::HeaderSize]
          #   @param header_thumbs [Onlyfans::Models::ReleaseFormCreateReleaseFormResponse::Data::User::HeaderThumbs]
          #   @param is_verified [Boolean]
          #   @param name [String]
          #   @param subscribe_price [Float]
          #   @param tips_enabled [Boolean]
          #   @param tips_max [Integer]
          #   @param tips_min [Integer]
          #   @param tips_min_internal [Integer]
          #   @param username [String]
          #   @param view [String]

          # @see Onlyfans::Models::ReleaseFormCreateReleaseFormResponse::Data::User#avatar_thumbs
          class AvatarThumbs < Onlyfans::Internal::Type::BaseModel
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

          # @see Onlyfans::Models::ReleaseFormCreateReleaseFormResponse::Data::User#header_size
          class HeaderSize < Onlyfans::Internal::Type::BaseModel
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

          # @see Onlyfans::Models::ReleaseFormCreateReleaseFormResponse::Data::User#header_thumbs
          class HeaderThumbs < Onlyfans::Internal::Type::BaseModel
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
