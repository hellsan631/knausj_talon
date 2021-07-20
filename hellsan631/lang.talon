(ship | uppercase) <user.letters> [(lowercase | sunk)]:
  user.insert_formatted(letters, "ALL_CAPS")

said <user.prose>$: user.insert_formatted(prose, "ALL_LOWERCASE")
said component <user.prose>$:
  "compoent "
  user.insert_formatted(prose, "ALL_LOWERCASE")
said <user.prose> over: user.insert_formatted(prose, "ALL_LOWERCASE")