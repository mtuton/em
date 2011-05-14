.class public Lcom/android/email/AccountBackupRestore;
.super Ljava/lang/Object;
.source "AccountBackupRestore.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static backupAccounts(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 44
    sget-boolean v0, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 45
    const-string v0, "Email"

    const-string v1, "backupAccounts"

    invoke-static {v0, v1}, Lcom/android/email/Email;->logv(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    :cond_0
    new-instance v0, Lcom/android/email/AccountBackupRestore$1;

    invoke-direct {v0, p0}, Lcom/android/email/AccountBackupRestore$1;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/android/email/AccountBackupRestore$1;->start()V

    .line 54
    return-void
.end method

.method static declared-synchronized doBackupAccounts(Landroid/content/Context;Lcom/android/email/Preferences;)V
    .locals 9
    .parameter "context"
    .parameter "preferences"

    .prologue
    .line 83
    const-class v8, Lcom/android/email/AccountBackupRestore;

    monitor-enter v8

    :try_start_0
    invoke-virtual {p1}, Lcom/android/email/Preferences;->getAccounts()[Lcom/android/email/Account;

    move-result-object v0

    .line 84
    .local v0, oldBackups:[Lcom/android/email/Account;
    move-object v0, v0

    .local v0, arr$:[Lcom/android/email/Account;
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    move v2, v1

    .end local v1           #i$:I
    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 85
    .local v1, backup:Lcom/android/email/Account;
    invoke-virtual {v1, p1}, Lcom/android/email/Account;->delete(Lcom/android/email/Preferences;)V

    .line 84
    add-int/lit8 v1, v2, 0x1

    .end local v2           #i$:I
    .local v1, i$:I
    move v2, v1

    .end local v1           #i$:I
    .restart local v2       #i$:I
    goto :goto_0

    .line 93
    :cond_0
    invoke-static {p0}, Lcom/android/email/provider/EmailContent$Account;->getDefaultAccountId(Landroid/content/Context;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-wide v6

    .line 94
    .local v6, defaultAccountId:J
    const-wide/16 v0, -0x1

    cmp-long v0, v6, v0

    if-nez v0, :cond_1

    .line 141
    .end local v0           #arr$:[Lcom/android/email/Account;
    .end local v2           #i$:I
    .end local v3           #len$:I
    :goto_1
    monitor-exit v8

    return-void

    .line 99
    .restart local v2       #i$:I
    .restart local v3       #len$:I
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/email/provider/EmailContent$Account;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/email/provider/EmailContent$Account;->CONTENT_PROJECTION:[Ljava/lang/String;

    .end local v2           #i$:I
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .end local v3           #len$:I
    move-result-object v1

    .line 102
    .local v1, c:Landroid/database/Cursor;
    :goto_2
    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 103
    const-class v0, Lcom/android/email/provider/EmailContent$Account;

    invoke-static {v1, v0}, Lcom/android/email/provider/EmailContent;->getContent(Landroid/database/Cursor;Ljava/lang/Class;)Lcom/android/email/provider/EmailContent;

    move-result-object v2

    check-cast v2, Lcom/android/email/provider/EmailContent$Account;

    .line 105
    .local v2, fromAccount:Lcom/android/email/provider/EmailContent$Account;
    sget-boolean v0, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v0, :cond_2

    .line 109
    :cond_2
    invoke-static {p0, v2}, Lcom/android/email/LegacyConversions;->makeLegacyAccount(Landroid/content/Context;Lcom/android/email/provider/EmailContent$Account;)Lcom/android/email/Account;

    move-result-object v4

    .line 112
    .local v4, toAccount:Lcom/android/email/Account;
    iget-object v0, v2, Lcom/android/email/provider/EmailContent$Account;->mHostAuthRecv:Lcom/android/email/provider/EmailContent$HostAuth;

    iget-object v0, v0, Lcom/android/email/provider/EmailContent$HostAuth;->mProtocol:Ljava/lang/String;

    const-string v3, "eas"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 113
    new-instance v0, Landroid/accounts/Account;

    iget-object v3, v2, Lcom/android/email/provider/EmailContent$Account;->mEmailAddress:Ljava/lang/String;

    const-string v5, "com.android.exchange"

    invoke-direct {v0, v3, v5}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    .local v0, acct:Landroid/accounts/Account;
    const-string v3, "com.android.contacts"

    invoke-static {v0, v3}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v3

    .line 117
    .local v3, syncContacts:Z
    if-eqz v3, :cond_3

    .line 118
    iget v3, v4, Lcom/android/email/Account;->mBackupFlags:I

    .end local v3           #syncContacts:Z
    or-int/lit8 v3, v3, 0x2

    iput v3, v4, Lcom/android/email/Account;->mBackupFlags:I

    .line 120
    :cond_3
    const-string v3, "com.android.calendar"

    invoke-static {v0, v3}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v0

    .line 122
    .local v0, syncCalendar:Z
    if-eqz v0, :cond_4

    .line 123
    iget v0, v4, Lcom/android/email/Account;->mBackupFlags:I

    .end local v0           #syncCalendar:Z
    or-int/lit8 v0, v0, 0x8

    iput v0, v4, Lcom/android/email/Account;->mBackupFlags:I

    .line 128
    :cond_4
    iget-wide v2, v2, Lcom/android/email/provider/EmailContent$Account;->mId:J

    .end local v2           #fromAccount:Lcom/android/email/provider/EmailContent$Account;
    cmp-long v0, v2, v6

    if-nez v0, :cond_5

    .line 129
    iget v0, v4, Lcom/android/email/Account;->mBackupFlags:I

    or-int/lit8 v0, v0, 0x4

    iput v0, v4, Lcom/android/email/Account;->mBackupFlags:I

    .line 134
    :cond_5
    iget v0, v4, Lcom/android/email/Account;->mBackupFlags:I

    or-int/lit8 v0, v0, 0x1

    iput v0, v4, Lcom/android/email/Account;->mBackupFlags:I

    .line 136
    invoke-virtual {v4, p1}, Lcom/android/email/Account;->save(Lcom/android/email/Preferences;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 139
    .end local v4           #toAccount:Lcom/android/email/Account;
    :catchall_0
    move-exception p0

    .end local p0
    :try_start_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 83
    .end local v1           #c:Landroid/database/Cursor;
    .end local v6           #defaultAccountId:J
    :catchall_1
    move-exception p0

    monitor-exit v8

    throw p0

    .line 139
    .restart local v1       #c:Landroid/database/Cursor;
    .restart local v6       #defaultAccountId:J
    .restart local p0
    :cond_6
    :try_start_4
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_1
.end method

.method static declared-synchronized doRestoreAccounts(Landroid/content/Context;Lcom/android/email/Preferences;)Z
    .locals 9
    .parameter "context"
    .parameter "preferences"

    .prologue
    .line 152
    const-class v6, Lcom/android/email/AccountBackupRestore;

    monitor-enter v6

    const/4 v2, 0x0

    .line 155
    .local v2, result:Z
    :try_start_0
    sget-object v0, Lcom/android/email/provider/EmailContent$Account;->CONTENT_URI:Landroid/net/Uri;

    const/4 v1, 0x0

    const/4 v3, 0x0

    invoke-static {p0, v0, v1, v3}, Lcom/android/email/provider/EmailContent;->count(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v0

    .line 156
    .local v0, numAccounts:I
    if-lez v0, :cond_0

    move p0, v2

    .end local v2           #result:Z
    .local p0, result:Z
    move p1, v2

    .line 232
    .end local v0           #numAccounts:I
    .end local p0           #result:Z
    .local p1, result:I
    :goto_0
    monitor-exit v6

    return p1

    .line 160
    .restart local v0       #numAccounts:I
    .restart local v2       #result:Z
    .local p0, context:Landroid/content/Context;
    .local p1, preferences:Lcom/android/email/Preferences;
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Lcom/android/email/Preferences;->getAccounts()[Lcom/android/email/Account;

    move-result-object p1

    .line 161
    .local p1, backups:[Lcom/android/email/Account;
    array-length v0, p1

    .end local v0           #numAccounts:I
    if-nez v0, :cond_1

    move p0, v2

    .end local v2           #result:Z
    .local p0, result:Z
    move p1, v2

    .line 162
    .local p1, result:I
    goto :goto_0

    .line 165
    .restart local v2       #result:Z
    .local p0, context:Landroid/content/Context;
    .local p1, backups:[Lcom/android/email/Account;
    :cond_1
    const-string v0, "Email"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "*** Restoring Email Accounts, found "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v3, p1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    move-object v1, p1

    .local v1, arr$:[Lcom/android/email/Account;
    array-length v3, v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .local v3, len$:I
    const/4 p1, 0x0

    .local p1, i$:I
    move v4, v2

    .end local v2           #result:Z
    .local v4, result:Z
    move v2, p1

    .end local p1           #i$:I
    .local v2, i$:I
    :goto_1
    if-ge v2, v3, :cond_7

    :try_start_2
    aget-object p1, v1, v2

    .line 170
    .local p1, backupAccount:Lcom/android/email/Account;
    iget v0, p1, Lcom/android/email/Account;->mBackupFlags:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_2

    move v0, v4

    .line 168
    .end local v4           #result:Z
    .end local p1           #backupAccount:Lcom/android/email/Account;
    .local v0, result:Z
    :goto_2
    add-int/lit8 p1, v2, 0x1

    .end local v2           #i$:I
    .local p1, i$:I
    move v2, p1

    .end local p1           #i$:I
    .restart local v2       #i$:I
    move v4, v0

    .end local v0           #result:Z
    .restart local v4       #result:Z
    goto :goto_1

    .line 176
    .local p1, backupAccount:Lcom/android/email/Account;
    :cond_2
    invoke-static {p0, p1}, Lcom/android/email/LegacyConversions;->makeAccount(Landroid/content/Context;Lcom/android/email/Account;)Lcom/android/email/provider/EmailContent$Account;

    move-result-object v5

    .line 180
    .local v5, toAccount:Lcom/android/email/provider/EmailContent$Account;
    iget v0, p1, Lcom/android/email/Account;->mBackupFlags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_3

    .line 181
    const/4 v0, 0x1

    invoke-virtual {v5, v0}, Lcom/android/email/provider/EmailContent$Account;->setDefaultAccount(Z)V

    .line 185
    :cond_3
    iget-object v0, v5, Lcom/android/email/provider/EmailContent$Account;->mHostAuthRecv:Lcom/android/email/provider/EmailContent$HostAuth;

    iget-object v0, v0, Lcom/android/email/provider/EmailContent$HostAuth;->mProtocol:Ljava/lang/String;

    const-string v7, "eas"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 188
    iget v0, p1, Lcom/android/email/Account;->mBackupFlags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    .line 190
    .local v0, alsoSyncContacts:Z
    :goto_3
    iget p1, p1, Lcom/android/email/Account;->mBackupFlags:I

    .end local p1           #backupAccount:Lcom/android/email/Account;
    and-int/lit8 p1, p1, 0x8

    if-eqz p1, :cond_5

    const/4 p1, 0x1

    .line 210
    .local p1, alsoSyncCalendar:Z
    :goto_4
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    const/4 v8, 0x0

    invoke-static {v7, v5, v0, p1, v8}, Lcom/android/email/mail/store/ExchangeStore;->addSystemAccount(Landroid/content/Context;Lcom/android/email/provider/EmailContent$Account;ZZLandroid/accounts/AccountManagerCallback;)Landroid/accounts/AccountManagerFuture;

    move-result-object p1

    .line 216
    .local p1, addAccountResult:Landroid/accounts/AccountManagerFuture;,"Landroid/accounts/AccountManagerFuture<Landroid/os/Bundle;>;"
    invoke-virtual {v5, p0}, Lcom/android/email/provider/EmailContent$Account;->save(Landroid/content/Context;)Landroid/net/Uri;

    .line 230
    .end local v0           #alsoSyncContacts:Z
    .end local p1           #addAccountResult:Landroid/accounts/AccountManagerFuture;,"Landroid/accounts/AccountManagerFuture<Landroid/os/Bundle;>;"
    :goto_5
    const/4 p1, 0x1

    .end local v4           #result:Z
    .local p1, result:Z
    move v0, p1

    .end local p1           #result:Z
    .local v0, result:Z
    goto :goto_2

    .line 188
    .end local v0           #result:Z
    .restart local v4       #result:Z
    .local p1, backupAccount:Lcom/android/email/Account;
    :cond_4
    const/4 v0, 0x0

    goto :goto_3

    .line 190
    .end local p1           #backupAccount:Lcom/android/email/Account;
    .local v0, alsoSyncContacts:Z
    :cond_5
    const/4 p1, 0x0

    goto :goto_4

    .line 227
    .end local v0           #alsoSyncContacts:Z
    .restart local p1       #backupAccount:Lcom/android/email/Account;
    :cond_6
    invoke-virtual {v5, p0}, Lcom/android/email/provider/EmailContent$Account;->save(Landroid/content/Context;)Landroid/net/Uri;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_5

    .line 152
    .end local v5           #toAccount:Lcom/android/email/provider/EmailContent$Account;
    .end local p1           #backupAccount:Lcom/android/email/Account;
    :catchall_0
    move-exception p0

    move-object p1, p0

    move p0, v4

    .end local v1           #arr$:[Lcom/android/email/Account;
    .end local v2           #i$:I
    .end local v3           #len$:I
    .end local v4           #result:Z
    .local p0, result:Z
    :goto_6
    monitor-exit v6

    throw p1

    .restart local v1       #arr$:[Lcom/android/email/Account;
    .restart local v2       #i$:I
    .restart local v3       #len$:I
    .restart local v4       #result:Z
    .local p0, context:Landroid/content/Context;
    :cond_7
    move p0, v4

    .end local v4           #result:Z
    .local p0, result:Z
    move p1, v4

    .line 232
    .local p1, result:I
    goto :goto_0

    .line 152
    .end local v1           #arr$:[Lcom/android/email/Account;
    .end local v3           #len$:I
    .end local p1           #result:I
    .local v2, result:Z
    .local p0, context:Landroid/content/Context;
    :catchall_1
    move-exception p0

    move-object p1, p0

    move p0, v2

    .end local v2           #result:Z
    .local p0, result:Z
    goto :goto_6
.end method

.method public static restoreAccountsIfNeeded(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 62
    invoke-static {p0}, Lcom/android/email/Preferences;->getPreferences(Landroid/content/Context;)Lcom/android/email/Preferences;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/email/AccountBackupRestore;->doRestoreAccounts(Landroid/content/Context;Lcom/android/email/Preferences;)Z

    move-result v0

    .line 63
    .local v0, restored:Z
    if-eqz v0, :cond_0

    .line 65
    const-string v1, "Email"

    const-string v2, "Register services after restoring accounts"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    invoke-static {p0}, Lcom/android/email/SecurityPolicy;->getInstance(Landroid/content/Context;)Lcom/android/email/SecurityPolicy;

    move-result-object v1

    const-wide/16 v2, -0x1

    invoke-virtual {v1, v2, v3}, Lcom/android/email/SecurityPolicy;->updatePolicies(J)V

    .line 69
    invoke-static {p0}, Lcom/android/email/Email;->setServicesEnabled(Landroid/content/Context;)Z

    .line 70
    invoke-static {p0}, Lcom/android/email/ExchangeUtils;->startExchangeService(Landroid/content/Context;)V

    .line 72
    :cond_0
    return-void
.end method
