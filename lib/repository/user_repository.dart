abstract interface class UserRepository {
  Future<void> updateProfileImage();

  Future<void> updateUserProgress();

  Future<void> levelUp();

  Future<void> addLevelProgress(int progress);

  Future<void> getUserProgress(String id);
}