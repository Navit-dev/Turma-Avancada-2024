part of 'default.theme.dart';

extension TextStylesExtension on Text {
  Text h1({TextStyle? style}) {
    TextStyle defaultStyle = const TextStyle(
      fontSize: 36,
      fontWeight: FontWeight.w900,
      fontStyle: FontStyle.normal,
      letterSpacing: -0.02,
    );
    return Text(data ?? '',
        style: (this.style ?? defaultStyle).merge(style ?? defaultStyle));
  }

  Text h2({TextStyle? style}) {
    TextStyle defaultStyle = const TextStyle(
      fontSize: 22,
      fontWeight: FontWeight.bold,
      fontStyle: FontStyle.normal,
      letterSpacing: -0.02,
    );
    return Text(data ?? '',
        style: (this.style ?? defaultStyle).merge(style ?? defaultStyle));
  }

  Text h3({TextStyle? style}) {
    TextStyle defaultStyle = const TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.bold,
      fontStyle: FontStyle.italic,
    );
    return Text(data ?? '',
        style: (this.style ?? defaultStyle).merge(style ?? defaultStyle));
  }

  Widget h4({TextStyle? style}) {
    TextStyle defaultStyle = const TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w600,
      fontStyle: FontStyle.normal,
    );
    return Material(
      child: Text(
        data ?? '',
        style: (this.style ?? defaultStyle).merge(style ?? defaultStyle),
      ),
    );
  }

  Text h5({TextStyle? style}) {
    TextStyle defaultStyle = const TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.w800,
      fontStyle: FontStyle.normal,
    );
    return Text(data ?? '',
        style: (this.style ?? defaultStyle).merge(style ?? defaultStyle));
  }

  Text h6({TextStyle? style}) {
    TextStyle defaultStyle = const TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.normal,
      fontStyle: FontStyle.normal,
    );
    return Text(data ?? '',
        style: (this.style ?? defaultStyle).merge(style ?? defaultStyle));
  }

  Text h7({TextStyle? style}) {
    TextStyle defaultStyle = const TextStyle(
      fontSize: 13,
      fontWeight: FontWeight.w800,
      fontStyle: FontStyle.normal,
    );
    return Text(data ?? '',
        style: (this.style ?? defaultStyle).merge(style ?? defaultStyle));
  }
}
