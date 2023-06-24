import 'package:bloc/bloc.dart';
import 'package:hamoney/model/account_book_member.dart';
import 'package:hamoney/repository/account_book_repository.dart';
import 'package:hamoney/repository/member_repository.dart';
import 'package:hamoney/repository/user_repository.dart';
import 'package:hamoney/workflow/load_required.dart';
import 'package:hamoney/workflow/sync_account_book.dart';
import 'package:meta/meta.dart';

import '../../model/user.dart';

part 'setting_event.dart';

part 'setting_state.dart';

class SettingBloc extends Bloc<SettingEvent, SettingState> {
  final AccountBookRepository _accountBookRepository;
  final MemberRepository _memberRepository;
  final UserRepository _userRepository;
  final ManualSyncAccountBook _manualSyncAccountBook;
  final LoadRequiredData _loadRequiredData;

  SettingBloc({
    required AccountBookRepository accountBookRepository,
    required UserRepository userRepository,
    required ManualSyncAccountBook manualSyncAccountBook,
    required MemberRepository memberRepository,
    required LoadRequiredData loadRequiredData,
  })  : _accountBookRepository = accountBookRepository,
        _memberRepository = memberRepository,
        _userRepository = userRepository,
        _manualSyncAccountBook = manualSyncAccountBook,
        _loadRequiredData = loadRequiredData,
        super(SettingInitial()) {
    on<SettingEvent>((event, emit) {});
    on<SyncClicked>(_onSyncAccountBook);
  }

  DateTime syncedAt = DateTime.now();

  Future<void> _onSyncAccountBook(SyncClicked event, Emitter<SettingState> emit) async {
    syncedAt = await _manualSyncAccountBook.invoke(_accountBookRepository.accountBook.id);
    _loadRequiredData.invoke();
    emit(SyncDone(syncedAt: syncedAt));
  }

  User user() => _userRepository.user;

  AccountBookMember currentAccountBookMember() {
    return AccountBookMember(accountBook: _accountBookRepository.accountBook, members: _memberRepository.members);
  }
}
