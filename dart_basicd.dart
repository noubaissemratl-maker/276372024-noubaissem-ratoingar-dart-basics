Student: NOUBAISSEM RATOINGAR
// Reg no: 276372024
const String regNo = '276372024';
final int d = int.parse(regNo[regNo.length - 1]);
final int t = int.parse(regNo.substring(regNo.length - 2));

// ---------- B2 ----------
int countVowels(String text) {
  // by NR
  String lower = text.toLowerCase(); // makes capital letters count
  int count = 0;
  int i = 0;
  while (i < lower.length) {
    if ('aeiou'.contains(lower[i])) {
      count++;
    }
    i++;
  }
  return count;
}

/* First draft of countVowels (wrong: capitals were not counted)
int countVowels(String text) {
  // by NR
  int count = 0;
  int i = 0;
  while (i < text.length) {
    if ('aeiou'.contains(text[i])) count++;
    i++;
  }
  return count;
}
*/

// ---------- B3 ----------
String initials(String fullName) {
  // by NR
  String cleaned = fullName.trim();
  if (cleaned.isEmpty) return '';
  List<String> parts = cleaned.split(RegExp(r'\s+'));
  String result = '';
  int i = 0;
  while (i < parts.length) {
    result += '${parts[i][0].toUpperCase()}.';
    i++;
  }
  return result;
  }

/* First draft of initials (crashed on ' ana uwase ')
String initials(String fullName) {
  // by NR
  List<String> parts = fullName.split(' ');
  String result = '';
  int i = 0;
  while (i < parts.length) {
    result += '${parts[i][0].toUpperCase()}.';   // RangeError on an empty part
    i++;
  }
  return result;
}
*/

// ---------- C5 ----------
void drawTriangle(int height) {
  // by NR
  int row = 1;
  while (row <= height) {
    String symbol = row % 2 == 1 ? '*' : '#';
    print((' ' * (height - row)) + (symbol * row));
    row++;
  }
  }

// ---------- D2 ----------
int momoFee(int amount) {
  // by NR
  if (amount <= 0) return -1;
  if (amount <= 1000) return 20;
  if (amount <= 10000) return 100;
  if (amount <= 150000) return 250;
  return 1500;
}

String maskPhone(String phone) {
  // by NR
  if (phone.length != 10) return 'INVALID';
  String stars = '';
  int i = 3;
  while (i < phone.length - 2) {
    stars += '*';
    i++;
  }
  return phone.substring(0, 3) + stars + phone.substring(phone.length - 2);
}

void main() {
  // by NR
  print('Reg no: $regNo | D = $d | T = $t');

  // B2
  const String fullName = 'NOUBAISSEM RATOINGAR';
  print('$fullName has ${countVowels(fullName)} vowels');

  // B3
  print("initials('$fullName') = '${initials(fullName)}'");
  print("initials(' ana uwase ') = '${initials(' ana uwase ')}'");
  print("initials(' ') = '${initials(' ')}'");

  // C5
  print('--- drawTriangle(D + 3) ---');
  drawTriangle(d + 3);
  print('--- drawTriangle(0) ---');
  drawTriangle(0);
  print('--- drawTriangle(-2) ---');
  drawTriangle(-2);

  // D2
  print('--- MoMo receipts ---');
  const String phone = '0788123456';
  int totalFees = 0;
  int i = 1;
  while (i <= d + 3) {
    int amount = i * 4000 + t * 100;
    int fee = momoFee(amount);
    print('Receipt $i | $amount RWF | fee $fee RWF | to ${maskPhone(phone)}');
    totalFees += fee;
    i++;
  }
  print('Total fees: $totalFees RWF');
}
  
