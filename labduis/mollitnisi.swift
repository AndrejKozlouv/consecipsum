let fontSize: CGFloat = 16.0
let boldFont = UIFont.boldSystemFont(ofSize: fontSize)
let italicFont = UIFont.italicSystemFont(ofSize: fontSize)
let boldItalicFont = UIFont(descriptor: UIFontDescriptor.preferredFontDescriptor(withTextStyle: .body).withSymbolicTraits([.traitBold, .traitItalic])!, size: fontSize)
