/// Use [TawkVisitor] to set the visitor name and email.
class TawkVisitor {
  /// Visitor's name.
  final String? name;

  /// Visitor's email.
  final String? email;

  /// [Secure mode](https://developer.tawk.to/jsapi/#SecureMode).
  final String? hash;

  final String? lang;

  TawkVisitor({
    this.name,
    this.email,
    this.lang,
    this.hash,
  });

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};

    if (name != null) {
      data['name'] = name;
    }

    if (email != null) {
      data['email'] = email;
    }

    if (hash != null) {
      data['hash'] = hash;
    }

    if (lang != null) {
      data['lang'] = 'WIDGET_FOR_$lang';
    }

    return data;
  }
}
