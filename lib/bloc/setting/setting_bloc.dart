import 'package:bloc/bloc.dart';
import 'package:hamoney/db/account_book_box.dart';
import 'package:hamoney/db/member_box.dart';
import 'package:hamoney/model/account_book_member.dart';
import 'package:hamoney/repository/account_book_repository.dart';
import 'package:hamoney/repository/user_repository.dart';
import 'package:hamoney/workflow/find_account_book_member.dart';
import 'package:meta/meta.dart';

import '../../model/user.dart';

part 'setting_event.dart';

part 'setting_state.dart';

class SettingBloc extends Bloc<SettingEvent, SettingState> {
  SettingBloc({
    required AccountBookRepository accountBookRepository,
    required AccountBookHive accountBookHive,
    required UserRepository userRepository,
    required MemberHive memberHive,
    required FindAccountBookMember findAccountBookMember,
  })  : _accountBookRepository = accountBookRepository,
        _accountBookHive = accountBookHive,
        _memberHive = memberHive,
        _findAccountBookMember = findAccountBookMember,
        _userRepository = userRepository,
        super(SettingInitial()) {
    on<SettingEvent>((event, emit) {});
  }

  final AccountBookRepository _accountBookRepository;
  final AccountBookHive _accountBookHive;
  final MemberHive _memberHive;
  final FindAccountBookMember _findAccountBookMember;
  final UserRepository _userRepository;

  DateTime fetchedAt() => _accountBookRepository.fetchedAt;

  AccountBookMember currentAccountBookMember() => _accountBookRepository.curAccountBookMember;

  User me() => _userRepository.user;
}
