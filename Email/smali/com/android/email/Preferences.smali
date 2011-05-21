.class public Lcom/android/email/Preferences;
.super Ljava/lang/Object;
.source "Preferences.java"


# static fields
.field private static final ACCOUNT_UUIDS:Ljava/lang/String; = "accountUuids"

.field private static final ACTIVATION_LICENSE:Ljava/lang/String; = "activationLicense"

.field private static final DEFAULT_ACCOUNT_UUID:Ljava/lang/String; = "defaultAccountUuid"

.field private static final DEVICE_UID:Ljava/lang/String; = "deviceUID"

.field private static final ENABLE_DEBUG_LOGGING:Ljava/lang/String; = "enableDebugLogging"

.field private static final ENABLE_EXCHANGE_FILE_LOGGING:Ljava/lang/String; = "enableExchangeFileLogging"

.field private static final ENABLE_EXCHANGE_LOGGING:Ljava/lang/String; = "enableExchangeLogging"

.field private static final ENABLE_SENSITIVE_LOGGING:Ljava/lang/String; = "enableSensitiveLogging"

.field private static final ONE_TIME_INITIALIZATION_PROGRESS:Ljava/lang/String; = "oneTimeInitializationProgress"

.field private static final PREFERENCES_FILE:Ljava/lang/String; = "AndroidMail.Main"

.field private static preferences:Lcom/android/email/Preferences;


# instance fields
.field mSharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const-string v0, "AndroidMail.Main"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/Preferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 49
    return-void
.end method

.method public static declared-synchronized getPreferences(Landroid/content/Context;)Lcom/android/email/Preferences;
    .locals 2
    .parameter "context"

    .prologue
    .line 58
    const-class v0, Lcom/android/email/Preferences;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/email/Preferences;->preferences:Lcom/android/email/Preferences;

    if-nez v1, :cond_0

    .line 59
    new-instance v1, Lcom/android/email/Preferences;

    invoke-direct {v1, p0}, Lcom/android/email/Preferences;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/email/Preferences;->preferences:Lcom/android/email/Preferences;

    .line 61
    :cond_0
    sget-object v1, Lcom/android/email/Preferences;->preferences:Lcom/android/email/Preferences;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 58
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Lcom/android/email/Preferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 226
    return-void
.end method

.method public dump()V
    .locals 0

    .prologue
    .line 234
    return-void
.end method

.method public getAccountByContentUri(Landroid/net/Uri;)Lcom/android/email/Account;
    .locals 8
    .parameter "uri"

    .prologue
    const/4 v7, 0x0

    .line 109
    const-string v5, "content"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "accounts"

    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    :cond_0
    move-object v5, v7

    .line 126
    :goto_0
    return-object v5

    .line 112
    :cond_1
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 113
    .local v3, uuid:Ljava/lang/String;
    if-nez v3, :cond_2

    move-object v5, v7

    .line 114
    goto :goto_0

    .line 116
    :cond_2
    iget-object v5, p0, Lcom/android/email/Preferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v6, "accountUuids"

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 117
    .local v0, accountUuids:Ljava/lang/String;
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_4

    :cond_3
    move-object v5, v7

    .line 118
    goto :goto_0

    .line 120
    :cond_4
    const-string v5, ","

    invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 121
    .local v4, uuids:[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    array-length v2, v4

    .local v2, length:I
    :goto_1
    if-ge v1, v2, :cond_6

    .line 122
    aget-object v5, v4, v1

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 123
    new-instance v5, Lcom/android/email/Account;

    invoke-direct {v5, p0, v3}, Lcom/android/email/Account;-><init>(Lcom/android/email/Preferences;Ljava/lang/String;)V

    goto :goto_0

    .line 121
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_6
    move-object v5, v7

    .line 126
    goto :goto_0
.end method

.method public getAccounts()[Lcom/android/email/Account;
    .locals 8

    .prologue
    .line 92
    iget-object v5, p0, Lcom/android/email/Preferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v6, "accountUuids"

    const/4 v7, 0x0

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 93
    .local v0, accountUuids:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_1

    .line 94
    :cond_0
    const/4 v5, 0x0

    new-array v5, v5, [Lcom/android/email/Account;

    .line 101
    :goto_0
    return-object v5

    .line 96
    :cond_1
    const-string v5, ","

    invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 97
    .local v4, uuids:[Ljava/lang/String;
    array-length v5, v4

    new-array v1, v5, [Lcom/android/email/Account;

    .line 98
    .local v1, accounts:[Lcom/android/email/Account;
    const/4 v2, 0x0

    .local v2, i:I
    array-length v3, v4

    .local v3, length:I
    :goto_1
    if-ge v2, v3, :cond_2

    .line 99
    new-instance v5, Lcom/android/email/Account;

    aget-object v6, v4, v2

    invoke-direct {v5, p0, v6}, Lcom/android/email/Account;-><init>(Lcom/android/email/Preferences;Ljava/lang/String;)V

    aput-object v5, v1, v2

    .line 98
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    move-object v5, v1

    .line 101
    goto :goto_0
.end method

.method public getActivationLicense()Ljava/lang/String;
    .locals 3

    .prologue
    .line 242
    iget-object v0, p0, Lcom/android/email/Preferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "activationLicense"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCarrierAccount()Lcom/android/email/Account;
    .locals 12

    .prologue
    .line 65
    const-class v8, Lcom/android/email/Preferences;

    monitor-enter v8

    .line 66
    :try_start_0
    iget-object v9, p0, Lcom/android/email/Preferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v10, "carrierAccount"

    const/4 v11, 0x0

    invoke-interface {v9, v10, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 67
    .local v5, carrierAccountId:Ljava/lang/String;
    const-string v9, ">>> Preference"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "fixed account >> "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    const/4 v0, 0x0

    .line 70
    .local v0, ac:Lcom/android/email/Account;
    if-nez v5, :cond_0

    .line 71
    monitor-exit v8

    move-object v1, v0

    .line 83
    .end local v0           #ac:Lcom/android/email/Account;
    .local v1, ac:Lcom/android/email/Account;
    :goto_0
    return-object v1

    .line 74
    .end local v1           #ac:Lcom/android/email/Account;
    .restart local v0       #ac:Lcom/android/email/Account;
    :cond_0
    invoke-virtual {p0}, Lcom/android/email/Preferences;->getAccounts()[Lcom/android/email/Account;

    move-result-object v3

    .line 75
    .local v3, accounts:[Lcom/android/email/Account;
    if-eqz v5, :cond_1

    .line 76
    move-object v4, v3

    .local v4, arr$:[Lcom/android/email/Account;
    array-length v7, v4

    .local v7, len$:I
    const/4 v6, 0x0

    .local v6, i$:I
    :goto_1
    if-ge v6, v7, :cond_1

    aget-object v2, v4, v6

    .line 77
    .local v2, account:Lcom/android/email/Account;
    invoke-virtual {v2}, Lcom/android/email/Account;->getUuid()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 78
    move-object v0, v2

    .line 83
    .end local v2           #account:Lcom/android/email/Account;
    .end local v4           #arr$:[Lcom/android/email/Account;
    .end local v6           #i$:I
    .end local v7           #len$:I
    :cond_1
    monitor-exit v8

    move-object v1, v0

    .end local v0           #ac:Lcom/android/email/Account;
    .restart local v1       #ac:Lcom/android/email/Account;
    goto :goto_0

    .line 76
    .end local v1           #ac:Lcom/android/email/Account;
    .restart local v0       #ac:Lcom/android/email/Account;
    .restart local v2       #account:Lcom/android/email/Account;
    .restart local v4       #arr$:[Lcom/android/email/Account;
    .restart local v6       #i$:I
    .restart local v7       #len$:I
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 84
    .end local v0           #ac:Lcom/android/email/Account;
    .end local v2           #account:Lcom/android/email/Account;
    .end local v3           #accounts:[Lcom/android/email/Account;
    .end local v4           #arr$:[Lcom/android/email/Account;
    .end local v5           #carrierAccountId:Ljava/lang/String;
    .end local v6           #i$:I
    .end local v7           #len$:I
    :catchall_0
    move-exception v9

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v9
.end method

.method public getDefaultAccount()Lcom/android/email/Account;
    .locals 10

    .prologue
    .line 135
    iget-object v7, p0, Lcom/android/email/Preferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v8, "defaultAccountUuid"

    const/4 v9, 0x0

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 136
    .local v4, defaultAccountUuid:Ljava/lang/String;
    const/4 v3, 0x0

    .line 137
    .local v3, defaultAccount:Lcom/android/email/Account;
    invoke-virtual {p0}, Lcom/android/email/Preferences;->getAccounts()[Lcom/android/email/Account;

    move-result-object v1

    .line 138
    .local v1, accounts:[Lcom/android/email/Account;
    if-eqz v4, :cond_0

    .line 139
    move-object v2, v1

    .local v2, arr$:[Lcom/android/email/Account;
    array-length v6, v2

    .local v6, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_0
    if-ge v5, v6, :cond_0

    aget-object v0, v2, v5

    .line 140
    .local v0, account:Lcom/android/email/Account;
    invoke-virtual {v0}, Lcom/android/email/Account;->getUuid()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 141
    move-object v3, v0

    .line 147
    .end local v0           #account:Lcom/android/email/Account;
    .end local v2           #arr$:[Lcom/android/email/Account;
    .end local v5           #i$:I
    .end local v6           #len$:I
    :cond_0
    if-nez v3, :cond_1

    .line 148
    array-length v7, v1

    if-lez v7, :cond_1

    .line 149
    const/4 v7, 0x0

    aget-object v3, v1, v7

    .line 150
    invoke-virtual {p0, v3}, Lcom/android/email/Preferences;->setDefaultAccount(Lcom/android/email/Account;)V

    .line 154
    :cond_1
    return-object v3

    .line 139
    .restart local v0       #account:Lcom/android/email/Account;
    .restart local v2       #arr$:[Lcom/android/email/Account;
    .restart local v5       #i$:I
    .restart local v6       #len$:I
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0
.end method

.method public declared-synchronized getDeviceUID()Ljava/lang/String;
    .locals 4

    .prologue
    const-string v1, "deviceUID"

    .line 205
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/email/Preferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v2, "deviceUID"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 206
    .local v0, result:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 207
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    .line 208
    iget-object v1, p0, Lcom/android/email/Preferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "deviceUID"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 210
    :cond_0
    monitor-exit p0

    return-object v0

    .line 205
    .end local v0           #result:Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public getEnableDebugLogging()Z
    .locals 3

    .prologue
    .line 172
    iget-object v0, p0, Lcom/android/email/Preferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "enableDebugLogging"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getEnableExchangeFileLogging()Z
    .locals 3

    .prologue
    .line 196
    iget-object v0, p0, Lcom/android/email/Preferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "enableExchangeFileLogging"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getEnableExchangeLogging()Z
    .locals 3

    .prologue
    .line 188
    iget-object v0, p0, Lcom/android/email/Preferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "enableExchangeLogging"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getEnableSensitiveLogging()Z
    .locals 3

    .prologue
    .line 180
    iget-object v0, p0, Lcom/android/email/Preferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "enableSensitiveLogging"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getOneTimeInitializationProgress()I
    .locals 3

    .prologue
    .line 214
    iget-object v0, p0, Lcom/android/email/Preferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "oneTimeInitializationProgress"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public save()V
    .locals 0

    .prologue
    .line 222
    return-void
.end method

.method public setActivationLicense(Ljava/lang/String;)V
    .locals 2
    .parameter "value"

    .prologue
    .line 238
    iget-object v0, p0, Lcom/android/email/Preferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "activationLicense"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 239
    return-void
.end method

.method public setCarrierAccountId(Ljava/lang/String;)V
    .locals 3
    .parameter "Uuid"

    .prologue
    .line 166
    const-class v0, Lcom/android/email/Preferences;

    monitor-enter v0

    .line 167
    :try_start_0
    iget-object v1, p0, Lcom/android/email/Preferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "carrierAccount"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 168
    monitor-exit v0

    .line 169
    return-void

    .line 168
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setDefaultAccount(Lcom/android/email/Account;)V
    .locals 3
    .parameter "account"

    .prologue
    .line 158
    iget-object v0, p0, Lcom/android/email/Preferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "defaultAccountUuid"

    invoke-virtual {p1}, Lcom/android/email/Account;->getUuid()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 159
    return-void
.end method

.method public setEnableDebugLogging(Z)V
    .locals 2
    .parameter "value"

    .prologue
    .line 162
    iget-object v0, p0, Lcom/android/email/Preferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "enableDebugLogging"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 163
    return-void
.end method

.method public setEnableExchangeFileLogging(Z)V
    .locals 2
    .parameter "value"

    .prologue
    .line 192
    iget-object v0, p0, Lcom/android/email/Preferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "enableExchangeFileLogging"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 193
    return-void
.end method

.method public setEnableExchangeLogging(Z)V
    .locals 2
    .parameter "value"

    .prologue
    .line 184
    iget-object v0, p0, Lcom/android/email/Preferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "enableExchangeLogging"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 185
    return-void
.end method

.method public setEnableSensitiveLogging(Z)V
    .locals 2
    .parameter "value"

    .prologue
    .line 176
    iget-object v0, p0, Lcom/android/email/Preferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "enableSensitiveLogging"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 177
    return-void
.end method

.method public setOneTimeInitializationProgress(I)V
    .locals 2
    .parameter "progress"

    .prologue
    .line 218
    iget-object v0, p0, Lcom/android/email/Preferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "oneTimeInitializationProgress"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 219
    return-void
.end method
