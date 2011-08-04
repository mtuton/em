.class public Lcom/android/exchange/security/ode/ODEHandler;
.super Landroid/os/Handler;
.source "ODEHandler.java"


# static fields
.field private static final ACCOUNT_FLAGS_PROJECTION:[Ljava/lang/String;

.field private static final ACCOUNT_HOST_AUTH_PROJECTION:[Ljava/lang/String;


# instance fields
.field private mAdminName:Landroid/content/ComponentName;

.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    const-string v5, "_id"

    .line 30
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v5, v0, v2

    const-string v1, "flags"

    aput-object v1, v0, v3

    const-string v1, "securityFlags"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/exchange/security/ode/ODEHandler;->ACCOUNT_FLAGS_PROJECTION:[Ljava/lang/String;

    .line 39
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v5, v0, v2

    const-string v1, "hostAuthKeyRecv"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/exchange/security/ode/ODEHandler;->ACCOUNT_HOST_AUTH_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;Landroid/content/Context;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 54
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 48
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/exchange/security/ode/ODEHandler;->mContext:Landroid/content/Context;

    .line 55
    iput-object p2, p0, Lcom/android/exchange/security/ode/ODEHandler;->mContext:Landroid/content/Context;

    .line 58
    new-instance v0, Landroid/content/ComponentName;

    const-class v1, Lcom/android/email/SecurityPolicy$PolicyAdmin;

    invoke-direct {v0, p2, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/android/exchange/security/ode/ODEHandler;->mAdminName:Landroid/content/ComponentName;

    .line 59
    return-void
.end method

.method private clearAccountHoldFlags()V
    .locals 12

    .prologue
    const/4 v3, 0x0

    .line 278
    iget-object v1, p0, Lcom/android/exchange/security/ode/ODEHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 279
    .local v0, resolver:Landroid/content/ContentResolver;
    sget-object v1, Lcom/android/email/provider/EmailContent$Account;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/exchange/security/ode/ODEHandler;->ACCOUNT_FLAGS_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 282
    .local v8, c:Landroid/database/Cursor;
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 283
    const/4 v1, 0x0

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 284
    .local v6, accountId:J
    iget-object v1, p0, Lcom/android/exchange/security/ode/ODEHandler;->mContext:Landroid/content/Context;

    invoke-static {v1, v6, v7}, Lcom/android/email/provider/EmailContent$Policies;->getNumberOfPoliciesForAccount(Landroid/content/Context;J)I

    move-result v1

    if-lez v1, :cond_0

    .line 285
    const/4 v1, 0x1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 286
    .local v10, flags:I
    and-int/lit8 v1, v10, 0x20

    if-eqz v1, :cond_0

    .line 287
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 288
    .local v9, cv:Landroid/content/ContentValues;
    const-string v1, "flags"

    and-int/lit8 v2, v10, -0x21

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v9, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 289
    sget-object v1, Lcom/android/email/provider/EmailContent$Account;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v11

    .line 290
    .local v11, uri:Landroid/net/Uri;
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v11, v9, v1, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 295
    .end local v6           #accountId:J
    .end local v9           #cv:Landroid/content/ContentValues;
    .end local v10           #flags:I
    .end local v11           #uri:Landroid/net/Uri;
    :catchall_0
    move-exception v1

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v1

    :cond_1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 297
    return-void
.end method

.method private doProvisioningForAccount(Lcom/android/email/provider/EmailContent$Account;)Z
    .locals 5
    .parameter "account"

    .prologue
    .line 300
    const/4 v1, 0x0

    .line 301
    .local v1, result:Z
    new-instance v2, Lcom/android/exchange/security/ode/ODESyncService;

    iget-object v3, p0, Lcom/android/exchange/security/ode/ODEHandler;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, p1}, Lcom/android/exchange/security/ode/ODESyncService;-><init>(Landroid/content/Context;Lcom/android/email/provider/EmailContent$Account;)V

    .line 302
    .local v2, svc:Lcom/android/exchange/security/ode/ODESyncService;
    invoke-virtual {v2}, Lcom/android/exchange/security/ode/ODESyncService;->setupAdhocServiceBasedonAccount()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 304
    :try_start_0
    invoke-virtual {v2}, Lcom/android/exchange/security/ode/ODESyncService;->doProvisioning()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 305
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Completed provisioning for account: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/android/email/provider/EmailContent$Account;->mEmailAddress:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/exchange/security/ode/ODEService;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 306
    const/4 v1, 0x1

    .line 314
    :cond_0
    :goto_0
    return v1

    .line 308
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 309
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 310
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to complete provisioning for account: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/android/email/provider/EmailContent$Account;->mEmailAddress:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/exchange/security/ode/ODEService;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getDPM()Landroid/app/admin/DevicePolicyManager;
    .locals 2

    .prologue
    .line 164
    iget-object v0, p0, Lcom/android/exchange/security/ode/ODEHandler;->mContext:Landroid/content/Context;

    const-string v1, "device_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/app/admin/DevicePolicyManager;

    return-object p0
.end method

.method private getExchangeAccounts()Ljava/util/ArrayList;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/email/provider/EmailContent$Account;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 217
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 218
    .local v7, accounts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/email/provider/EmailContent$Account;>;"
    iget-object v1, p0, Lcom/android/exchange/security/ode/ODEHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 219
    .local v0, resolver:Landroid/content/ContentResolver;
    sget-object v1, Lcom/android/email/provider/EmailContent$Account;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/exchange/security/ode/ODEHandler;->ACCOUNT_HOST_AUTH_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 221
    .local v8, c:Landroid/database/Cursor;
    if-nez v8, :cond_0

    .line 243
    :goto_0
    return-object v7

    .line 224
    :cond_0
    :goto_1
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 225
    const/4 v1, 0x1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    int-to-long v10, v1

    .line 226
    .local v10, hostAuthKey:J
    iget-object v1, p0, Lcom/android/exchange/security/ode/ODEHandler;->mContext:Landroid/content/Context;

    invoke-static {v1, v10, v11}, Lcom/android/email/provider/EmailContent$HostAuth;->restoreHostAuthWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$HostAuth;

    move-result-object v9

    .line 227
    .local v9, host:Lcom/android/email/provider/EmailContent$HostAuth;
    if-eqz v9, :cond_0

    .line 228
    iget-object v1, v9, Lcom/android/email/provider/EmailContent$HostAuth;->mProtocol:Ljava/lang/String;

    const-string v2, "eas"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 229
    iget-object v1, p0, Lcom/android/exchange/security/ode/ODEHandler;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    int-to-long v2, v2

    invoke-static {v1, v2, v3}, Lcom/android/email/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Account;

    move-result-object v6

    .line 230
    .local v6, account:Lcom/android/email/provider/EmailContent$Account;
    if-eqz v6, :cond_0

    .line 231
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 232
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exchange account found : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v6, Lcom/android/email/provider/EmailContent$Account;->mEmailAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/exchange/security/ode/ODEService;->log(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 240
    .end local v6           #account:Lcom/android/email/provider/EmailContent$Account;
    .end local v9           #host:Lcom/android/email/provider/EmailContent$HostAuth;
    .end local v10           #hostAuthKey:J
    :catchall_0
    move-exception v1

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v1

    .line 235
    .restart local v9       #host:Lcom/android/email/provider/EmailContent$HostAuth;
    .restart local v10       #hostAuthKey:J
    :cond_1
    :try_start_1
    const-string v1, "Non-Exchange account found"

    invoke-static {v1}, Lcom/android/exchange/security/ode/ODEService;->log(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 240
    .end local v9           #host:Lcom/android/email/provider/EmailContent$HostAuth;
    .end local v10           #hostAuthKey:J
    :cond_2
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method private handleStart(Landroid/os/Message;)V
    .locals 9
    .parameter "msg"

    .prologue
    .line 83
    const/4 v5, 0x0

    .line 84
    .local v5, recoveryPassword:Ljava/lang/String;
    const/4 v1, 0x0

    .line 86
    .local v1, accounts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/email/provider/EmailContent$Account;>;"
    iget-object v7, p0, Lcom/android/exchange/security/ode/ODEHandler;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/exchange/security/ode/ODEService;->clearODEError(Landroid/content/Context;)V

    .line 88
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v7, v7, Ljava/lang/Integer;

    if-eqz v7, :cond_5

    .line 89
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 90
    .local v6, what:I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Started handler with : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/exchange/security/ode/ODEService;->log(Ljava/lang/String;)V

    .line 92
    packed-switch v6, :pswitch_data_0

    .line 154
    const-string v7, "invalid start message"

    invoke-static {v7}, Lcom/android/exchange/security/ode/ODEService;->log(Ljava/lang/String;)V

    .line 160
    .end local v6           #what:I
    :goto_0
    invoke-direct {p0}, Lcom/android/exchange/security/ode/ODEHandler;->quit()V

    .line 161
    return-void

    .line 100
    .restart local v6       #what:I
    :pswitch_0
    invoke-direct {p0}, Lcom/android/exchange/security/ode/ODEHandler;->getDPM()Landroid/app/admin/DevicePolicyManager;

    move-result-object v3

    .line 103
    .local v3, dpm:Landroid/app/admin/DevicePolicyManager;
    iget-object v7, p0, Lcom/android/exchange/security/ode/ODEHandler;->mAdminName:Landroid/content/ComponentName;

    invoke-virtual {v3, v7}, Landroid/app/admin/DevicePolicyManager;->isAdminActive(Landroid/content/ComponentName;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 104
    iget-object v7, p0, Lcom/android/exchange/security/ode/ODEHandler;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/email/SecurityPolicy;->getInstance(Landroid/content/Context;)Lcom/android/email/SecurityPolicy;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/email/SecurityPolicy;->getAdminComponent()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/app/admin/DevicePolicyManager;->generateRecoveryPassword(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v5

    .line 109
    :cond_0
    if-eqz v5, :cond_4

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_4

    .line 111
    invoke-direct {p0}, Lcom/android/exchange/security/ode/ODEHandler;->getExchangeAccounts()Ljava/util/ArrayList;

    move-result-object v1

    .line 112
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/provider/EmailContent$Account;

    .line 115
    .local v0, account:Lcom/android/email/provider/EmailContent$Account;
    invoke-direct {p0, v0}, Lcom/android/exchange/security/ode/ODEHandler;->isAccountOnSecurityHold(Lcom/android/email/provider/EmailContent$Account;)Z

    move-result v7

    if-eqz v7, :cond_3

    const/4 v7, 0x5

    if-eq v6, v7, :cond_3

    const/4 v7, 0x4

    if-eq v6, v7, :cond_3

    .line 118
    invoke-direct {p0, v0}, Lcom/android/exchange/security/ode/ODEHandler;->doProvisioningForAccount(Lcom/android/email/provider/EmailContent$Account;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 119
    invoke-direct {p0, v0, v5}, Lcom/android/exchange/security/ode/ODEHandler;->sendRecoveryPassword(Lcom/android/email/provider/EmailContent$Account;Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 120
    iget-object v7, p0, Lcom/android/exchange/security/ode/ODEHandler;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/exchange/security/ode/ODEService;->setODEError(Landroid/content/Context;)V

    goto :goto_1

    .line 123
    :cond_2
    iget-object v7, p0, Lcom/android/exchange/security/ode/ODEHandler;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/exchange/security/ode/ODEService;->setODEError(Landroid/content/Context;)V

    goto :goto_1

    .line 126
    :cond_3
    invoke-direct {p0, v0, v5}, Lcom/android/exchange/security/ode/ODEHandler;->sendRecoveryPassword(Lcom/android/email/provider/EmailContent$Account;Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 127
    iget-object v7, p0, Lcom/android/exchange/security/ode/ODEHandler;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/exchange/security/ode/ODEService;->setODEError(Landroid/content/Context;)V

    goto :goto_1

    .line 145
    .end local v0           #account:Lcom/android/email/provider/EmailContent$Account;
    .end local v4           #i$:Ljava/util/Iterator;
    :cond_4
    invoke-direct {p0}, Lcom/android/exchange/security/ode/ODEHandler;->interactWithODE()V

    goto :goto_0

    .line 149
    .end local v3           #dpm:Landroid/app/admin/DevicePolicyManager;
    :pswitch_1
    new-instance v2, Landroid/deviceencryption/DeviceEncryptionManager;

    iget-object v7, p0, Lcom/android/exchange/security/ode/ODEHandler;->mContext:Landroid/content/Context;

    invoke-direct {v2, v7}, Landroid/deviceencryption/DeviceEncryptionManager;-><init>(Landroid/content/Context;)V

    .line 150
    .local v2, devEncMgr:Landroid/deviceencryption/DeviceEncryptionManager;
    const/4 v7, 0x2

    const/4 v8, 0x0

    invoke-virtual {v2, v7, v8}, Landroid/deviceencryption/DeviceEncryptionManager;->setEncryptPolicy(II)V

    goto :goto_0

    .line 158
    .end local v2           #devEncMgr:Landroid/deviceencryption/DeviceEncryptionManager;
    .end local v6           #what:I
    :cond_5
    const-string v7, "Unknown message passed to ODEhandler"

    invoke-static {v7}, Lcom/android/exchange/security/ode/ODEService;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 92
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private interactWithODE()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 169
    new-instance v0, Landroid/deviceencryption/DeviceEncryptionManager;

    iget-object v4, p0, Lcom/android/exchange/security/ode/ODEHandler;->mContext:Landroid/content/Context;

    invoke-direct {v0, v4}, Landroid/deviceencryption/DeviceEncryptionManager;-><init>(Landroid/content/Context;)V

    .line 170
    .local v0, devEncMgr:Landroid/deviceencryption/DeviceEncryptionManager;
    invoke-direct {p0}, Lcom/android/exchange/security/ode/ODEHandler;->getDPM()Landroid/app/admin/DevicePolicyManager;

    move-result-object v1

    .line 173
    .local v1, dpm:Landroid/app/admin/DevicePolicyManager;
    const/4 v2, 0x0

    .line 174
    .local v2, encryptionPolicyChanged:Z
    const/4 v3, 0x0

    .line 176
    .local v3, isRebootRequired:Z
    invoke-static {}, Landroid/deviceencryption/DeviceEncryptionManager;->getExternalStorageStatus()Z

    move-result v4

    iget-object v5, p0, Lcom/android/exchange/security/ode/ODEHandler;->mAdminName:Landroid/content/ComponentName;

    invoke-virtual {v1, v5}, Landroid/app/admin/DevicePolicyManager;->getRequireStorageCardEncryption(Landroid/content/ComponentName;)Z

    move-result v5

    if-eq v4, v5, :cond_0

    .line 177
    const/4 v2, 0x1

    .line 179
    :cond_0
    invoke-static {}, Landroid/deviceencryption/DeviceEncryptionManager;->getInternalStorageStatus()Z

    move-result v4

    iget-object v5, p0, Lcom/android/exchange/security/ode/ODEHandler;->mAdminName:Landroid/content/ComponentName;

    invoke-virtual {v1, v5}, Landroid/app/admin/DevicePolicyManager;->getRequireDeviceEncryption(Landroid/content/ComponentName;)Z

    move-result v5

    if-eq v4, v5, :cond_1

    .line 180
    const/4 v2, 0x1

    .line 182
    const/4 v3, 0x1

    .line 184
    :cond_1
    if-eqz v2, :cond_6

    .line 186
    if-nez v3, :cond_2

    .line 188
    invoke-direct {p0}, Lcom/android/exchange/security/ode/ODEHandler;->clearAccountHoldFlags()V

    .line 191
    :cond_2
    iget-object v4, p0, Lcom/android/exchange/security/ode/ODEHandler;->mAdminName:Landroid/content/ComponentName;

    invoke-virtual {v1, v4}, Landroid/app/admin/DevicePolicyManager;->getRequireDeviceEncryption(Landroid/content/ComponentName;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/exchange/security/ode/ODEHandler;->mAdminName:Landroid/content/ComponentName;

    invoke-virtual {v1, v4}, Landroid/app/admin/DevicePolicyManager;->getRequireStorageCardEncryption(Landroid/content/ComponentName;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 193
    const-string v4, "Encrypting both internal and external storage"

    invoke-static {v4}, Lcom/android/exchange/security/ode/ODEService;->log(Ljava/lang/String;)V

    .line 194
    invoke-virtual {v0, v7, v7}, Landroid/deviceencryption/DeviceEncryptionManager;->setEncryptionPolicy(II)V

    .line 214
    :goto_0
    return-void

    .line 196
    :cond_3
    iget-object v4, p0, Lcom/android/exchange/security/ode/ODEHandler;->mAdminName:Landroid/content/ComponentName;

    invoke-virtual {v1, v4}, Landroid/app/admin/DevicePolicyManager;->getRequireDeviceEncryption(Landroid/content/ComponentName;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/exchange/security/ode/ODEHandler;->mAdminName:Landroid/content/ComponentName;

    invoke-virtual {v1, v4}, Landroid/app/admin/DevicePolicyManager;->getRequireStorageCardEncryption(Landroid/content/ComponentName;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 198
    const-string v4, "Encrypting internal storage and de-crypting external storage"

    invoke-static {v4}, Lcom/android/exchange/security/ode/ODEService;->log(Ljava/lang/String;)V

    .line 199
    invoke-virtual {v0, v7, v6}, Landroid/deviceencryption/DeviceEncryptionManager;->setEncryptionPolicy(II)V

    goto :goto_0

    .line 201
    :cond_4
    iget-object v4, p0, Lcom/android/exchange/security/ode/ODEHandler;->mAdminName:Landroid/content/ComponentName;

    invoke-virtual {v1, v4}, Landroid/app/admin/DevicePolicyManager;->getRequireDeviceEncryption(Landroid/content/ComponentName;)Z

    move-result v4

    if-nez v4, :cond_5

    iget-object v4, p0, Lcom/android/exchange/security/ode/ODEHandler;->mAdminName:Landroid/content/ComponentName;

    invoke-virtual {v1, v4}, Landroid/app/admin/DevicePolicyManager;->getRequireStorageCardEncryption(Landroid/content/ComponentName;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 203
    const-string v4, "De-crypting internal storage and encrypting external storage"

    invoke-static {v4}, Lcom/android/exchange/security/ode/ODEService;->log(Ljava/lang/String;)V

    .line 204
    invoke-virtual {v0, v6, v7}, Landroid/deviceencryption/DeviceEncryptionManager;->setEncryptionPolicy(II)V

    goto :goto_0

    .line 208
    :cond_5
    const-string v4, "De-crypting internal and external storage"

    invoke-static {v4}, Lcom/android/exchange/security/ode/ODEService;->log(Ljava/lang/String;)V

    .line 209
    invoke-virtual {v0, v6, v6}, Landroid/deviceencryption/DeviceEncryptionManager;->setEncryptionPolicy(II)V

    goto :goto_0

    .line 212
    :cond_6
    invoke-direct {p0}, Lcom/android/exchange/security/ode/ODEHandler;->clearAccountHoldFlags()V

    goto :goto_0
.end method

.method private isAccountOnSecurityHold(Lcom/android/email/provider/EmailContent$Account;)Z
    .locals 1
    .parameter "account"

    .prologue
    .line 274
    iget v0, p1, Lcom/android/email/provider/EmailContent$Account;->mFlags:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private quit()V
    .locals 1

    .prologue
    .line 79
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/exchange/security/ode/ODEHandler;->sendEmptyMessage(I)Z

    .line 80
    return-void
.end method

.method private sendRecoveryPassword(Lcom/android/email/provider/EmailContent$Account;Ljava/lang/String;)Z
    .locals 10
    .parameter "account"
    .parameter "password"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 320
    iget-object v0, p0, Lcom/android/exchange/security/ode/ODEHandler;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/android/email/provider/EmailContent$Account;->refresh(Landroid/content/Context;)V

    .line 322
    const/4 v6, 0x0

    .line 324
    .local v6, policyCursor:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/android/exchange/security/ode/ODEHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/email/provider/EmailContent$Policies;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/email/provider/EmailContent$Policies;->CONTENT_PROJECTION:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "account_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p1, Lcom/android/email/provider/EmailContent$Account;->mId:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "name"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "=\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "PasswordRecoveryEnabled"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 331
    if-nez v6, :cond_1

    .line 332
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unable to retrieve policies for the account : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/android/email/provider/EmailContent$Account;->mEmailAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/exchange/security/ode/ODEService;->log(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 356
    if-eqz v6, :cond_0

    .line 357
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_0
    move v0, v8

    .line 360
    :goto_0
    return v0

    .line 335
    :cond_1
    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-gtz v0, :cond_3

    .line 336
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "no policies for the account: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/android/email/provider/EmailContent$Account;->mEmailAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/exchange/security/ode/ODEService;->log(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 356
    if-eqz v6, :cond_2

    .line 357
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    move v0, v8

    .line 337
    goto :goto_0

    .line 339
    :cond_3
    :try_start_2
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 340
    const/4 v0, 0x3

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 341
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "password recovery disabled for the account: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/android/email/provider/EmailContent$Account;->mEmailAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/exchange/security/ode/ODEService;->log(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 356
    if-eqz v6, :cond_4

    .line 357
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    move v0, v8

    .line 342
    goto :goto_0

    .line 345
    :cond_5
    :try_start_3
    new-instance v7, Lcom/android/exchange/security/ode/ODESyncService;

    iget-object v0, p0, Lcom/android/exchange/security/ode/ODEHandler;->mContext:Landroid/content/Context;

    invoke-direct {v7, v0, p1}, Lcom/android/exchange/security/ode/ODESyncService;-><init>(Landroid/content/Context;Lcom/android/email/provider/EmailContent$Account;)V

    .line 346
    .local v7, prs:Lcom/android/exchange/security/ode/ODESyncService;
    invoke-virtual {v7}, Lcom/android/exchange/security/ode/ODESyncService;->setupAdhocServiceBasedonAccount()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 347
    invoke-virtual {v7, p2}, Lcom/android/exchange/security/ode/ODESyncService;->sendRecoveryPassword(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 348
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to send Recovery password for account: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/android/email/provider/EmailContent$Account;->mEmailAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/exchange/security/ode/ODEService;->log(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 356
    if-eqz v6, :cond_6

    .line 357
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_6
    move v0, v9

    .line 349
    goto/16 :goto_0

    .line 351
    :cond_7
    :try_start_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "recovery password sent successfully for account: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/android/email/provider/EmailContent$Account;->mEmailAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/exchange/security/ode/ODEService;->log(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 356
    if-eqz v6, :cond_8

    .line 357
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_8
    move v0, v8

    .line 352
    goto/16 :goto_0

    .line 356
    .end local v7           #prs:Lcom/android/exchange/security/ode/ODESyncService;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_9

    .line 357
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 356
    :cond_9
    throw v0

    .restart local v7       #prs:Lcom/android/exchange/security/ode/ODESyncService;
    :cond_a
    if-eqz v6, :cond_b

    .line 357
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_b
    move v0, v9

    .line 360
    goto/16 :goto_0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 64
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 74
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 76
    :goto_0
    return-void

    .line 66
    :pswitch_0
    const-string v0, "Starting the ODE handler"

    invoke-static {v0}, Lcom/android/exchange/security/ode/ODEService;->log(Ljava/lang/String;)V

    .line 67
    invoke-direct {p0, p1}, Lcom/android/exchange/security/ode/ODEHandler;->handleStart(Landroid/os/Message;)V

    goto :goto_0

    .line 70
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/exchange/security/ode/ODEHandler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 71
    const-string v0, "Stoping the ODE handler"

    invoke-static {v0}, Lcom/android/exchange/security/ode/ODEService;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 64
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
