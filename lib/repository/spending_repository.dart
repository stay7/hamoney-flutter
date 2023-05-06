class SpendingRepository {
  SpendingRepository();

  int _amount = 0;

  int get amount => _amount;

  set amount(int value) {
    _amount = value;
  }
}
