// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localization.dart';

// ignore_for_file: type=lint

/// The translations for Russian (`ru`).
class AppLocalizationsRu extends AppLocalizations {
  AppLocalizationsRu([String locale = 'ru']) : super(locale);

  @override
  String get a =>
      'Запустить `dart run grinder sort-translations --quiet` для сортировки';

  @override
  String get aboutHeadline => 'О сервисе';

  @override
  String get account => 'Профиль';

  @override
  String get accountFrom => 'Из профиля';

  @override
  String get accountHeadline => 'Профили';

  @override
  String get accountTo => 'В профиль';

  @override
  String get accountTooltip => 'Открыть профили';

  @override
  String get accountType => 'Тип профиля';

  @override
  String get accountTypeTooltip => 'Выбрать тип профиля';

  @override
  String get acknowledgeTooltip => 'Подтвердить';

  @override
  String get activate => 'Активировать';

  @override
  String get actualData => 'Исторические данные';

  @override
  String get addAccountTooltip => 'Добавить профиль';

  @override
  String get addBudgetTooltip => 'Добавить новую категорию бюджета';

  @override
  String get addGoalTooltip => 'Добавить новую цель';

  @override
  String get addMainTooltip => 'Добавить счёт, доход или перевод';

  @override
  String afterNDays(Object value) {
    return 'через $value дней';
  }

  @override
  String get amountFrom => 'Сумма от';

  @override
  String get amountTo => 'Сумма до';

  @override
  String appBuild(Object build) {
    return 'Сборка: $build';
  }

  @override
  String get appInitHeadline => 'Инициализация приложения';

  @override
  String get appStartHeadline => 'Первый запуск';

  @override
  String get appTitle => 'Финансы';

  @override
  String appVersion(Object version) {
    return 'Версия: $version';
  }

  @override
  String get automationHeadline => 'Автоматизация';

  @override
  String get automationTypeDays => 'через несколько дней';

  @override
  String get backTooltip => 'Вернуться назад';

  @override
  String get balance => 'Текущий баланс';

  @override
  String get balanceDate => 'Дата расчёта баланса';

  @override
  String get balanceDateTooltip =>
      'Доходы и расходы до этой даты не влияют на баланс';

  @override
  String get balanceTooltip => 'Установить баланс';

  @override
  String get bankAccount => 'Банковский счёт';

  @override
  String get bill => 'Операция';

  @override
  String get billHeadline => 'Операции';

  @override
  String get billSetTooltip => 'Установить сумму';

  @override
  String billSum(Object value) {
    return 'Операции: $value';
  }

  @override
  String get billTooltip => 'Открыть операции';

  @override
  String get billTypeTooltip => '[Тип] Расход, доход или перевод';

  @override
  String get brightnessTheme => 'Яркость темы';

  @override
  String get btnAdd => 'Добавить';

  @override
  String get btnCancel => 'Отмена';

  @override
  String get btnConfirm => 'Подтвердить';

  @override
  String get btnMore => 'Ещё';

  @override
  String get budget => 'Категория бюджета';

  @override
  String get budgetHeadline => 'Бюджеты';

  @override
  String get budgetLimit => 'Лимит в месяц';

  @override
  String get budgetLimitHeadline => 'Настройка лимитов';

  @override
  String get budgetRelativeLimit => 'Относительный коэффициент в месяц';

  @override
  String get budgetTooltip => 'Открыть категории бюджета';

  @override
  String get budgetType => 'Период бюджета';

  @override
  String get budgetTypeAsIs => 'Без ограничений';

  @override
  String get budgetTypeFixed => 'Фиксированный';

  @override
  String get budgetTypeMonth => 'ежемесячно';

  @override
  String get budgetTypeRelative => 'Относительный';

  @override
  String get budgetTypeWeek => 'еженедельно';

  @override
  String get budgetTypeYear => 'ежегодно';

  @override
  String get cash => 'Наличные';

  @override
  String get chartBarRace => 'Гонка столбцов по категориям';

  @override
  String get chartForecast => 'Прогноз';

  @override
  String get chartOHLC => 'Свечной график (OHLC)';

  @override
  String get chartYtdExpense => 'Расходы с начала года';

  @override
  String get clear => 'Очистить значение';

  @override
  String get closeTooltip => 'Закрыть';

  @override
  String get closedAt => 'Завершено до даты';

  @override
  String get cmpChart => 'Диаграммы';

  @override
  String get cmpRecent => 'Недавние';

  @override
  String get cmpRecentCount => 'Размер списка';

  @override
  String get coAuthor => 'автор';

  @override
  String get coConsult => 'консультант';

  @override
  String get coDeveloper => 'разработчик';

  @override
  String get coNew => 'Присоединиться';

  @override
  String get coPromoter => 'промоутер';

  @override
  String get coTranslator => 'переводчик';

  @override
  String get coef => 'коэф.';

  @override
  String get collapse => 'Свернуть (восстановить) раздел';

  @override
  String get color => 'Цвет';

  @override
  String get colorApp => 'Пользовательская';

  @override
  String get colorBackground => 'Фон';

  @override
  String get colorDark => 'Тёмная';

  @override
  String get colorInversePrimary => 'Инверсный основной';

  @override
  String get colorInverseSurface => 'Инверсная поверхность';

  @override
  String get colorLight => 'Светлая';

  @override
  String get colorOnInverseSurface => 'Текст на инверсной поверхности';

  @override
  String get colorOnSecondary => 'Текст на вторичном';

  @override
  String get colorOnSecondaryContainer => 'Текст на контейнере';

  @override
  String get colorPrimary => 'Основной';

  @override
  String get colorRestore => 'Сбросить палитру';

  @override
  String get colorSecondary => 'Вторичный';

  @override
  String get colorSystem => 'Системная';

  @override
  String get colorTheme => 'Палитра';

  @override
  String get colorTooltip => 'Выбрать цвет';

  @override
  String get colorType => 'Тип цвета';

  @override
  String get colorUser => 'Пользовательская';

  @override
  String columnMap(Object value) {
    return 'Сопоставление для колонки «$value»';
  }

  @override
  String columnMapTooltip(Object value) {
    return '«$value» — выбрать сопоставление колонки';
  }

  @override
  String get completeGoalTooltip => 'Завершить цель';

  @override
  String get confirmHeader => 'Подтверждение действия';

  @override
  String get confirmTooltip => 'Вы уверены? Это действие нельзя отменить.';

  @override
  String get contributors => 'Участники';

  @override
  String get conversion => 'Конвертация';

  @override
  String conversionMessage(Object currency) {
    return 'Учтено в валюте $currency';
  }

  @override
  String get copiedToClipboard => 'Скопировано в буфер обмена';

  @override
  String get createAccountHeader => 'Создать новый профиль';

  @override
  String get createAccountTooltip => 'Создать новый профиль';

  @override
  String get createBillHeader => 'Создать операцию';

  @override
  String get createBillTooltip => 'Добавить операцию';

  @override
  String get createBudgetHeader => 'Новая категория бюджета';

  @override
  String get createBudgetTooltip => 'Создать категорию бюджета';

  @override
  String get createGoalHeader => 'Создать цель';

  @override
  String get createGoalTooltip => 'Добавить цель';

  @override
  String get createIncomeTooltip => 'Добавить доход';

  @override
  String get createPaymentTooltip => 'Добавить платёж';

  @override
  String get createTransferTooltip => 'Создать перевод';

  @override
  String get credit => 'Кредит';

  @override
  String get creditCard => 'Кредитная карта';

  @override
  String get currency => 'Валюта';

  @override
  String get currencyAddHeadline => 'Обмен валют';

  @override
  String get currencyAddTooltip => 'Добавить курс обмена валют';

  @override
  String get currencyDefault => 'Валюта по умолчанию';

  @override
  String get currencyDistribution => 'Распределение';

  @override
  String currencyExchange(Object from, Object to) {
    return 'Обмен валют: $from → $to';
  }

  @override
  String get currencyHeadline => 'Валюты';

  @override
  String currencyIn(Object value) {
    return 'В $value';
  }

  @override
  String get currencyShort => 'Вал.';

  @override
  String get currencyTooltip => 'Тип валюты (код)';

  @override
  String get currencyUpdateTooltip => 'Обновить курсы валют';

  @override
  String get currentDate => 'Текущая дата';

  @override
  String get customAddTooltip => 'Добавить виджет';

  @override
  String get customDeleteTooltip => 'Удалить настройку';

  @override
  String get customSaveTooltip => 'Сохранить настройку';

  @override
  String get customizeTooltip => 'Настроить страницу';

  @override
  String get darkMode => 'Тёмный режим';

  @override
  String get dateFormat => 'Формат даты';

  @override
  String get dateRange => 'Диапазон дат';

  @override
  String get dateTooltip => 'Выбрать дату';

  @override
  String get dayMonday => 'Понедельник';

  @override
  String get dayStartOfMonth => 'Начало месяца';

  @override
  String get dayStartOfWeek => 'Начало недели';

  @override
  String get daySunday => 'Воскресенье';

  @override
  String get debitCard => 'Дебетовая карта';

  @override
  String def(Object value) {
    return 'Значение по умолчанию для «$value»';
  }

  @override
  String get deleteAccountTooltip => 'Деактивировать профиль';

  @override
  String get deleteBillTooltip => 'Удалить операцию';

  @override
  String get deleteBudgetTooltip => 'Деактивировать категорию бюджета';

  @override
  String get deleteGoalTooltip => 'Удалить цель';

  @override
  String get deleteInvoiceTooltip => 'Удалить счёт';

  @override
  String get deletePaymentTooltip => 'Удалить платёж';

  @override
  String get deleteTooltip => 'Удалить';

  @override
  String get deleteTransferTooltip => 'Удалить перевод';

  @override
  String get deposit => 'Депозит';

  @override
  String get description => 'Описание';

  @override
  String get descriptionTooltip => 'Указать детали расхода';

  @override
  String get design => 'Режим оформления (культурный)';

  @override
  String get designAsiaGeneral => 'Азия (общий)';

  @override
  String get designGermany => 'Германия';

  @override
  String get designGlobal => 'Глобальный';

  @override
  String get designRtlGeneral => 'Справа налево';

  @override
  String get details => 'Детали';

  @override
  String get detailsTooltip => '****2345 — последние 4 цифры номера';

  @override
  String get dtAm => 'дп';

  @override
  String get dtAmPm => 'час в формате am/pm (0–11)';

  @override
  String get dtDay => 'день месяца';

  @override
  String get dtEscape => 'экранирование текста';

  @override
  String get dtHalfHour => 'час в формате am/pm (1–12)';

  @override
  String get dtHour => 'час дня (0–23)';

  @override
  String get dtMinute => 'минута';

  @override
  String get dtMonth => 'месяц';

  @override
  String get dtNamedDay => 'день недели';

  @override
  String get dtPm => 'пп';

  @override
  String get dtQuote => 'одинарная кавычка';

  @override
  String get dtSecond => 'секунда';

  @override
  String get dtYear => 'год';

  @override
  String get editAccountHeader => 'Обновить профиль';

  @override
  String get editAccountTooltip => 'Редактировать профиль';

  @override
  String get editBillHeader => 'Обновить операцию';

  @override
  String get editBillTooltip => 'Редактировать операцию';

  @override
  String get editBudgetHeader => 'Обновить категорию бюджета';

  @override
  String get editBudgetTooltip => 'Редактировать категорию бюджета';

  @override
  String get editGoalHeader => 'Обновить цель';

  @override
  String get editGoalTooltip => 'Редактировать цель';

  @override
  String get editInvoiceTooltip => 'Редактировать счёт';

  @override
  String get editPaymentTooltip => 'Редактировать платёж';

  @override
  String get editTooltip => 'Редактировать';

  @override
  String get editTransferTooltip => 'Редактировать перевод';

  @override
  String get encryptionMode => 'Шифрование данных';

  @override
  String error(Object value) {
    return 'Ошибка: $value';
  }

  @override
  String get errorExpired => 'Срок действия карты истёк';

  @override
  String get errorNegative =>
      'Значение не может быть отрицательным! Пожалуйста, исправьте ошибку';

  @override
  String get example => 'Пример';

  @override
  String get expand => 'Развернуть раздел';

  @override
  String get expense => 'Сумма расходов';

  @override
  String get expenseDateTime => 'Дата операции';

  @override
  String get expenseHeadline => 'Расход';

  @override
  String get expenseTransfer => 'Сумма перевода';

  @override
  String exportFile(Object value) {
    return 'Экспортировать в файл .$value';
  }

  @override
  String get failData => 'Списание суммы';

  @override
  String get flowTypeInvoice => 'Счёт';

  @override
  String get flowTypeTooltip => 'Тип суммы: операция, счёт';

  @override
  String get forecastData => 'Прогноз';

  @override
  String get from => 'из';

  @override
  String get goNextTooltip => 'Перейти далее';

  @override
  String get goalHeadline => 'Цели';

  @override
  String goalProfit(Object value) {
    return 'Цель: $value';
  }

  @override
  String get goalProfitTooltip => 'Прибыль относительно цели';

  @override
  String get goalTooltip => 'Открыть цели';

  @override
  String get hasEncrypted => 'После установки нельзя изменить';

  @override
  String get helpTooltip => '[Справка] Показать описание страницы';

  @override
  String get homeHeadline => 'Главная';

  @override
  String get homeTooltip => 'Вернуться на главную страницу';

  @override
  String get icon => 'Иконка';

  @override
  String get iconTooltip => 'Выбрать иконку';

  @override
  String get ignoreTooltip => 'Игнорировать';

  @override
  String get importHeadline => 'Импорт / Экспорт';

  @override
  String get income => 'Сумма доходов';

  @override
  String get incomeHeadline => 'Доход';

  @override
  String get incomeHealth => 'Радар финансового здоровья';

  @override
  String get incomeTooltip => 'Указать детали дохода';

  @override
  String get invoiceHeadline => 'Счета';

  @override
  String invoiceSum(Object value) {
    return 'Счета: $value';
  }

  @override
  String get isCleaned => 'Удалить существующие данные';

  @override
  String get isCreated => 'Уже создано, выполните следующие шаги!';

  @override
  String get isEncrypted => 'Файл зашифрован (по умолчанию)';

  @override
  String get isRequired => 'обязательно';

  @override
  String get language => 'Язык';

  @override
  String get left => 'слева';

  @override
  String get lightMode => 'Светлый режим';

  @override
  String get link => 'URL (ссылка)';

  @override
  String get meaning => 'Значение';

  @override
  String get metricsHeadline => 'Метрики';

  @override
  String get metricsTooltip => 'Метрики';

  @override
  String get milestones => 'Этапы';

  @override
  String get missingContent =>
      'Файл не может быть обработан (отменён или повреждён)';

  @override
  String get navigationTooltip => 'Открыть главное меню';

  @override
  String netProfit(Object value) {
    return 'Прибыль: $value';
  }

  @override
  String get noChartData => 'Недостаточно данных для отображения';

  @override
  String get notifyHeadline => 'Парсер уведомлений';

  @override
  String get ok => 'ОК';

  @override
  String get orderPin => 'Приоритетный порядок';

  @override
  String get orderUnpin => 'Обычный порядок';

  @override
  String get outputFile => 'Файл назначения';

  @override
  String get parseFile => 'Обработать файл';

  @override
  String get password => 'Пароль';

  @override
  String get path => 'Имя файла (для сохранения или загрузки)';

  @override
  String get paymentType => 'Периодичность платежа';

  @override
  String get paymentsHeadline => 'Регулярные платежи';

  @override
  String get pearDisabled => '-- отключено --';

  @override
  String get pearLoading => 'Выполняется...';

  @override
  String get peerAccept => 'принять';

  @override
  String get peerAction => 'Действие';

  @override
  String get peerClosed => 'завершено';

  @override
  String get peerConnect => 'Подключить устройство';

  @override
  String get peerConnectBtn => 'подключить';

  @override
  String get peerDelete => 'удалить';

  @override
  String get peerDevice => 'Подключённые устройства';

  @override
  String get peerId => 'Идентификатор вашего устройства';

  @override
  String get peerOffline => 'не в сети';

  @override
  String get peerOnline => 'подключено';

  @override
  String get peerOtherId => 'Идентификатор устройства для подключения';

  @override
  String get peerPending => 'ожидание';

  @override
  String get peerPing => 'пинг';

  @override
  String get peerSent => 'Данные переданы на подключённые устройства';

  @override
  String get peerStatus => 'Статус';

  @override
  String get peerSync => 'Передать данные';

  @override
  String pickFile(Object value) {
    return 'Выбрать файл .$value';
  }

  @override
  String pongStatus(Object uuid) {
    return 'Получен запрос от $uuid';
  }

  @override
  String get processIsFinished => 'Завершено!';

  @override
  String progress(Object value) {
    return 'Прогресс: $value%';
  }

  @override
  String get raiseData => 'Начисление суммы';

  @override
  String get recoveryHeadline => 'Восстановление';

  @override
  String get recoveryTooltip => 'Восстановить из';

  @override
  String get releases => 'Релизы';

  @override
  String get reset => 'сбросить';

  @override
  String get returnBack => 'Вернуться назад';

  @override
  String get roadmap => 'Дорожная карта';

  @override
  String get saveNotification => 'Изменения сохранены!';

  @override
  String get saveSettingsTooltip => 'Сохранить';

  @override
  String get saveTooltip => 'Сохранить в';

  @override
  String search(Object value) {
    return 'Показать по шаблону «$value»';
  }

  @override
  String get searchTooltip => 'Поиск';

  @override
  String get settingsBaseHeadline => 'Основные';

  @override
  String get settingsHeadline => 'Настройки';

  @override
  String get skipFromTotals => 'Исключить из итогов';

  @override
  String get skipTooltip => 'Пропустить шаг(и)';

  @override
  String get spent => 'потрачено';

  @override
  String get splitCancelTooltip => 'Отменить разделение по месяцам';

  @override
  String get splitTooltip => 'Задать лимиты по месяцам';

  @override
  String get subscription =>
      'Проект с открытым исходным кодом. Подписка не открывает дополнительных функций, но поддерживает развитие и доступность приложения.';

  @override
  String get subscriptionCoffee => 'Купить кофе';

  @override
  String get subscriptionDinner => 'Угостить ужином';

  @override
  String get subscriptionDonorbox => 'Подписаться через Donorbox';

  @override
  String get subscriptionGithub => 'Подписаться через GitHub';

  @override
  String get subscriptionHeadline => 'Поддержка проекта';

  @override
  String get subscriptionInactive => 'Покупка недоступна';

  @override
  String get subscriptionPatreon => 'Подписаться через Patreon';

  @override
  String get subscriptionPaypal => 'Купить кофе (PayPal)';

  @override
  String get subscriptionTiny => 'Подарить счастливую монету';

  @override
  String get subscriptionTooltip => 'Поддержать проект';

  @override
  String get success => 'Успешно';

  @override
  String get summary => 'Итог';

  @override
  String get symbol => 'Символ';

  @override
  String get syncHeadline => 'Синхронизация устройств';

  @override
  String get systemMode => 'Системный';

  @override
  String get tapToOpen => 'Нажмите, чтобы открыть';

  @override
  String get targetAmount => 'Целевая сумма';

  @override
  String get termPrivacy => 'Политика конфиденциальности';

  @override
  String get termUse => 'Условия использования';

  @override
  String get title => 'Название';

  @override
  String get titleAccountTooltip => 'Введите идентификатор профиля';

  @override
  String get titleBudgetTooltip => 'Введите название категории бюджета';

  @override
  String get titleGoal => 'Цель';

  @override
  String get titleGoalTooltip => 'Укажите описание цели';

  @override
  String get to => 'в';

  @override
  String get total => 'итого';

  @override
  String get transactionFile => 'Журнал транзакций Fingrom (.log)';

  @override
  String get transferHeadline => 'Перевод';

  @override
  String get transferTooltip => 'Указать детали перевода';

  @override
  String get transfersHeadline => 'Переводы';

  @override
  String get typeButton => 'Кнопка';

  @override
  String get updateAccountTooltip => 'Обновить профиль';

  @override
  String get updateBillTooltip => 'Обновить операцию';

  @override
  String get updateBudgetTooltip => 'Обновить категорию бюджета';

  @override
  String get updateGoalTooltip => 'Обновить цель';

  @override
  String get updatePaymentTooltip => 'Обновить платёж';

  @override
  String get username => 'Имя пользователя (профиль)';

  @override
  String get uuid => 'Уникальный идентификатор транзакции';

  @override
  String get validTillDate => 'Действительно до';

  @override
  String get webDav => 'WebDAV (распределённое управление версиями)';

  @override
  String get zoomState => 'Приблизить / отдалить';
}
