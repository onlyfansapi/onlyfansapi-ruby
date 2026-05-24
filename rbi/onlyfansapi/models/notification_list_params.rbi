# typed: strong

module Onlyfansapi
  module Models
    class NotificationListParams < Onlyfansapi::Internal::Type::BaseModel
      extend Onlyfansapi::Internal::Type::RequestParameters::Converter
      include Onlyfansapi::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Onlyfansapi::NotificationListParams,
            Onlyfansapi::Internal::AnyHash
          )
        end

      sig { returns(String) }
      attr_accessor :account

      # Used for pagination. This value should be the ID of the previous response's last
      # notification.
      sig { returns(T.nilable(Integer)) }
      attr_reader :from_id

      sig { params(from_id: Integer).void }
      attr_writer :from_id

      # The number of notifications. Default `10`
      sig { returns(T.nilable(Integer)) }
      attr_reader :limit

      sig { params(limit: Integer).void }
      attr_writer :limit

      # Whether to skip user details. Default `all`
      sig do
        returns(
          T.nilable(Onlyfansapi::NotificationListParams::SkipUsers::OrSymbol)
        )
      end
      attr_reader :skip_users

      sig do
        params(
          skip_users: Onlyfansapi::NotificationListParams::SkipUsers::OrSymbol
        ).void
      end
      attr_writer :skip_users

      # Filter notifications by a specific type
      sig do
        returns(T.nilable(Onlyfansapi::NotificationListParams::Type::OrSymbol))
      end
      attr_reader :type

      sig do
        params(type: Onlyfansapi::NotificationListParams::Type::OrSymbol).void
      end
      attr_writer :type

      sig do
        params(
          account: String,
          from_id: Integer,
          limit: Integer,
          skip_users: Onlyfansapi::NotificationListParams::SkipUsers::OrSymbol,
          type: Onlyfansapi::NotificationListParams::Type::OrSymbol,
          request_options: Onlyfansapi::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        account:,
        # Used for pagination. This value should be the ID of the previous response's last
        # notification.
        from_id: nil,
        # The number of notifications. Default `10`
        limit: nil,
        # Whether to skip user details. Default `all`
        skip_users: nil,
        # Filter notifications by a specific type
        type: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            account: String,
            from_id: Integer,
            limit: Integer,
            skip_users:
              Onlyfansapi::NotificationListParams::SkipUsers::OrSymbol,
            type: Onlyfansapi::NotificationListParams::Type::OrSymbol,
            request_options: Onlyfansapi::RequestOptions
          }
        )
      end
      def to_hash
      end

      # Whether to skip user details. Default `all`
      module SkipUsers
        extend Onlyfansapi::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Onlyfansapi::NotificationListParams::SkipUsers)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ALL =
          T.let(
            :all,
            Onlyfansapi::NotificationListParams::SkipUsers::TaggedSymbol
          )
        NONE =
          T.let(
            :none,
            Onlyfansapi::NotificationListParams::SkipUsers::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Onlyfansapi::NotificationListParams::SkipUsers::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      # Filter notifications by a specific type
      module Type
        extend Onlyfansapi::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Onlyfansapi::NotificationListParams::Type)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ALL =
          T.let(:all, Onlyfansapi::NotificationListParams::Type::TaggedSymbol)
        SUBSCRIPTIONS =
          T.let(
            :subscriptions,
            Onlyfansapi::NotificationListParams::Type::TaggedSymbol
          )
        ONLYFANS =
          T.let(
            :onlyfans,
            Onlyfansapi::NotificationListParams::Type::TaggedSymbol
          )
        PURCHASES =
          T.let(
            :purchases,
            Onlyfansapi::NotificationListParams::Type::TaggedSymbol
          )
        TIPS =
          T.let(:tips, Onlyfansapi::NotificationListParams::Type::TaggedSymbol)
        TAGS =
          T.let(:tags, Onlyfansapi::NotificationListParams::Type::TaggedSymbol)
        COMMENTS =
          T.let(
            :comments,
            Onlyfansapi::NotificationListParams::Type::TaggedSymbol
          )
        MENTIONS =
          T.let(
            :mentions,
            Onlyfansapi::NotificationListParams::Type::TaggedSymbol
          )
        LIKES =
          T.let(:likes, Onlyfansapi::NotificationListParams::Type::TaggedSymbol)
        PROMOTIONS =
          T.let(
            :promotions,
            Onlyfansapi::NotificationListParams::Type::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Onlyfansapi::NotificationListParams::Type::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
