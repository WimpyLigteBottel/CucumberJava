package com.wimpy;

import java.util.ArrayList;
import java.util.List;

public class User {

  private final java.lang.String name;
  Account accounts;

  public User(java.lang.String name) {
    this.name = name;
  }

  public java.lang.String getName() {
    return name;
  }

  public Account getAccount() {
    return accounts;
  }

  public void setAccount(Account accounts) {
    this.accounts = accounts;
  }
}
