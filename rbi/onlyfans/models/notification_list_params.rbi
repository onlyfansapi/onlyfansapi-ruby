# typed: strong

module Onlyfans
  module Models
    class NotificationListParams < Onlyfans::Internal::Type::BaseModel
      extend Onlyfans::Internal::Type::RequestParameters::Converter
      include Onlyfans::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Onlyfans::NotificationListParams, Onlyfans::Internal::AnyHash)
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
          T.nilable(Onlyfans::NotificationListParams::SkipUsers::OrSymbol)
        )
      end
      attr_reader :skip_users

      sig do
        params(
          skip_users: Onlyfans::NotificationListParams::SkipUsers::OrSymbol
        ).void
      end
      attr_writer :skip_users

      # Filter notifications by a specific type
      sig do
        returns(T.nilable(Onlyfans::NotificationListParams::Type::OrSymbol))
      end
      attr_reader :type

      sig do
        params(type: Onlyfans::NotificationListParams::Type::OrSymbol).void
      end
      attr_writer :type

      sig do
        params(
          account: String,
          from_id: Integer,
          limit: Integer,
          skip_users: Onlyfans::NotificationListParams::SkipUsers::OrSymbol,
          type: Onlyfans::NotificationListParams::Type::OrSymbol,
          request_options: Onlyfans::RequestOptions::OrHash
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
            skip_users: Onlyfans::NotificationListParams::SkipUsers::OrSymbol,
            type: Onlyfans::NotificationListParams::Type::OrSymbol,
            request_options: Onlyfans::RequestOptions
          }
        )
      end
      def to_hash
      end

      # Whether to skip user details. Default `all`
      module SkipUsers
        extend Onlyfans::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Onlyfans::NotificationListParams::SkipUsers)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ALL =
          T.let(:all, Onlyfans::NotificationListParams::SkipUsers::TaggedSymbol)
        NONE =
          T.let(
            :none,
            Onlyfans::NotificationListParams::SkipUsers::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Onlyfans::NotificationListParams::SkipUsers::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      # Filter notifications by a specific type
      module Type
        extend Onlyfans::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Onlyfans::NotificationListParams::Type) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ALL = T.let(:all, Onlyfans::NotificationListParams::Type::TaggedSymbol)
        SUBSCRIPTIONS =
          T.let(
            :subscriptions,
            Onlyfans::NotificationListParams::Type::TaggedSymbol
          )
        ONLYFANS =
          T.let(:onlyfans, Onlyfans::NotificationListParams::Type::TaggedSymbol)
        PURCHASES =
          T.let(
            :purchases,
            Onlyfans::NotificationListParams::Type::TaggedSymbol
          )
        TIPS =
          T.let(:tips, Onlyfans::NotificationListParams::Type::TaggedSymbol)
        TAGS =
          T.let(:tags, Onlyfans::NotificationListParams::Type::TaggedSymbol)
        COMMENTS =
          T.let(:comments, Onlyfans::NotificationListParams::Type::TaggedSymbol)
        MENTIONS =
          T.let(:mentions, Onlyfans::NotificationListParams::Type::TaggedSymbol)
        LIKES =
          T.let(:likes, Onlyfans::NotificationListParams::Type::TaggedSymbol)
        PROMOTIONS =
          T.let(
            :promotions,
            Onlyfans::NotificationListParams::Type::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Onlyfans::NotificationListParams::Type::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
