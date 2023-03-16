class AppMetadata {
  bool? onboardingCompleted;
  bool? loggedIn;

  AppMetadata({
    this.onboardingCompleted,
    this.loggedIn,
  });

  AppMetadata copyWith(AppMetadata metadata) {
    return AppMetadata(
      onboardingCompleted: metadata.onboardingCompleted ?? onboardingCompleted,
      loggedIn: metadata.loggedIn ?? loggedIn,
    );
  }
}
