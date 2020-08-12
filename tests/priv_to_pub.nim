# Nim-BLSCurve
# Copyright (c) 2018-Present Status Research & Development GmbH
# Licensed under either of
#  * Apache License, version 2.0, ([LICENSE-APACHE](LICENSE-APACHE))
#  * MIT license ([LICENSE-MIT](LICENSE-MIT))
# at your option.
# This file may not be copied, modified, or distributed except according to
# those terms.

import ../blscurve

proc test_sk_to_pk(seckey, pubkey: string) =

  var sk{.noInit.}: SecretKey
  let ok = sk.fromHex(seckey)
  doAssert ok
  let pk = sk.privToPub()

  doAssert pk.toHex() == pubkey, "\ncomputed: " & pk.toHex() & "\nexpected: " & pubkey & '\n'
  echo "SUCCESS"

test_sk_to_pk(
  seckey = "00000000000000000000000000000000000000000000000000000000000003e8",
  pubkey = "a60e75190e62b6a54142d147289a735c4ce11a9d997543da539a3db57def5ed83ba40b74e55065f02b35aa1d504c404b"
)

test_sk_to_pk(
  seckey = "00000000000000000000000000000000000000000000000000000000000003e9",
  pubkey = "ae12039459c60491672b6a6282355d8765ba6272387fb91a3e9604fa2a81450cf16b870bb446fc3a3e0a187fff6f8945"
)

test_sk_to_pk(
  seckey = "00000000000000000000000000000000000000000000000000000000000003ea",
  pubkey = "947b327c8a15b39634a426af70c062b50632a744eddd41b5a4686414ef4cd9746bb11d0a53c6c2ff21bbcf331e07ac92"
)

test_sk_to_pk(
  seckey = "00000000000000000000000000000000000000000000000000000000000003eb",
  pubkey = "85fc4ae543ca162474586e76d72c47d0151c3cb7b77e82c87e554abf72548e2e746bc675805b688b5016269e18ff4250"
)

test_sk_to_pk(
  seckey = "00000000000000000000000000000000000000000000000000000000000003ec",
  pubkey = "8caa0de862793e567c6050aa822db2d6cb2b520bc62b6dbcba7e773067ed09c7ba0282d7c20e01500c6c2fa76408aded"
)
