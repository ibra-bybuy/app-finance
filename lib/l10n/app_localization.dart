import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localization_ar.dart';
import 'app_localization_az.dart';
import 'app_localization_be.dart';
import 'app_localization_cs.dart';
import 'app_localization_de.dart';
import 'app_localization_en.dart';
import 'app_localization_es.dart';
import 'app_localization_fa.dart';
import 'app_localization_fr.dart';
import 'app_localization_hi.dart';
import 'app_localization_it.dart';
import 'app_localization_ja.dart';
import 'app_localization_ko.dart';
import 'app_localization_nl.dart';
import 'app_localization_pl.dart';
import 'app_localization_pt.dart';
import 'app_localization_ro.dart';
import 'app_localization_ru.dart';
import 'app_localization_tr.dart';
import 'app_localization_uk.dart';
import 'app_localization_uz.dart';
import 'app_localization_zh.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'l10n/app_localization.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale)
      : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('en'),
    Locale('be'),
    Locale('uk'),
    Locale('pl'),
    Locale('pt'),
    Locale('fr'),
    Locale('de'),
    Locale('zh'),
    Locale('hi'),
    Locale('uz'),
    Locale('fa'),
    Locale('ar'),
    Locale('az'),
    Locale('ja'),
    Locale('es'),
    Locale('it'),
    Locale('tr'),
    Locale('ko'),
    Locale('nl'),
    Locale('cs'),
    Locale('ro'),
    Locale('ru'),
    Locale('be', 'EU'),
    Locale('pt', 'BR'),
    Locale('zh', 'TW')
  ];

  /// No description provided for @a.
  ///
  /// In ru, this message translates to:
  /// **'Запустить `dart run grinder sort-translations --quiet` для сортировки'**
  String get a;

  /// No description provided for @aboutHeadline.
  ///
  /// In ru, this message translates to:
  /// **'О сервисе'**
  String get aboutHeadline;

  /// No description provided for @account.
  ///
  /// In ru, this message translates to:
  /// **'Профиль'**
  String get account;

  /// No description provided for @accountFrom.
  ///
  /// In ru, this message translates to:
  /// **'Из профиля'**
  String get accountFrom;

  /// No description provided for @accountHeadline.
  ///
  /// In ru, this message translates to:
  /// **'Профили'**
  String get accountHeadline;

  /// No description provided for @accountTo.
  ///
  /// In ru, this message translates to:
  /// **'В профиль'**
  String get accountTo;

  /// No description provided for @accountTooltip.
  ///
  /// In ru, this message translates to:
  /// **'Открыть профили'**
  String get accountTooltip;

  /// No description provided for @accountType.
  ///
  /// In ru, this message translates to:
  /// **'Тип профиля'**
  String get accountType;

  /// No description provided for @accountTypeTooltip.
  ///
  /// In ru, this message translates to:
  /// **'Выбрать тип профиля'**
  String get accountTypeTooltip;

  /// No description provided for @acknowledgeTooltip.
  ///
  /// In ru, this message translates to:
  /// **'Подтвердить'**
  String get acknowledgeTooltip;

  /// No description provided for @activate.
  ///
  /// In ru, this message translates to:
  /// **'Активировать'**
  String get activate;

  /// No description provided for @actualData.
  ///
  /// In ru, this message translates to:
  /// **'Исторические данные'**
  String get actualData;

  /// No description provided for @addAccountTooltip.
  ///
  /// In ru, this message translates to:
  /// **'Добавить профиль'**
  String get addAccountTooltip;

  /// No description provided for @addBudgetTooltip.
  ///
  /// In ru, this message translates to:
  /// **'Добавить новую категорию бюджета'**
  String get addBudgetTooltip;

  /// No description provided for @addGoalTooltip.
  ///
  /// In ru, this message translates to:
  /// **'Добавить новую цель'**
  String get addGoalTooltip;

  /// No description provided for @addMainTooltip.
  ///
  /// In ru, this message translates to:
  /// **'Добавить счёт, доход или перевод'**
  String get addMainTooltip;

  /// No description provided for @afterNDays.
  ///
  /// In ru, this message translates to:
  /// **'через {value} дней'**
  String afterNDays(Object value);

  /// No description provided for @amountFrom.
  ///
  /// In ru, this message translates to:
  /// **'Сумма от'**
  String get amountFrom;

  /// No description provided for @amountTo.
  ///
  /// In ru, this message translates to:
  /// **'Сумма до'**
  String get amountTo;

  /// No description provided for @appBuild.
  ///
  /// In ru, this message translates to:
  /// **'Сборка: {build}'**
  String appBuild(Object build);

  /// No description provided for @appInitHeadline.
  ///
  /// In ru, this message translates to:
  /// **'Инициализация приложения'**
  String get appInitHeadline;

  /// No description provided for @appStartHeadline.
  ///
  /// In ru, this message translates to:
  /// **'Первый запуск'**
  String get appStartHeadline;

  /// No description provided for @appTitle.
  ///
  /// In ru, this message translates to:
  /// **'Финансы'**
  String get appTitle;

  /// No description provided for @appVersion.
  ///
  /// In ru, this message translates to:
  /// **'Версия: {version}'**
  String appVersion(Object version);

  /// No description provided for @automationHeadline.
  ///
  /// In ru, this message translates to:
  /// **'Автоматизация'**
  String get automationHeadline;

  /// No description provided for @automationTypeDays.
  ///
  /// In ru, this message translates to:
  /// **'через несколько дней'**
  String get automationTypeDays;

  /// No description provided for @backTooltip.
  ///
  /// In ru, this message translates to:
  /// **'Вернуться назад'**
  String get backTooltip;

  /// No description provided for @balance.
  ///
  /// In ru, this message translates to:
  /// **'Текущий баланс'**
  String get balance;

  /// No description provided for @balanceDate.
  ///
  /// In ru, this message translates to:
  /// **'Дата расчёта баланса'**
  String get balanceDate;

  /// No description provided for @balanceDateTooltip.
  ///
  /// In ru, this message translates to:
  /// **'Доходы и расходы до этой даты не влияют на баланс'**
  String get balanceDateTooltip;

  /// No description provided for @balanceTooltip.
  ///
  /// In ru, this message translates to:
  /// **'Установить баланс'**
  String get balanceTooltip;

  /// No description provided for @bankAccount.
  ///
  /// In ru, this message translates to:
  /// **'Банковский счёт'**
  String get bankAccount;

  /// No description provided for @bill.
  ///
  /// In ru, this message translates to:
  /// **'Операция'**
  String get bill;

  /// No description provided for @billHeadline.
  ///
  /// In ru, this message translates to:
  /// **'Операции'**
  String get billHeadline;

  /// No description provided for @billSetTooltip.
  ///
  /// In ru, this message translates to:
  /// **'Установить сумму'**
  String get billSetTooltip;

  /// No description provided for @billSum.
  ///
  /// In ru, this message translates to:
  /// **'Операции: {value}'**
  String billSum(Object value);

  /// No description provided for @billTooltip.
  ///
  /// In ru, this message translates to:
  /// **'Открыть операции'**
  String get billTooltip;

  /// No description provided for @billTypeTooltip.
  ///
  /// In ru, this message translates to:
  /// **'[Тип] Расход, доход или перевод'**
  String get billTypeTooltip;

  /// No description provided for @brightnessTheme.
  ///
  /// In ru, this message translates to:
  /// **'Яркость темы'**
  String get brightnessTheme;

  /// No description provided for @btnAdd.
  ///
  /// In ru, this message translates to:
  /// **'Добавить'**
  String get btnAdd;

  /// No description provided for @btnCancel.
  ///
  /// In ru, this message translates to:
  /// **'Отмена'**
  String get btnCancel;

  /// No description provided for @btnConfirm.
  ///
  /// In ru, this message translates to:
  /// **'Подтвердить'**
  String get btnConfirm;

  /// No description provided for @btnMore.
  ///
  /// In ru, this message translates to:
  /// **'Ещё'**
  String get btnMore;

  /// No description provided for @budget.
  ///
  /// In ru, this message translates to:
  /// **'Категория бюджета'**
  String get budget;

  /// No description provided for @budgetHeadline.
  ///
  /// In ru, this message translates to:
  /// **'Бюджеты'**
  String get budgetHeadline;

  /// No description provided for @budgetLimit.
  ///
  /// In ru, this message translates to:
  /// **'Лимит в месяц'**
  String get budgetLimit;

  /// No description provided for @budgetLimitHeadline.
  ///
  /// In ru, this message translates to:
  /// **'Настройка лимитов'**
  String get budgetLimitHeadline;

  /// No description provided for @budgetRelativeLimit.
  ///
  /// In ru, this message translates to:
  /// **'Относительный коэффициент в месяц'**
  String get budgetRelativeLimit;

  /// No description provided for @budgetTooltip.
  ///
  /// In ru, this message translates to:
  /// **'Открыть категории бюджета'**
  String get budgetTooltip;

  /// No description provided for @budgetType.
  ///
  /// In ru, this message translates to:
  /// **'Период бюджета'**
  String get budgetType;

  /// No description provided for @budgetTypeAsIs.
  ///
  /// In ru, this message translates to:
  /// **'Без ограничений'**
  String get budgetTypeAsIs;

  /// No description provided for @budgetTypeFixed.
  ///
  /// In ru, this message translates to:
  /// **'Фиксированный'**
  String get budgetTypeFixed;

  /// No description provided for @budgetTypeMonth.
  ///
  /// In ru, this message translates to:
  /// **'ежемесячно'**
  String get budgetTypeMonth;

  /// No description provided for @budgetTypeRelative.
  ///
  /// In ru, this message translates to:
  /// **'Относительный'**
  String get budgetTypeRelative;

  /// No description provided for @budgetTypeWeek.
  ///
  /// In ru, this message translates to:
  /// **'еженедельно'**
  String get budgetTypeWeek;

  /// No description provided for @budgetTypeYear.
  ///
  /// In ru, this message translates to:
  /// **'ежегодно'**
  String get budgetTypeYear;

  /// No description provided for @cash.
  ///
  /// In ru, this message translates to:
  /// **'Наличные'**
  String get cash;

  /// No description provided for @chartBarRace.
  ///
  /// In ru, this message translates to:
  /// **'Гонка столбцов по категориям'**
  String get chartBarRace;

  /// No description provided for @chartForecast.
  ///
  /// In ru, this message translates to:
  /// **'Прогноз'**
  String get chartForecast;

  /// No description provided for @chartOHLC.
  ///
  /// In ru, this message translates to:
  /// **'Свечной график (OHLC)'**
  String get chartOHLC;

  /// No description provided for @chartYtdExpense.
  ///
  /// In ru, this message translates to:
  /// **'Расходы с начала года'**
  String get chartYtdExpense;

  /// No description provided for @clear.
  ///
  /// In ru, this message translates to:
  /// **'Очистить значение'**
  String get clear;

  /// No description provided for @closeTooltip.
  ///
  /// In ru, this message translates to:
  /// **'Закрыть'**
  String get closeTooltip;

  /// No description provided for @closedAt.
  ///
  /// In ru, this message translates to:
  /// **'Завершено до даты'**
  String get closedAt;

  /// No description provided for @cmpChart.
  ///
  /// In ru, this message translates to:
  /// **'Диаграммы'**
  String get cmpChart;

  /// No description provided for @cmpRecent.
  ///
  /// In ru, this message translates to:
  /// **'Недавние'**
  String get cmpRecent;

  /// No description provided for @cmpRecentCount.
  ///
  /// In ru, this message translates to:
  /// **'Размер списка'**
  String get cmpRecentCount;

  /// No description provided for @coAuthor.
  ///
  /// In ru, this message translates to:
  /// **'автор'**
  String get coAuthor;

  /// No description provided for @coConsult.
  ///
  /// In ru, this message translates to:
  /// **'консультант'**
  String get coConsult;

  /// No description provided for @coDeveloper.
  ///
  /// In ru, this message translates to:
  /// **'разработчик'**
  String get coDeveloper;

  /// No description provided for @coNew.
  ///
  /// In ru, this message translates to:
  /// **'Присоединиться'**
  String get coNew;

  /// No description provided for @coPromoter.
  ///
  /// In ru, this message translates to:
  /// **'промоутер'**
  String get coPromoter;

  /// No description provided for @coTranslator.
  ///
  /// In ru, this message translates to:
  /// **'переводчик'**
  String get coTranslator;

  /// No description provided for @coef.
  ///
  /// In ru, this message translates to:
  /// **'коэф.'**
  String get coef;

  /// No description provided for @collapse.
  ///
  /// In ru, this message translates to:
  /// **'Свернуть (восстановить) раздел'**
  String get collapse;

  /// No description provided for @color.
  ///
  /// In ru, this message translates to:
  /// **'Цвет'**
  String get color;

  /// No description provided for @colorApp.
  ///
  /// In ru, this message translates to:
  /// **'Пользовательская'**
  String get colorApp;

  /// No description provided for @colorBackground.
  ///
  /// In ru, this message translates to:
  /// **'Фон'**
  String get colorBackground;

  /// No description provided for @colorDark.
  ///
  /// In ru, this message translates to:
  /// **'Тёмная'**
  String get colorDark;

  /// No description provided for @colorInversePrimary.
  ///
  /// In ru, this message translates to:
  /// **'Инверсный основной'**
  String get colorInversePrimary;

  /// No description provided for @colorInverseSurface.
  ///
  /// In ru, this message translates to:
  /// **'Инверсная поверхность'**
  String get colorInverseSurface;

  /// No description provided for @colorLight.
  ///
  /// In ru, this message translates to:
  /// **'Светлая'**
  String get colorLight;

  /// No description provided for @colorOnInverseSurface.
  ///
  /// In ru, this message translates to:
  /// **'Текст на инверсной поверхности'**
  String get colorOnInverseSurface;

  /// No description provided for @colorOnSecondary.
  ///
  /// In ru, this message translates to:
  /// **'Текст на вторичном'**
  String get colorOnSecondary;

  /// No description provided for @colorOnSecondaryContainer.
  ///
  /// In ru, this message translates to:
  /// **'Текст на контейнере'**
  String get colorOnSecondaryContainer;

  /// No description provided for @colorPrimary.
  ///
  /// In ru, this message translates to:
  /// **'Основной'**
  String get colorPrimary;

  /// No description provided for @colorRestore.
  ///
  /// In ru, this message translates to:
  /// **'Сбросить палитру'**
  String get colorRestore;

  /// No description provided for @colorSecondary.
  ///
  /// In ru, this message translates to:
  /// **'Вторичный'**
  String get colorSecondary;

  /// No description provided for @colorSystem.
  ///
  /// In ru, this message translates to:
  /// **'Системная'**
  String get colorSystem;

  /// No description provided for @colorTheme.
  ///
  /// In ru, this message translates to:
  /// **'Палитра'**
  String get colorTheme;

  /// No description provided for @colorTooltip.
  ///
  /// In ru, this message translates to:
  /// **'Выбрать цвет'**
  String get colorTooltip;

  /// No description provided for @colorType.
  ///
  /// In ru, this message translates to:
  /// **'Тип цвета'**
  String get colorType;

  /// No description provided for @colorUser.
  ///
  /// In ru, this message translates to:
  /// **'Пользовательская'**
  String get colorUser;

  /// No description provided for @columnMap.
  ///
  /// In ru, this message translates to:
  /// **'Сопоставление для колонки «{value}»'**
  String columnMap(Object value);

  /// No description provided for @columnMapTooltip.
  ///
  /// In ru, this message translates to:
  /// **'«{value}» — выбрать сопоставление колонки'**
  String columnMapTooltip(Object value);

  /// No description provided for @completeGoalTooltip.
  ///
  /// In ru, this message translates to:
  /// **'Завершить цель'**
  String get completeGoalTooltip;

  /// No description provided for @confirmHeader.
  ///
  /// In ru, this message translates to:
  /// **'Подтверждение действия'**
  String get confirmHeader;

  /// No description provided for @confirmTooltip.
  ///
  /// In ru, this message translates to:
  /// **'Вы уверены? Это действие нельзя отменить.'**
  String get confirmTooltip;

  /// No description provided for @contributors.
  ///
  /// In ru, this message translates to:
  /// **'Участники'**
  String get contributors;

  /// No description provided for @conversion.
  ///
  /// In ru, this message translates to:
  /// **'Конвертация'**
  String get conversion;

  /// No description provided for @conversionMessage.
  ///
  /// In ru, this message translates to:
  /// **'Учтено в валюте {currency}'**
  String conversionMessage(Object currency);

  /// No description provided for @copiedToClipboard.
  ///
  /// In ru, this message translates to:
  /// **'Скопировано в буфер обмена'**
  String get copiedToClipboard;

  /// No description provided for @createAccountHeader.
  ///
  /// In ru, this message translates to:
  /// **'Создать новый профиль'**
  String get createAccountHeader;

  /// No description provided for @createAccountTooltip.
  ///
  /// In ru, this message translates to:
  /// **'Создать новый профиль'**
  String get createAccountTooltip;

  /// No description provided for @createBillHeader.
  ///
  /// In ru, this message translates to:
  /// **'Создать операцию'**
  String get createBillHeader;

  /// No description provided for @createBillTooltip.
  ///
  /// In ru, this message translates to:
  /// **'Добавить операцию'**
  String get createBillTooltip;

  /// No description provided for @createBudgetHeader.
  ///
  /// In ru, this message translates to:
  /// **'Новая категория бюджета'**
  String get createBudgetHeader;

  /// No description provided for @createBudgetTooltip.
  ///
  /// In ru, this message translates to:
  /// **'Создать категорию бюджета'**
  String get createBudgetTooltip;

  /// No description provided for @createGoalHeader.
  ///
  /// In ru, this message translates to:
  /// **'Создать цель'**
  String get createGoalHeader;

  /// No description provided for @createGoalTooltip.
  ///
  /// In ru, this message translates to:
  /// **'Добавить цель'**
  String get createGoalTooltip;

  /// No description provided for @createIncomeTooltip.
  ///
  /// In ru, this message translates to:
  /// **'Добавить доход'**
  String get createIncomeTooltip;

  /// No description provided for @createPaymentTooltip.
  ///
  /// In ru, this message translates to:
  /// **'Добавить платёж'**
  String get createPaymentTooltip;

  /// No description provided for @createTransferTooltip.
  ///
  /// In ru, this message translates to:
  /// **'Создать перевод'**
  String get createTransferTooltip;

  /// No description provided for @credit.
  ///
  /// In ru, this message translates to:
  /// **'Кредит'**
  String get credit;

  /// No description provided for @creditCard.
  ///
  /// In ru, this message translates to:
  /// **'Кредитная карта'**
  String get creditCard;

  /// No description provided for @currency.
  ///
  /// In ru, this message translates to:
  /// **'Валюта'**
  String get currency;

  /// No description provided for @currencyAddHeadline.
  ///
  /// In ru, this message translates to:
  /// **'Обмен валют'**
  String get currencyAddHeadline;

  /// No description provided for @currencyAddTooltip.
  ///
  /// In ru, this message translates to:
  /// **'Добавить курс обмена валют'**
  String get currencyAddTooltip;

  /// No description provided for @currencyDefault.
  ///
  /// In ru, this message translates to:
  /// **'Валюта по умолчанию'**
  String get currencyDefault;

  /// No description provided for @currencyDistribution.
  ///
  /// In ru, this message translates to:
  /// **'Распределение'**
  String get currencyDistribution;

  /// No description provided for @currencyExchange.
  ///
  /// In ru, this message translates to:
  /// **'Обмен валют: {from} → {to}'**
  String currencyExchange(Object from, Object to);

  /// No description provided for @currencyHeadline.
  ///
  /// In ru, this message translates to:
  /// **'Валюты'**
  String get currencyHeadline;

  /// No description provided for @currencyIn.
  ///
  /// In ru, this message translates to:
  /// **'В {value}'**
  String currencyIn(Object value);

  /// No description provided for @currencyShort.
  ///
  /// In ru, this message translates to:
  /// **'Вал.'**
  String get currencyShort;

  /// No description provided for @currencyTooltip.
  ///
  /// In ru, this message translates to:
  /// **'Тип валюты (код)'**
  String get currencyTooltip;

  /// No description provided for @currencyUpdateTooltip.
  ///
  /// In ru, this message translates to:
  /// **'Обновить курсы валют'**
  String get currencyUpdateTooltip;

  /// No description provided for @currentDate.
  ///
  /// In ru, this message translates to:
  /// **'Текущая дата'**
  String get currentDate;

  /// No description provided for @customAddTooltip.
  ///
  /// In ru, this message translates to:
  /// **'Добавить виджет'**
  String get customAddTooltip;

  /// No description provided for @customDeleteTooltip.
  ///
  /// In ru, this message translates to:
  /// **'Удалить настройку'**
  String get customDeleteTooltip;

  /// No description provided for @customSaveTooltip.
  ///
  /// In ru, this message translates to:
  /// **'Сохранить настройку'**
  String get customSaveTooltip;

  /// No description provided for @customizeTooltip.
  ///
  /// In ru, this message translates to:
  /// **'Настроить страницу'**
  String get customizeTooltip;

  /// No description provided for @darkMode.
  ///
  /// In ru, this message translates to:
  /// **'Тёмный режим'**
  String get darkMode;

  /// No description provided for @dateFormat.
  ///
  /// In ru, this message translates to:
  /// **'Формат даты'**
  String get dateFormat;

  /// No description provided for @dateRange.
  ///
  /// In ru, this message translates to:
  /// **'Диапазон дат'**
  String get dateRange;

  /// No description provided for @dateTooltip.
  ///
  /// In ru, this message translates to:
  /// **'Выбрать дату'**
  String get dateTooltip;

  /// No description provided for @dayMonday.
  ///
  /// In ru, this message translates to:
  /// **'Понедельник'**
  String get dayMonday;

  /// No description provided for @dayStartOfMonth.
  ///
  /// In ru, this message translates to:
  /// **'Начало месяца'**
  String get dayStartOfMonth;

  /// No description provided for @dayStartOfWeek.
  ///
  /// In ru, this message translates to:
  /// **'Начало недели'**
  String get dayStartOfWeek;

  /// No description provided for @daySunday.
  ///
  /// In ru, this message translates to:
  /// **'Воскресенье'**
  String get daySunday;

  /// No description provided for @debitCard.
  ///
  /// In ru, this message translates to:
  /// **'Дебетовая карта'**
  String get debitCard;

  /// No description provided for @def.
  ///
  /// In ru, this message translates to:
  /// **'Значение по умолчанию для «{value}»'**
  String def(Object value);

  /// No description provided for @deleteAccountTooltip.
  ///
  /// In ru, this message translates to:
  /// **'Деактивировать профиль'**
  String get deleteAccountTooltip;

  /// No description provided for @deleteBillTooltip.
  ///
  /// In ru, this message translates to:
  /// **'Удалить операцию'**
  String get deleteBillTooltip;

  /// No description provided for @deleteBudgetTooltip.
  ///
  /// In ru, this message translates to:
  /// **'Деактивировать категорию бюджета'**
  String get deleteBudgetTooltip;

  /// No description provided for @deleteGoalTooltip.
  ///
  /// In ru, this message translates to:
  /// **'Удалить цель'**
  String get deleteGoalTooltip;

  /// No description provided for @deleteInvoiceTooltip.
  ///
  /// In ru, this message translates to:
  /// **'Удалить счёт'**
  String get deleteInvoiceTooltip;

  /// No description provided for @deletePaymentTooltip.
  ///
  /// In ru, this message translates to:
  /// **'Удалить платёж'**
  String get deletePaymentTooltip;

  /// No description provided for @deleteTooltip.
  ///
  /// In ru, this message translates to:
  /// **'Удалить'**
  String get deleteTooltip;

  /// No description provided for @deleteTransferTooltip.
  ///
  /// In ru, this message translates to:
  /// **'Удалить перевод'**
  String get deleteTransferTooltip;

  /// No description provided for @deposit.
  ///
  /// In ru, this message translates to:
  /// **'Депозит'**
  String get deposit;

  /// No description provided for @description.
  ///
  /// In ru, this message translates to:
  /// **'Описание'**
  String get description;

  /// No description provided for @descriptionTooltip.
  ///
  /// In ru, this message translates to:
  /// **'Указать детали расхода'**
  String get descriptionTooltip;

  /// No description provided for @design.
  ///
  /// In ru, this message translates to:
  /// **'Режим оформления (культурный)'**
  String get design;

  /// No description provided for @designAsiaGeneral.
  ///
  /// In ru, this message translates to:
  /// **'Азия (общий)'**
  String get designAsiaGeneral;

  /// No description provided for @designGermany.
  ///
  /// In ru, this message translates to:
  /// **'Германия'**
  String get designGermany;

  /// No description provided for @designGlobal.
  ///
  /// In ru, this message translates to:
  /// **'Глобальный'**
  String get designGlobal;

  /// No description provided for @designRtlGeneral.
  ///
  /// In ru, this message translates to:
  /// **'Справа налево'**
  String get designRtlGeneral;

  /// No description provided for @details.
  ///
  /// In ru, this message translates to:
  /// **'Детали'**
  String get details;

  /// No description provided for @detailsTooltip.
  ///
  /// In ru, this message translates to:
  /// **'****2345 — последние 4 цифры номера'**
  String get detailsTooltip;

  /// No description provided for @dtAm.
  ///
  /// In ru, this message translates to:
  /// **'дп'**
  String get dtAm;

  /// No description provided for @dtAmPm.
  ///
  /// In ru, this message translates to:
  /// **'час в формате am/pm (0–11)'**
  String get dtAmPm;

  /// No description provided for @dtDay.
  ///
  /// In ru, this message translates to:
  /// **'день месяца'**
  String get dtDay;

  /// No description provided for @dtEscape.
  ///
  /// In ru, this message translates to:
  /// **'экранирование текста'**
  String get dtEscape;

  /// No description provided for @dtHalfHour.
  ///
  /// In ru, this message translates to:
  /// **'час в формате am/pm (1–12)'**
  String get dtHalfHour;

  /// No description provided for @dtHour.
  ///
  /// In ru, this message translates to:
  /// **'час дня (0–23)'**
  String get dtHour;

  /// No description provided for @dtMinute.
  ///
  /// In ru, this message translates to:
  /// **'минута'**
  String get dtMinute;

  /// No description provided for @dtMonth.
  ///
  /// In ru, this message translates to:
  /// **'месяц'**
  String get dtMonth;

  /// No description provided for @dtNamedDay.
  ///
  /// In ru, this message translates to:
  /// **'день недели'**
  String get dtNamedDay;

  /// No description provided for @dtPm.
  ///
  /// In ru, this message translates to:
  /// **'пп'**
  String get dtPm;

  /// No description provided for @dtQuote.
  ///
  /// In ru, this message translates to:
  /// **'одинарная кавычка'**
  String get dtQuote;

  /// No description provided for @dtSecond.
  ///
  /// In ru, this message translates to:
  /// **'секунда'**
  String get dtSecond;

  /// No description provided for @dtYear.
  ///
  /// In ru, this message translates to:
  /// **'год'**
  String get dtYear;

  /// No description provided for @editAccountHeader.
  ///
  /// In ru, this message translates to:
  /// **'Обновить профиль'**
  String get editAccountHeader;

  /// No description provided for @editAccountTooltip.
  ///
  /// In ru, this message translates to:
  /// **'Редактировать профиль'**
  String get editAccountTooltip;

  /// No description provided for @editBillHeader.
  ///
  /// In ru, this message translates to:
  /// **'Обновить операцию'**
  String get editBillHeader;

  /// No description provided for @editBillTooltip.
  ///
  /// In ru, this message translates to:
  /// **'Редактировать операцию'**
  String get editBillTooltip;

  /// No description provided for @editBudgetHeader.
  ///
  /// In ru, this message translates to:
  /// **'Обновить категорию бюджета'**
  String get editBudgetHeader;

  /// No description provided for @editBudgetTooltip.
  ///
  /// In ru, this message translates to:
  /// **'Редактировать категорию бюджета'**
  String get editBudgetTooltip;

  /// No description provided for @editGoalHeader.
  ///
  /// In ru, this message translates to:
  /// **'Обновить цель'**
  String get editGoalHeader;

  /// No description provided for @editGoalTooltip.
  ///
  /// In ru, this message translates to:
  /// **'Редактировать цель'**
  String get editGoalTooltip;

  /// No description provided for @editInvoiceTooltip.
  ///
  /// In ru, this message translates to:
  /// **'Редактировать счёт'**
  String get editInvoiceTooltip;

  /// No description provided for @editPaymentTooltip.
  ///
  /// In ru, this message translates to:
  /// **'Редактировать платёж'**
  String get editPaymentTooltip;

  /// No description provided for @editTooltip.
  ///
  /// In ru, this message translates to:
  /// **'Редактировать'**
  String get editTooltip;

  /// No description provided for @editTransferTooltip.
  ///
  /// In ru, this message translates to:
  /// **'Редактировать перевод'**
  String get editTransferTooltip;

  /// No description provided for @encryptionMode.
  ///
  /// In ru, this message translates to:
  /// **'Шифрование данных'**
  String get encryptionMode;

  /// No description provided for @error.
  ///
  /// In ru, this message translates to:
  /// **'Ошибка: {value}'**
  String error(Object value);

  /// No description provided for @errorExpired.
  ///
  /// In ru, this message translates to:
  /// **'Срок действия карты истёк'**
  String get errorExpired;

  /// No description provided for @errorNegative.
  ///
  /// In ru, this message translates to:
  /// **'Значение не может быть отрицательным! Пожалуйста, исправьте ошибку'**
  String get errorNegative;

  /// No description provided for @example.
  ///
  /// In ru, this message translates to:
  /// **'Пример'**
  String get example;

  /// No description provided for @expand.
  ///
  /// In ru, this message translates to:
  /// **'Развернуть раздел'**
  String get expand;

  /// No description provided for @expense.
  ///
  /// In ru, this message translates to:
  /// **'Сумма расходов'**
  String get expense;

  /// No description provided for @expenseDateTime.
  ///
  /// In ru, this message translates to:
  /// **'Дата операции'**
  String get expenseDateTime;

  /// No description provided for @expenseHeadline.
  ///
  /// In ru, this message translates to:
  /// **'Расход'**
  String get expenseHeadline;

  /// No description provided for @expenseTransfer.
  ///
  /// In ru, this message translates to:
  /// **'Сумма перевода'**
  String get expenseTransfer;

  /// No description provided for @exportFile.
  ///
  /// In ru, this message translates to:
  /// **'Экспортировать в файл .{value}'**
  String exportFile(Object value);

  /// No description provided for @failData.
  ///
  /// In ru, this message translates to:
  /// **'Списание суммы'**
  String get failData;

  /// No description provided for @flowTypeInvoice.
  ///
  /// In ru, this message translates to:
  /// **'Счёт'**
  String get flowTypeInvoice;

  /// No description provided for @flowTypeTooltip.
  ///
  /// In ru, this message translates to:
  /// **'Тип суммы: операция, счёт'**
  String get flowTypeTooltip;

  /// No description provided for @forecastData.
  ///
  /// In ru, this message translates to:
  /// **'Прогноз'**
  String get forecastData;

  /// No description provided for @from.
  ///
  /// In ru, this message translates to:
  /// **'из'**
  String get from;

  /// No description provided for @goNextTooltip.
  ///
  /// In ru, this message translates to:
  /// **'Перейти далее'**
  String get goNextTooltip;

  /// No description provided for @goalHeadline.
  ///
  /// In ru, this message translates to:
  /// **'Цели'**
  String get goalHeadline;

  /// No description provided for @goalProfit.
  ///
  /// In ru, this message translates to:
  /// **'Цель: {value}'**
  String goalProfit(Object value);

  /// No description provided for @goalProfitTooltip.
  ///
  /// In ru, this message translates to:
  /// **'Прибыль относительно цели'**
  String get goalProfitTooltip;

  /// No description provided for @goalTooltip.
  ///
  /// In ru, this message translates to:
  /// **'Открыть цели'**
  String get goalTooltip;

  /// No description provided for @hasEncrypted.
  ///
  /// In ru, this message translates to:
  /// **'После установки нельзя изменить'**
  String get hasEncrypted;

  /// No description provided for @helpTooltip.
  ///
  /// In ru, this message translates to:
  /// **'[Справка] Показать описание страницы'**
  String get helpTooltip;

  /// No description provided for @homeHeadline.
  ///
  /// In ru, this message translates to:
  /// **'Главная'**
  String get homeHeadline;

  /// No description provided for @homeTooltip.
  ///
  /// In ru, this message translates to:
  /// **'Вернуться на главную страницу'**
  String get homeTooltip;

  /// No description provided for @icon.
  ///
  /// In ru, this message translates to:
  /// **'Иконка'**
  String get icon;

  /// No description provided for @iconTooltip.
  ///
  /// In ru, this message translates to:
  /// **'Выбрать иконку'**
  String get iconTooltip;

  /// No description provided for @ignoreTooltip.
  ///
  /// In ru, this message translates to:
  /// **'Игнорировать'**
  String get ignoreTooltip;

  /// No description provided for @importHeadline.
  ///
  /// In ru, this message translates to:
  /// **'Импорт / Экспорт'**
  String get importHeadline;

  /// No description provided for @income.
  ///
  /// In ru, this message translates to:
  /// **'Сумма доходов'**
  String get income;

  /// No description provided for @incomeHeadline.
  ///
  /// In ru, this message translates to:
  /// **'Доход'**
  String get incomeHeadline;

  /// No description provided for @incomeHealth.
  ///
  /// In ru, this message translates to:
  /// **'Радар финансового здоровья'**
  String get incomeHealth;

  /// No description provided for @incomeTooltip.
  ///
  /// In ru, this message translates to:
  /// **'Указать детали дохода'**
  String get incomeTooltip;

  /// No description provided for @invoiceHeadline.
  ///
  /// In ru, this message translates to:
  /// **'Счета'**
  String get invoiceHeadline;

  /// No description provided for @invoiceSum.
  ///
  /// In ru, this message translates to:
  /// **'Счета: {value}'**
  String invoiceSum(Object value);

  /// No description provided for @isCleaned.
  ///
  /// In ru, this message translates to:
  /// **'Удалить существующие данные'**
  String get isCleaned;

  /// No description provided for @isCreated.
  ///
  /// In ru, this message translates to:
  /// **'Уже создано, выполните следующие шаги!'**
  String get isCreated;

  /// No description provided for @isEncrypted.
  ///
  /// In ru, this message translates to:
  /// **'Файл зашифрован (по умолчанию)'**
  String get isEncrypted;

  /// No description provided for @isRequired.
  ///
  /// In ru, this message translates to:
  /// **'обязательно'**
  String get isRequired;

  /// No description provided for @language.
  ///
  /// In ru, this message translates to:
  /// **'Язык'**
  String get language;

  /// No description provided for @left.
  ///
  /// In ru, this message translates to:
  /// **'слева'**
  String get left;

  /// No description provided for @lightMode.
  ///
  /// In ru, this message translates to:
  /// **'Светлый режим'**
  String get lightMode;

  /// No description provided for @link.
  ///
  /// In ru, this message translates to:
  /// **'URL (ссылка)'**
  String get link;

  /// No description provided for @meaning.
  ///
  /// In ru, this message translates to:
  /// **'Значение'**
  String get meaning;

  /// No description provided for @metricsHeadline.
  ///
  /// In ru, this message translates to:
  /// **'Метрики'**
  String get metricsHeadline;

  /// No description provided for @metricsTooltip.
  ///
  /// In ru, this message translates to:
  /// **'Метрики'**
  String get metricsTooltip;

  /// No description provided for @milestones.
  ///
  /// In ru, this message translates to:
  /// **'Этапы'**
  String get milestones;

  /// No description provided for @missingContent.
  ///
  /// In ru, this message translates to:
  /// **'Файл не может быть обработан (отменён или повреждён)'**
  String get missingContent;

  /// No description provided for @navigationTooltip.
  ///
  /// In ru, this message translates to:
  /// **'Открыть главное меню'**
  String get navigationTooltip;

  /// No description provided for @netProfit.
  ///
  /// In ru, this message translates to:
  /// **'Прибыль: {value}'**
  String netProfit(Object value);

  /// No description provided for @noChartData.
  ///
  /// In ru, this message translates to:
  /// **'Недостаточно данных для отображения'**
  String get noChartData;

  /// No description provided for @notifyHeadline.
  ///
  /// In ru, this message translates to:
  /// **'Парсер уведомлений'**
  String get notifyHeadline;

  /// No description provided for @ok.
  ///
  /// In ru, this message translates to:
  /// **'ОК'**
  String get ok;

  /// No description provided for @orderPin.
  ///
  /// In ru, this message translates to:
  /// **'Приоритетный порядок'**
  String get orderPin;

  /// No description provided for @orderUnpin.
  ///
  /// In ru, this message translates to:
  /// **'Обычный порядок'**
  String get orderUnpin;

  /// No description provided for @outputFile.
  ///
  /// In ru, this message translates to:
  /// **'Файл назначения'**
  String get outputFile;

  /// No description provided for @parseFile.
  ///
  /// In ru, this message translates to:
  /// **'Обработать файл'**
  String get parseFile;

  /// No description provided for @password.
  ///
  /// In ru, this message translates to:
  /// **'Пароль'**
  String get password;

  /// No description provided for @path.
  ///
  /// In ru, this message translates to:
  /// **'Имя файла (для сохранения или загрузки)'**
  String get path;

  /// No description provided for @paymentType.
  ///
  /// In ru, this message translates to:
  /// **'Периодичность платежа'**
  String get paymentType;

  /// No description provided for @paymentsHeadline.
  ///
  /// In ru, this message translates to:
  /// **'Регулярные платежи'**
  String get paymentsHeadline;

  /// No description provided for @pearDisabled.
  ///
  /// In ru, this message translates to:
  /// **'-- отключено --'**
  String get pearDisabled;

  /// No description provided for @pearLoading.
  ///
  /// In ru, this message translates to:
  /// **'Выполняется...'**
  String get pearLoading;

  /// No description provided for @peerAccept.
  ///
  /// In ru, this message translates to:
  /// **'принять'**
  String get peerAccept;

  /// No description provided for @peerAction.
  ///
  /// In ru, this message translates to:
  /// **'Действие'**
  String get peerAction;

  /// No description provided for @peerClosed.
  ///
  /// In ru, this message translates to:
  /// **'завершено'**
  String get peerClosed;

  /// No description provided for @peerConnect.
  ///
  /// In ru, this message translates to:
  /// **'Подключить устройство'**
  String get peerConnect;

  /// No description provided for @peerConnectBtn.
  ///
  /// In ru, this message translates to:
  /// **'подключить'**
  String get peerConnectBtn;

  /// No description provided for @peerDelete.
  ///
  /// In ru, this message translates to:
  /// **'удалить'**
  String get peerDelete;

  /// No description provided for @peerDevice.
  ///
  /// In ru, this message translates to:
  /// **'Подключённые устройства'**
  String get peerDevice;

  /// No description provided for @peerId.
  ///
  /// In ru, this message translates to:
  /// **'Идентификатор вашего устройства'**
  String get peerId;

  /// No description provided for @peerOffline.
  ///
  /// In ru, this message translates to:
  /// **'не в сети'**
  String get peerOffline;

  /// No description provided for @peerOnline.
  ///
  /// In ru, this message translates to:
  /// **'подключено'**
  String get peerOnline;

  /// No description provided for @peerOtherId.
  ///
  /// In ru, this message translates to:
  /// **'Идентификатор устройства для подключения'**
  String get peerOtherId;

  /// No description provided for @peerPending.
  ///
  /// In ru, this message translates to:
  /// **'ожидание'**
  String get peerPending;

  /// No description provided for @peerPing.
  ///
  /// In ru, this message translates to:
  /// **'пинг'**
  String get peerPing;

  /// No description provided for @peerSent.
  ///
  /// In ru, this message translates to:
  /// **'Данные переданы на подключённые устройства'**
  String get peerSent;

  /// No description provided for @peerStatus.
  ///
  /// In ru, this message translates to:
  /// **'Статус'**
  String get peerStatus;

  /// No description provided for @peerSync.
  ///
  /// In ru, this message translates to:
  /// **'Передать данные'**
  String get peerSync;

  /// No description provided for @pickFile.
  ///
  /// In ru, this message translates to:
  /// **'Выбрать файл .{value}'**
  String pickFile(Object value);

  /// No description provided for @pongStatus.
  ///
  /// In ru, this message translates to:
  /// **'Получен запрос от {uuid}'**
  String pongStatus(Object uuid);

  /// No description provided for @processIsFinished.
  ///
  /// In ru, this message translates to:
  /// **'Завершено!'**
  String get processIsFinished;

  /// No description provided for @progress.
  ///
  /// In ru, this message translates to:
  /// **'Прогресс: {value}%'**
  String progress(Object value);

  /// No description provided for @raiseData.
  ///
  /// In ru, this message translates to:
  /// **'Начисление суммы'**
  String get raiseData;

  /// No description provided for @recoveryHeadline.
  ///
  /// In ru, this message translates to:
  /// **'Восстановление'**
  String get recoveryHeadline;

  /// No description provided for @recoveryTooltip.
  ///
  /// In ru, this message translates to:
  /// **'Восстановить из'**
  String get recoveryTooltip;

  /// No description provided for @releases.
  ///
  /// In ru, this message translates to:
  /// **'Релизы'**
  String get releases;

  /// No description provided for @reset.
  ///
  /// In ru, this message translates to:
  /// **'сбросить'**
  String get reset;

  /// No description provided for @returnBack.
  ///
  /// In ru, this message translates to:
  /// **'Вернуться назад'**
  String get returnBack;

  /// No description provided for @roadmap.
  ///
  /// In ru, this message translates to:
  /// **'Дорожная карта'**
  String get roadmap;

  /// No description provided for @saveNotification.
  ///
  /// In ru, this message translates to:
  /// **'Изменения сохранены!'**
  String get saveNotification;

  /// No description provided for @saveSettingsTooltip.
  ///
  /// In ru, this message translates to:
  /// **'Сохранить'**
  String get saveSettingsTooltip;

  /// No description provided for @saveTooltip.
  ///
  /// In ru, this message translates to:
  /// **'Сохранить в'**
  String get saveTooltip;

  /// No description provided for @search.
  ///
  /// In ru, this message translates to:
  /// **'Показать по шаблону «{value}»'**
  String search(Object value);

  /// No description provided for @searchTooltip.
  ///
  /// In ru, this message translates to:
  /// **'Поиск'**
  String get searchTooltip;

  /// No description provided for @settingsBaseHeadline.
  ///
  /// In ru, this message translates to:
  /// **'Основные'**
  String get settingsBaseHeadline;

  /// No description provided for @settingsHeadline.
  ///
  /// In ru, this message translates to:
  /// **'Настройки'**
  String get settingsHeadline;

  /// No description provided for @skipFromTotals.
  ///
  /// In ru, this message translates to:
  /// **'Исключить из итогов'**
  String get skipFromTotals;

  /// No description provided for @skipTooltip.
  ///
  /// In ru, this message translates to:
  /// **'Пропустить шаг(и)'**
  String get skipTooltip;

  /// No description provided for @spent.
  ///
  /// In ru, this message translates to:
  /// **'потрачено'**
  String get spent;

  /// No description provided for @splitCancelTooltip.
  ///
  /// In ru, this message translates to:
  /// **'Отменить разделение по месяцам'**
  String get splitCancelTooltip;

  /// No description provided for @splitTooltip.
  ///
  /// In ru, this message translates to:
  /// **'Задать лимиты по месяцам'**
  String get splitTooltip;

  /// No description provided for @subscription.
  ///
  /// In ru, this message translates to:
  /// **'Проект с открытым исходным кодом. Подписка не открывает дополнительных функций, но поддерживает развитие и доступность приложения.'**
  String get subscription;

  /// No description provided for @subscriptionCoffee.
  ///
  /// In ru, this message translates to:
  /// **'Купить кофе'**
  String get subscriptionCoffee;

  /// No description provided for @subscriptionDinner.
  ///
  /// In ru, this message translates to:
  /// **'Угостить ужином'**
  String get subscriptionDinner;

  /// No description provided for @subscriptionDonorbox.
  ///
  /// In ru, this message translates to:
  /// **'Подписаться через Donorbox'**
  String get subscriptionDonorbox;

  /// No description provided for @subscriptionGithub.
  ///
  /// In ru, this message translates to:
  /// **'Подписаться через GitHub'**
  String get subscriptionGithub;

  /// No description provided for @subscriptionHeadline.
  ///
  /// In ru, this message translates to:
  /// **'Поддержка проекта'**
  String get subscriptionHeadline;

  /// No description provided for @subscriptionInactive.
  ///
  /// In ru, this message translates to:
  /// **'Покупка недоступна'**
  String get subscriptionInactive;

  /// No description provided for @subscriptionPatreon.
  ///
  /// In ru, this message translates to:
  /// **'Подписаться через Patreon'**
  String get subscriptionPatreon;

  /// No description provided for @subscriptionPaypal.
  ///
  /// In ru, this message translates to:
  /// **'Купить кофе (PayPal)'**
  String get subscriptionPaypal;

  /// No description provided for @subscriptionTiny.
  ///
  /// In ru, this message translates to:
  /// **'Подарить счастливую монету'**
  String get subscriptionTiny;

  /// No description provided for @subscriptionTooltip.
  ///
  /// In ru, this message translates to:
  /// **'Поддержать проект'**
  String get subscriptionTooltip;

  /// No description provided for @success.
  ///
  /// In ru, this message translates to:
  /// **'Успешно'**
  String get success;

  /// No description provided for @summary.
  ///
  /// In ru, this message translates to:
  /// **'Итог'**
  String get summary;

  /// No description provided for @symbol.
  ///
  /// In ru, this message translates to:
  /// **'Символ'**
  String get symbol;

  /// No description provided for @syncHeadline.
  ///
  /// In ru, this message translates to:
  /// **'Синхронизация устройств'**
  String get syncHeadline;

  /// No description provided for @systemMode.
  ///
  /// In ru, this message translates to:
  /// **'Системный'**
  String get systemMode;

  /// No description provided for @tapToOpen.
  ///
  /// In ru, this message translates to:
  /// **'Нажмите, чтобы открыть'**
  String get tapToOpen;

  /// No description provided for @targetAmount.
  ///
  /// In ru, this message translates to:
  /// **'Целевая сумма'**
  String get targetAmount;

  /// No description provided for @termPrivacy.
  ///
  /// In ru, this message translates to:
  /// **'Политика конфиденциальности'**
  String get termPrivacy;

  /// No description provided for @termUse.
  ///
  /// In ru, this message translates to:
  /// **'Условия использования'**
  String get termUse;

  /// No description provided for @title.
  ///
  /// In ru, this message translates to:
  /// **'Название'**
  String get title;

  /// No description provided for @titleAccountTooltip.
  ///
  /// In ru, this message translates to:
  /// **'Введите идентификатор профиля'**
  String get titleAccountTooltip;

  /// No description provided for @titleBudgetTooltip.
  ///
  /// In ru, this message translates to:
  /// **'Введите название категории бюджета'**
  String get titleBudgetTooltip;

  /// No description provided for @titleGoal.
  ///
  /// In ru, this message translates to:
  /// **'Цель'**
  String get titleGoal;

  /// No description provided for @titleGoalTooltip.
  ///
  /// In ru, this message translates to:
  /// **'Укажите описание цели'**
  String get titleGoalTooltip;

  /// No description provided for @to.
  ///
  /// In ru, this message translates to:
  /// **'в'**
  String get to;

  /// No description provided for @total.
  ///
  /// In ru, this message translates to:
  /// **'итого'**
  String get total;

  /// No description provided for @transactionFile.
  ///
  /// In ru, this message translates to:
  /// **'Журнал транзакций Fingrom (.log)'**
  String get transactionFile;

  /// No description provided for @transferHeadline.
  ///
  /// In ru, this message translates to:
  /// **'Перевод'**
  String get transferHeadline;

  /// No description provided for @transferTooltip.
  ///
  /// In ru, this message translates to:
  /// **'Указать детали перевода'**
  String get transferTooltip;

  /// No description provided for @transfersHeadline.
  ///
  /// In ru, this message translates to:
  /// **'Переводы'**
  String get transfersHeadline;

  /// No description provided for @typeButton.
  ///
  /// In ru, this message translates to:
  /// **'Кнопка'**
  String get typeButton;

  /// No description provided for @updateAccountTooltip.
  ///
  /// In ru, this message translates to:
  /// **'Обновить профиль'**
  String get updateAccountTooltip;

  /// No description provided for @updateBillTooltip.
  ///
  /// In ru, this message translates to:
  /// **'Обновить операцию'**
  String get updateBillTooltip;

  /// No description provided for @updateBudgetTooltip.
  ///
  /// In ru, this message translates to:
  /// **'Обновить категорию бюджета'**
  String get updateBudgetTooltip;

  /// No description provided for @updateGoalTooltip.
  ///
  /// In ru, this message translates to:
  /// **'Обновить цель'**
  String get updateGoalTooltip;

  /// No description provided for @updatePaymentTooltip.
  ///
  /// In ru, this message translates to:
  /// **'Обновить платёж'**
  String get updatePaymentTooltip;

  /// No description provided for @username.
  ///
  /// In ru, this message translates to:
  /// **'Имя пользователя (профиль)'**
  String get username;

  /// No description provided for @uuid.
  ///
  /// In ru, this message translates to:
  /// **'Уникальный идентификатор транзакции'**
  String get uuid;

  /// No description provided for @validTillDate.
  ///
  /// In ru, this message translates to:
  /// **'Действительно до'**
  String get validTillDate;

  /// No description provided for @webDav.
  ///
  /// In ru, this message translates to:
  /// **'WebDAV (распределённое управление версиями)'**
  String get webDav;

  /// No description provided for @zoomState.
  ///
  /// In ru, this message translates to:
  /// **'Приблизить / отдалить'**
  String get zoomState;
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>[
        'ar',
        'az',
        'be',
        'cs',
        'de',
        'en',
        'es',
        'fa',
        'fr',
        'hi',
        'it',
        'ja',
        'ko',
        'nl',
        'pl',
        'pt',
        'ro',
        'ru',
        'tr',
        'uk',
        'uz',
        'zh'
      ].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {
  // Lookup logic when language+country codes are specified.
  switch (locale.languageCode) {
    case 'be':
      {
        switch (locale.countryCode) {
          case 'EU':
            return AppLocalizationsBeEu();
        }
        break;
      }
    case 'pt':
      {
        switch (locale.countryCode) {
          case 'BR':
            return AppLocalizationsPtBr();
        }
        break;
      }
    case 'zh':
      {
        switch (locale.countryCode) {
          case 'TW':
            return AppLocalizationsZhTw();
        }
        break;
      }
  }

  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'ar':
      return AppLocalizationsAr();
    case 'az':
      return AppLocalizationsAz();
    case 'be':
      return AppLocalizationsBe();
    case 'cs':
      return AppLocalizationsCs();
    case 'de':
      return AppLocalizationsDe();
    case 'en':
      return AppLocalizationsEn();
    case 'es':
      return AppLocalizationsEs();
    case 'fa':
      return AppLocalizationsFa();
    case 'fr':
      return AppLocalizationsFr();
    case 'hi':
      return AppLocalizationsHi();
    case 'it':
      return AppLocalizationsIt();
    case 'ja':
      return AppLocalizationsJa();
    case 'ko':
      return AppLocalizationsKo();
    case 'nl':
      return AppLocalizationsNl();
    case 'pl':
      return AppLocalizationsPl();
    case 'pt':
      return AppLocalizationsPt();
    case 'ro':
      return AppLocalizationsRo();
    case 'ru':
      return AppLocalizationsRu();
    case 'tr':
      return AppLocalizationsTr();
    case 'uk':
      return AppLocalizationsUk();
    case 'uz':
      return AppLocalizationsUz();
    case 'zh':
      return AppLocalizationsZh();
  }

  throw FlutterError(
      'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
      'an issue with the localizations generation tool. Please file an issue '
      'on GitHub with a reproducible sample app and the gen-l10n configuration '
      'that was used.');
}
