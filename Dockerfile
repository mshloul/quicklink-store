# نستخدم nginx كسيرفر ويب خفيف
FROM nginx:alpine

# نحذف الملفات الافتراضية من nginx
RUN rm -rf /usr/share/nginx/html/*

# ننسخ ملفات مشروعك (index.html, css, ... إلخ)
COPY . /usr/share/nginx/html

# نفتح البورت 80
EXPOSE 80

# أمر التشغيل الرئيسي
CMD ["nginx", "-g", "daemon off;"]
