import 'package:intl/intl.dart';

extension StringExtensions on String {
  String limit(int maxLength) {
    return length <= maxLength
        ? this
        : '${substring(0, maxLength)}...';
  }

  String routeLinkGenerator() {
    // Türkçe karakterleri düzeltin

    String sanitized = replaceAllMapped(RegExp(r'[çşğüöıÇŞĞÜÖİ]'), (match) {
      switch (match[0]) {
        case 'ç':
          return 'c';
        case 'ş':
          return 's';
        case 'ğ':
          return 'g';
        case 'ü':
          return 'u';
        case 'ö':
          return 'o';
        case 'ı':
          return 'i';
        case 'Ç':
          return 'C';
        case 'Ş':
          return 'S';
        case 'Ğ':
          return 'G';
        case 'Ü':
          return 'U';
        case 'Ö':
          return 'O';
        case 'İ':
          return 'I';
        default:
          return '';
      }
    });

    // Özel karakterleri kaldırın
    sanitized = sanitized.replaceAll(RegExp(r'[^\w\s-]'), '');

    // Boşlukları `-` ile değiştirin
    sanitized = sanitized.replaceAll(RegExp(r'\s+'), '-');

    // Birden fazla `-` karakterini tek `-` karakteri ile değiştirin
    sanitized = sanitized.replaceAll(RegExp(r'-{2,}'), '-');

    // Küçük harfe dönüştürün
    sanitized = sanitized.toLowerCase();

    return sanitized;
  }

  String splitAfterOk() {
    const prefix = "Ok-";
    if (contains(prefix)) {
      return substring(indexOf(prefix) + prefix.length);
    } else {
      return "Prefix bulunamadı.";
    }
  }

  String timeAgo() {
    final dateFormat = DateFormat("yyyy-MM-dd'T'HH:mm:ss");
    DateTime dateTime = dateFormat.parse(this);
    final now = DateTime.now();
    final difference = now.difference(dateTime);

    if (difference.inSeconds < 60) {
      return '${difference.inSeconds} saniye önce';
    } else if (difference.inMinutes < 60) {
      return '${difference.inMinutes} dakika önce';
    } else if (difference.inHours < 24) {
      return '${difference.inHours} saat önce';
    } else if (difference.inDays < 30) {
      return '${difference.inDays} gün önce';
    } else if (difference.inDays < 365) {
      return '${(difference.inDays / 30).round()} ay önce';
    } else {
      return '${(difference.inDays / 365).round()} yıl önce';
    }
  }

  String parseToDifferentFormat() {
    var originalFormat = DateFormat('yyyy-MM-ddTHH:mm:ss');
    var desiredFormat = DateFormat('yyyy');
    var originalDate = originalFormat.parse(this);
    return desiredFormat.format(originalDate);
  }
}
