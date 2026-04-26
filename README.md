# DevOps_06_AnsibleRoles
# П06-1. Деплой веб-сервера с помощью role Ansible
1. Сделать role, которая устанавливает nginx c vhosts
2. Роль устанавливает nginx
3. Виртуальные сайты задавать параметрами роли (playbook/play/vars)
Пример:
var:
sites:
– mehmat.ru
– fizfak.ru
– etis.com
4. Для каждого vhost из шаблона index.html.j2 создавать индексный файл
5. Для каждого vhost из шаблона {{site}}.conf.j2 создавать конфигурацию веб-сервера
6. Проверка через curl или браузер с подменой DNS

Создаем все файлы и директории согласно будущей структуре
<img width="974" height="146" alt="image" src="https://github.com/user-attachments/assets/cdc2e8a9-11c1-4a19-908f-a3db2d885823" />

<img width="974" height="672" alt="image" src="https://github.com/user-attachments/assets/1a25e3a9-af73-45ee-b48e-a7a439f81313" />

<img width="974" height="270" alt="image" src="https://github.com/user-attachments/assets/e3ef4095-ee81-45d5-a1ee-d38365263436" />

<img width="974" height="373" alt="image" src="https://github.com/user-attachments/assets/4db0addb-ce97-4c5a-96f9-bcc52cc52ad4" />

<img width="974" height="997" alt="image" src="https://github.com/user-attachments/assets/4481a859-6288-4a4a-97a1-673f1a626639" />

<img width="974" height="387" alt="image" src="https://github.com/user-attachments/assets/2ab1f086-ab8c-47a2-ae2d-d2a84adcacfa" />

<img width="974" height="559" alt="image" src="https://github.com/user-attachments/assets/694031e9-88f0-46f5-a301-54afe8c51b68" />


получившаяся структура
<img width="974" height="555" alt="image" src="https://github.com/user-attachments/assets/ac6119ea-4c09-4d2d-80a1-5cc8f5b7ca08" />

запускаем плейбук
<img width="974" height="766" alt="image" src="https://github.com/user-attachments/assets/ed1caeec-8343-4077-9fae-d0fce97a987e" />

Ошибка, не закрыла кавычки
<img width="974" height="296" alt="image" src="https://github.com/user-attachments/assets/4f04f2aa-4cdb-4bf3-94c6-83c850cfaa16" />

Исправили, попытка №2
<img width="974" height="858" alt="image" src="https://github.com/user-attachments/assets/e3441b64-8032-46cc-a1e3-39ff7ac973ed" />
Снова ошибка, забыла цикл
<img width="974" height="335" alt="image" src="https://github.com/user-attachments/assets/48259a16-7ca4-413a-8507-4414addd5d92" />
Запускаем снова
<img width="974" height="874" alt="image" src="https://github.com/user-attachments/assets/d77e5e38-cd87-43ba-930f-089af20661ed" />

<img width="974" height="706" alt="image" src="https://github.com/user-attachments/assets/2181fd79-fced-4d85-a3f9-1065e02d40c3" />

Пробуем
<img width="974" height="179" alt="image" src="https://github.com/user-attachments/assets/a3983478-b706-4461-90ca-b92144fafc0e" />
Вылез старый скрипт, изменяем файл в tasks/
(устанавливаю nginx, добавляем задачу, гарантирующую, что он запущен и добавлен в автозагрузку, плюс пара проверок)
Внесенные изменения
<img width="974" height="435" alt="image" src="https://github.com/user-attachments/assets/7d67df80-dece-4e5a-ac27-2c2441e7ca62" />
<img width="974" height="376" alt="image" src="https://github.com/user-attachments/assets/973916a9-bf0b-4c92-b99a-02db98779d6b" />

Проверяем
<img width="974" height="185" alt="image" src="https://github.com/user-attachments/assets/b5c00e3c-d560-4c97-a307-60e7188a108f" />
Снова опачки: не хватило фигурных скобок
<img width="974" height="322" alt="image" src="https://github.com/user-attachments/assets/915e6499-fb47-4a96-8ac6-560479ca0cd8" />

Проверяем
<img width="974" height="226" alt="image" src="https://github.com/user-attachments/assets/b4b3219b-2989-4a25-9844-b0d247c5bb8f" />
<img width="974" height="369" alt="image" src="https://github.com/user-attachments/assets/93c3c73d-450b-4b99-bbc0-2f289ae763fb" />

Изменяем файлик хостс
<img width="662" height="526" alt="image" src="https://github.com/user-attachments/assets/50c587ec-88dc-40c9-bed5-e5114412ec0a" />
<img width="808" height="155" alt="image" src="https://github.com/user-attachments/assets/80fae11b-10da-4b22-ae55-66f38129ab7d" />
<img width="800" height="278" alt="image" src="https://github.com/user-attachments/assets/d133f297-ae01-42ee-abfc-b7597857f4ff" />
<img width="800" height="278" alt="image" src="https://github.com/user-attachments/assets/71fa4241-880b-44bb-9edf-acdee243fa8e" />

# П06-2. Добавление функций CI
Создать репозиторий под новый проект
1. В своём профиле на гитлабе создать новый репо
2. Склонировать этот репо к себе на vm командой
git clone
3. Перенести в новый каталог с репо все файлы лабы (плейбуки,
роли, и т.д.)
Добавить функции CI
4. Активировать Actions на стороне github
5. Создать и протестировать CI-пайплайны

Созадал репу, клонирую
<img width="974" height="90" alt="image" src="https://github.com/user-attachments/assets/959ae48f-2368-4b4a-aa98-56121769890b" />
<img width="974" height="749" alt="image" src="https://github.com/user-attachments/assets/465fc973-38d3-4e31-810b-79bdc33fd3dd" />

Добавляю пайплайны
ТЕСТОВЫЙ
<img width="974" height="413" alt="image" src="https://github.com/user-attachments/assets/709eda07-3ad3-4efd-9353-d02ba2a66cff" />
<img width="974" height="747" alt="image" src="https://github.com/user-attachments/assets/bd4bff79-c359-4836-8c24-96ef2526326d" />

БОЕВОЙ
<img width="974" height="437" alt="image" src="https://github.com/user-attachments/assets/1595cc31-ec5a-42df-b1bb-09be4e30e659" />
<img width="909" height="353" alt="image" src="https://github.com/user-attachments/assets/807e4d34-f663-4697-985b-f17d62f2dec9" />
<img width="974" height="611" alt="image" src="https://github.com/user-attachments/assets/4e60ebf8-c7a1-4d9e-b6be-78f1a0d469d5" />


