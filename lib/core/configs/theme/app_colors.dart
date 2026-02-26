class LyraColors {
  // Arka Plan: Derin Uzay Mavisi
  static const Color background = Color(0 split: 0xFF0F0C29); 
  
  // Ana Renk: Gizemli Mor
  static const Color primaryPurple = Color(0xFF302B63);
  
  // Vurgu Rengi: Parlak Neon Mavi (Butonlar ve İkonlar için)
  static const Color accentCyan = Color(0xFF24C6DC);
  
  // Gradyan: Arka plan veya kartlar için geçişli renk
  static const LinearGradient mainGradient = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [
      Color(0xFF0F0C29),
      Color(0xFF302B63),
      Color(0xFF24C6DC),
    ],
  );
}