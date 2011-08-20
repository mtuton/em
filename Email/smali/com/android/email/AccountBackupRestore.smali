.class public Lcom/android/email/AccountBackupRestore;
.super Ljava/lang/Object;
.source "AccountBackupRestore.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static backupAccounts(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 46
    sget-boolean v0, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 47
    const-string v0, "Email"

    const-string v1, "backupAccounts"

    invoke-static {v0, v1}, Lcom/android/email/Email;->logv(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    :cond_0
    new-instance v0, Lcom/android/email/AccountBackupRestore$1;

    invoke-direct {v0, p0}, Lcom/android/email/AccountBackupRestore$1;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/android/email/AccountBackupRestore$1;->start()V

    .line 56
    return-void
.end method

.method static declared-synchronized doBackupAccounts(Landroid/content/Context;Lcom/android/email/Preferences;)V
    .locals 9
    .parameter
    .parameter

    .prologue
    .line 85
    const-class v6, Lcom/android/email/AccountBackupRestore;

    monitor-enter v6

    :try_start_0
    invoke-virtual {p1}, Lcom/android/email/Preferences;->getAccounts()[Lcom/android/email/Account;

    move-result-object v0

    .line 86
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 87
    invoke-virtual {v3, p1}, Lcom/android/email/Account;->delete(Lcom/android/email/Preferences;)V

    .line 86
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 95
    :cond_0
    invoke-static {p0}, Lcom/android/email/provider/EmailContent$Account;->getDefaultAccountId(Landroid/content/Context;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-wide v7

    .line 96
    const-wide/16 v0, -0x1

    cmp-long v0, v7, v0

    if-nez v0, :cond_1

    .line 156
    :goto_1
    monitor-exit v6

    return-void

    .line 101
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/email/provider/EmailContent$Account;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/email/provider/EmailContent$Account;->CONTENT_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v1

    .line 104
    :goto_2
    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 105
    const-class v0, Lcom/android/email/provider/EmailContent$Account;

    invoke-static {v1, v0}, Lcom/android/email/provider/EmailContent;->getContent(Landroid/database/Cursor;Ljava/lang/Class;)Lcom/android/email/provider/EmailContent;

    move-result-object v0

    check-cast v0, Lcom/android/email/provider/EmailContent$Account;

    .line 107
    sget-boolean v2, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v2, :cond_2

    .line 111
    :cond_2
    invoke-static {p0, v0}, Lcom/android/email/LegacyConversions;->makeLegacyAccount(Landroid/content/Context;Lcom/android/email/provider/EmailContent$Account;)Lcom/android/email/Account;

    move-result-object v2

    .line 114
    const-string v3, "eas"

    iget-object v4, v0, Lcom/android/email/provider/EmailContent$Account;->mHostAuthRecv:Lcom/android/email/provider/EmailContent$HostAuth;

    iget-object v4, v4, Lcom/android/email/provider/EmailContent$HostAuth;->mProtocol:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 115
    new-instance v3, Landroid/accounts/Account;

    iget-object v4, v0, Lcom/android/email/provider/EmailContent$Account;->mEmailAddress:Ljava/lang/String;

    const-string v5, "com.android.exchange"

    invoke-direct {v3, v4, v5}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    const-string v4, "com.android.contacts"

    invoke-static {v3, v4}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v4

    .line 119
    if-eqz v4, :cond_3

    .line 120
    iget v4, v2, Lcom/android/email/Account;->mBackupFlags:I

    or-int/lit8 v4, v4, 0x2

    iput v4, v2, Lcom/android/email/Account;->mBackupFlags:I

    .line 122
    :cond_3
    const-string v4, "com.android.calendar"

    invoke-static {v3, v4}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v4

    .line 124
    if-eqz v4, :cond_4

    .line 125
    iget v4, v2, Lcom/android/email/Account;->mBackupFlags:I

    or-int/lit8 v4, v4, 0x8

    iput v4, v2, Lcom/android/email/Account;->mBackupFlags:I

    .line 129
    :cond_4
    const-string v4, "tasks"

    invoke-static {v3, v4}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v4

    .line 131
    if-eqz v4, :cond_5

    .line 132
    iget v4, v2, Lcom/android/email/Account;->mBackupFlags:I

    or-int/lit8 v4, v4, 0x9

    iput v4, v2, Lcom/android/email/Account;->mBackupFlags:I

    .line 135
    :cond_5
    const-string v4, "com.android.notes"

    invoke-static {v3, v4}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v3

    .line 136
    if-eqz v3, :cond_6

    .line 137
    iget v3, v2, Lcom/android/email/Account;->mBackupFlags:I

    or-int/lit8 v3, v3, 0xa

    iput v3, v2, Lcom/android/email/Account;->mBackupFlags:I

    .line 143
    :cond_6
    iget-wide v3, v0, Lcom/android/email/provider/EmailContent;->mId:J

    cmp-long v0, v3, v7

    if-nez v0, :cond_7

    .line 144
    iget v0, v2, Lcom/android/email/Account;->mBackupFlags:I

    or-int/lit8 v0, v0, 0x4

    iput v0, v2, Lcom/android/email/Account;->mBackupFlags:I

    .line 149
    :cond_7
    iget v0, v2, Lcom/android/email/Account;->mBackupFlags:I

    or-int/lit8 v0, v0, 0x1

    iput v0, v2, Lcom/android/email/Account;->mBackupFlags:I

    .line 151
    invoke-virtual {v2, p1}, Lcom/android/email/Account;->save(Lcom/android/email/Preferences;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 154
    :catchall_0
    move-exception v0

    :try_start_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 85
    :catchall_1
    move-exception v0

    monitor-exit v6

    throw v0

    .line 154
    :cond_8
    :try_start_4
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto/16 :goto_1
.end method
