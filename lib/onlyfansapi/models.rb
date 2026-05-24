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

  Analytics = Onlyfansapi::Models::Analytics

  AuthenticatePollStatusParams = Onlyfansapi::Models::AuthenticatePollStatusParams

  AuthenticateReauthenticateParams = Onlyfansapi::Models::AuthenticateReauthenticateParams

  AuthenticateSend2faEmailParams = Onlyfansapi::Models::AuthenticateSend2faEmailParams

  AuthenticateStartParams = Onlyfansapi::Models::AuthenticateStartParams

  AuthenticateSubmit2faParams = Onlyfansapi::Models::AuthenticateSubmit2faParams

  Banking = Onlyfansapi::Models::Banking

  BankingListAvailablePayoutSystemsParams = Onlyfansapi::Models::BankingListAvailablePayoutSystemsParams

  BankingListCountriesParams = Onlyfansapi::Models::BankingListCountriesParams

  BundleCreateParams = Onlyfansapi::Models::BundleCreateParams

  BundleDeleteParams = Onlyfansapi::Models::BundleDeleteParams

  BundleListParams = Onlyfansapi::Models::BundleListParams

  ChargebackCalculateRatioParams = Onlyfansapi::Models::ChargebackCalculateRatioParams

  ChargebackListParams = Onlyfansapi::Models::ChargebackListParams

  ChargebackListStatisticsParams = Onlyfansapi::Models::ChargebackListStatisticsParams

  ChatDeleteParams = Onlyfansapi::Models::ChatDeleteParams

  ChatHideParams = Onlyfansapi::Models::ChatHideParams

  ChatListMediaParams = Onlyfansapi::Models::ChatListMediaParams

  ChatListParams = Onlyfansapi::Models::ChatListParams

  ChatMarkAsUnreadParams = Onlyfansapi::Models::ChatMarkAsUnreadParams

  ChatMuteParams = Onlyfansapi::Models::ChatMuteParams

  Chats = Onlyfansapi::Models::Chats

  ChatStartTypingParams = Onlyfansapi::Models::ChatStartTypingParams

  ChatUnmuteParams = Onlyfansapi::Models::ChatUnmuteParams

  ClientSessionCreateParams = Onlyfansapi::Models::ClientSessionCreateParams

  DataExportCancelParams = Onlyfansapi::Models::DataExportCancelParams

  DataExportCreateParams = Onlyfansapi::Models::DataExportCreateParams

  DataExportListParams = Onlyfansapi::Models::DataExportListParams

  DataExportRetrieveParams = Onlyfansapi::Models::DataExportRetrieveParams

  DataExportRetryParams = Onlyfansapi::Models::DataExportRetryParams

  DataExportStartParams = Onlyfansapi::Models::DataExportStartParams

  Engagement = Onlyfansapi::Models::Engagement

  FanGetSubscriptionHistoryParams = Onlyfansapi::Models::FanGetSubscriptionHistoryParams

  FanListActiveParams = Onlyfansapi::Models::FanListActiveParams

  FanListAllParams = Onlyfansapi::Models::FanListAllParams

  FanListExpiredParams = Onlyfansapi::Models::FanListExpiredParams

  FanListLatestParams = Onlyfansapi::Models::FanListLatestParams

  FanListTopParams = Onlyfansapi::Models::FanListTopParams

  Fans = Onlyfansapi::Models::Fans

  FanSetCustomNameParams = Onlyfansapi::Models::FanSetCustomNameParams

  FollowingListActiveParams = Onlyfansapi::Models::FollowingListActiveParams

  FollowingListAllParams = Onlyfansapi::Models::FollowingListAllParams

  FollowingListExpiredParams = Onlyfansapi::Models::FollowingListExpiredParams

  GiphyListTrendingParams = Onlyfansapi::Models::GiphyListTrendingParams

  GiphySearchParams = Onlyfansapi::Models::GiphySearchParams

  LinkTagListParams = Onlyfansapi::Models::LinkTagListParams

  MassMessagingDeleteParams = Onlyfansapi::Models::MassMessagingDeleteParams

  MassMessagingListParams = Onlyfansapi::Models::MassMessagingListParams

  MassMessagingRetrieveOverviewParams = Onlyfansapi::Models::MassMessagingRetrieveOverviewParams

  MassMessagingRetrieveParams = Onlyfansapi::Models::MassMessagingRetrieveParams

  MassMessagingSendParams = Onlyfansapi::Models::MassMessagingSendParams

  MassMessagingUpdateParams = Onlyfansapi::Models::MassMessagingUpdateParams

  Media = Onlyfansapi::Models::Media

  MediaDownloadParams = Onlyfansapi::Models::MediaDownloadParams

  MediaScrapeParams = Onlyfansapi::Models::MediaScrapeParams

  MediaUploadParams = Onlyfansapi::Models::MediaUploadParams

  MeGetModelStartDateParams = Onlyfansapi::Models::MeGetModelStartDateParams

  MeGetTopPercentageParams = Onlyfansapi::Models::MeGetTopPercentageParams

  MeRetrieveParams = Onlyfansapi::Models::MeRetrieveParams

  MessageAttachTagsParams = Onlyfansapi::Models::MessageAttachTagsParams

  NotificationGetCountsParams = Onlyfansapi::Models::NotificationGetCountsParams

  NotificationListParams = Onlyfansapi::Models::NotificationListParams

  NotificationMarkAllAsReadParams = Onlyfansapi::Models::NotificationMarkAllAsReadParams

  Notifications = Onlyfansapi::Models::Notifications

  NotificationSearchUsersParams = Onlyfansapi::Models::NotificationSearchUsersParams

  PayoutListRequestsParams = Onlyfansapi::Models::PayoutListRequestsParams

  PayoutRequestManualWithdrawalParams = Onlyfansapi::Models::PayoutRequestManualWithdrawalParams

  PayoutRetrieveBalancesParams = Onlyfansapi::Models::PayoutRetrieveBalancesParams

  PayoutRetrieveEarningStatisticsParams = Onlyfansapi::Models::PayoutRetrieveEarningStatisticsParams

  PayoutRetrieveEligibilityParams = Onlyfansapi::Models::PayoutRetrieveEligibilityParams

  PayoutUpdateFrequencyParams = Onlyfansapi::Models::PayoutUpdateFrequencyParams

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

  PromotionCreateParams = Onlyfansapi::Models::PromotionCreateParams

  PromotionDeleteParams = Onlyfansapi::Models::PromotionDeleteParams

  PromotionListParams = Onlyfansapi::Models::PromotionListParams

  PromotionStopParams = Onlyfansapi::Models::PromotionStopParams

  QueueCountParams = Onlyfansapi::Models::QueueCountParams

  QueueListParams = Onlyfansapi::Models::QueueListParams

  QueuePublishParams = Onlyfansapi::Models::QueuePublishParams

  ReleaseFormCreateInvitationLinkParams = Onlyfansapi::Models::ReleaseFormCreateInvitationLinkParams

  ReleaseFormCreateReleaseFormParams = Onlyfansapi::Models::ReleaseFormCreateReleaseFormParams

  ReleaseFormListTaggableUsersParams = Onlyfansapi::Models::ReleaseFormListTaggableUsersParams

  SavedForLater = Onlyfansapi::Models::SavedForLater

  SearchProfilesParams = Onlyfansapi::Models::SearchProfilesParams

  SettingCheckUsernameAvailabilityParams = Onlyfansapi::Models::SettingCheckUsernameAvailabilityParams

  SettingRetrieveParams = Onlyfansapi::Models::SettingRetrieveParams

  Settings = Onlyfansapi::Models::Settings

  SettingUpdateProfileParams = Onlyfansapi::Models::SettingUpdateProfileParams

  SettingUpdateSubscriptionPriceParams = Onlyfansapi::Models::SettingUpdateSubscriptionPriceParams

  SharedTrackingLinkListParams = Onlyfansapi::Models::SharedTrackingLinkListParams

  SharedTrackingLinkRevokeAccessParams = Onlyfansapi::Models::SharedTrackingLinkRevokeAccessParams

  SharedTrackingLinks = Onlyfansapi::Models::SharedTrackingLinks

  SharedTrialLinkListParams = Onlyfansapi::Models::SharedTrialLinkListParams

  SharedTrialLinkRevokeAccessParams = Onlyfansapi::Models::SharedTrialLinkRevokeAccessParams

  SharedTrialLinks = Onlyfansapi::Models::SharedTrialLinks

  SmartLinkCreateParams = Onlyfansapi::Models::SmartLinkCreateParams

  SmartLinkDeleteParams = Onlyfansapi::Models::SmartLinkDeleteParams

  SmartLinkListClicksParams = Onlyfansapi::Models::SmartLinkListClicksParams

  SmartLinkListConversionsParams = Onlyfansapi::Models::SmartLinkListConversionsParams

  SmartLinkListFansParams = Onlyfansapi::Models::SmartLinkListFansParams

  SmartLinkListParams = Onlyfansapi::Models::SmartLinkListParams

  SmartLinkListSpendersParams = Onlyfansapi::Models::SmartLinkListSpendersParams

  SmartLinkPostbackCreateParams = Onlyfansapi::Models::SmartLinkPostbackCreateParams

  SmartLinkPostbackDeleteParams = Onlyfansapi::Models::SmartLinkPostbackDeleteParams

  SmartLinkPostbackListParams = Onlyfansapi::Models::SmartLinkPostbackListParams

  SmartLinkPostbackRetrieveParams = Onlyfansapi::Models::SmartLinkPostbackRetrieveParams

  SmartLinkPostbackUpdateParams = Onlyfansapi::Models::SmartLinkPostbackUpdateParams

  SmartLinkRetrieveCohortArpsParams = Onlyfansapi::Models::SmartLinkRetrieveCohortArpsParams

  SmartLinkRetrieveParams = Onlyfansapi::Models::SmartLinkRetrieveParams

  SmartLinkRetrieveStatsParams = Onlyfansapi::Models::SmartLinkRetrieveStatsParams

  StatisticCalculateTotalTransactionsParams =
    Onlyfansapi::Models::StatisticCalculateTotalTransactionsParams

  StatisticGetOverviewParams = Onlyfansapi::Models::StatisticGetOverviewParams

  StatisticGetSubscriberMetricsParams = Onlyfansapi::Models::StatisticGetSubscriberMetricsParams

  Statistics = Onlyfansapi::Models::Statistics

  StoredListSharedTrackingLinksParams = Onlyfansapi::Models::StoredListSharedTrackingLinksParams

  StoredListSharedTrialLinksParams = Onlyfansapi::Models::StoredListSharedTrialLinksParams

  StoredListTrackingLinksParams = Onlyfansapi::Models::StoredListTrackingLinksParams

  StoredListTrialLinksParams = Onlyfansapi::Models::StoredListTrialLinksParams

  Stories = Onlyfansapi::Models::Stories

  StoryCreateParams = Onlyfansapi::Models::StoryCreateParams

  StoryDeleteParams = Onlyfansapi::Models::StoryDeleteParams

  StoryListActiveParams = Onlyfansapi::Models::StoryListActiveParams

  StoryListArchiveParams = Onlyfansapi::Models::StoryListArchiveParams

  StoryListViewersParams = Onlyfansapi::Models::StoryListViewersParams

  StoryMarkAsWatchedParams = Onlyfansapi::Models::StoryMarkAsWatchedParams

  StoryRetrieveParams = Onlyfansapi::Models::StoryRetrieveParams

  StoryRetrieveStatsParams = Onlyfansapi::Models::StoryRetrieveStatsParams

  SubscriberRetrieveStatisticsParams = Onlyfansapi::Models::SubscriberRetrieveStatisticsParams

  TrackingLinkCreateParams = Onlyfansapi::Models::TrackingLinkCreateParams

  TrackingLinkDeleteParams = Onlyfansapi::Models::TrackingLinkDeleteParams

  TrackingLinkGetCohortArpsParams = Onlyfansapi::Models::TrackingLinkGetCohortArpsParams

  TrackingLinkGetStatsParams = Onlyfansapi::Models::TrackingLinkGetStatsParams

  TrackingLinkListParams = Onlyfansapi::Models::TrackingLinkListParams

  TrackingLinkListSpendersParams = Onlyfansapi::Models::TrackingLinkListSpendersParams

  TrackingLinkListSubscribersParams = Onlyfansapi::Models::TrackingLinkListSubscribersParams

  TrackingLinkRetrieveParams = Onlyfansapi::Models::TrackingLinkRetrieveParams

  TrackingLinks = Onlyfansapi::Models::TrackingLinks

  TransactionListParams = Onlyfansapi::Models::TransactionListParams

  TrialLinkCreateParams = Onlyfansapi::Models::TrialLinkCreateParams

  TrialLinkDeleteParams = Onlyfansapi::Models::TrialLinkDeleteParams

  TrialLinkListParams = Onlyfansapi::Models::TrialLinkListParams

  TrialLinkListSpendersParams = Onlyfansapi::Models::TrialLinkListSpendersParams

  TrialLinkListSubscribersParams = Onlyfansapi::Models::TrialLinkListSubscribersParams

  TrialLinkRetrieveCohortArpsParams = Onlyfansapi::Models::TrialLinkRetrieveCohortArpsParams

  TrialLinkRetrieveParams = Onlyfansapi::Models::TrialLinkRetrieveParams

  TrialLinkRetrieveStatsParams = Onlyfansapi::Models::TrialLinkRetrieveStatsParams

  TrialLinks = Onlyfansapi::Models::TrialLinks

  UserListCreateParams = Onlyfansapi::Models::UserListCreateParams

  UserListDeleteParams = Onlyfansapi::Models::UserListDeleteParams

  UserListListParams = Onlyfansapi::Models::UserListListParams

  UserListParams = Onlyfansapi::Models::UserListParams

  UserListRetrieveParams = Onlyfansapi::Models::UserListRetrieveParams

  UserLists = Onlyfansapi::Models::UserLists

  UserListUpdateParams = Onlyfansapi::Models::UserListUpdateParams

  UserRetrieveParams = Onlyfansapi::Models::UserRetrieveParams

  Users = Onlyfansapi::Models::Users

  WebhookCreateParams = Onlyfansapi::Models::WebhookCreateParams

  WebhookDeleteParams = Onlyfansapi::Models::WebhookDeleteParams

  WebhookListEventsParams = Onlyfansapi::Models::WebhookListEventsParams

  WebhookListParams = Onlyfansapi::Models::WebhookListParams

  WebhookRetrieveParams = Onlyfansapi::Models::WebhookRetrieveParams

  WebhookUpdateParams = Onlyfansapi::Models::WebhookUpdateParams

  WhoamiRetrieveParams = Onlyfansapi::Models::WhoamiRetrieveParams
end
