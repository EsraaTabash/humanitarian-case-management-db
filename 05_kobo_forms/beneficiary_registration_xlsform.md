# Beneficiary Registration Form - XLSForm Structure

| type | name | label::Arabic | required |
|---|---|---|---|
| start | start | وقت البدء | |
| end | end | وقت الانتهاء | |
| text | household_code | رمز الأسرة | yes |
| text | head_name | اسم رب الأسرة | yes |
| text | phone | رقم الهاتف | yes |
| select_one governorates | governorate | المحافظة | yes |
| text | city | المدينة / المنطقة | yes |
| integer | family_size | عدد أفراد الأسرة | yes |
| select_one risk_level | vulnerability_level | مستوى الهشاشة | yes |
| note | note1 | يرجى التأكد من صحة البيانات قبل الإرسال | |

## Choices

| list_name | name | label::Arabic |
|---|---|---|
| governorates | gaza | غزة |
| governorates | north_gaza | شمال غزة |
| governorates | khan_younis | خان يونس |
| governorates | rafah | رفح |
| governorates | middle_area | الوسطى |
| risk_level | high | مرتفع |
| risk_level | medium | متوسط |
| risk_level | low | منخفض |
