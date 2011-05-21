.class public Lcom/android/email/activity/setup/AccountSecurity;
.super Landroid/app/Activity;
.source "AccountSecurity.java"


# static fields
.field private static final EXTRA_ACCOUNT_ID:Ljava/lang/String; = "com.android.email.activity.setup.ACCOUNT_ID"

.field private static final REQUEST_ENABLE:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method public static actionUpdateSecurityIntent(Landroid/content/Context;J)Landroid/content/Intent;
    .locals 2
    .parameter "context"
    .parameter "accountId"

    .prologue
    .line 56
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/email/activity/setup/AccountSecurity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 57
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.android.email.activity.setup.ACCOUNT_ID"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 58
    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 59
    return-object v0
.end method

.method private setActivePolicies()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 136
    invoke-static {p0}, Lcom/android/email/SecurityPolicy;->getInstance(Landroid/content/Context;)Lcom/android/email/SecurityPolicy;

    move-result-object v1

    .line 138
    .local v1, sp:Lcom/android/email/SecurityPolicy;
    invoke-virtual {v1, v3}, Lcom/android/email/SecurityPolicy;->isActive(Lcom/android/email/SecurityPolicy$PolicySet;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 139
    invoke-virtual {v1}, Lcom/android/email/SecurityPolicy;->clearAccountHoldFlags()V

    .line 152
    :goto_0
    return-void

    .line 143
    :cond_0
    invoke-virtual {v1}, Lcom/android/email/SecurityPolicy;->setActivePolicies()V

    .line 145
    invoke-virtual {v1, v3}, Lcom/android/email/SecurityPolicy;->isActive(Lcom/android/email/SecurityPolicy$PolicySet;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 146
    invoke-virtual {v1}, Lcom/android/email/SecurityPolicy;->clearAccountHoldFlags()V

    goto :goto_0

    .line 150
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.app.action.SET_NEW_PASSWORD"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 151
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/android/email/activity/setup/AccountSecurity;->startActivity(Landroid/content/Intent;)V

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

    .line 108
    packed-switch p1, :pswitch_data_0

    .line 127
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSecurity;->finish()V

    .line 128
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 129
    return-void

    .line 110
    :pswitch_0
    const/4 v2, -0x1

    if-ne p2, v2, :cond_1

    .line 112
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSecurity;->setActivePolicies()V

    goto :goto_0

    .line 115
    :cond_1
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSecurity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "com.android.email.activity.setup.ACCOUNT_ID"

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 116
    .local v0, accountId:J
    cmp-long v2, v0, v4

    if-eqz v2, :cond_0

    .line 117
    new-instance v2, Lcom/android/email/activity/setup/AccountSecurity$1;

    invoke-direct {v2, p0, v0, v1}, Lcom/android/email/activity/setup/AccountSecurity$1;-><init>(Lcom/android/email/activity/setup/AccountSecurity;J)V

    invoke-virtual {v2}, Lcom/android/email/activity/setup/AccountSecurity$1;->start()V

    goto :goto_0

    .line 108
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

    .line 64
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 66
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSecurity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    .line 67
    .local v4, i:Landroid/content/Intent;
    const-string v7, "com.android.email.activity.setup.ACCOUNT_ID"

    invoke-virtual {v4, v7, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    .line 68
    .local v1, accountId:J
    invoke-static {p0}, Lcom/android/email/SecurityPolicy;->getInstance(Landroid/content/Context;)Lcom/android/email/SecurityPolicy;

    move-result-object v6

    .line 69
    .local v6, security:Lcom/android/email/SecurityPolicy;
    invoke-virtual {v6, v1, v2}, Lcom/android/email/SecurityPolicy;->clearNotification(J)V

    .line 70
    cmp-long v7, v1, v8

    if-eqz v7, :cond_1

    .line 72
    invoke-static {p0, v1, v2}, Lcom/android/email/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Account;

    move-result-object v0

    .line 73
    .local v0, account:Lcom/android/email/provider/EmailContent$Account;
    if-eqz v0, :cond_1

    .line 76
    invoke-static {p0, v1, v2}, Lcom/android/email/provider/EmailContent$Policies;->getNumberOfPoliciesForAccount(Landroid/content/Context;J)I

    move-result v3

    .line 77
    .local v3, count:I
    if-lez v3, :cond_1

    .line 81
    invoke-virtual {v6}, Lcom/android/email/SecurityPolicy;->isActiveAdmin()Z

    move-result v7

    if-nez v7, :cond_0

    .line 83
    new-instance v5, Landroid/content/Intent;

    const-string v7, "android.app.action.ADD_DEVICE_ADMIN"

    invoke-direct {v5, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 84
    .local v5, intent:Landroid/content/Intent;
    const-string v7, "android.app.extra.DEVICE_ADMIN"

    invoke-virtual {v6}, Lcom/android/email/SecurityPolicy;->getAdminComponent()Landroid/content/ComponentName;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 86
    const-string v7, "android.app.extra.ADD_EXPLANATION"

    const v8, 0x7f080167

    new-array v9, v12, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-virtual {v0}, Lcom/android/email/provider/EmailContent$Account;->getDisplayName()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {p0, v8, v9}, Lcom/android/email/activity/setup/AccountSecurity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 89
    const/high16 v7, 0x2

    invoke-virtual {v5, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 90
    invoke-virtual {p0, v5, v12}, Lcom/android/email/activity/setup/AccountSecurity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 101
    .end local v0           #account:Lcom/android/email/provider/EmailContent$Account;
    .end local v3           #count:I
    .end local v5           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 95
    .restart local v0       #account:Lcom/android/email/provider/EmailContent$Account;
    .restart local v3       #count:I
    :cond_0
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSecurity;->setActivePolicies()V

    .line 100
    .end local v0           #account:Lcom/android/email/provider/EmailContent$Account;
    .end local v3           #count:I
    :cond_1
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSecurity;->finish()V

    goto :goto_0
.end method
