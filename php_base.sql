-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Час створення: Чрв 09 2019 р., 18:19
-- Версія сервера: 8.0.12
-- Версія PHP: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База даних: `php_base`
--

-- --------------------------------------------------------

--
-- Структура таблиці `articles`
--

CREATE TABLE `articles` (
  `id` int(11) NOT NULL,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `content` text NOT NULL,
  `author_name` varchar(255) NOT NULL,
  `type` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп даних таблиці `articles`
--

INSERT INTO `articles` (`id`, `title`, `date`, `content`, `author_name`, `type`) VALUES
(1, 'Як прокачати емоційний інтелект, щоб спілкуватися з колегами результативно', '2019-06-09 14:50:30', 'Що таке емоційний інтелект\r\nУ США та Європі люблять повторювати модний вислів: IQ gets you hired but EQ gets you promoted. Ця приказка з`явилася у середовищі американських HR на початку 2000-х років і досить швидко набула популярності. І хоч зараз є багато скептиків щодо впливу емоційного інтелекту (EQ) на професійне зростання, водночас є і факти, що підтверджують, що просто володіти знаннями — не достатньо для професійного зростання чи побудови своєї кар’єри.\r\n\r\nЩо ж таке емоційний інтелект? Є безліч визначень, пояснень, гіпотез. Якщо узагальнити, то емоційний інтелект (EQ) — це здатність людини розуміти та керувати емоціями, які відчуває вона і ті, хто поруч.\r\n\r\nУперше поняття емоційного інтелекту описали наприкінці ХХ століття Джон Меєр та Пітер Селовей, які назвали чотири напрямки емоційного інтелекту:\r\n\r\nяк ми оцінюємо та виражаємо емоції;\r\nщо про них знаємо;\r\nяк ними керуємо;\r\nяк на їх основі ухвалюємо рішення.\r\nА далі почалися різноманітні дослідження, які то спростовували, то підтверджували силу емоційного інтелекту. І як часто буває з популярними віяннями, поняття емоційного інтелекту обростало різними міфами. Можна почути і прочитати багато захоплених висновків у стилі «EQ — це наше все» або «там, де емоції, там проблеми».\r\n\r\nТак, наприклад, австралійські дослідники Емі Чан та Пітер Капуті виявили: що вищий EQ, то більше людина задоволена життям. А Тревіс Бредбері (Travis Bradberry), співавтор книги «Емоційний інтелект 2.0 та президент компанії «Smart Talent» у своїй статті розповів про цікаве дослідження, у якому взяло участь більше 1 млн. людей. Основне твердження — рівень EQ зростає разом із посадами. Менеджери середньої ланки мають найвищі показники емоційного інтелекту. Але така тенденція зберігається лише у професійному зростанні менеджменту середньої ланки. Проте потім усе різко змінюється, а рівень EQ летить вниз, адже менеджер опиняється у середовищі, яке послаблює його емоційний інтелект.\r\n\r\nЧому так відбувається? Одна із загроз: чим вища посада, тим більший фокус компанії на кількісних результатах, а не на команді, взаємовідносинах та комфортній атмосфері. Саме тому таким актуальним є висновок про те, що емоційний інтелект потрібно тренувати постійно. Водночас важливо зберігати баланс, адже поєднавши раціо та емоції, можна ухвалювати найкращі рішення та досягати успіху.\r\n\r\nЩо ж характеризує людей з високим рівнем емоційного інтелекту\r\nВони не бояться змін, усвідомлюють, що зміни — це частина життя, і готові бути гнучкими.\r\nВони легко можуть назвати свої сильні сторони та зони росту, точно знають, над чим варто працювати і що розвивати, а також яким чином це робити.\r\nВони вміють проявляти емпатію, розуміти почуття інших та реагувати на них.\r\nВони шукають та знаходять баланс у професійному та особистому житті.\r\nВони відкриті до нового, люблять досліджувати та цікавитись новинками.\r\nУ компаніях, де підтримується культура розвитку емоційного інтелекту, працівники більше проявляють лідерські якості, ефективніше працюють у команді, краще комунікують між собою, з клієнтами та партнерами. Роботодавці охочіше наймають на роботу тих, хто вміло поєднує розум та емоції.\r\n\r\nЩо означає бути емоційно компетентним на практиці\r\nДеніель Гоулман описав такі компетенції емоційного інтелекту:\r\n\r\nСамосвідомість, тобто розуміння власних емоцій.\r\nСамоконтроль, тобто управління власними емоціями.\r\nСоціальне розуміння, тобто розуміння емоцій інших людей.\r\nУправління взємовідносинами, тобто управління емоціями інших людей.\r\nРозуміння власних емоцій\r\nДуже важлива навичка прислухатись до себе, розрізняти свої стани, дозволяти собі переживати різні емоції та почуття, не блокуючи їх. Часто нам/людям бракує словникового запасу для озвучення емоцій, а тому важче з’ясовувати і причину їх виникнення.\r\n\r\nЯк розвивати розуміння власних емоцій? Найпростіше — це спостерігати за собою, відслідковувати зміни емоційного стану, дозволяти собі переживати різні почуття. Часто людям важко описати словами, що саме вони відчувають — роздратування, злість, а, може, страх. Тоді можна спробувати візуалізувати емоції, наприклад, намалювати їх. Або ж комусь легше висловлюватись метафорами: «У мені аж все кипить». Сам факт того, що ви усвідомлюєте, що ви переживаєте різні емоції вже наближає до наступного кроку — управління емоціями.\r\n\r\nЩе одним дієвим способом є самоемпатія як вміння подбати про себе вчасно. Вона дає можливість краще розуміти себе, зберігати свій ресурсний стан та відновлюватись. Самоемпатія — це аналіз себе у формі:\r\n\r\nCитуація (що відбулось?) — наприклад, ви отримали листа, у якому вас просять переробити повністю звіт, над яким ви працювали більше 2-х тижнів.\r\nЕмоції (що я відчуваю?) — розгубленість, роздратування, злість через те, що ніхто не попередив завчасно, що можуть бути зміни; доведеться витратити ще 2 тижні на цю роботу...\r\nПотреби (що я хочу? що потребую?) — потребую розуміння ситуації, підтримки від інших.\r\nДії (що я можу зробити?) — можу попросити консультації та допомоги у колег, можу проговорити ситуацію та продумати алгоритм дій, щоб така ситуація не повторювалась у майбутньому.\r\nСумувати, злитись, радіти — це нормально. За кожною нашою емоцією стоїть потреба, яку варто розпізнати та усвідомити, а не ігнорувати.\r\n\r\nУправління власними емоціями\r\nСитуації бувають різні: то вас дратує хтось із колег, то поговорили підвищеним тоном, чи ви самі були здатні «зірватись на емоції». І, звісно ж, виникає питання: як контролювати власні емоції? Емоції неможливо контролювати. Це те ж саме, що намагатись заспокоїти хвилі на морі. І єдиний спосіб зробити так, щоб море стало спокійним, — зачекати. Те ж саме і з емоціями. Адже емоція — це короткотермінова реакція нашого мозку.\r\n\r\nЕмоції можна і варто:\r\n\r\nусвідомити;\r\nзрозуміти причини виникнення;\r\nвміти реагувати, тобто ми можемо навчитись управляти емоціями.\r\nРозглянемо досить стандартну ситуацію з робочого життя. Наприклад, вас дратує хтось із колег. Що робити? Спочатку спробуйте зупинитись і подумати: «Що спонукає мене реагувати подібним чином?». Не варто концентруватись на розбіжностях. Навпаки, спробуйте зосередитись на схожих рисах, досвіді, стилі поведінки тощо. Варто пам’ятати, якщо колега вас дратує, є велика ймовірність, що і ви теж виводите його з себе. І тоді не варто уникати розмови з колегою, а краще поговорити про те, що можна зробити, щоб ви могли ефективніше працювати разом.\r\n\r\nНайкраще у будь-яких надемоційних ситуаціях працює правило: зупинись, подихай, дій! Також корисно звертати увагу на власні реакції. Дайте відповідь собі на запитання: чи легко інші поруч з вами можуть поділитись своїми ідеями, не боячись осуду? Чи визнаєте ви внесок інших, навіть якщо не зовсім погоджуєтесь з ним? Чи готові ви давати розвивальний зворотній зв’язок іншим без критики, звинувачень? Навіть короткий самоаналіз допомагає краще розуміти себе, а отже і краще розуміти інших.\r\n\r\nРозуміння почуттів інших людей\r\nЦе мистецтво слухати і чути, бачити та розуміти, проявляти емпатію. Ще один приклад ситуації, з якою кожен з нас стикався і не один раз. У суперечці ваш опонент раптом вигукує: «Ти мене зовсім не розумієш! Невже не помітно, що мені боляче?» Насправді людина потребує емпатії в цю мить.\r\n\r\nНайдоречніше, що можна робити для розуміння почуттів інших людей:\r\n\r\nАктивне слухання, що передбачає надання зворотнього зв’язку, запитання, підведення підсумків.\r\nЗвертати увагу на невербаліку. Жести, міміка, інтонація, темп мовлення можуть сказати більше про емоції людини, ніж слова.\r\n«Взути черевики іншої людини». Часто дуже складно подивитись на ситуацію очима іншої людини, особливо у конфліктній ситуації. Ще важче зробити це без оцінок і упереджених думок. Тому почати можна з пошуку того, що об’єднує, з чим дві сторони готові погодитись.\r\nУправління емоціями інших людей\r\n«Між тим, що я думаю, тим, що я хочу сказати, тим, що я, як мені здається, кажу, тим, що я говорю, і тим, що ви хочете почути, і тим, що, як вам здається, ви чуєте, тим, що ви хочете зрозуміти, тим, що ви розумієте, є десять варіантів виникнення нерозуміння. Але все-таки давайте спробуємо...», — фраза Бернарда Вербера, яка, як на мене, чудово описує комунікацію, емпатію, а зрештою і майстерність управління емоціями інших людей задля взаємопорозуміння.\r\n\r\nВажко управляти емоціями інших людей, якщо не розібралися з власними, тому знову ж таки варто пам’ятати і про самоемпатію.\r\n\r\nУ налагодженні щирої комунікації на основі поваги, довіри та емпатії, допомагає практичний метод ненасильницької комунікації (ННК). Він був розроблений американським психологом доктором Маршаллом Розенбергом у 60-х роках ХХ століття. У чому полягає його суть? Пропоную розібратися на практичному прикладі.\r\n\r\nКолега довго затримує здачу проекту, протерміновує дедлайни. Команда незадоволена такою ситуацію, вирішує поговорити з ним. Розмова може бути такою: «Тобі байдуже на інших! Думаєш лише про себе! Постійно протерміновуєш дедлайни здачі проекту, а ми змушені чекати! Може, тобі взагалі не варто працювати у команді, якщо ти не вмієш дотримуватись зобов’язань?». Така претензія, як правило, викликає негативну реакцію, бажання втекти від скандалу або закритися в собі, чи виправдовуватись. Погляньмо, якою була б розмова у стилі ненасильницької комунікації: «За останні два тижні ти двічі не дотримався термінів здачі проекту. Ми хвилюємось, адже це впливає і на нашу роботу, нам важливо розуміти, що відбувається, щоб краще планувати свою діяльність. Чи міг би ти завчасно, щойнаменше за тиждень, повідомляти нас про зміни у графіках, якщо такі є?».\r\n\r\nЯкщо розглянути структуру ненасильницької комунікації, їй притаманні такі складники:\r\n\r\nФакт (конкретна дія, яку ми спостерігаємо і яка на нас впливає). Перш ніж робити поспішні висновки або звинувачувати фразами: «Тобі байдуже на інших!» або «Ти думаєш лише про себе!», наведіть факт: «Останні 2 тижні ти протерміновува дедлайни і не повідомляв колегам».\r\nПочуття. Замість того, щоб стверджувати свої висновки або висловлювати образу: «Ти егоїст і думаєш тільки про себе...», — почніть пояснювати, що ви відчуваєте, коли потрапляєте в таку ситуацію: «коли ти протерміновуєш дедлайни і не повідомляєш, то ми хвилюємось/ занепокоєні/роздратовані».\r\nПотреби. Вислів «ми змушені чекати» краще перефразувати: «Нам важливо розуміти, як йдуть справи, у нас є потреба отримувати інформацію та реагувати вчасно, це дає змогу краще планувати та передбачати ситуацію». Важливо проговорювати свої очікування, пояснюючи потреби, а не очікувати, що іншим і так все зрозуміло та очевидно.\r\nПрохання (конкретні дії). Багато хто говорить абстрактні фрази, наприклад: «Я хочу, що все було добре», сподіваючись, що інші здогадаються. Важливо розшифрувати, що ми маємо на увазі, вдаючись до конкретики. Адже одна і та сама фраза для різних людей може означати різне.\r\nВислухати позицію співрозмовника. Найчастіше наші передчасні висновки виникають через власне «накручування», нестачу інформації та брак якісної комунікації.\r\nНенасильницьке спілкування потребує тривалої та зосередженої роботи. Для початку можна сфокусуватись на дворівневому слуханні. Де перший рівень — зміст, тобто те, що говорить співрозмовник, а другий рівень — це слухання емоцій, тобто те, як він говорить. Намагайтесь не перебивати, не давати своїх оцінок та не засуджувати. Це не так легко, проте відкриває нові можливості рівного та щирого спілкування.\r\n\r\nЕмоційний інтелект — це сукупність якостей, знань умінь та навичок, що потребують постійного вдосконалення. Можна порівняти людину, що відвідує спортзал, з людиною, яка прагне розвивати EQ. Дізнатись, які є можливості для занять, познайомитись зі спортсменами, обрати якісне взуття, спостерігати за іншими людьми, які займаються на тренажерах, недостатньо, щоб отримати бажаний результат. Неможливо накачати м’язи, відвідуючи спортзал як музей, і лише захоплюватись іншими. Аналогічно і з EQ — важливо не лише прочитати книгу, відвідати тренінг, але і щодня тренувати свої EQ-м’язи. До того ж можна це робити у будь-якому віці та на будь-якій посаді!', 'Христина Яблонська', 'ArticlePublication'),
(2, 'Введение в системы контроля версий', '2019-06-09 15:03:55', 'Версионирование\r\nЧтобы лучше понять проблему версионирования, рассмотрим пример дизайнера, который закончил работать над проектом и отправил финальную версию заказчику. У дизайнера есть папка, в которой хранится финальная версия проекта:\r\n\r\nsource/\r\nbarbershop_index_final.psd\r\nВсё хорошо, дизайнер закончил работу, но заказчик прислал в ответ правки. Чтобы была возможность вернуться к старой версии проекта, дизайнер создал новый файл barbershop_index_final_2.psd, внёс изменения и отправил заказчику:\r\n\r\nsource/\r\nbarbershop_index_final.psd\r\nbarbershop_index_final_2.psd\r\nЭтим всё не ограничилось, в итоге структура проекта разрослась и стала выглядеть так:\r\n\r\nsource/\r\nbarbershop_index_final.psd\r\nbarbershop_index_final_2.psd\r\n…\r\nbarbershop_index_final_19.psd\r\n…\r\nbarbershop_index_latest_final.psd\r\nbarbershop_index_latest_final_Final.psd\r\nВероятно, многие уже сталкивались с подобным, например, при написании курсовых работ во время учёбы. В профессиональной разработке использование новых файлов для версионирования является плохой практикой. Обычно у разработчиков в папке проекта хранится множество файлов. Также над одним проектом может работать несколько человек. Если каждый разработчик для версионирования будет создавать новый файл, немного изменяя название предыдущей версии, то в скором времени в проекте начнётся хаос и никто не будет понимать какие файлы нужно открывать.\r\n\r\nGit\r\nДля решения проблемы с сохранением новой версии файлов удобно использовать системы контроля версий. Одна из самых популярных — Git. Работу Git можно сравнить с процессом сохранения и загрузки в компьютерных играх:\r\n\r\nесли впереди ждёт тяжёлое сражение, то перед этим лучше заранее сохраниться;\r\nчтобы это сделать, нужно выполнить специальную команду;\r\nпосле чего сохранение попадает в специальную папку и содержит состояние игры;\r\nтеперь при необходимости всегда есть возможность вернуться к предыдущей версии игры.\r\nПапка, содержащая данные игры, могла бы выглядеть так:\r\n\r\nSomeGame/\r\n| - saves\r\n|  | - save001.sav\r\n|  | - save002.sav\r\n|  |   …\r\n|  |   папка с сохранениями\r\n|\r\n| - game.exe\r\n|   ...файлы игры\r\nФайлы, необходимые для работы приложения, хранятся в рабочей области. В папке saves хранится история всех сохранений игры. Git сохраняет код вашего проекта по такому же принципу: сохранения попадают в специальную скрытую папку, а рабочей областью является содержимое корневой папки.\r\n\r\nОсновные понятия\r\nСписок терминов, которые будут вам полезны.\r\n\r\nРепозиторий\r\nПроект, в котором была инициализирована система Git, называется репозиторием. При инициализации в проект добавляется скрытая папка .git. Репозиторий хранит все рабочие файлы и историю их изменений.\r\n\r\nРабочая область и хранилище\r\nbarbershop/\r\n	| - .git\r\n	|  | - bea0f8e\r\n	|  | - d516600\r\n	|  |   Хранилище\r\n	|\r\n	| - css\r\n	| - index.html\r\n	|   Рабочая область\r\nКорневая папка проекта — это рабочая область. В ней находятся все файлы и папки, необходимые для его работы.\r\n\r\nХранилище — это содержимое скрытой папки .git. В этой папке хранятся все версии рабочей области и служебная информация. Этим версиям система автоматически даёт название, состоящее из букв и цифр. В примере выше — это bea0f8e и d516600. Не стоит проводить манипуляции с папкой .git вручную. Вся работа с системой производится командами через специальные приложения или консоль.\r\n\r\nКоммит\r\nТочно так же, как и в игре, в системе контроля версий Git можно сохранить текущее состояние проекта. Для этого есть специальная команда — commit. Она делает так, что новая версия проекта сохраняется и добавляется в хранилище. В файле с сохранением отображаются: все изменения, которые происходили в рабочей области, автор изменений и краткий комментарий, описывающий суть изменений. Каждый коммит хранит полное состояние рабочей области, её папок и файлов проекта.\r\n\r\nВ итоге проект работает так:\r\n\r\nРепозиторий хранит все версии проекта. В случае передачи этого проекта другому человеку, он увидит всё, что с ним происходило до этого.\r\nНичего не теряется и не удаляется бесследно. При удалении файла в новой версии добавляется запись о том, что файл был удалён.\r\nВсегда можно вернуться к любой из версий проекта, загрузив её из хранилища в рабочую область.\r\nСистема контроля версий Git\r\nGit — это распределённая и децентрализованная система управления версиями файлов. Децентрализованная система означает, что у каждого разработчика есть личный репозиторий проекта с полным набором всех версий. А все необходимые для работы файлы находятся на компьютере. При этом постоянное подключение к сети не требуется, поэтому система работает быстро. При командной разработке нужна синхронизация репозиториев, так как проект — один и его состояние должно быть у всех одинаковым.\r\n\r\nРабота в команде\r\nКак синхронизовать данные репозиториев между разработчиками? Изначально Git репозитории сами могут синхронизироваться от пользователя к пользователю. Дополнительные программы для этого не нужны. Есть специальные команды в консоли, позволяющие передавать данные из одного репозитория в другой.', 'htmlacademy', 'ArticlePublication');

-- --------------------------------------------------------

--
-- Структура таблиці `news`
--

CREATE TABLE `news` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `short_content` text NOT NULL,
  `content` text NOT NULL,
  `author_name` varchar(255) NOT NULL,
  `preview` varchar(255) NOT NULL,
  `type` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп даних таблиці `news`
--

INSERT INTO `news` (`id`, `title`, `date`, `short_content`, `content`, `author_name`, `preview`, `type`) VALUES
(1, 'Lorem ipsum dolor ', '2016-05-12 10:05:04', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Itaque, ea distinctio unde, tenetur explicabo dolorem.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Itaque, ea distinctio unde, tenetur explicabo dolorem ab aut optio, amet nihil fugit praesentium. Quia, numquam ut deserunt nemo, quae dicta dolores!', 'Author Name1', 'images/1.png', 'NewsPublication'),
(2, 'Perform a regular expression search and replace', '2016-05-11 21:00:00', 'The string or an array with strings to replace. If this parameter is a string and the pattern parameter is an array, all patterns will be replaced by that string. If both pattern and replacement parameters are arrays, each pattern will be replaced by the replacement counterpart. ', 'The string or an array with strings to replace. If this parameter is a string and the pattern parameter is an array, all patterns will be replaced by that string. If both pattern and replacement parameters are arrays, each pattern will be replaced by the replacement counterpart. If there are fewer elements in the replacement array than in the pattern array, any extra patterns will be replaced by an empty string.\r\nreplacement may contain references of the form \\\\n or $n, with the latter form being the preferred one. Every such reference will be replaced by the text captured by the n\'th parenthesized pattern. n can be from 0 to 99, and \\\\0 or $0 refers to the text matched by the whole pattern. Opening parentheses are counted from left to right (starting from 1) to obtain the number of the capturing subpattern. To use backslash in replacement, it must be doubled ', 'Author Name2', 'images/2.png', 'NewsPublication'),
(3, 'Parse a CSV string into an array', '2016-05-11 21:00:00', 'The locale settings are taken into account by this function. If LC_CTYPE is e.g. en_US.UTF-8, strings in one-byte encodings may be read wrongly by this function.', 'The locale settings are taken into account by this function. If LC_CTYPE is e.g. en_US.UTF-8, strings in one-byte encodings may be read wrongly by this function.\r\nThe escape parameter now interprets an empty string as signal to disable the proprietary escape mechanism. Formerly, an empty string was treated like the default parameter value.', 'Author Name3', 'images/2.png', 'NewsPublication'),
(4, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.', '2016-05-11 21:00:00', '				Lorem ipsum dolor sit amet, consectetur adipisicing elit. Itaque, ea distinctio unde, tenetur explicabo dolorem ab aut optio, amet nihil fugit praesentium. Quia, numquam ut deserunt nemo, quae dicta dolores!', '				Lorem ipsum dolor sit amet, consectetur adipisicing elit. Itaque, ea distinctio unde, tenetur explicabo dolorem ab aut optio, amet nihil fugit praesentium. Quia, numquam ut deserunt nemo, quae dicta dolores!', 'Author Name4', 'images/2.png', 'NewsPublication'),
(5, 'Output a formatted string converted ', '2017-05-11 21:00:00', 'A list of characters to be escaped. If charlist contains characters \\n, \\r etc., they are converted in C-like style, while other non-alphanumeric characters with ASCII codes lower than 32 and higher than 126 converted to octal representation.', 'A list of characters to be escaped. If charlist contains characters \\n, \\r etc., they are converted in C-like style, while other non-alphanumeric characters with ASCII codes lower than 32 and higher than 126 converted to octal representation.\r\n\r\nWhen you define a sequence of characters in the charlist argument make sure that you know what characters come between the characters that you set as the start and end of the range.', 'Author Name5', 'images/2.png', 'NewsPublication'),
(6, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.', '2016-05-11 21:00:05', '				Lorem ipsum dolor sit amet, consectetur adipisicing elit. Itaque, ea distinctio unde, tenetur explicabo dolorem ab aut optio, amet nihil fugit praesentium. Quia, numquam ut deserunt nemo, quae dicta dolores!', '				Lorem ipsum dolor sit amet, consectetur adipisicing elit. Itaque, ea distinctio unde, tenetur explicabo dolorem ab aut optio, amet nihil fugit praesentium. Quia, numquam ut deserunt nemo, quae dicta dolores!', 'Author Name6', 'images/2.png', 'NewsPublication'),
(7, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.', '2016-05-11 21:00:00', '				Lorem ipsum dolor sit amet, consectetur adipisicing elit. Itaque, ea distinctio unde, tenetur explicabo dolorem ab aut optio, amet nihil fugit praesentium. Quia, numquam ut deserunt nemo, quae dicta dolores!', '				Lorem ipsum dolor sit amet, consectetur adipisicing elit. Itaque, ea distinctio unde, tenetur explicabo dolorem ab aut optio, amet nihil fugit praesentium. Quia, numquam ut deserunt nemo, quae dicta dolores!', 'Author Name7', 'images/2.png', 'NewsPublication'),
(8, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.', '2016-05-11 21:00:00', '				Lorem ipsum dolor sit amet, consectetur adipisicing elit. Itaque, ea distinctio unde, tenetur explicabo dolorem ab aut optio, amet nihil fugit praesentium. Quia, numquam ut deserunt nemo, quae dicta dolores!', '				Lorem ipsum dolor sit amet, consectetur adipisicing elit. Itaque, ea distinctio unde, tenetur explicabo dolorem ab aut optio, amet nihil fugit praesentium. Quia, numquam ut deserunt nemo, quae dicta dolores!', 'Author Name8', 'images/2.png', 'NewsPublication'),
(9, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.', '2016-05-11 21:00:00', '				Lorem ipsum dolor sit amet, consectetur adipisicing elit. Itaque, ea distinctio unde, tenetur explicabo dolorem ab aut optio, amet nihil fugit praesentium. Quia, numquam ut deserunt nemo, quae dicta dolores!', '				Lorem ipsum dolor sit amet, consectetur adipisicing elit. Itaque, ea distinctio unde, tenetur explicabo dolorem ab aut optio, amet nihil fugit praesentium. Quia, numquam ut deserunt nemo, quae dicta dolores!', 'Author Name9', 'images/2.png', 'NewsPublication'),
(10, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.', '2016-03-11 22:00:00', '				Lorem ipsum dolor sit amet, consectetur adipisicing elit. Itaque, ea distinctio unde, tenetur explicabo dolorem ab aut optio, amet nihil fugit praesentium. Quia, numquam ut deserunt nemo, quae dicta dolores!', '				Lorem ipsum dolor sit amet, consectetur adipisicing elit. Itaque, ea distinctio unde, tenetur explicabo dolorem ab aut optio, amet nihil fugit praesentium. Quia, numquam ut deserunt nemo, quae dicta dolores!', 'Author Name10', 'images/2.png', 'NewsPublication');

--
-- Індекси збережених таблиць
--

--
-- Індекси таблиці `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`);

--
-- Індекси таблиці `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для збережених таблиць
--

--
-- AUTO_INCREMENT для таблиці `articles`
--
ALTER TABLE `articles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблиці `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
