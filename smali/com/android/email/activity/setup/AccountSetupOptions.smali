.class public Lcom/android/email/activity/setup/AccountSetupOptions;
.super Landroid/app/Activity;
.source "AccountSetupOptions.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final EXTRA_ACCOUNT:Ljava/lang/String; = "account"

.field private static final EXTRA_EAS_FLOW:Ljava/lang/String; = "easFlow"

.field private static final EXTRA_MAKE_DEFAULT:Ljava/lang/String; = "makeDefault"

.field public static final EXTRA_SETWIZ_FLOW:Ljava/lang/String; = "com.android.email.extra.setwiz_flow"

.field private static final SYNC_WINDOW_EAS_DEFAULT:I = 0x2


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mAccount:Lcom/android/email/provider/EmailContent$Account;

.field mAccountManagerCallback:Landroid/accounts/AccountManagerCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/accounts/AccountManagerCallback",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field private mCalendarSyncWindowView:Landroid/widget/Spinner;

.field private mCheckFrequencyView:Landroid/widget/Spinner;

.field private mDefaultView:Landroid/widget/CheckBox;

.field private mDonePressed:Z

.field private mEasFlowMode:Z

.field private mEmailSizeView:Landroid/widget/Spinner;

.field private mHandler:Landroid/os/Handler;

.field private mNotifyView:Landroid/widget/CheckBox;

.field private mSyncCalendarView:Landroid/widget/CheckBox;

.field private mSyncContactsView:Landroid/widget/CheckBox;

.field private mSyncWindowView:Landroid/widget/Spinner;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 72
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSetupOptions;->mHandler:Landroid/os/Handler;

    .line 73
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/email/activity/setup/AccountSetupOptions;->mDonePressed:Z

    .line 76
    const-string v0, "AccountSetupOptions"

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSetupOptions;->TAG:Ljava/lang/String;

    .line 215
    new-instance v0, Lcom/android/email/activity/setup/AccountSetupOptions$1;

    invoke-direct {v0, p0}, Lcom/android/email/activity/setup/AccountSetupOptions$1;-><init>(Lcom/android/email/activity/setup/AccountSetupOptions;)V

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSetupOptions;->mAccountManagerCallback:Landroid/accounts/AccountManagerCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/android/email/activity/setup/AccountSetupOptions;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupOptions;->finishOnDone()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/email/activity/setup/AccountSetupOptions;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupOptions;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/email/activity/setup/AccountSetupOptions;I[Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Lcom/android/email/activity/setup/AccountSetupOptions;->showErrorDialog(I[Ljava/lang/Object;)V

    return-void
.end method

.method public static actionOptions(Landroid/app/Activity;Lcom/android/email/provider/EmailContent$Account;ZZ)V
    .locals 2
    .parameter "fromActivity"
    .parameter "account"
    .parameter "makeDefault"
    .parameter "easFlowMode"

    .prologue
    .line 85
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/email/activity/setup/AccountSetupOptions;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 86
    .local v0, i:Landroid/content/Intent;
    const-string v1, "account"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 87
    const-string v1, "makeDefault"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 88
    const-string v1, "easFlow"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 89
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 90
    return-void
.end method

.method public static actionOptions(Landroid/app/Activity;Lcom/android/email/provider/EmailContent$Account;ZZZ)V
    .locals 2
    .parameter "fromActivity"
    .parameter "account"
    .parameter "makeDefault"
    .parameter "easFlowMode"
    .parameter "setWizMode"

    .prologue
    .line 94
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/email/activity/setup/AccountSetupOptions;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 95
    .local v0, i:Landroid/content/Intent;
    const-string v1, "account"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 96
    const-string v1, "makeDefault"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 97
    const-string v1, "easFlow"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 98
    const-string v1, "com.android.email.extra.setwiz_flow"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 99
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 100
    return-void
.end method

.method private enableEASCalendarSyncWindowSpinner()V
    .locals 8

    .prologue
    const/4 v6, 0x0

    .line 452
    const v5, 0x7f070039

    invoke-virtual {p0, v5}, Lcom/android/email/activity/setup/AccountSetupOptions;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 453
    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSetupOptions;->mCalendarSyncWindowView:Landroid/widget/Spinner;

    invoke-virtual {v5, v6}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 456
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupOptions;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f060017

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v4

    .line 458
    .local v4, windowValues:[Ljava/lang/CharSequence;
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupOptions;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f060016

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    .line 462
    .local v1, windowEntries:[Ljava/lang/CharSequence;
    array-length v5, v1

    new-array v2, v5, [Lcom/android/email/activity/setup/SpinnerOption;

    .line 463
    .local v2, windowOptions:[Lcom/android/email/activity/setup/SpinnerOption;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v5, v1

    if-ge v0, v5, :cond_0

    .line 464
    new-instance v5, Lcom/android/email/activity/setup/SpinnerOption;

    aget-object v6, v4, v0

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    aget-object v7, v1, v0

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lcom/android/email/activity/setup/SpinnerOption;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v5, v2, v0

    .line 463
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 468
    :cond_0
    new-instance v3, Landroid/widget/ArrayAdapter;

    const v5, 0x1090008

    invoke-direct {v3, p0, v5, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 470
    .local v3, windowOptionsAdapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Lcom/android/email/activity/setup/SpinnerOption;>;"
    const v5, 0x1090009

    invoke-virtual {v3, v5}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 472
    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSetupOptions;->mCalendarSyncWindowView:Landroid/widget/Spinner;

    invoke-virtual {v5, v3}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 474
    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSetupOptions;->mCalendarSyncWindowView:Landroid/widget/Spinner;

    iget-object v6, p0, Lcom/android/email/activity/setup/AccountSetupOptions;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    invoke-virtual {v6}, Lcom/android/email/provider/EmailContent$Account;->getCalendarSyncLookback()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/email/activity/setup/SpinnerOption;->setSpinnerOptionValue(Landroid/widget/Spinner;Ljava/lang/Object;)V

    .line 475
    return-void
.end method

.method private enableEASSyncWindowSpinner()V
    .locals 10

    .prologue
    const/4 v8, 0x0

    .line 413
    const v7, 0x7f070033

    invoke-virtual {p0, v7}, Lcom/android/email/activity/setup/AccountSetupOptions;->findViewById(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 414
    iget-object v7, p0, Lcom/android/email/activity/setup/AccountSetupOptions;->mSyncWindowView:Landroid/widget/Spinner;

    invoke-virtual {v7, v8}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 417
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupOptions;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f060007

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v6

    .line 419
    .local v6, windowValues:[Ljava/lang/CharSequence;
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupOptions;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f060006

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v3

    .line 423
    .local v3, windowEntries:[Ljava/lang/CharSequence;
    array-length v7, v3

    new-array v4, v7, [Lcom/android/email/activity/setup/SpinnerOption;

    .line 424
    .local v4, windowOptions:[Lcom/android/email/activity/setup/SpinnerOption;
    const/4 v0, -0x1

    .line 425
    .local v0, defaultIndex:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v7, v3

    if-ge v1, v7, :cond_1

    .line 426
    aget-object v7, v6, v1

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 427
    .local v2, value:I
    new-instance v7, Lcom/android/email/activity/setup/SpinnerOption;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aget-object v9, v3, v1

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Lcom/android/email/activity/setup/SpinnerOption;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v7, v4, v1

    .line 428
    const/4 v7, 0x2

    if-ne v2, v7, :cond_0

    .line 429
    move v0, v1

    .line 425
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 433
    .end local v2           #value:I
    :cond_1
    new-instance v5, Landroid/widget/ArrayAdapter;

    const v7, 0x1090008

    invoke-direct {v5, p0, v7, v4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 435
    .local v5, windowOptionsAdapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Lcom/android/email/activity/setup/SpinnerOption;>;"
    const v7, 0x1090009

    invoke-virtual {v5, v7}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 437
    iget-object v7, p0, Lcom/android/email/activity/setup/AccountSetupOptions;->mSyncWindowView:Landroid/widget/Spinner;

    invoke-virtual {v7, v5}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 439
    iget-object v7, p0, Lcom/android/email/activity/setup/AccountSetupOptions;->mSyncWindowView:Landroid/widget/Spinner;

    iget-object v8, p0, Lcom/android/email/activity/setup/AccountSetupOptions;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    invoke-virtual {v8}, Lcom/android/email/provider/EmailContent$Account;->getSyncLookback()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/email/activity/setup/SpinnerOption;->setSpinnerOptionValue(Landroid/widget/Spinner;Ljava/lang/Object;)V

    .line 440
    if-ltz v0, :cond_2

    .line 441
    iget-object v7, p0, Lcom/android/email/activity/setup/AccountSetupOptions;->mSyncWindowView:Landroid/widget/Spinner;

    invoke-virtual {v7, v0}, Landroid/widget/Spinner;->setSelection(I)V

    .line 443
    :cond_2
    return-void
.end method

.method private finishOnDone()V
    .locals 4

    .prologue
    .line 261
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupOptions;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget v2, v1, Lcom/android/email/provider/EmailContent$Account;->mFlags:I

    and-int/lit8 v2, v2, -0x11

    iput v2, v1, Lcom/android/email/provider/EmailContent$Account;->mFlags:I

    .line 262
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupOptions;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    invoke-static {p0, v1}, Lcom/android/email/activity/setup/AccountSettingsUtils;->commitSettings(Landroid/content/Context;Lcom/android/email/provider/EmailContent$Account;)V

    .line 263
    invoke-static {p0}, Lcom/android/email/Email;->setServicesEnabled(Landroid/content/Context;)Z

    .line 266
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupOptions;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "com.android.email.extra.setwiz_flow"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 267
    .local v0, mSetWizMode:Z
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupOptions;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-wide v1, v1, Lcom/android/email/provider/EmailContent$Account;->mId:J

    iget-boolean v3, p0, Lcom/android/email/activity/setup/AccountSetupOptions;->mEasFlowMode:Z

    invoke-static {p0, v1, v2, v3, v0}, Lcom/android/email/activity/setup/AccountSetupNames;->actionSetNames(Landroid/app/Activity;JZZ)V

    .line 274
    invoke-static {p0}, Lcom/android/email/ExchangeUtils;->startExchangeService(Landroid/content/Context;)V

    .line 277
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupOptions;->finish()V

    .line 278
    return-void
.end method

.method private onDone()V
    .locals 15

    .prologue
    .line 283
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupOptions;->getApplicationContext()Landroid/content/Context;

    move-result-object v12

    const-string v13, "device_policy"

    invoke-virtual {v12, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/admin/DevicePolicyManager;

    .line 285
    .local v6, mDPM:Landroid/app/admin/DevicePolicyManager;
    iget-object v12, p0, Lcom/android/email/activity/setup/AccountSetupOptions;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-object v13, p0, Lcom/android/email/activity/setup/AccountSetupOptions;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    invoke-virtual {v13}, Lcom/android/email/provider/EmailContent$Account;->getEmailAddress()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/android/email/provider/EmailContent$Account;->setDisplayName(Ljava/lang/String;)V

    .line 286
    iget-object v12, p0, Lcom/android/email/activity/setup/AccountSetupOptions;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    invoke-virtual {v12}, Lcom/android/email/provider/EmailContent$Account;->getFlags()I

    move-result v12

    and-int/lit8 v7, v12, -0x2

    .line 287
    .local v7, newFlags:I
    iget-object v12, p0, Lcom/android/email/activity/setup/AccountSetupOptions;->mNotifyView:Landroid/widget/CheckBox;

    invoke-virtual {v12}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v12

    if-eqz v12, :cond_0

    .line 288
    or-int/lit8 v7, v7, 0x1

    .line 290
    :cond_0
    iget-object v12, p0, Lcom/android/email/activity/setup/AccountSetupOptions;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    invoke-virtual {v12, v7}, Lcom/android/email/provider/EmailContent$Account;->setFlags(I)V

    .line 291
    iget-object v12, p0, Lcom/android/email/activity/setup/AccountSetupOptions;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-object v13, p0, Lcom/android/email/activity/setup/AccountSetupOptions;->mCheckFrequencyView:Landroid/widget/Spinner;

    invoke-virtual {v13}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/setup/SpinnerOption;

    iget-object v0, v0, Lcom/android/email/activity/setup/SpinnerOption;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-virtual {v12, v13}, Lcom/android/email/provider/EmailContent$Account;->setSyncInterval(I)V

    .line 293
    iget-object v12, p0, Lcom/android/email/activity/setup/AccountSetupOptions;->mSyncWindowView:Landroid/widget/Spinner;

    invoke-virtual {v12}, Landroid/widget/Spinner;->getVisibility()I

    move-result v12

    if-nez v12, :cond_2

    .line 294
    iget-object v12, p0, Lcom/android/email/activity/setup/AccountSetupOptions;->mSyncWindowView:Landroid/widget/Spinner;

    invoke-virtual {v12}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/setup/SpinnerOption;

    iget-object v0, v0, Lcom/android/email/activity/setup/SpinnerOption;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v11

    .line 296
    .local v11, window:I
    const/4 v10, 0x6

    .line 297
    .local v10, restrictedWindow:I
    const/4 v12, 0x0

    invoke-virtual {v6, v12}, Landroid/app/admin/DevicePolicyManager;->getMaxEmailAge(Landroid/content/ComponentName;)I

    move-result v10

    .line 298
    if-nez v10, :cond_1

    .line 299
    const/4 v10, 0x6

    .line 300
    :cond_1
    if-eqz v6, :cond_5

    if-ge v10, v11, :cond_5

    .line 302
    const-string v12, "AccountSetupOptions"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Exchange IT Policy has restricted SyncLookback:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    iget-object v12, p0, Lcom/android/email/activity/setup/AccountSetupOptions;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    invoke-virtual {v12, v10}, Lcom/android/email/provider/EmailContent$Account;->setSyncLookback(I)V

    .line 309
    .end local v10           #restrictedWindow:I
    .end local v11           #window:I
    :cond_2
    :goto_0
    iget-object v12, p0, Lcom/android/email/activity/setup/AccountSetupOptions;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-object v13, p0, Lcom/android/email/activity/setup/AccountSetupOptions;->mDefaultView:Landroid/widget/CheckBox;

    invoke-virtual {v13}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v13

    invoke-virtual {v12, v13}, Lcom/android/email/provider/EmailContent$Account;->setDefaultAccount(Z)V

    .line 315
    if-eqz v6, :cond_8

    .line 316
    iget-object v12, p0, Lcom/android/email/activity/setup/AccountSetupOptions;->mEmailSizeView:Landroid/widget/Spinner;

    invoke-virtual {v12}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/setup/SpinnerOption;

    iget-object v0, v0, Lcom/android/email/activity/setup/SpinnerOption;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v12

    and-int/lit16 v12, v12, 0xff

    int-to-byte v3, v12

    .line 317
    .local v3, currentSizeByte:B
    invoke-static {v3}, Lcom/android/exchange/Eas$EmailDataSize;->parse(B)Lcom/android/exchange/Eas$EmailDataSize;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/exchange/Eas$EmailDataSize;->toEas12Value()I

    move-result v12

    div-int/lit16 v2, v12, 0x400

    .line 320
    .local v2, currentSize:I
    const/4 v12, 0x0

    invoke-virtual {v6, v12}, Landroid/app/admin/DevicePolicyManager;->getMaxEmailBodyTruncSize(Landroid/content/ComponentName;)I

    move-result v8

    .line 321
    .local v8, plainTextSize:I
    const-string v12, "AccountSetupOptions"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "plainTextSize = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    const/4 v12, 0x0

    invoke-virtual {v6, v12}, Landroid/app/admin/DevicePolicyManager;->getMaxHtmlEmailBodyTruncSize(Landroid/content/ComponentName;)I

    move-result v12

    div-int/lit16 v4, v12, 0x400

    .line 323
    .local v4, htmlSize:I
    const-string v12, "AccountSetupOptions"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "htmlSize = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    const/4 v12, 0x0

    invoke-virtual {v6, v12}, Landroid/app/admin/DevicePolicyManager;->getAllowHTMLEmail(Landroid/content/ComponentName;)Z

    move-result v5

    .line 325
    .local v5, isHtmlAllowed:Z
    const-string v12, "AccountSetupOptions"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "isHtmlAllowed = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    if-eqz v5, :cond_6

    if-lez v4, :cond_6

    .line 327
    move v9, v4

    .line 331
    .local v9, restrictedSize:I
    :goto_1
    if-lez v9, :cond_7

    .line 332
    mul-int/lit16 v9, v9, 0x400

    .line 335
    :goto_2
    if-ge v9, v2, :cond_3

    .line 337
    const-string v12, "AccountSetupOptions"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Exchange IT Policy has restricted SyncSize:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " KB"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    if-lez v3, :cond_3

    .line 339
    invoke-static {v9}, Lcom/android/exchange/Eas$EmailDataSize;->parseToByte(I)B

    move-result v3

    .line 341
    :cond_3
    iget-object v12, p0, Lcom/android/email/activity/setup/AccountSetupOptions;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    invoke-virtual {v12, v3}, Lcom/android/email/provider/EmailContent$Account;->setEmailSize(B)V

    .line 350
    .end local v2           #currentSize:I
    .end local v3           #currentSizeByte:B
    .end local v4           #htmlSize:I
    .end local v5           #isHtmlAllowed:Z
    .end local v8           #plainTextSize:I
    .end local v9           #restrictedSize:I
    :goto_3
    iget-object v12, p0, Lcom/android/email/activity/setup/AccountSetupOptions;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    invoke-virtual {v12}, Lcom/android/email/provider/EmailContent$Account;->isSaved()Z

    move-result v12

    if-nez v12, :cond_b

    iget-object v12, p0, Lcom/android/email/activity/setup/AccountSetupOptions;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-object v12, v12, Lcom/android/email/provider/EmailContent$Account;->mHostAuthRecv:Lcom/android/email/provider/EmailContent$HostAuth;

    if-eqz v12, :cond_b

    iget-object v12, p0, Lcom/android/email/activity/setup/AccountSetupOptions;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-object v12, v12, Lcom/android/email/provider/EmailContent$Account;->mHostAuthRecv:Lcom/android/email/provider/EmailContent$HostAuth;

    iget-object v12, v12, Lcom/android/email/provider/EmailContent$HostAuth;->mProtocol:Ljava/lang/String;

    const-string v13, "eas"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_b

    .line 353
    iget-object v12, p0, Lcom/android/email/activity/setup/AccountSetupOptions;->mSyncContactsView:Landroid/widget/CheckBox;

    invoke-virtual {v12}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    .line 354
    .local v1, alsoSyncContacts:Z
    iget-object v12, p0, Lcom/android/email/activity/setup/AccountSetupOptions;->mSyncCalendarView:Landroid/widget/CheckBox;

    invoke-virtual {v12}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    .line 356
    .local v0, alsoSyncCalendar:Z
    iget-object v12, p0, Lcom/android/email/activity/setup/AccountSetupOptions;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget v13, v12, Lcom/android/email/provider/EmailContent$Account;->mFlags:I

    or-int/lit8 v13, v13, 0x10

    iput v13, v12, Lcom/android/email/provider/EmailContent$Account;->mFlags:I

    .line 357
    iget-object v12, p0, Lcom/android/email/activity/setup/AccountSetupOptions;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    invoke-static {p0, v12}, Lcom/android/email/activity/setup/AccountSettingsUtils;->commitSettings(Landroid/content/Context;Lcom/android/email/provider/EmailContent$Account;)V

    .line 358
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupOptions;->getApplication()Landroid/app/Application;

    move-result-object v12

    iget-object v13, p0, Lcom/android/email/activity/setup/AccountSetupOptions;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-object v14, p0, Lcom/android/email/activity/setup/AccountSetupOptions;->mAccountManagerCallback:Landroid/accounts/AccountManagerCallback;

    invoke-static {v12, v13, v1, v0, v14}, Lcom/android/email/mail/store/ExchangeStore;->addSystemAccount(Landroid/content/Context;Lcom/android/email/provider/EmailContent$Account;ZZLandroid/accounts/AccountManagerCallback;)Landroid/accounts/AccountManagerFuture;

    .line 366
    iget-object v12, p0, Lcom/android/email/activity/setup/AccountSetupOptions;->mCalendarSyncWindowView:Landroid/widget/Spinner;

    invoke-virtual {v12}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #alsoSyncCalendar:Z
    check-cast v0, Lcom/android/email/activity/setup/SpinnerOption;

    iget-object v0, v0, Lcom/android/email/activity/setup/SpinnerOption;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v11

    .line 367
    .restart local v11       #window:I
    const/4 v10, 0x0

    .line 368
    .restart local v10       #restrictedWindow:I
    if-eqz v6, :cond_a

    const/4 v12, 0x0

    invoke-virtual {v6, v12}, Landroid/app/admin/DevicePolicyManager;->getMaxCalendarAge(Landroid/content/ComponentName;)I

    move-result v10

    if-lez v10, :cond_a

    .line 370
    if-eqz v11, :cond_4

    if-ge v10, v11, :cond_9

    .line 372
    :cond_4
    const-string v12, "AccountSetupOptions"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Exchange IT Policy has restricted CalendarSyncLookback:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    iget-object v12, p0, Lcom/android/email/activity/setup/AccountSetupOptions;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    invoke-virtual {v12, v10}, Lcom/android/email/provider/EmailContent$Account;->setCalendarSyncLookback(I)Z

    .line 389
    .end local v1           #alsoSyncContacts:Z
    .end local v10           #restrictedWindow:I
    .end local v11           #window:I
    :goto_4
    return-void

    .line 307
    .restart local v10       #restrictedWindow:I
    .restart local v11       #window:I
    :cond_5
    iget-object v12, p0, Lcom/android/email/activity/setup/AccountSetupOptions;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    invoke-virtual {v12, v11}, Lcom/android/email/provider/EmailContent$Account;->setSyncLookback(I)V

    goto/16 :goto_0

    .line 329
    .end local v10           #restrictedWindow:I
    .end local v11           #window:I
    .restart local v2       #currentSize:I
    .restart local v3       #currentSizeByte:B
    .restart local v4       #htmlSize:I
    .restart local v5       #isHtmlAllowed:Z
    .restart local v8       #plainTextSize:I
    :cond_6
    move v9, v8

    .restart local v9       #restrictedSize:I
    goto/16 :goto_1

    .line 334
    :cond_7
    const v9, 0x7fffffff

    goto/16 :goto_2

    .line 345
    .end local v2           #currentSize:I
    .end local v3           #currentSizeByte:B
    .end local v4           #htmlSize:I
    .end local v5           #isHtmlAllowed:Z
    .end local v8           #plainTextSize:I
    .end local v9           #restrictedSize:I
    :cond_8
    iget-object v12, p0, Lcom/android/email/activity/setup/AccountSetupOptions;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-object v13, p0, Lcom/android/email/activity/setup/AccountSetupOptions;->mEmailSizeView:Landroid/widget/Spinner;

    invoke-virtual {v13}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/setup/SpinnerOption;

    iget-object v0, v0, Lcom/android/email/activity/setup/SpinnerOption;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v13

    and-int/lit16 v13, v13, 0xff

    int-to-byte v13, v13

    invoke-virtual {v12, v13}, Lcom/android/email/provider/EmailContent$Account;->setEmailSize(B)V

    goto/16 :goto_3

    .line 377
    .restart local v1       #alsoSyncContacts:Z
    .restart local v10       #restrictedWindow:I
    .restart local v11       #window:I
    :cond_9
    iget-object v12, p0, Lcom/android/email/activity/setup/AccountSetupOptions;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    invoke-virtual {v12, v11}, Lcom/android/email/provider/EmailContent$Account;->setCalendarSyncLookback(I)Z

    goto :goto_4

    .line 382
    :cond_a
    iget-object v12, p0, Lcom/android/email/activity/setup/AccountSetupOptions;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    invoke-virtual {v12, v11}, Lcom/android/email/provider/EmailContent$Account;->setCalendarSyncLookback(I)Z

    goto :goto_4

    .line 387
    .end local v1           #alsoSyncContacts:Z
    .end local v10           #restrictedWindow:I
    .end local v11           #window:I
    :cond_b
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupOptions;->finishOnDone()V

    goto :goto_4
.end method

.method private varargs showErrorDialog(I[Ljava/lang/Object;)V
    .locals 2
    .parameter "msgResId"
    .parameter "args"

    .prologue
    .line 239
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupOptions;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/email/activity/setup/AccountSetupOptions$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/email/activity/setup/AccountSetupOptions$2;-><init>(Lcom/android/email/activity/setup/AccountSetupOptions;I[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 257
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 392
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 406
    :cond_0
    :goto_0
    return-void

    .line 399
    :pswitch_0
    iget-boolean v0, p0, Lcom/android/email/activity/setup/AccountSetupOptions;->mDonePressed:Z

    if-nez v0, :cond_0

    .line 400
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupOptions;->onDone()V

    .line 401
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/email/activity/setup/AccountSetupOptions;->mDonePressed:Z

    goto :goto_0

    .line 392
    nop

    :pswitch_data_0
    .packed-switch 0x7f07001f
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 25
    .parameter "savedInstanceState"

    .prologue
    .line 104
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 105
    const v22, 0x7f030009

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/AccountSetupOptions;->setContentView(I)V

    .line 107
    const v22, 0x7f070032

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/AccountSetupOptions;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .end local p1
    check-cast p1, Landroid/widget/Spinner;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/email/activity/setup/AccountSetupOptions;->mCheckFrequencyView:Landroid/widget/Spinner;

    .line 108
    const v22, 0x7f070034

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/AccountSetupOptions;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Spinner;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/email/activity/setup/AccountSetupOptions;->mSyncWindowView:Landroid/widget/Spinner;

    .line 111
    const v22, 0x7f070035

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/AccountSetupOptions;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Spinner;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/email/activity/setup/AccountSetupOptions;->mEmailSizeView:Landroid/widget/Spinner;

    .line 113
    const v22, 0x7f07001c

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/AccountSetupOptions;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/email/activity/setup/AccountSetupOptions;->mDefaultView:Landroid/widget/CheckBox;

    .line 114
    const v22, 0x7f070036

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/AccountSetupOptions;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/email/activity/setup/AccountSetupOptions;->mNotifyView:Landroid/widget/CheckBox;

    .line 115
    const v22, 0x7f070037

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/AccountSetupOptions;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/email/activity/setup/AccountSetupOptions;->mSyncContactsView:Landroid/widget/CheckBox;

    .line 116
    const v22, 0x7f070038

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/AccountSetupOptions;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/email/activity/setup/AccountSetupOptions;->mSyncCalendarView:Landroid/widget/CheckBox;

    .line 120
    const v22, 0x7f07003a

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/AccountSetupOptions;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Spinner;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/email/activity/setup/AccountSetupOptions;->mCalendarSyncWindowView:Landroid/widget/Spinner;

    .line 124
    const v22, 0x7f07001f

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/AccountSetupOptions;->findViewById(I)Landroid/view/View;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 127
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/setup/AccountSetupOptions;->getIntent()Landroid/content/Intent;

    move-result-object v22

    const-string v23, "account"

    invoke-virtual/range {v22 .. v23}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/android/email/provider/EmailContent$Account;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/email/activity/setup/AccountSetupOptions;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    .line 128
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/setup/AccountSetupOptions;->getIntent()Landroid/content/Intent;

    move-result-object v22

    const-string v23, "makeDefault"

    const/16 v24, 0x0

    invoke-virtual/range {v22 .. v24}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v21

    .line 133
    .local v21, makeDefault:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupOptions;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/email/provider/EmailContent$Account;->getStoreUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-static {v0, v1}, Lcom/android/email/mail/Store$StoreInfo;->getStoreInfo(Ljava/lang/String;Landroid/content/Context;)Lcom/android/email/mail/Store$StoreInfo;

    move-result-object v20

    .line 134
    .local v20, info:Lcom/android/email/mail/Store$StoreInfo;
    move-object/from16 v0, v20

    iget-boolean v0, v0, Lcom/android/email/mail/Store$StoreInfo;->mPushSupported:Z

    move/from16 v22, v0

    if-eqz v22, :cond_0

    .line 135
    const v18, 0x7f060005

    .line 136
    .local v18, frequencyValuesId:I
    const v16, 0x7f060004

    .line 141
    .local v16, frequencyEntriesId:I
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/setup/AccountSetupOptions;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v17

    .line 142
    .local v17, frequencyValues:[Ljava/lang/CharSequence;
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/setup/AccountSetupOptions;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v15

    .line 145
    .local v15, frequencyEntries:[Ljava/lang/CharSequence;
    move-object v0, v15

    array-length v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    new-array v0, v0, [Lcom/android/email/activity/setup/SpinnerOption;

    move-object v4, v0

    .line 146
    .local v4, checkFrequencies:[Lcom/android/email/activity/setup/SpinnerOption;
    const/16 v19, 0x0

    .local v19, i:I
    :goto_1
    move-object v0, v15

    array-length v0, v0

    move/from16 v22, v0

    move/from16 v0, v19

    move/from16 v1, v22

    if-ge v0, v1, :cond_1

    .line 147
    new-instance v22, Lcom/android/email/activity/setup/SpinnerOption;

    aget-object v23, v17, v19

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v23

    aget-object v24, v15, v19

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-direct/range {v22 .. v24}, Lcom/android/email/activity/setup/SpinnerOption;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v22, v4, v19

    .line 146
    add-int/lit8 v19, v19, 0x1

    goto :goto_1

    .line 138
    .end local v4           #checkFrequencies:[Lcom/android/email/activity/setup/SpinnerOption;
    .end local v15           #frequencyEntries:[Ljava/lang/CharSequence;
    .end local v16           #frequencyEntriesId:I
    .end local v17           #frequencyValues:[Ljava/lang/CharSequence;
    .end local v18           #frequencyValuesId:I
    .end local v19           #i:I
    :cond_0
    const v18, 0x7f060001

    .line 139
    .restart local v18       #frequencyValuesId:I
    const/high16 v16, 0x7f06

    .restart local v16       #frequencyEntriesId:I
    goto :goto_0

    .line 151
    .restart local v4       #checkFrequencies:[Lcom/android/email/activity/setup/SpinnerOption;
    .restart local v15       #frequencyEntries:[Ljava/lang/CharSequence;
    .restart local v17       #frequencyValues:[Ljava/lang/CharSequence;
    .restart local v19       #i:I
    :cond_1
    new-instance v5, Landroid/widget/ArrayAdapter;

    const v22, 0x1090008

    move-object v0, v5

    move-object/from16 v1, p0

    move/from16 v2, v22

    move-object v3, v4

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 153
    .local v5, checkFrequenciesAdapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Lcom/android/email/activity/setup/SpinnerOption;>;"
    const v22, 0x1090009

    move-object v0, v5

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 155
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupOptions;->mCheckFrequencyView:Landroid/widget/Spinner;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 159
    const/4 v7, -0x1

    .line 160
    .local v7, emailSizeDefaultIndex:I
    const v22, 0x7f0801be

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/AccountSetupOptions;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 161
    .local v6, emailSizeDefault:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/setup/AccountSetupOptions;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    const v23, 0x7f060003

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v11

    .line 162
    .local v11, emailSizeValues:[Ljava/lang/CharSequence;
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/setup/AccountSetupOptions;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    const v23, 0x7f060002

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v8

    .line 164
    .local v8, emailSizeEntries:[Ljava/lang/CharSequence;
    const/4 v10, -0x1

    .line 166
    .local v10, emailSizeIndex:I
    array-length v14, v8

    .line 167
    .local v14, eseSz:I
    new-array v12, v14, [Lcom/android/email/activity/setup/SpinnerOption;

    .line 168
    .local v12, emailSizes:[Lcom/android/email/activity/setup/SpinnerOption;
    const/16 v19, 0x0

    :goto_2
    move/from16 v0, v19

    move v1, v14

    if-ge v0, v1, :cond_3

    .line 169
    aget-object v22, v8, v19

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    .line 170
    .local v9, emailSizeEntry:Ljava/lang/String;
    aget-object v22, v11, v19

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 172
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_2

    .line 173
    move v7, v10

    .line 176
    :cond_2
    new-instance v22, Lcom/android/email/activity/setup/SpinnerOption;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object v2, v9

    invoke-direct {v0, v1, v2}, Lcom/android/email/activity/setup/SpinnerOption;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v22, v12, v19

    .line 168
    add-int/lit8 v19, v19, 0x1

    goto :goto_2

    .line 179
    .end local v9           #emailSizeEntry:Ljava/lang/String;
    :cond_3
    new-instance v13, Landroid/widget/ArrayAdapter;

    const v22, 0x1090008

    move-object v0, v13

    move-object/from16 v1, p0

    move/from16 v2, v22

    move-object v3, v12

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 181
    .local v13, emailSizesAdapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Lcom/android/email/activity/setup/SpinnerOption;>;"
    const v22, 0x1090009

    move-object v0, v13

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 182
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupOptions;->mEmailSizeView:Landroid/widget/Spinner;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object v1, v13

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 183
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupOptions;->mEmailSizeView:Landroid/widget/Spinner;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move v1, v7

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 186
    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/email/mail/Store$StoreInfo;->mVisibleLimitDefault:I

    move/from16 v22, v0

    const/16 v23, -0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_4

    .line 187
    invoke-direct/range {p0 .. p0}, Lcom/android/email/activity/setup/AccountSetupOptions;->enableEASSyncWindowSpinner()V

    .line 192
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupOptions;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-boolean v0, v0, Lcom/android/email/provider/EmailContent$Account;->mIsDefault:Z

    move/from16 v22, v0

    if-nez v22, :cond_5

    if-eqz v21, :cond_6

    .line 193
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupOptions;->mDefaultView:Landroid/widget/CheckBox;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    invoke-virtual/range {v22 .. v23}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 195
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupOptions;->mNotifyView:Landroid/widget/CheckBox;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupOptions;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/email/provider/EmailContent$Account;->getFlags()I

    move-result v23

    and-int/lit8 v23, v23, 0x1

    if-eqz v23, :cond_8

    const/16 v23, 0x1

    :goto_3
    invoke-virtual/range {v22 .. v23}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 197
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupOptions;->mCheckFrequencyView:Landroid/widget/Spinner;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupOptions;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/email/provider/EmailContent$Account;->getSyncInterval()I

    move-result v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/android/email/activity/setup/SpinnerOption;->setSpinnerOptionValue(Landroid/widget/Spinner;Ljava/lang/Object;)V

    .line 201
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/setup/AccountSetupOptions;->getIntent()Landroid/content/Intent;

    move-result-object v22

    const-string v23, "easFlow"

    const/16 v24, 0x0

    invoke-virtual/range {v22 .. v24}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/email/activity/setup/AccountSetupOptions;->mEasFlowMode:Z

    .line 202
    const-string v22, "eas"

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/email/mail/Store$StoreInfo;->mScheme:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_7

    .line 204
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupOptions;->mSyncContactsView:Landroid/widget/CheckBox;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 205
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupOptions;->mSyncContactsView:Landroid/widget/CheckBox;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    invoke-virtual/range {v22 .. v23}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 206
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupOptions;->mSyncCalendarView:Landroid/widget/CheckBox;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 207
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupOptions;->mSyncCalendarView:Landroid/widget/CheckBox;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    invoke-virtual/range {v22 .. v23}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 210
    invoke-direct/range {p0 .. p0}, Lcom/android/email/activity/setup/AccountSetupOptions;->enableEASCalendarSyncWindowSpinner()V

    .line 213
    :cond_7
    return-void

    .line 195
    :cond_8
    const/16 v23, 0x0

    goto :goto_3
.end method
