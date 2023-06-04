# Показать оставшееся время работы батареи, скрыть процент
defaults write com.apple.menuextra.battery ShowPercent -string "NO"
defaults write com.apple.menuextra.battery ShowTime -string "YES"

# Развернуть панель сохранения по умолчанию
defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode -bool true

# Развернуть панель печати по умолчанию
defaults write NSGlobalDomain PMPrintingExpandedStateForPrint -bool true

# Отключить диалоговое окно "Вы уверены, что хотите открыть это приложение?"
defaults write com.apple.LaunchServices LSQuarantine -bool false

# Увеличить скорость изменения размера окон для приложений Cocoa
defaults write NSGlobalDomain NSWindowResizeTime -float 0.001

# Включить полный доступ к клавиатуре для всех элементов управления (например, включить Tab в модальных диалогах)
defaults write NSGlobalDomain AppleKeyboardUIMode -int 3

# Включить субпиксельную рендеринг шрифтов на не-Apple ЖК-мониторах
defaults write NSGlobalDomain AppleFontSmoothing -int 2

# Отключить удержание клавиш в пользу повтора клавиш
defaults write NSGlobalDomain ApplePressAndHoldEnabled -bool false

# Установить очень быструю скорость повтора клавиш на клавиатуре
defaults write NSGlobalDomain KeyRepeat -int 1

# Установить короткую задержку перед повтором клавиш
defaults write NSGlobalDomain InitialKeyRepeat -int 12

# Отключить автокоррекцию
defaults write NSGlobalDomain NSAutomaticSpellingCorrectionEnabled -bool false

# Требовать пароль немедленно после перехода в режим сна или экранной заставки
defaults write com.apple.screensaver askForPassword -int 1
defaults write com.apple.screensaver askForPasswordDelay -int 0

# Показывать все расширения файлов в Finder
defaults write NSGlobalDomain AppleShowAllExtensions -bool true

# Показывать скрытые файлы
defaults write com.apple.finder AppleShowAllFiles -bool true

# Установить стиль отображения по умолчанию для папок без настройки (icnv = IconView)
defaults write com.apple.finder FXPreferredViewStyle -string "icnv"

# Держать папки на верхней позиции при сортировке по имени
defaults write com.apple.finder "_FXSortFoldersFirst" -bool true

# Держать папки на верхней позиции при сортировке
defaults write com.apple.finder "_FXSortFoldersFirstOnDesktop" -bool true

# Разрешить выделение текста в быстром просмотре
defaults write com.apple.finder QLEnableTextSelection -bool true

# Удалять элементы из корзины через 30 дней
defaults write com.apple.finder FXRemoveOldTrashItems -bool true

# Избегать создания файлов .DS_Store на сетевых томах
defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true

# Отключить предупреждение при изменении расширения файла
defaults write com.apple.finder FXEnableExtensionChangeWarning -bool false

# Отключить предупреждение перед очисткой корзины
defaults write com.apple.finder WarnOnEmptyTrash -bool false

# Очищать корзину надежно по умолчанию
defaults write com.apple.finder EmptyTrashSecurely -bool true

# Горячие углы
# Верхний правый угол экрана → Рабочий стол
defaults write com.apple.dock wvous-tr-corner -int 4
defaults write com.apple.dock wvous-tr-modifier -int 0
# Нижний левый угол экрана → Запустить экранную заставку
defaults write com.apple.dock wvous-bl-corner -int 5
defaults write com.apple.dock wvous-bl-modifier -int 0

# Включить режим пружины для всех элементов Dock
defaults write com.apple.dock enable-spring-load-actions-on-all-items -bool true

# Показывать индикаторы процессов для открытых приложений в Dock
defaults write com.apple.dock show-process-indicators -bool true

# Показывать в доке только запущенные приложения
defaults write com.apple.dock static-only -bool TRUE

# Установить размер иконок 40 пикселей
defaults write com.apple.dock tilesize -int 40

# Отключить тень в скриншотах
defaults write com.apple.screencapture disable-shadow -bool true

# Отключить кэш миниатюр Safari для истории и Топ-сайтов
defaults write com.apple.Safari DebugSnapshotsUpdatePolicy -int 2

# Включить меню отладки Safari
defaults write com.apple.Safari IncludeInternalDebugMenu -bool true

# Сделать баннеры поиска в Safari по умолчанию "Содержит" вместо "Начинается с"
defaults write com.apple.Safari FindOnPageMatchesWordStartsOnly -bool false

# Добавить пункт контекстного меню для показа Веб-инспектора в веб-представлениях
defaults write NSGlobalDomain WebKitDeveloperExtras -bool true

# Включить привязку к сетке для иконок во всех представлениях и диалогах с иконками
/usr/libexec/PlistBuddy -c "Set :DesktopViewSettings:IconViewSettings:arrangeBy grid" ~/Library/Preferences/com.apple.finder.plist
/usr/libexec/PlistBuddy -c "Set :FK_StandardViewSettings:IconViewSettings:arrangeBy grid" ~/Library/Preferences/com.apple.finder.plist
/usr/libexec/PlistBuddy -c "Set :StandardViewSettings:IconViewSettings:arrangeBy grid" ~/Library/Preferences/com.apple.finder.plist

# Закрыть все задействованные приложения
APPS=(Finder Dock Mail Safari SystemUIServer)

for APP in "${APPS[@]}"; do
    killall "$APP" &>/dev/null
done
