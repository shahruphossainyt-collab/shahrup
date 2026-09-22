# PDF Float Tools — Native Android

এটাই আপনার চাওয়া সংস্করণ: Android Accessibility Service ব্যবহার করে অন্য অ্যাপের ওপর একটি ছোট floating PDF button দেখায়।

## ব্যবহার
1. Android Studio-তে project খুলুন।
2. App install করুন।
3. App থেকে **Accessibility Settings** খুলে `PDF Float Tools` service চালু করুন।
4. App-এ ফিরে **Floating Button = ON** করুন।
5. এখন Chrome, PDF viewer, browser, document app ইত্যাদির উপর ছোট `PDF` button দেখা যাবে।
6. button চাপলে:
   - Download PDF
   - Print
   - Scan PDF
   - Close

## Scan PDF কীভাবে কাজ করে
Android 11+ এ AccessibilityService screenshot নিতে পারে এবং scrollable UI-তে scroll action পাঠাতে পারে। এই project প্রথমে বর্তমান window-এর scrollable area খুঁজে নেয়, screenshot নেয়, তারপর নিচে scroll করে আবার screenshot নেয়। Scroll action কাজ না করলে touch-swipe fallback ব্যবহার করে। শেষে সব capture একটি PDF হিসেবে `Download/PDF Float Tools`-এ save করে।

## গুরুত্বপূর্ণ সীমাবদ্ধতা
- **Original PDF Download:** অন্য অ্যাপের private file সরাসরি copy করা যায় না। Accessibility tree-তে আসল `.pdf` URL পাওয়া গেলে project সেটি download করার চেষ্টা করে; URL পাওয়া না গেলে Scan PDF fallback করা হয়।
- **Secure content:** কোনো app `FLAG_SECURE` ব্যবহার করলে Android screenshot আটকাতে পারে। তখন Scan PDF কাজ করবে না।
- **PDF page boundary:** Scan mode screen capture-ভিত্তিক; কিছু viewer-এ viewer header/toolbar অংশও capture হতে পারে এবং page overlap হতে পারে।
- Android 11 (API 30)+ এই version-এর minimum SDK।

Official Android API references: AccessibilityService screenshot/gesture APIs এবং application overlays সম্পর্কিত documentation দেখুন developer.android.com-এ।
