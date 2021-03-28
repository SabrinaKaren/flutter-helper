### Recurso simples para criptografar valores  

- O próprio Dart oferece uma biblioteca para fazer criptografia: [crypto](https://pub.dev/packages/crypto).
- Package adicionado no pubspec.yaml, basta começar a utilizar, podendo usufruir dos seguintes algoritmos de hash:
  - SHA-1
  - SHA-224
  - SHA-256
  - SHA-384
  - SHA-512
  - SHA-512/224
  - SHA-512/256
  - MD5
  - HMAC
- Segue, abaixo, um código simples de exemplo de utilização do SHA-1:
```yaml
import 'package:crypto/crypto.dart';
import 'dart:convert'; // for the utf8.encode method

void main() {
  var bytes = utf8.encode("foobar"); // data being hashed
  var digest = sha1.convert(bytes);
  print("Digest as bytes: ${digest.bytes}");
  print("Digest as hex string: $digest");
}
```

> Sendo importante recomendar sempre a utilização da documentação oficial que pode ser encontrada no site do pub.dev
