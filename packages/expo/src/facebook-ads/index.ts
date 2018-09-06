export default {
  get withNativeAd() {
    return require('./withNativeAd').default;
  },
  get AdSettings() {
    return require('./AdSettings').default;
  },
  get NativeAdsManager() {
    return require('./NativeAdsManager').default;
  },
  get InterstitialAdManager() {
    return require('./InterstitialAdManager').default;
  },
  get BannerView() {
    return require('./BannerView').default;
  },
  get MediaView() {
    return require('./MediaView').default;
  },
  get AdIconView() {
    return require('./AdIconView').default;
  },
  get TriggerableView() {
    return require('./AdTriggerView').default;
  },
};
