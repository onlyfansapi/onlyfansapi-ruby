# frozen_string_literal: true

module Onlyfansapi
  [Onlyfansapi::Internal::Type::BaseModel, *Onlyfansapi::Internal::Type::BaseModel.subclasses].each do |cls|
    cls.define_sorbet_constant!(:OrHash) { T.type_alias { T.any(cls, Onlyfansapi::Internal::AnyHash) } }
  end

  Onlyfansapi::Internal::Util.walk_namespaces(Onlyfansapi::Models).each do |mod|
    case mod
    in Onlyfansapi::Internal::Type::Enum | Onlyfansapi::Internal::Type::Union
      mod.constants.each do |name|
        case mod.const_get(name)
        in true | false
          mod.define_sorbet_constant!(:TaggedBoolean) { T.type_alias { T::Boolean } }
          mod.define_sorbet_constant!(:OrBoolean) { T.type_alias { T::Boolean } }
        in Integer
          mod.define_sorbet_constant!(:TaggedInteger) { T.type_alias { Integer } }
          mod.define_sorbet_constant!(:OrInteger) { T.type_alias { Integer } }
        in Float
          mod.define_sorbet_constant!(:TaggedFloat) { T.type_alias { Float } }
          mod.define_sorbet_constant!(:OrFloat) { T.type_alias { Float } }
        in Symbol
          mod.define_sorbet_constant!(:TaggedSymbol) { T.type_alias { Symbol } }
          mod.define_sorbet_constant!(:OrSymbol) { T.type_alias { T.any(Symbol, String) } }
        else
        end
      end
    else
    end
  end

  Onlyfansapi::Internal::Util.walk_namespaces(Onlyfansapi::Models)
                             .lazy
                             .grep(Onlyfansapi::Internal::Type::Union)
                             .each do |mod|
    const = :Variants
    next if mod.sorbet_constant_defined?(const)

    mod.define_sorbet_constant!(const) { T.type_alias { mod.to_sorbet_type } }
  end

  AccountDisconnectParams = Onlyfansapi::Models::AccountDisconnectParams

  AccountListParams = Onlyfansapi::Models::AccountListParams

  AuthenticatePollStatusParams = Onlyfansapi::Models::AuthenticatePollStatusParams

  AuthenticateReauthenticateParams = Onlyfansapi::Models::AuthenticateReauthenticateParams

  AuthenticateStartParams = Onlyfansapi::Models::AuthenticateStartParams

  AuthenticateSubmit2faParams = Onlyfansapi::Models::AuthenticateSubmit2faParams

  Banking = Onlyfansapi::Models::Banking

  BankingListAvailablePayoutSystemsParams = Onlyfansapi::Models::BankingListAvailablePayoutSystemsParams

  BankingListCountriesParams = Onlyfansapi::Models::BankingListCountriesParams

  ChatListParams = Onlyfansapi::Models::ChatListParams

  Chats = Onlyfansapi::Models::Chats

  ChatStartTypingIndicatorParams = Onlyfansapi::Models::ChatStartTypingIndicatorParams

  ClientSessionCreateParams = Onlyfansapi::Models::ClientSessionCreateParams

  FanListActiveParams = Onlyfansapi::Models::FanListActiveParams

  FanListAllParams = Onlyfansapi::Models::FanListAllParams

  FanListExpiredParams = Onlyfansapi::Models::FanListExpiredParams

  FanListLatestParams = Onlyfansapi::Models::FanListLatestParams

  FollowingListActiveParams = Onlyfansapi::Models::FollowingListActiveParams

  FollowingListAllParams = Onlyfansapi::Models::FollowingListAllParams

  FollowingListExpiredParams = Onlyfansapi::Models::FollowingListExpiredParams

  MassMessagingDeleteParams = Onlyfansapi::Models::MassMessagingDeleteParams

  MassMessagingListQueueParams = Onlyfansapi::Models::MassMessagingListQueueParams

  MassMessagingRetrieveParams = Onlyfansapi::Models::MassMessagingRetrieveParams

  MassMessagingSendParams = Onlyfansapi::Models::MassMessagingSendParams

  MassMessagingUpdateParams = Onlyfansapi::Models::MassMessagingUpdateParams

  Media = Onlyfansapi::Models::Media

  MediaScrapeParams = Onlyfansapi::Models::MediaScrapeParams

  MediaUploadParams = Onlyfansapi::Models::MediaUploadParams

  MeGetModelStartDateParams = Onlyfansapi::Models::MeGetModelStartDateParams

  MeRetrieveParams = Onlyfansapi::Models::MeRetrieveParams

  NotificationGetCountsParams = Onlyfansapi::Models::NotificationGetCountsParams

  NotificationListParams = Onlyfansapi::Models::NotificationListParams

  NotificationMarkAllAsReadParams = Onlyfansapi::Models::NotificationMarkAllAsReadParams

  Notifications = Onlyfansapi::Models::Notifications

  NotificationSearchUsersParams = Onlyfansapi::Models::NotificationSearchUsersParams

  PayoutListPayoutRequestsParams = Onlyfansapi::Models::PayoutListPayoutRequestsParams

  PayoutRequestManualWithdrawalParams = Onlyfansapi::Models::PayoutRequestManualWithdrawalParams

  PayoutRetrieveBalancesParams = Onlyfansapi::Models::PayoutRetrieveBalancesParams

  PayoutRetrieveEarningStatisticsParams = Onlyfansapi::Models::PayoutRetrieveEarningStatisticsParams

  PayoutRetrieveEligibilityParams = Onlyfansapi::Models::PayoutRetrieveEligibilityParams

  PayoutUpdatePayoutFrequencyParams = Onlyfansapi::Models::PayoutUpdatePayoutFrequencyParams

  PostArchiveParams = Onlyfansapi::Models::PostArchiveParams

  PostCreateParams = Onlyfansapi::Models::PostCreateParams

  PostDeleteParams = Onlyfansapi::Models::PostDeleteParams

  PostListParams = Onlyfansapi::Models::PostListParams

  PostPinParams = Onlyfansapi::Models::PostPinParams

  PostRetrieveParams = Onlyfansapi::Models::PostRetrieveParams

  Posts = Onlyfansapi::Models::Posts

  PostStatsParams = Onlyfansapi::Models::PostStatsParams

  PostUnarchiveParams = Onlyfansapi::Models::PostUnarchiveParams

  PostUpdateParams = Onlyfansapi::Models::PostUpdateParams

  ProfileRetrieveParams = Onlyfansapi::Models::ProfileRetrieveParams

  QueueCountParams = Onlyfansapi::Models::QueueCountParams

  QueueListParams = Onlyfansapi::Models::QueueListParams

  QueuePublishParams = Onlyfansapi::Models::QueuePublishParams

  SavedForLater = Onlyfansapi::Models::SavedForLater

  SearchProfilesParams = Onlyfansapi::Models::SearchProfilesParams

  SettingCheckUsernameExistsParams = Onlyfansapi::Models::SettingCheckUsernameExistsParams

  SettingRetrieveParams = Onlyfansapi::Models::SettingRetrieveParams

  SettingUpdateProfileParams = Onlyfansapi::Models::SettingUpdateProfileParams

  StatisticCalculateTotalTransactionsParams =
    Onlyfansapi::Models::StatisticCalculateTotalTransactionsParams

  StatisticGetOverviewParams = Onlyfansapi::Models::StatisticGetOverviewParams

  StatisticGetSubscriberMetricsParams = Onlyfansapi::Models::StatisticGetSubscriberMetricsParams

  Statistics = Onlyfansapi::Models::Statistics

  SubscriberRetrieveStatisticsParams = Onlyfansapi::Models::SubscriberRetrieveStatisticsParams

  TrackingLinkCreateParams = Onlyfansapi::Models::TrackingLinkCreateParams

  TrackingLinkDeleteParams = Onlyfansapi::Models::TrackingLinkDeleteParams

  TrackingLinkListParams = Onlyfansapi::Models::TrackingLinkListParams

  TrackingLinkListSpendersParams = Onlyfansapi::Models::TrackingLinkListSpendersParams

  TrackingLinkListSubscribersParams = Onlyfansapi::Models::TrackingLinkListSubscribersParams

  TransactionListParams = Onlyfansapi::Models::TransactionListParams

  TrialLinkCreateParams = Onlyfansapi::Models::TrialLinkCreateParams

  TrialLinkDeleteParams = Onlyfansapi::Models::TrialLinkDeleteParams

  TrialLinkListParams = Onlyfansapi::Models::TrialLinkListParams

  TrialLinkListSpendersParams = Onlyfansapi::Models::TrialLinkListSpendersParams

  TrialLinkListSubscribersParams = Onlyfansapi::Models::TrialLinkListSubscribersParams

  UserListCreateParams = Onlyfansapi::Models::UserListCreateParams

  UserListDeleteParams = Onlyfansapi::Models::UserListDeleteParams

  UserListListParams = Onlyfansapi::Models::UserListListParams

  UserLists = Onlyfansapi::Models::UserLists

  UserListUpdateParams = Onlyfansapi::Models::UserListUpdateParams

  UserRetrieveParams = Onlyfansapi::Models::UserRetrieveParams

  WebhookCreateParams = Onlyfansapi::Models::WebhookCreateParams

  WebhookDeleteParams = Onlyfansapi::Models::WebhookDeleteParams

  WhoamiRetrieveParams = Onlyfansapi::Models::WhoamiRetrieveParams
end
