import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final preferences = await SharedPreferences.getInstance();
  runApp(FinanceQuestApp(preferences: preferences));
}

class FinanceQuestApp extends StatelessWidget {
  const FinanceQuestApp({
    super.key,
    required this.preferences,
  });

  final SharedPreferences preferences;

  @override
  Widget build(BuildContext context) {
    const baseColor = Color(0xFF0F766E);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Финансы',
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: baseColor,
          brightness: Brightness.light,
        ),
        scaffoldBackgroundColor: const Color(0xFFF7F3EA),
        fontFamily: 'RobotoCondensed-Regular',
        inputDecorationTheme: const InputDecorationTheme(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(18)),
          ),
          filled: true,
          fillColor: Colors.white,
        ),
      ),
      home: FinanceHomePage(preferences: preferences),
    );
  }
}

class FinanceHomePage extends StatefulWidget {
  const FinanceHomePage({
    super.key,
    required this.preferences,
  });

  final SharedPreferences preferences;

  @override
  State<FinanceHomePage> createState() => _FinanceHomePageState();
}

class _FinanceHomePageState extends State<FinanceHomePage> {
  static const _goalNameKey = 'goal_name';
  static const _goalTargetKey = 'goal_target';
  static const _goalSavedKey = 'goal_saved';
  static const _monthlyIncomeKey = 'monthly_income';
  static const _monthlyNeedsKey = 'monthly_needs';
  static const _monthlyWantsKey = 'monthly_wants';
  static const _completedIdsKey = 'completed_ids';
  static const _achievementIdsKey = 'achievement_ids';
  static const _savingsHistoryKey = 'savings_history';
  static const _lastCheckInKey = 'last_check_in';
  static const _streakDaysKey = 'streak_days';
  static const _quizAnswersKey = 'quiz_answers';

  final TextEditingController _goalNameController = TextEditingController();
  final TextEditingController _goalTargetController = TextEditingController();
  final TextEditingController _addMoneyController = TextEditingController();
  final TextEditingController _monthlyIncomeController = TextEditingController();
  final TextEditingController _monthlyNeedsController = TextEditingController();
  final TextEditingController _monthlyWantsController = TextEditingController();

  final List<ChallengeItem> _challenges = const [
    ChallengeItem(
      id: 'check_balance',
      title: 'Проверить баланс',
      description: 'Зайди в приложение и быстро оцени, сколько уже работает на твою мечту.',
      reward: 20,
      category: 'Фокус',
    ),
    ChallengeItem(
      id: 'save_small',
      title: 'Отложить хотя бы 100 ₽',
      description: 'Закрепи привычку даже маленьким шагом.',
      reward: 40,
      category: 'Накопления',
    ),
    ChallengeItem(
      id: 'skip_impulse',
      title: 'Пропустить импульсную покупку',
      description: 'Скажи нет одной лишней трате и получи чистую победу.',
      reward: 35,
      category: 'Дисциплина',
    ),
    ChallengeItem(
      id: 'learn_investment',
      title: 'Изучить инвестиционную карточку',
      description: 'Открой один материал и разберись в инструменте без перегруза.',
      reward: 25,
      category: 'Знания',
    ),
    ChallengeItem(
      id: 'plan_month',
      title: 'Обновить месячный план',
      description: 'Проверь доход, обязательные траты и свободный остаток.',
      reward: 30,
      category: 'Планирование',
    ),
  ];

  final List<AchievementItem> _achievements = const [
    AchievementItem(
      id: 'first_step',
      title: 'Первый шаг',
      description: 'Разблокируется после первого закрытого челленджа.',
      icon: Icons.flag_rounded,
    ),
    AchievementItem(
      id: 'steady_player',
      title: 'В ритме',
      description: 'Разблокируется после двух закрытых челленджей.',
      icon: Icons.local_fire_department_rounded,
    ),
    AchievementItem(
      id: 'goal_keeper',
      title: 'Охотник за мечтой',
      description: 'Разблокируется, когда накоплено 25% цели.',
      icon: Icons.workspace_premium_rounded,
    ),
    AchievementItem(
      id: 'planner',
      title: 'Архитектор бюджета',
      description: 'Разблокируется после заполнения месячного плана.',
      icon: Icons.grid_view_rounded,
    ),
    AchievementItem(
      id: 'investor_mind',
      title: 'Инвест-мышление',
      description: 'Разблокируется после прохождения мини-квиза.',
      icon: Icons.psychology_alt_rounded,
    ),
    AchievementItem(
      id: 'streak_three',
      title: 'Серия 3 дня',
      description: 'Разблокируется, когда серия ежедневных отметок достигнет 3 дней.',
      icon: Icons.bolt_rounded,
    ),
  ];

  final List<QuizQuestion> _quiz = const [
    QuizQuestion(
      id: 'q1',
      title: 'Что обычно считается самым спокойным стартом?',
      options: ['Вклад', 'Фьючерсы', 'Кредитное плечо'],
      correctIndex: 0,
      explanation:
          'Вклад обычно проще всего понять и он несет минимальный риск по сравнению со спекулятивными инструментами.',
    ),
    QuizQuestion(
      id: 'q2',
      title: 'Как проще объяснить облигацию?',
      options: ['Это скидка в магазине', 'Это расписка о долге с процентом', 'Это лотерейный билет'],
      correctIndex: 1,
      explanation: 'Облигация похожа на заем: вы даете деньги, а эмитент возвращает их позже с доходом.',
    ),
    QuizQuestion(
      id: 'q3',
      title: 'Зачем новичку могут подойти фонды?',
      options: ['Они собирают корзину активов', 'Они гарантируют прибыль', 'Они не бывают убыточными'],
      correctIndex: 0,
      explanation: 'Фонды помогают распределить деньги по нескольким активам сразу, но не гарантируют доход.',
    ),
  ];

  String _goalName = 'Путешествие мечты';
  double _goalTarget = 120000;
  double _goalSaved = 18000;
  double _monthlyIncome = 90000;
  double _monthlyNeeds = 42000;
  double _monthlyWants = 18000;
  int _selectedTab = 0;
  int _streakDays = 0;
  DateTime? _lastCheckInDate;
  Set<String> _completedChallengeIds = <String>{};
  Set<String> _unlockedAchievementIds = <String>{};
  Map<String, int> _quizAnswers = <String, int>{};
  List<SavingsEntry> _history = <SavingsEntry>[];

  @override
  void initState() {
    super.initState();
    _loadState();
  }

  @override
  void dispose() {
    _goalNameController.dispose();
    _goalTargetController.dispose();
    _addMoneyController.dispose();
    _monthlyIncomeController.dispose();
    _monthlyNeedsController.dispose();
    _monthlyWantsController.dispose();
    super.dispose();
  }

  void _loadState() {
    final prefs = widget.preferences;
    _goalName = prefs.getString(_goalNameKey) ?? _goalName;
    _goalTarget = prefs.getDouble(_goalTargetKey) ?? _goalTarget;
    _goalSaved = prefs.getDouble(_goalSavedKey) ?? _goalSaved;
    _monthlyIncome = prefs.getDouble(_monthlyIncomeKey) ?? _monthlyIncome;
    _monthlyNeeds = prefs.getDouble(_monthlyNeedsKey) ?? _monthlyNeeds;
    _monthlyWants = prefs.getDouble(_monthlyWantsKey) ?? _monthlyWants;
    _completedChallengeIds = (prefs.getStringList(_completedIdsKey) ?? <String>[]).toSet();
    _unlockedAchievementIds = (prefs.getStringList(_achievementIdsKey) ?? <String>[]).toSet();
    _streakDays = prefs.getInt(_streakDaysKey) ?? 0;

    final lastCheckIn = prefs.getString(_lastCheckInKey);
    if (lastCheckIn != null) {
      _lastCheckInDate = DateTime.tryParse(lastCheckIn);
    }

    final rawHistory = prefs.getStringList(_savingsHistoryKey) ?? <String>[];
    _history = rawHistory.map((item) => SavingsEntry.fromMap(jsonDecode(item) as Map<String, dynamic>)).toList()
      ..sort((a, b) => b.date.compareTo(a.date));

    final rawAnswers = prefs.getString(_quizAnswersKey);
    if (rawAnswers != null && rawAnswers.isNotEmpty) {
      final decoded = jsonDecode(rawAnswers) as Map<String, dynamic>;
      _quizAnswers = decoded.map((key, value) => MapEntry(key, value as int));
    }

    _goalNameController.text = _goalName;
    _goalTargetController.text = _goalTarget.toStringAsFixed(0);
    _monthlyIncomeController.text = _monthlyIncome.toStringAsFixed(0);
    _monthlyNeedsController.text = _monthlyNeeds.toStringAsFixed(0);
    _monthlyWantsController.text = _monthlyWants.toStringAsFixed(0);
    _refreshAchievements(save: false);
  }

  Future<void> _saveState() async {
    final prefs = widget.preferences;
    await prefs.setString(_goalNameKey, _goalName);
    await prefs.setDouble(_goalTargetKey, _goalTarget);
    await prefs.setDouble(_goalSavedKey, _goalSaved);
    await prefs.setDouble(_monthlyIncomeKey, _monthlyIncome);
    await prefs.setDouble(_monthlyNeedsKey, _monthlyNeeds);
    await prefs.setDouble(_monthlyWantsKey, _monthlyWants);
    await prefs.setStringList(_completedIdsKey, _completedChallengeIds.toList());
    await prefs.setStringList(_achievementIdsKey, _unlockedAchievementIds.toList());
    await prefs.setStringList(
      _savingsHistoryKey,
      _history.map((item) => jsonEncode(item.toMap())).toList(),
    );
    await prefs.setString(_quizAnswersKey, jsonEncode(_quizAnswers));
    await prefs.setInt(_streakDaysKey, _streakDays);
    if (_lastCheckInDate != null) {
      await prefs.setString(_lastCheckInKey, _lastCheckInDate!.toIso8601String());
    }
  }

  void _updateGoal() {
    final target = _parseNumber(_goalTargetController.text);
    final goalName = _goalNameController.text.trim();
    if (goalName.isEmpty || target == null || target <= 0) {
      _showMessage('Введите название цели и сумму больше нуля.');
      return;
    }

    setState(() {
      _goalName = goalName;
      _goalTarget = target;
      if (_goalSaved > _goalTarget) {
        _goalSaved = _goalTarget;
      }
      _refreshAchievements();
    });
    _showMessage('Цель сохранена локально.');
  }

  void _addSavings() {
    final amount = _parseNumber(_addMoneyController.text);
    if (amount == null || amount <= 0) {
      _showMessage('Укажи сумму пополнения больше нуля.');
      return;
    }

    final note = amount >= 5000 ? 'Сильный рывок' : 'Небольшой, но важный шаг';
    setState(() {
      _goalSaved = (_goalSaved + amount).clamp(0, _goalTarget);
      _history.insert(
        0,
        SavingsEntry(
          amount: amount,
          date: DateTime.now(),
          note: note,
        ),
      );
      if (_history.length > 8) {
        _history = _history.take(8).toList();
      }
      _addMoneyController.clear();
      _refreshAchievements();
    });
    _showMessage('Пополнение добавлено в историю.');
  }

  void _saveMonthlyPlan() {
    final income = _parseNumber(_monthlyIncomeController.text);
    final needs = _parseNumber(_monthlyNeedsController.text);
    final wants = _parseNumber(_monthlyWantsController.text);

    if (income == null || needs == null || wants == null || income <= 0 || needs < 0 || wants < 0) {
      _showMessage('Проверь числа в месячном плане.');
      return;
    }

    setState(() {
      _monthlyIncome = income;
      _monthlyNeeds = needs;
      _monthlyWants = wants;
      _completedChallengeIds.add('plan_month');
      _refreshAchievements();
    });
    _showMessage('Месячный план обновлен.');
  }

  void _toggleChallenge(String id, bool value) {
    setState(() {
      if (value) {
        _completedChallengeIds.add(id);
      } else {
        _completedChallengeIds.remove(id);
      }
      _refreshAchievements();
    });
  }

  void _checkInToday() {
    final now = DateTime.now();
    final today = DateTime(now.year, now.month, now.day);
    final last = _lastCheckInDate == null
        ? null
        : DateTime(_lastCheckInDate!.year, _lastCheckInDate!.month, _lastCheckInDate!.day);

    if (last == today) {
      _showMessage('Сегодняшняя отметка уже есть.');
      return;
    }

    setState(() {
      if (last != null && today.difference(last).inDays == 1) {
        _streakDays += 1;
      } else {
        _streakDays = 1;
      }
      _lastCheckInDate = today;
      _refreshAchievements();
    });
    _showMessage('10 минут для финансов сегодня засчитаны.');
  }

  void _answerQuiz(QuizQuestion question, int index) {
    setState(() {
      _quizAnswers[question.id] = index;
      _refreshAchievements();
    });
  }

  void _refreshAchievements({bool save = true}) {
    final unlocked = <String>{..._unlockedAchievementIds};
    if (_completedChallengeIds.isNotEmpty) {
      unlocked.add('first_step');
    }
    if (_completedChallengeIds.length >= 2) {
      unlocked.add('steady_player');
    }
    if (_goalTarget > 0 && (_goalSaved / _goalTarget) >= 0.25) {
      unlocked.add('goal_keeper');
    }
    if (_monthlyIncome > 0) {
      unlocked.add('planner');
    }
    if (_quizAnswers.length == _quiz.length) {
      unlocked.add('investor_mind');
    }
    if (_streakDays >= 3) {
      unlocked.add('streak_three');
    }
    _unlockedAchievementIds = unlocked;
    if (save) {
      _saveState();
    }
  }

  void _showMessage(String text) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(text)));
  }

  double? _parseNumber(String raw) {
    return double.tryParse(raw.replaceAll(' ', '').replaceAll(',', '.'));
  }

  int get _rating {
    final challengeScore = _completedChallengeIds.fold<int>(
      0,
      (sum, id) => sum + _challenges.firstWhere((item) => item.id == id).reward,
    );
    final achievementScore = _unlockedAchievementIds.length * 30;
    final streakScore = _streakDays * 5;
    final quizScore = _quizCorrectCount * 15;
    return challengeScore + achievementScore + streakScore + quizScore;
  }

  double get _progress => _goalTarget == 0 ? 0 : (_goalSaved / _goalTarget).clamp(0, 1);

  double get _freeCash => (_monthlyIncome - _monthlyNeeds - _monthlyWants).clamp(-999999999, 999999999);

  double get _recommendedMonthlySavings => _freeCash > 0 ? _freeCash : 0;

  int get _monthsToGoal {
    final remaining = (_goalTarget - _goalSaved).clamp(0, double.infinity);
    if (_recommendedMonthlySavings <= 0) {
      return 0;
    }
    return (remaining / _recommendedMonthlySavings).ceil();
  }

  int get _quizCorrectCount {
    var total = 0;
    for (final question in _quiz) {
      if (_quizAnswers[question.id] == question.correctIndex) {
        total += 1;
      }
    }
    return total;
  }

  @override
  Widget build(BuildContext context) {
    final pages = <Widget>[
      _buildHomeTab(),
      _buildPlanTab(),
      _buildChallengeTab(),
      _buildInvestmentTab(),
    ];

    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFFF7F3EA), Color(0xFFE5F4EF)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: SafeArea(
          child: IndexedStack(
            index: _selectedTab,
            children: pages,
          ),
        ),
      ),
      bottomNavigationBar: NavigationBar(
        selectedIndex: _selectedTab,
        onDestinationSelected: (index) => setState(() => _selectedTab = index),
        destinations: const [
          NavigationDestination(icon: Icon(Icons.home_rounded), label: 'Главная'),
          NavigationDestination(icon: Icon(Icons.calendar_month_rounded), label: 'План'),
          NavigationDestination(icon: Icon(Icons.emoji_events_rounded), label: 'Челленджи'),
          NavigationDestination(icon: Icon(Icons.school_rounded), label: 'Инвестиции'),
        ],
      ),
    );
  }

  Widget _buildHomeTab() {
    return ListView(
      padding: const EdgeInsets.fromLTRB(20, 16, 20, 24),
      children: [
        _HeroCard(rating: _rating, streakDays: _streakDays),
        const SizedBox(height: 16),
        _SectionCard(
          title: 'Моя мечта',
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextField(
                controller: _goalNameController,
                decoration: const InputDecoration(
                  labelText: 'Название цели',
                  hintText: 'Например, дом у моря',
                ),
              ),
              const SizedBox(height: 12),
              TextField(
                controller: _goalTargetController,
                keyboardType: const TextInputType.numberWithOptions(decimal: true),
                decoration: const InputDecoration(
                  labelText: 'Сколько нужно накопить',
                  suffixText: '₽',
                ),
              ),
              const SizedBox(height: 12),
              FilledButton(
                onPressed: _updateGoal,
                child: const Text('Сохранить цель'),
              ),
              const SizedBox(height: 20),
              Text(
                _goalName,
                style: const TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
              ),
              const SizedBox(height: 8),
              Text(
                'Накоплено ${_formatMoney(_goalSaved)} из ${_formatMoney(_goalTarget)}',
                style: TextStyle(
                  color: Colors.grey.shade700,
                  fontSize: 16,
                ),
              ),
              const SizedBox(height: 14),
              ClipRRect(
                borderRadius: BorderRadius.circular(999),
                child: LinearProgressIndicator(
                  minHeight: 14,
                  value: _progress,
                  backgroundColor: Colors.white,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                '${(_progress * 100).toStringAsFixed(0)}% до мечты',
                style: const TextStyle(fontWeight: FontWeight.w600),
              ),
              const SizedBox(height: 16),
              Row(
                children: [
                  Expanded(
                    child: TextField(
                      controller: _addMoneyController,
                      keyboardType: const TextInputType.numberWithOptions(decimal: true),
                      decoration: const InputDecoration(
                        labelText: 'Добавить в копилку',
                        suffixText: '₽',
                      ),
                    ),
                  ),
                  const SizedBox(width: 12),
                  FilledButton.icon(
                    onPressed: _addSavings,
                    icon: const Icon(Icons.add_rounded),
                    label: const Text('Добавить'),
                  ),
                ],
              ),
            ],
          ),
        ),
        const SizedBox(height: 16),
        Row(
          children: [
            Expanded(
              child: _StatCard(
                title: 'Рейтинг',
                value: '$_rating XP',
                subtitle: 'очки за дисциплину и прогресс',
                color: const Color(0xFFFFF1C7),
              ),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: _StatCard(
                title: 'Ачивки',
                value: '${_unlockedAchievementIds.length}/${_achievements.length}',
                subtitle: 'уже разблокировано',
                color: const Color(0xFFDDF5E8),
              ),
            ),
          ],
        ),
        const SizedBox(height: 12),
        Row(
          children: [
            Expanded(
              child: _StatCard(
                title: 'Серия',
                value: '$_streakDays дн.',
                subtitle: 'дней подряд по 10 минут',
                color: const Color(0xFFFFDFD2),
              ),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: _StatCard(
                title: 'До цели',
                value: _monthsToGoal == 0 ? 'н/д' : '$_monthsToGoal мес.',
                subtitle: 'если откладывать свободный остаток',
                color: const Color(0xFFE0E7FF),
              ),
            ),
          ],
        ),
        const SizedBox(height: 16),
        _SectionCard(
          title: 'Ежедневная отметка',
          child: Row(
            children: [
              Expanded(
                child: Text(
                  _lastCheckInDate == null
                      ? 'Сегодня еще нет отметки. Проведи 10 минут с финансами.'
                      : 'Последняя отметка: ${_formatDate(_lastCheckInDate!)}',
                  style: const TextStyle(fontSize: 16, height: 1.35),
                ),
              ),
              const SizedBox(width: 12),
              FilledButton(
                onPressed: _checkInToday,
                child: const Text('Отметить'),
              ),
            ],
          ),
        ),
        const SizedBox(height: 16),
        _SectionCard(
          title: 'История накоплений',
          child: _history.isEmpty
              ? const Text('Пока пусто. Добавь первое пополнение и начни историю прогресса.')
              : Column(
                  children: _history
                      .map(
                        (entry) => ListTile(
                          contentPadding: EdgeInsets.zero,
                          leading: CircleAvatar(
                            backgroundColor: const Color(0xFFD8F0E3),
                            child: const Icon(Icons.savings_rounded, color: Color(0xFF0F766E)),
                          ),
                          title: Text('+ ${_formatMoney(entry.amount)}'),
                          subtitle: Text('${entry.note} • ${_formatDate(entry.date)}'),
                        ),
                      )
                      .toList(),
                ),
        ),
      ],
    );
  }

  Widget _buildPlanTab() {
    final needsRatio = _monthlyIncome > 0 ? (_monthlyNeeds / _monthlyIncome).clamp(0, 1) : 0.0;
    final wantsRatio = _monthlyIncome > 0 ? (_monthlyWants / _monthlyIncome).clamp(0, 1) : 0.0;
    final saveRatio = _monthlyIncome > 0 ? (_recommendedMonthlySavings / _monthlyIncome).clamp(0, 1) : 0.0;

    return ListView(
      padding: const EdgeInsets.fromLTRB(20, 16, 20, 24),
      children: [
        _SectionCard(
          title: 'Месячный план',
          child: Column(
            children: [
              TextField(
                controller: _monthlyIncomeController,
                keyboardType: const TextInputType.numberWithOptions(decimal: true),
                decoration: const InputDecoration(
                  labelText: 'Доход за месяц',
                  suffixText: '₽',
                ),
              ),
              const SizedBox(height: 12),
              TextField(
                controller: _monthlyNeedsController,
                keyboardType: const TextInputType.numberWithOptions(decimal: true),
                decoration: const InputDecoration(
                  labelText: 'Обязательные траты',
                  suffixText: '₽',
                ),
              ),
              const SizedBox(height: 12),
              TextField(
                controller: _monthlyWantsController,
                keyboardType: const TextInputType.numberWithOptions(decimal: true),
                decoration: const InputDecoration(
                  labelText: 'Гибкие траты',
                  suffixText: '₽',
                ),
              ),
              const SizedBox(height: 12),
              Align(
                alignment: Alignment.centerLeft,
                child: FilledButton.icon(
                  onPressed: _saveMonthlyPlan,
                  icon: const Icon(Icons.save_rounded),
                  label: const Text('Сохранить план'),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 16),
        Row(
          children: [
            Expanded(
              child: _StatCard(
                title: 'Свободный остаток',
                value: _formatMoney(_freeCash),
                subtitle: _freeCash >= 0 ? 'можно направить в цель' : 'траты выше дохода',
                color: _freeCash >= 0 ? const Color(0xFFDDF5E8) : const Color(0xFFFFDFD2),
              ),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: _StatCard(
                title: 'Рекомендация',
                value: _formatMoney(_recommendedMonthlySavings),
                subtitle: 'разумно откладывать ежемесячно',
                color: const Color(0xFFE0E7FF),
              ),
            ),
          ],
        ),
        const SizedBox(height: 16),
        _SectionCard(
          title: 'Разбор месяца',
          child: Column(
            children: [
              _BudgetBar(
                title: 'Обязательные траты',
                amount: _monthlyNeeds,
                ratio: needsRatio.toDouble(),
                color: const Color(0xFF0F766E),
              ),
              const SizedBox(height: 14),
              _BudgetBar(
                title: 'Гибкие траты',
                amount: _monthlyWants,
                ratio: wantsRatio.toDouble(),
                color: const Color(0xFFEA580C),
              ),
              const SizedBox(height: 14),
              _BudgetBar(
                title: 'Потенциал накопления',
                amount: _recommendedMonthlySavings,
                ratio: saveRatio.toDouble(),
                color: const Color(0xFF1D4ED8),
              ),
            ],
          ),
        ),
        const SizedBox(height: 16),
        _SectionCard(
          title: 'Подсказка',
          child: Text(
            _freeCash >= 0
                ? 'Если оставлять ${_formatMoney(_recommendedMonthlySavings)} в месяц, цель можно закрыть примерно за ${_monthsToGoal == 0 ? '1 месяц' : '$_monthsToGoal мес.'}.'
                : 'Сейчас свободный остаток отрицательный. Сначала стоит сократить гибкие траты или увеличить доход.',
            style: const TextStyle(fontSize: 16, height: 1.4),
          ),
        ),
      ],
    );
  }

  Widget _buildChallengeTab() {
    final completed = _completedChallengeIds.length;
    final total = _challenges.length;
    final ratio = total == 0 ? 0.0 : completed / total;

    return ListView(
      padding: const EdgeInsets.fromLTRB(20, 16, 20, 24),
      children: [
        _SectionCard(
          title: 'Прогресс челленджей',
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '$completed из $total заданий закрыто',
                style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
              ),
              const SizedBox(height: 12),
              ClipRRect(
                borderRadius: BorderRadius.circular(999),
                child: LinearProgressIndicator(
                  minHeight: 12,
                  value: ratio,
                  backgroundColor: Colors.white,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 16),
        _SectionCard(
          title: 'Финансовые челленджи',
          child: Column(
            children: _challenges
                .map(
                  (challenge) => Container(
                    margin: const EdgeInsets.only(bottom: 10),
                    padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                    decoration: BoxDecoration(
                      color: const Color(0xFFF8FAFC),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: SwitchListTile(
                      value: _completedChallengeIds.contains(challenge.id),
                      contentPadding: EdgeInsets.zero,
                      title: Text(
                        challenge.title,
                        style: const TextStyle(fontWeight: FontWeight.w700),
                      ),
                      subtitle: Text(
                        '${challenge.category} • ${challenge.description}\nНаграда: ${challenge.reward} XP',
                      ),
                      onChanged: (value) => _toggleChallenge(challenge.id, value),
                    ),
                  ),
                )
                .toList(),
          ),
        ),
        const SizedBox(height: 16),
        _SectionCard(
          title: 'Ачивки',
          child: Column(
            children: _achievements.map((achievement) {
              final unlocked = _unlockedAchievementIds.contains(achievement.id);
              return ListTile(
                contentPadding: EdgeInsets.zero,
                leading: CircleAvatar(
                  backgroundColor: unlocked ? const Color(0xFF0F766E) : const Color(0xFFE7E5E4),
                  foregroundColor: unlocked ? Colors.white : Colors.black54,
                  child: Icon(achievement.icon),
                ),
                title: Text(achievement.title),
                subtitle: Text(achievement.description),
                trailing: Text(
                  unlocked ? 'Открыто' : 'Закрыто',
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    color: unlocked ? const Color(0xFF0F766E) : Colors.black45,
                  ),
                ),
              );
            }).toList(),
          ),
        ),
      ],
    );
  }

  Widget _buildInvestmentTab() {
    final cards = const [
      InvestmentCardData(
        title: 'Вклады',
        subtitle: 'Самый понятный старт',
        text: 'Банк берет ваши деньги на время и платит процент. Доход обычно ниже, зато логика очень прозрачная.',
        accent: Color(0xFFD8F0E3),
        risk: 'Низкий риск',
      ),
      InvestmentCardData(
        title: 'Облигации',
        subtitle: 'Похоже на расписку',
        text:
            'Вы даете деньги в долг компании или государству, а они возвращают сумму с процентами в оговоренный срок.',
        accent: Color(0xFFFFE4C7),
        risk: 'Умеренный риск',
      ),
      InvestmentCardData(
        title: 'Фонды',
        subtitle: 'Одна корзина вместо десятков выборов',
        text: 'Фонд собирает несколько активов сразу. Так новичку легче начать и не выбирать все вручную.',
        accent: Color(0xFFE4E2FF),
        risk: 'Риск зависит от состава',
      ),
    ];

    return ListView(
      padding: const EdgeInsets.fromLTRB(20, 16, 20, 24),
      children: [
        _SectionCard(
          title: 'Понятные инвестиции',
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                'Рассказываем простыми словами, как работают вклады, облигации и фонды. Без воды и сложных формул.',
                style: TextStyle(fontSize: 16, height: 1.4),
              ),
              SizedBox(height: 10),
              Text(
                'Это учебный раздел. Он ничего не отправляет в интернет и не подключает брокера.',
                style: TextStyle(fontSize: 14, color: Colors.black54, height: 1.4),
              ),
            ],
          ),
        ),
        const SizedBox(height: 16),
        ...cards.map(
          (card) => Padding(
            padding: const EdgeInsets.only(bottom: 12),
            child: Container(
              padding: const EdgeInsets.all(18),
              decoration: BoxDecoration(
                color: card.accent,
                borderRadius: BorderRadius.circular(24),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    card.title,
                    style: const TextStyle(fontSize: 22, fontWeight: FontWeight.w700),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    card.subtitle,
                    style: const TextStyle(fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(height: 8),
                  Text(card.risk, style: const TextStyle(fontWeight: FontWeight.w700)),
                  const SizedBox(height: 10),
                  Text(
                    card.text,
                    style: const TextStyle(fontSize: 16, height: 1.45),
                  ),
                ],
              ),
            ),
          ),
        ),
        _SectionCard(
          title: 'Мини-квиз',
          child: Column(
            children: _quiz.map((question) {
              final selected = _quizAnswers[question.id];
              final isAnswered = selected != null;
              final isCorrect = selected == question.correctIndex;
              return Container(
                margin: const EdgeInsets.only(bottom: 16),
                padding: const EdgeInsets.all(14),
                decoration: BoxDecoration(
                  color: const Color(0xFFF8FAFC),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      question.title,
                      style: const TextStyle(fontSize: 17, fontWeight: FontWeight.w700),
                    ),
                    const SizedBox(height: 10),
                    ...List.generate(question.options.length, (index) {
                      return RadioListTile<int>(
                        value: index,
                        groupValue: selected,
                        contentPadding: EdgeInsets.zero,
                        title: Text(question.options[index]),
                        onChanged: (value) {
                          if (value != null) {
                            _answerQuiz(question, value);
                          }
                        },
                      );
                    }),
                    if (isAnswered)
                      Text(
                        isCorrect ? 'Верно. ${question.explanation}' : 'Почти. ${question.explanation}',
                        style: TextStyle(
                          height: 1.4,
                          color: isCorrect ? const Color(0xFF0F766E) : const Color(0xFF9A3412),
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                  ],
                ),
              );
            }).toList(),
          ),
        ),
        const SizedBox(height: 16),
        _StatCard(
          title: 'Результат квиза',
          value: '$_quizCorrectCount/${_quiz.length}',
          subtitle: 'правильных ответов',
          color: const Color(0xFFDDF5E8),
        ),
      ],
    );
  }

  String _formatMoney(double value) {
    final sign = value < 0 ? '-' : '';
    final absolute = value.abs().toStringAsFixed(0);
    final chunks = <String>[];
    for (var i = absolute.length; i > 0; i -= 3) {
      final start = (i - 3).clamp(0, absolute.length);
      chunks.insert(0, absolute.substring(start, i));
    }
    return '$sign${chunks.join(' ')} ₽';
  }

  String _formatDate(DateTime date) {
    final day = date.day.toString().padLeft(2, '0');
    final month = date.month.toString().padLeft(2, '0');
    return '$day.$month.${date.year}';
  }
}

class _HeroCard extends StatelessWidget {
  const _HeroCard({
    required this.rating,
    required this.streakDays,
  });

  final int rating;
  final int streakDays;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(32),
        gradient: const LinearGradient(
          colors: [Color(0xFF0F766E), Color(0xFF1D4ED8)],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Wrap(
            spacing: 10,
            runSpacing: 10,
            children: [
              _HeroChip(text: 'Локально и без лишнего'),
              _HeroChip(text: 'Серия: $streakDays дн.'),
            ],
          ),
          const SizedBox(height: 18),
          const Text(
            'Хочешь перестать считать дни до зарплаты и начать копить на мечту?',
            style: TextStyle(
              color: Colors.white,
              fontSize: 30,
              fontWeight: FontWeight.w700,
              height: 1.1,
            ),
          ),
          const SizedBox(height: 12),
          Text(
            '«Финансы» превращает скучную бухгалтерию в увлекательный квест по достижению целей. Всего 10 минут в день, чтобы лучше понимать свои деньги.',
            style: TextStyle(
              color: Colors.white.withValues(alpha: 0.92),
              fontSize: 16,
              height: 1.4,
            ),
          ),
          const SizedBox(height: 18),
          Text(
            'Текущий рейтинг: $rating XP',
            style: TextStyle(
              color: Colors.amber.shade100,
              fontWeight: FontWeight.w700,
            ),
          ),
        ],
      ),
    );
  }
}

class _HeroChip extends StatelessWidget {
  const _HeroChip({required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      decoration: BoxDecoration(
        color: Colors.white.withValues(alpha: 0.16),
        borderRadius: BorderRadius.circular(999),
      ),
      child: Text(
        text,
        style: TextStyle(
          color: Colors.white.withValues(alpha: 0.95),
          fontWeight: FontWeight.w700,
        ),
      ),
    );
  }
}

class _SectionCard extends StatelessWidget {
  const _SectionCard({
    required this.title,
    required this.child,
  });

  final String title;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white.withValues(alpha: 0.9),
        borderRadius: BorderRadius.circular(28),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(fontSize: 22, fontWeight: FontWeight.w700),
          ),
          const SizedBox(height: 14),
          child,
        ],
      ),
    );
  }
}

class _StatCard extends StatelessWidget {
  const _StatCard({
    required this.title,
    required this.value,
    required this.subtitle,
    required this.color,
  });

  final String title;
  final String value;
  final String subtitle;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(18),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(24),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title, style: const TextStyle(fontWeight: FontWeight.w600)),
          const SizedBox(height: 10),
          Text(
            value,
            style: const TextStyle(fontSize: 26, fontWeight: FontWeight.w700),
          ),
          const SizedBox(height: 6),
          Text(subtitle),
        ],
      ),
    );
  }
}

class _BudgetBar extends StatelessWidget {
  const _BudgetBar({
    required this.title,
    required this.amount,
    required this.ratio,
    required this.color,
  });

  final String title;
  final double amount;
  final double ratio;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Expanded(
              child: Text(
                title,
                style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
              ),
            ),
            Text('${amount.toStringAsFixed(0)} ₽'),
          ],
        ),
        const SizedBox(height: 8),
        ClipRRect(
          borderRadius: BorderRadius.circular(999),
          child: LinearProgressIndicator(
            minHeight: 12,
            value: ratio,
            color: color,
            backgroundColor: Colors.grey.shade200,
          ),
        ),
      ],
    );
  }
}

class ChallengeItem {
  const ChallengeItem({
    required this.id,
    required this.title,
    required this.description,
    required this.reward,
    required this.category,
  });

  final String id;
  final String title;
  final String description;
  final int reward;
  final String category;
}

class AchievementItem {
  const AchievementItem({
    required this.id,
    required this.title,
    required this.description,
    required this.icon,
  });

  final String id;
  final String title;
  final String description;
  final IconData icon;
}

class InvestmentCardData {
  const InvestmentCardData({
    required this.title,
    required this.subtitle,
    required this.text,
    required this.accent,
    required this.risk,
  });

  final String title;
  final String subtitle;
  final String text;
  final Color accent;
  final String risk;
}

class SavingsEntry {
  const SavingsEntry({
    required this.amount,
    required this.date,
    required this.note,
  });

  final double amount;
  final DateTime date;
  final String note;

  Map<String, dynamic> toMap() {
    return {
      'amount': amount,
      'date': date.toIso8601String(),
      'note': note,
    };
  }

  factory SavingsEntry.fromMap(Map<String, dynamic> map) {
    return SavingsEntry(
      amount: (map['amount'] as num).toDouble(),
      date: DateTime.parse(map['date'] as String),
      note: map['note'] as String,
    );
  }
}

class QuizQuestion {
  const QuizQuestion({
    required this.id,
    required this.title,
    required this.options,
    required this.correctIndex,
    required this.explanation,
  });

  final String id;
  final String title;
  final List<String> options;
  final int correctIndex;
  final String explanation;
}
