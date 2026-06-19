# Household Assessment Form - XLSForm Structure

## Survey

| type | name | label::Arabic | required |
|---|---|---|---|
| start | start | وقت البدء | |
| end | end | وقت الانتهاء | |
| text | household_code | رمز الأسرة | yes |
| integer | children_count | عدد الأطفال | yes |
| integer | elderly_count | عدد كبار السن | yes |
| integer | disabled_members | عدد ذوي الإعاقة | yes |
| select_one housing_status | housing_status | حالة السكن | yes |
| select_one income_level | income_level | مستوى الدخل | yes |
| select_one food_security | food_security | الأمن الغذائي | yes |
| calculate | vulnerability_score | درجة الهشاشة | |
| note | result | سيتم حساب درجة الهشاشة تلقائياً | |

## Choices

| list_name | name | label::Arabic |
|---|---|---|
| housing_status | owned | ملك |
| housing_status | rented | إيجار |
| housing_status | damaged | متضرر |
| housing_status | displaced | نازح |
| income_level | high | مرتفع |
| income_level | medium | متوسط |
| income_level | low | منخفض |
| income_level | none | لا يوجد دخل |
| food_security | secure | آمن |
| food_security | moderate | متوسط |
| food_security | insecure | غير آمن |
