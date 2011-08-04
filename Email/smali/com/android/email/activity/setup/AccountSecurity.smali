.class public Lcom/android/email/activity/setup/AccountSecurity;
.super Landroid/app/Activity;
.source "AccountSecurity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method public static actionUpdateSecurityIntent(Landroid/content/Context;J)Landroid/content/Intent;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 60
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/email/activity/setup/AccountSecurity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 61
    const-string v1, "com.android.email.activity.setup.ACCOUNT_ID"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 62
    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 63
    return-object v0
.end method

.method private isEncrypted()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 172
    const-string v1, "device_policy"

    invoke-virtual {p0, v1}, Lcom/android/email/activity/setup/AccountSecurity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 174
    .local v0, mDpm:Landroid/app/admin/DevicePolicyManager;
    invoke-static {}, Landroid/deviceencryption/DeviceEncryptionManager;->getExternalStorageStatus()Z

    move-result v1

    invoke-virtual {v0, v3}, Landroid/app/admin/DevicePolicyManager;->getRequireDeviceEncryption(Landroid/content/ComponentName;)Z

    move-result v2

    if-ne v1, v2, :cond_0

    invoke-static {}, Landroid/deviceencryption/DeviceEncryptionManager;->getInternalStorageStatus()Z

    move-result v1

    invoke-virtual {v0, v3}, Landroid/app/admin/DevicePolicyManager;->getRequireStorageCardEncryption(Landroid/content/ComponentName;)Z

    move-result v2

    if-eq v1, v2, :cond_1

    .line 176
    :cond_0
    const-string v1, "Email"

    const-string v2, "Encryption Policy is not applied yet!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    const/4 v1, 0x0

    .line 179
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private setActivePolicies()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    const-class v5, Lcom/android/exchange/security/ode/ODEService;

    const-string v4, "startProc"

    const-string v3, "onPolicyChanged"

    .line 141
    invoke-static {p0}, Lcom/android/email/SecurityPolicy;->getInstance(Landroid/content/Context;)Lcom/android/email/SecurityPolicy;

    move-result-object v0

    .line 143
    invoke-virtual {v0, v2}, Lcom/android/email/SecurityPolicy;->isActive(Lcom/android/email/SecurityPolicy$PolicySet;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 144
    invoke-virtual {v0}, Lcom/android/email/SecurityPolicy;->clearAccountHoldFlags()V

    .line 169
    :cond_0
    :goto_0
    return-void

    .line 148
    :cond_1
    invoke-virtual {v0}, Lcom/android/email/SecurityPolicy;->setActivePolicies()V

    .line 150
    invoke-virtual {v0, v2}, Lcom/android/email/SecurityPolicy;->isActive(Lcom/android/email/SecurityPolicy$PolicySet;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 151
    invoke-virtual {v0}, Lcom/android/email/SecurityPolicy;->clearAccountHoldFlags()V

    .line 152
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/exchange/security/ode/ODEService;

    invoke-direct {v0, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 153
    const-string v1, "startProc"

    const-string v1, "onPolicyChanged"

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 154
    invoke-virtual {p0, v0}, Lcom/android/email/activity/setup/AccountSecurity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    .line 158
    :cond_2
    const-string v0, "device_policy"

    invoke-virtual {p0, v0}, Lcom/android/email/activity/setup/AccountSecurity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 160
    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->isActivePasswordSufficient()Z

    move-result v0

    if-nez v0, :cond_3

    .line 161
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.app.action.SET_NEW_PASSWORD"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 162
    invoke-virtual {p0, v0}, Lcom/android/email/activity/setup/AccountSecurity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 164
    :cond_3
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSecurity;->isEncrypted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 165
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/exchange/security/ode/ODEService;

    invoke-direct {v0, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 166
    const-string v1, "startProc"

    const-string v1, "onPolicyChanged"

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 167
    invoke-virtual {p0, v0}, Lcom/android/email/activity/setup/AccountSecurity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 6
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const-wide/16 v4, -0x1

    .line 113
    packed-switch p1, :pswitch_data_0

    .line 132
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSecurity;->finish()V

    .line 133
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 134
    return-void

    .line 115
    :pswitch_0
    const/4 v2, -0x1

    if-ne p2, v2, :cond_1

    .line 117
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSecurity;->setActivePolicies()V

    goto :goto_0

    .line 120
    :cond_1
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSecurity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "com.android.email.activity.setup.ACCOUNT_ID"

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 121
    .local v0, accountId:J
    cmp-long v2, v0, v4

    if-eqz v2, :cond_0

    .line 122
    new-instance v2, Lcom/android/email/activity/setup/AccountSecurity$1;

    invoke-direct {v2, p0, v0, v1}, Lcom/android/email/activity/setup/AccountSecurity$1;-><init>(Lcom/android/email/activity/setup/AccountSecurity;J)V

    invoke-virtual {v2}, Lcom/android/email/activity/setup/AccountSecurity$1;->start()V

    goto :goto_0

    .line 113
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 13
    .parameter "savedInstanceState"

    .prologue
    const-wide/16 v8, -0x1

    const/4 v12, 0x1

    .line 68
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 70
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSecurity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    .line 71
    .local v4, i:Landroid/content/Intent;
    const-string v7, "com.android.email.activity.setup.ACCOUNT_ID"

    invoke-virtual {v4, v7, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    .line 72
    .local v1, accountId:J
    invoke-static {p0}, Lcom/android/email/SecurityPolicy;->getInstance(Landroid/content/Context;)Lcom/android/email/SecurityPolicy;

    move-result-object v6

    .line 73
    .local v6, security:Lcom/android/email/SecurityPolicy;
    invoke-virtual {v6, v1, v2}, Lcom/android/email/SecurityPolicy;->clearNotification(J)V

    .line 75
    cmp-long v7, v1, v8

    if-eqz v7, :cond_1

    .line 77
    invoke-static {p0, v1, v2}, Lcom/android/email/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Account;

    move-result-object v0

    .line 78
    .local v0, account:Lcom/android/email/provider/EmailContent$Account;
    if-eqz v0, :cond_1

    .line 81
    invoke-static {p0, v1, v2}, Lcom/android/email/provider/EmailContent$Policies;->getNumberOfPoliciesForAccount(Landroid/content/Context;J)I

    move-result v3

    .line 82
    .local v3, count:I
    if-lez v3, :cond_1

    .line 86
    invoke-virtual {v6}, Lcom/android/email/SecurityPolicy;->isActiveAdmin()Z

    move-result v7

    if-nez v7, :cond_0

    .line 88
    new-instance v5, Landroid/content/Intent;

    const-string v7, "android.app.action.ADD_DEVICE_ADMIN"

    invoke-direct {v5, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 89
    .local v5, intent:Landroid/content/Intent;
    const-string v7, "android.app.extra.DEVICE_ADMIN"

    invoke-virtual {v6}, Lcom/android/email/SecurityPolicy;->getAdminComponent()Landroid/content/ComponentName;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 91
    const-string v7, "android.app.extra.ADD_EXPLANATION"

    const v8, 0x7f080182

    new-array v9, v12, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-virtual {v0}, Lcom/android/email/provider/EmailContent$Account;->getDisplayName()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {p0, v8, v9}, Lcom/android/email/activity/setup/AccountSecurity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 94
    const/high16 v7, 0x2

    invoke-virtual {v5, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 95
    invoke-virtual {p0, v5, v12}, Lcom/android/email/activity/setup/AccountSecurity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 106
    .end local v0           #account:Lcom/android/email/provider/EmailContent$Account;
    .end local v3           #count:I
    .end local v5           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 100
    .restart local v0       #account:Lcom/android/email/provider/EmailContent$Account;
    .restart local v3       #count:I
    :cond_0
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSecurity;->setActivePolicies()V

    .line 105
    .end local v0           #account:Lcom/android/email/provider/EmailContent$Account;
    .end local v3           #count:I
    :cond_1
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSecurity;->finish()V

    goto :goto_0
.end method
