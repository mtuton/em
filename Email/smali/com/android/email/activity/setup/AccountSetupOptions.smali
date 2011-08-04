.class public Lcom/android/email/activity/setup/AccountSetupOptions;
.super Landroid/app/Activity;
.source "AccountSetupOptions.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

.field private mCheckFrequencyText:Landroid/widget/TextView;

.field private mCheckFrequencyView:Landroid/widget/Spinner;

.field private mDefaultView:Landroid/widget/CheckBox;

.field private mDonePressed:Z

.field private mEasFlowMode:Z

.field private mEmailSizeView:Landroid/widget/Spinner;

.field private mHandler:Landroid/os/Handler;

.field private mNotifyView:Landroid/widget/CheckBox;

.field private mOffPeakScheduleText:Landroid/widget/TextView;

.field private mOffPeakScheduleView:Landroid/widget/Spinner;

.field private mPeakScheduleText:Landroid/widget/TextView;

.field private mPeakScheduleView:Landroid/widget/Spinner;

.field private mSyncCalendarView:Landroid/widget/CheckBox;

.field private mSyncContactsView:Landroid/widget/CheckBox;

.field private mSyncSmsView:Landroid/widget/CheckBox;

.field private mSyncWindowView:Landroid/widget/Spinner;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 57
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 90
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSetupOptions;->mHandler:Landroid/os/Handler;

    .line 91
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/email/activity/setup/AccountSetupOptions;->mDonePressed:Z

    .line 94
    const-string v0, "AccountSetupOptions"

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSetupOptions;->TAG:Ljava/lang/String;

    .line 318
    new-instance v0, Lcom/android/email/activity/setup/AccountSetupOptions$1;

    invoke-direct {v0, p0}, Lcom/android/email/activity/setup/AccountSetupOptions$1;-><init>(Lcom/android/email/activity/setup/AccountSetupOptions;)V

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSetupOptions;->mAccountManagerCallback:Landroid/accounts/AccountManagerCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/android/email/activity/setup/AccountSetupOptions;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupOptions;->finishOnDone()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/email/activity/setup/AccountSetupOptions;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupOptions;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/email/activity/setup/AccountSetupOptions;I[Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Lcom/android/email/activity/setup/AccountSetupOptions;->showErrorDialog(I[Ljava/lang/Object;)V

    return-void
.end method

.method public static actionOptions(Landroid/app/Activity;Lcom/android/email/provider/EmailContent$Account;ZZZ)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 112
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/email/activity/setup/AccountSetupOptions;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 113
    const-string v1, "account"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 114
    const-string v1, "makeDefault"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 115
    const-string v1, "easFlow"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 116
    const-string v1, "com.android.email.extra.setwiz_flow"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 117
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 118
    return-void
.end method

.method private enableEASCalendarSyncWindowSpinner()V
    .locals 8

    .prologue
    const/4 v6, 0x0

    .line 638
    const v5, 0x7f07003f

    invoke-virtual {p0, v5}, Lcom/android/email/activity/setup/AccountSetupOptions;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 639
    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSetupOptions;->mCalendarSyncWindowView:Landroid/widget/Spinner;

    invoke-virtual {v5, v6}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 642
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupOptions;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f060017

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v4

    .line 644
    .local v4, windowValues:[Ljava/lang/CharSequence;
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupOptions;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f060016

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    .line 648
    .local v1, windowEntries:[Ljava/lang/CharSequence;
    array-length v5, v1

    new-array v2, v5, [Lcom/android/email/activity/setup/SpinnerOption;

    .line 649
    .local v2, windowOptions:[Lcom/android/email/activity/setup/SpinnerOption;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v5, v1

    if-ge v0, v5, :cond_0

    .line 650
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

    .line 649
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 654
    :cond_0
    new-instance v3, Landroid/widget/ArrayAdapter;

    const v5, 0x1090008

    invoke-direct {v3, p0, v5, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 656
    .local v3, windowOptionsAdapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Lcom/android/email/activity/setup/SpinnerOption;>;"
    const v5, 0x1090009

    invoke-virtual {v3, v5}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 658
    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSetupOptions;->mCalendarSyncWindowView:Landroid/widget/Spinner;

    invoke-virtual {v5, v3}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 660
    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSetupOptions;->mCalendarSyncWindowView:Landroid/widget/Spinner;

    iget-object v6, p0, Lcom/android/email/activity/setup/AccountSetupOptions;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    invoke-virtual {v6}, Lcom/android/email/provider/EmailContent$Account;->getCalendarSyncLookback()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/email/activity/setup/SpinnerOption;->setSpinnerOptionValue(Landroid/widget/Spinner;Ljava/lang/Object;)V

    .line 661
    return-void
.end method

.method private enableEASEmailSizeSpinner()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    .line 598
    const v10, 0x7f07003d

    invoke-virtual {p0, v10}, Lcom/android/email/activity/setup/AccountSetupOptions;->findViewById(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10, v11}, Landroid/view/View;->setVisibility(I)V

    .line 599
    iget-object v10, p0, Lcom/android/email/activity/setup/AccountSetupOptions;->mEmailSizeView:Landroid/widget/Spinner;

    invoke-virtual {v10, v11}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 603
    const/4 v1, -0x1

    .line 604
    .local v1, emailSizeDefaultIndex:I
    const v10, 0x7f0801e2

    invoke-virtual {p0, v10}, Lcom/android/email/activity/setup/AccountSetupOptions;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 605
    .local v0, emailSizeDefault:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupOptions;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f060003

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v5

    .line 606
    .local v5, emailSizeValues:[Ljava/lang/CharSequence;
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupOptions;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f060002

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v2

    .line 608
    .local v2, emailSizeEntries:[Ljava/lang/CharSequence;
    const/4 v4, -0x1

    .line 610
    .local v4, emailSizeIndex:I
    array-length v8, v2

    .line 611
    .local v8, eseSz:I
    new-array v6, v8, [Lcom/android/email/activity/setup/SpinnerOption;

    .line 612
    .local v6, emailSizes:[Lcom/android/email/activity/setup/SpinnerOption;
    const/4 v9, 0x0

    .local v9, i:I
    :goto_0
    if-ge v9, v8, :cond_1

    .line 613
    aget-object v10, v2, v9

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 614
    .local v3, emailSizeEntry:Ljava/lang/String;
    aget-object v10, v5, v9

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 616
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 617
    move v1, v4

    .line 620
    :cond_0
    new-instance v10, Lcom/android/email/activity/setup/SpinnerOption;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-direct {v10, v11, v3}, Lcom/android/email/activity/setup/SpinnerOption;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v10, v6, v9

    .line 612
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 623
    .end local v3           #emailSizeEntry:Ljava/lang/String;
    :cond_1
    new-instance v7, Landroid/widget/ArrayAdapter;

    const v10, 0x1090008

    invoke-direct {v7, p0, v10, v6}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 625
    .local v7, emailSizesAdapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Lcom/android/email/activity/setup/SpinnerOption;>;"
    const v10, 0x1090009

    invoke-virtual {v7, v10}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 626
    iget-object v10, p0, Lcom/android/email/activity/setup/AccountSetupOptions;->mEmailSizeView:Landroid/widget/Spinner;

    invoke-virtual {v10, v7}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 627
    iget-object v10, p0, Lcom/android/email/activity/setup/AccountSetupOptions;->mEmailSizeView:Landroid/widget/Spinner;

    invoke-virtual {v10, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 629
    return-void
.end method

.method private enableEASSyncWindowSpinner()V
    .locals 10

    .prologue
    const/4 v8, 0x0

    .line 561
    const v7, 0x7f07003b

    invoke-virtual {p0, v7}, Lcom/android/email/activity/setup/AccountSetupOptions;->findViewById(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 562
    iget-object v7, p0, Lcom/android/email/activity/setup/AccountSetupOptions;->mSyncWindowView:Landroid/widget/Spinner;

    invoke-virtual {v7, v8}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 565
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupOptions;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f060007

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v6

    .line 567
    .local v6, windowValues:[Ljava/lang/CharSequence;
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupOptions;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f060006

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v3

    .line 571
    .local v3, windowEntries:[Ljava/lang/CharSequence;
    array-length v7, v3

    new-array v4, v7, [Lcom/android/email/activity/setup/SpinnerOption;

    .line 572
    .local v4, windowOptions:[Lcom/android/email/activity/setup/SpinnerOption;
    const/4 v0, -0x1

    .line 573
    .local v0, defaultIndex:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v7, v3

    if-ge v1, v7, :cond_1

    .line 574
    aget-object v7, v6, v1

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 575
    .local v2, value:I
    new-instance v7, Lcom/android/email/activity/setup/SpinnerOption;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aget-object v9, v3, v1

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Lcom/android/email/activity/setup/SpinnerOption;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v7, v4, v1

    .line 576
    const/4 v7, 0x2

    if-ne v2, v7, :cond_0

    .line 577
    move v0, v1

    .line 573
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 581
    .end local v2           #value:I
    :cond_1
    new-instance v5, Landroid/widget/ArrayAdapter;

    const v7, 0x1090008

    invoke-direct {v5, p0, v7, v4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 583
    .local v5, windowOptionsAdapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Lcom/android/email/activity/setup/SpinnerOption;>;"
    const v7, 0x1090009

    invoke-virtual {v5, v7}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 585
    iget-object v7, p0, Lcom/android/email/activity/setup/AccountSetupOptions;->mSyncWindowView:Landroid/widget/Spinner;

    invoke-virtual {v7, v5}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 587
    iget-object v7, p0, Lcom/android/email/activity/setup/AccountSetupOptions;->mSyncWindowView:Landroid/widget/Spinner;

    iget-object v8, p0, Lcom/android/email/activity/setup/AccountSetupOptions;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    invoke-virtual {v8}, Lcom/android/email/provider/EmailContent$Account;->getSyncLookback()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/email/activity/setup/SpinnerOption;->setSpinnerOptionValue(Landroid/widget/Spinner;Ljava/lang/Object;)V

    .line 588
    if-ltz v0, :cond_2

    .line 589
    iget-object v7, p0, Lcom/android/email/activity/setup/AccountSetupOptions;->mSyncWindowView:Landroid/widget/Spinner;

    invoke-virtual {v7, v0}, Landroid/widget/Spinner;->setSelection(I)V

    .line 591
    :cond_2
    return-void
.end method

.method private finishOnDone()V
    .locals 4

    .prologue
    .line 364
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupOptions;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget v2, v1, Lcom/android/email/provider/EmailContent$Account;->mFlags:I

    and-int/lit8 v2, v2, -0x11

    iput v2, v1, Lcom/android/email/provider/EmailContent$Account;->mFlags:I

    .line 365
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupOptions;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    invoke-static {p0, v1}, Lcom/android/email/activity/setup/AccountSettingsUtils;->commitSettings(Landroid/content/Context;Lcom/android/email/provider/EmailContent$Account;)V

    .line 366
    invoke-static {p0}, Lcom/android/email/Email;->setServicesEnabled(Landroid/content/Context;)Z

    .line 369
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupOptions;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "com.android.email.extra.setwiz_flow"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 370
    .local v0, mSetWizMode:Z
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupOptions;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-wide v1, v1, Lcom/android/email/provider/EmailContent$Account;->mId:J

    iget-boolean v3, p0, Lcom/android/email/activity/setup/AccountSetupOptions;->mEasFlowMode:Z

    invoke-static {p0, v1, v2, v3, v0}, Lcom/android/email/activity/setup/AccountSetupNames;->actionSetNames(Landroid/app/Activity;JZZ)V

    .line 377
    invoke-static {p0}, Lcom/android/email/ExchangeUtils;->startExchangeService(Landroid/content/Context;)V

    .line 380
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupOptions;->finish()V

    .line 381
    return-void
.end method

.method private onDone()V
    .locals 27

    .prologue
    .line 386
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/setup/AccountSetupOptions;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "device_policy"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/app/admin/DevicePolicyManager;

    .line 389
    .local v19, mDPM:Landroid/app/admin/DevicePolicyManager;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupOptions;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    move-object v2, v0

    move-object v0, v2

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/email/provider/EmailContent$Account;->getStoreUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    move-object/from16 v1, p0

    invoke-static {v0, v1}, Lcom/android/email/mail/Store$StoreInfo;->getStoreInfo(Ljava/lang/String;Landroid/content/Context;)Lcom/android/email/mail/Store$StoreInfo;

    move-result-object v17

    .line 390
    .local v17, info:Lcom/android/email/mail/Store$StoreInfo;
    const/16 v24, 0x0

    .line 391
    .local v24, syncScheduleData:Lcom/android/exchange/SyncScheduleData;
    const-string v2, "eas"

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/email/mail/Store$StoreInfo;->mScheme:Ljava/lang/String;

    move-object v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 392
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupOptions;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    move-object v2, v0

    invoke-virtual {v2}, Lcom/android/email/provider/EmailContent$Account;->getSyncScheduleData()Lcom/android/exchange/SyncScheduleData;

    move-result-object v24

    .line 396
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupOptions;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    move-object v2, v0

    invoke-virtual {v2}, Lcom/android/email/provider/EmailContent$Account;->getEmailAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v14

    .line 397
    .local v14, email:Ljava/lang/String;
    const-string v2, "@"

    invoke-virtual {v14, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    .line 398
    .local v15, emailParts:[Ljava/lang/String;
    const/4 v2, 0x1

    aget-object v2, v15, v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    .line 399
    .local v12, domain:Ljava/lang/String;
    const-string v2, "[.]"

    invoke-virtual {v12, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    .line 400
    .local v13, domainWithoutDot:[Ljava/lang/String;
    const/4 v2, 0x0

    aget-object v2, v13, v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v26

    .line 401
    .local v26, withOutDotDomain:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupOptions;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    move-object v2, v0

    move-object v0, v2

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/email/provider/EmailContent$Account;->setDisplayName(Ljava/lang/String;)V

    .line 406
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupOptions;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    move-object v2, v0

    invoke-virtual {v2}, Lcom/android/email/provider/EmailContent$Account;->getFlags()I

    move-result v2

    and-int/lit8 v20, v2, -0x2

    .line 407
    .local v20, newFlags:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupOptions;->mNotifyView:Landroid/widget/CheckBox;

    move-object v2, v0

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 408
    or-int/lit8 v20, v20, 0x1

    .line 410
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupOptions;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    move-object v2, v0

    move-object v0, v2

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/email/provider/EmailContent$Account;->setFlags(I)V

    .line 411
    const-string v2, "eas"

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/email/mail/Store$StoreInfo;->mScheme:Ljava/lang/String;

    move-object v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 412
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupOptions;->mPeakScheduleView:Landroid/widget/Spinner;

    move-object v2, v0

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/email/activity/setup/SpinnerOption;

    iget-object v2, v2, Lcom/android/email/activity/setup/SpinnerOption;->value:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move-object/from16 v0, v24

    move v1, v2

    invoke-virtual {v0, v1}, Lcom/android/exchange/SyncScheduleData;->setPeakSchedule(I)V

    .line 414
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupOptions;->mOffPeakScheduleView:Landroid/widget/Spinner;

    move-object v2, v0

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/email/activity/setup/SpinnerOption;

    iget-object v2, v2, Lcom/android/email/activity/setup/SpinnerOption;->value:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move-object/from16 v0, v24

    move v1, v2

    invoke-virtual {v0, v1}, Lcom/android/exchange/SyncScheduleData;->setOffPeakSchedule(I)V

    .line 416
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupOptions;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    move-object v2, v0

    move-object v0, v2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/email/provider/EmailContent$Account;->setSyncScheduleData(Lcom/android/exchange/SyncScheduleData;)V

    .line 421
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupOptions;->mSyncWindowView:Landroid/widget/Spinner;

    move-object v2, v0

    invoke-virtual {v2}, Landroid/widget/Spinner;->getVisibility()I

    move-result v2

    if-nez v2, :cond_3

    .line 422
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupOptions;->mSyncWindowView:Landroid/widget/Spinner;

    move-object v2, v0

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/email/activity/setup/SpinnerOption;

    iget-object v2, v2, Lcom/android/email/activity/setup/SpinnerOption;->value:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v25

    .line 424
    .local v25, window:I
    const/16 v23, 0x6

    .line 425
    .local v23, restrictedWindow:I
    const/4 v2, 0x0

    move-object/from16 v0, v19

    move-object v1, v2

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getMaxEmailAge(Landroid/content/ComponentName;)I

    move-result v23

    .line 426
    if-nez v23, :cond_2

    .line 427
    const/16 v23, 0x6

    .line 428
    :cond_2
    if-eqz v19, :cond_9

    move/from16 v0, v23

    move/from16 v1, v25

    if-ge v0, v1, :cond_9

    .line 430
    const-string v2, "AccountSetupOptions"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exchange IT Policy has restricted SyncLookback:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v0, v3

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupOptions;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    move-object v2, v0

    move-object v0, v2

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/email/provider/EmailContent$Account;->setSyncLookback(I)V

    .line 437
    :goto_1
    const-string v2, "eas"

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/email/mail/Store$StoreInfo;->mScheme:Ljava/lang/String;

    move-object v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 438
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupOptions;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    move-object v2, v0

    move-object v0, v2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/email/provider/EmailContent$Account;->setSyncScheduleData(Lcom/android/exchange/SyncScheduleData;)V

    .line 442
    .end local v23           #restrictedWindow:I
    .end local v25           #window:I
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupOptions;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    move-object v2, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupOptions;->mDefaultView:Landroid/widget/CheckBox;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/email/provider/EmailContent$Account;->setDefaultAccount(Z)V

    .line 443
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupOptions;->mEmailSizeView:Landroid/widget/Spinner;

    move-object v2, v0

    invoke-virtual {v2}, Landroid/widget/Spinner;->getVisibility()I

    move-result v2

    if-nez v2, :cond_5

    .line 448
    if-eqz v19, :cond_c

    .line 449
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupOptions;->mEmailSizeView:Landroid/widget/Spinner;

    move-object v2, v0

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/email/activity/setup/SpinnerOption;

    iget-object v2, v2, Lcom/android/email/activity/setup/SpinnerOption;->value:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    and-int/lit16 v2, v2, 0xff

    int-to-byte v11, v2

    .line 450
    .local v11, currentSizeByte:B
    invoke-static {v11}, Lcom/android/exchange/Eas$EmailDataSize;->parse(B)Lcom/android/exchange/Eas$EmailDataSize;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/exchange/Eas$EmailDataSize;->toEas12Value()I

    move-result v2

    div-int/lit16 v10, v2, 0x400

    .line 453
    .local v10, currentSize:I
    const/4 v2, 0x0

    move-object/from16 v0, v19

    move-object v1, v2

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getMaxEmailBodyTruncSize(Landroid/content/ComponentName;)I

    move-result v21

    .line 454
    .local v21, plainTextSize:I
    const-string v2, "AccountSetupOptions"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "plainTextSize = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v0, v3

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    const/4 v2, 0x0

    move-object/from16 v0, v19

    move-object v1, v2

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getMaxHtmlEmailBodyTruncSize(Landroid/content/ComponentName;)I

    move-result v2

    move v0, v2

    div-int/lit16 v0, v0, 0x400

    move/from16 v16, v0

    .line 456
    .local v16, htmlSize:I
    const-string v2, "AccountSetupOptions"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "htmlSize = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v0, v3

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    const/4 v2, 0x0

    move-object/from16 v0, v19

    move-object v1, v2

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getAllowHTMLEmail(Landroid/content/ComponentName;)Z

    move-result v18

    .line 458
    .local v18, isHtmlAllowed:Z
    const-string v2, "AccountSetupOptions"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isHtmlAllowed = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v0, v3

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    if-eqz v18, :cond_a

    if-lez v16, :cond_a

    .line 460
    move/from16 v22, v16

    .line 464
    .local v22, restrictedSize:I
    :goto_2
    if-lez v22, :cond_b

    .line 465
    move/from16 v0, v22

    mul-int/lit16 v0, v0, 0x400

    move/from16 v22, v0

    .line 468
    :goto_3
    move/from16 v0, v22

    move v1, v10

    if-ge v0, v1, :cond_4

    .line 470
    const-string v2, "AccountSetupOptions"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exchange IT Policy has restricted SyncSize:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v0, v3

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " KB"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    if-lez v11, :cond_4

    .line 472
    invoke-static/range {v22 .. v22}, Lcom/android/exchange/Eas$EmailDataSize;->parseToByte(I)B

    move-result v11

    .line 474
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupOptions;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    move-object v2, v0

    invoke-virtual {v2, v11}, Lcom/android/email/provider/EmailContent$Account;->setEmailSize(B)V

    .line 483
    .end local v10           #currentSize:I
    .end local v11           #currentSizeByte:B
    .end local v16           #htmlSize:I
    .end local v18           #isHtmlAllowed:Z
    .end local v21           #plainTextSize:I
    .end local v22           #restrictedSize:I
    :cond_5
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupOptions;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    move-object v2, v0

    invoke-virtual {v2}, Lcom/android/email/provider/EmailContent$Account;->isSaved()Z

    move-result v2

    if-nez v2, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupOptions;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    move-object v2, v0

    iget-object v2, v2, Lcom/android/email/provider/EmailContent$Account;->mHostAuthRecv:Lcom/android/email/provider/EmailContent$HostAuth;

    if-eqz v2, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupOptions;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    move-object v2, v0

    iget-object v2, v2, Lcom/android/email/provider/EmailContent$Account;->mHostAuthRecv:Lcom/android/email/provider/EmailContent$HostAuth;

    iget-object v2, v2, Lcom/android/email/provider/EmailContent$HostAuth;->mProtocol:Ljava/lang/String;

    const-string v3, "eas"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 486
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupOptions;->mSyncContactsView:Landroid/widget/CheckBox;

    move-object v2, v0

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v4

    .line 487
    .local v4, alsoSyncContacts:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupOptions;->mSyncCalendarView:Landroid/widget/CheckBox;

    move-object v2, v0

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v5

    .line 490
    .local v5, alsoSyncCalendar:Z
    const/4 v6, 0x0

    .line 491
    .local v6, alsoSyncTask:Z
    const-string v2, "AccountSetupOptions"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "going to call addsystem account with task checked this "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    const/4 v7, 0x0

    .line 496
    .local v7, alsoSyncNotes:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupOptions;->mSyncSmsView:Landroid/widget/CheckBox;

    move-object v2, v0

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v9

    .line 498
    .local v9, alsoSyncSms:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupOptions;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    move-object v2, v0

    iget v3, v2, Lcom/android/email/provider/EmailContent$Account;->mFlags:I

    or-int/lit8 v3, v3, 0x10

    iput v3, v2, Lcom/android/email/provider/EmailContent$Account;->mFlags:I

    .line 500
    if-eqz v9, :cond_6

    .line 502
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupOptions;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    move-object v2, v0

    iget v3, v2, Lcom/android/email/provider/EmailContent$Account;->mFlags:I

    or-int/lit16 v3, v3, 0x200

    iput v3, v2, Lcom/android/email/provider/EmailContent$Account;->mFlags:I

    .line 505
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupOptions;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    move-object v2, v0

    move-object/from16 v0, p0

    move-object v1, v2

    invoke-static {v0, v1}, Lcom/android/email/activity/setup/AccountSettingsUtils;->commitSettings(Landroid/content/Context;Lcom/android/email/provider/EmailContent$Account;)V

    .line 506
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/setup/AccountSetupOptions;->getApplication()Landroid/app/Application;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupOptions;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupOptions;->mAccountManagerCallback:Landroid/accounts/AccountManagerCallback;

    move-object v8, v0

    invoke-static/range {v2 .. v8}, Lcom/android/email/mail/store/ExchangeStore;->addSystemAccount(Landroid/content/Context;Lcom/android/email/provider/EmailContent$Account;ZZZZLandroid/accounts/AccountManagerCallback;)Landroid/accounts/AccountManagerFuture;

    .line 514
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupOptions;->mCalendarSyncWindowView:Landroid/widget/Spinner;

    move-object v2, v0

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/email/activity/setup/SpinnerOption;

    iget-object v2, v2, Lcom/android/email/activity/setup/SpinnerOption;->value:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v25

    .line 515
    .restart local v25       #window:I
    const/16 v23, 0x0

    .line 516
    .restart local v23       #restrictedWindow:I
    if-eqz v19, :cond_e

    const/4 v2, 0x0

    move-object/from16 v0, v19

    move-object v1, v2

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getMaxCalendarAge(Landroid/content/ComponentName;)I

    move-result v23

    if-lez v23, :cond_e

    .line 518
    if-eqz v25, :cond_7

    move/from16 v0, v23

    move/from16 v1, v25

    if-ge v0, v1, :cond_d

    .line 520
    :cond_7
    const-string v2, "AccountSetupOptions"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exchange IT Policy has restricted CalendarSyncLookback:"

    .end local v4           #alsoSyncContacts:Z
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v0, v3

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupOptions;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    move-object v2, v0

    move-object v0, v2

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/email/provider/EmailContent$Account;->setCalendarSyncLookback(I)Z

    .line 537
    .end local v5           #alsoSyncCalendar:Z
    .end local v6           #alsoSyncTask:Z
    .end local v7           #alsoSyncNotes:Z
    .end local v9           #alsoSyncSms:Z
    .end local v23           #restrictedWindow:I
    .end local v25           #window:I
    :goto_5
    return-void

    .line 418
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupOptions;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupOptions;->mCheckFrequencyView:Landroid/widget/Spinner;

    move-object v2, v0

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/email/activity/setup/SpinnerOption;

    iget-object v2, v2, Lcom/android/email/activity/setup/SpinnerOption;->value:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v3, v2}, Lcom/android/email/provider/EmailContent$Account;->setSyncInterval(I)V

    goto/16 :goto_0

    .line 435
    .restart local v23       #restrictedWindow:I
    .restart local v25       #window:I
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupOptions;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    move-object v2, v0

    move-object v0, v2

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/email/provider/EmailContent$Account;->setSyncLookback(I)V

    goto/16 :goto_1

    .line 462
    .end local v23           #restrictedWindow:I
    .end local v25           #window:I
    .restart local v10       #currentSize:I
    .restart local v11       #currentSizeByte:B
    .restart local v16       #htmlSize:I
    .restart local v18       #isHtmlAllowed:Z
    .restart local v21       #plainTextSize:I
    :cond_a
    move/from16 v22, v21

    .restart local v22       #restrictedSize:I
    goto/16 :goto_2

    .line 467
    :cond_b
    const v22, 0x7fffffff

    goto/16 :goto_3

    .line 478
    .end local v10           #currentSize:I
    .end local v11           #currentSizeByte:B
    .end local v16           #htmlSize:I
    .end local v18           #isHtmlAllowed:Z
    .end local v21           #plainTextSize:I
    .end local v22           #restrictedSize:I
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupOptions;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupOptions;->mEmailSizeView:Landroid/widget/Spinner;

    move-object v2, v0

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/email/activity/setup/SpinnerOption;

    iget-object v2, v2, Lcom/android/email/activity/setup/SpinnerOption;->value:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    invoke-virtual {v3, v2}, Lcom/android/email/provider/EmailContent$Account;->setEmailSize(B)V

    goto/16 :goto_4

    .line 525
    .restart local v4       #alsoSyncContacts:Z
    .restart local v5       #alsoSyncCalendar:Z
    .restart local v6       #alsoSyncTask:Z
    .restart local v7       #alsoSyncNotes:Z
    .restart local v9       #alsoSyncSms:Z
    .restart local v23       #restrictedWindow:I
    .restart local v25       #window:I
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupOptions;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    move-object v2, v0

    move-object v0, v2

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/email/provider/EmailContent$Account;->setCalendarSyncLookback(I)Z

    goto :goto_5

    .line 530
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupOptions;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    move-object v2, v0

    move-object v0, v2

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/email/provider/EmailContent$Account;->setCalendarSyncLookback(I)Z

    goto :goto_5

    .line 535
    .end local v4           #alsoSyncContacts:Z
    .end local v5           #alsoSyncCalendar:Z
    .end local v6           #alsoSyncTask:Z
    .end local v7           #alsoSyncNotes:Z
    .end local v9           #alsoSyncSms:Z
    .end local v23           #restrictedWindow:I
    .end local v25           #window:I
    :cond_f
    invoke-direct/range {p0 .. p0}, Lcom/android/email/activity/setup/AccountSetupOptions;->finishOnDone()V

    goto :goto_5
.end method

.method private varargs showErrorDialog(I[Ljava/lang/Object;)V
    .locals 2
    .parameter "msgResId"
    .parameter "args"

    .prologue
    .line 342
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupOptions;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/email/activity/setup/AccountSetupOptions$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/email/activity/setup/AccountSetupOptions$2;-><init>(Lcom/android/email/activity/setup/AccountSetupOptions;I[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 360
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 540
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 554
    :cond_0
    :goto_0
    return-void

    .line 547
    :pswitch_0
    iget-boolean v0, p0, Lcom/android/email/activity/setup/AccountSetupOptions;->mDonePressed:Z

    if-nez v0, :cond_0

    .line 548
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupOptions;->onDone()V

    .line 549
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/email/activity/setup/AccountSetupOptions;->mDonePressed:Z

    goto :goto_0

    .line 540
    nop

    :pswitch_data_0
    .packed-switch 0x7f070022
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 34
    .parameter "savedInstanceState"

    .prologue
    .line 122
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 123
    const v4, 0x7f030009

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/AccountSetupOptions;->setContentView(I)V

    .line 125
    const v4, 0x7f070036

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/AccountSetupOptions;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .end local p1
    check-cast p1, Landroid/widget/Spinner;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/email/activity/setup/AccountSetupOptions;->mCheckFrequencyView:Landroid/widget/Spinner;

    .line 126
    const v4, 0x7f070038

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/AccountSetupOptions;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Spinner;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/email/activity/setup/AccountSetupOptions;->mPeakScheduleView:Landroid/widget/Spinner;

    .line 127
    const v4, 0x7f07003a

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/AccountSetupOptions;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Spinner;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/email/activity/setup/AccountSetupOptions;->mOffPeakScheduleView:Landroid/widget/Spinner;

    .line 128
    const v4, 0x7f070035

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/AccountSetupOptions;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/email/activity/setup/AccountSetupOptions;->mCheckFrequencyText:Landroid/widget/TextView;

    .line 129
    const v4, 0x7f070037

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/AccountSetupOptions;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/email/activity/setup/AccountSetupOptions;->mPeakScheduleText:Landroid/widget/TextView;

    .line 130
    const v4, 0x7f070039

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/AccountSetupOptions;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/email/activity/setup/AccountSetupOptions;->mOffPeakScheduleText:Landroid/widget/TextView;

    .line 131
    const v4, 0x7f07003c

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/AccountSetupOptions;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Spinner;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/email/activity/setup/AccountSetupOptions;->mSyncWindowView:Landroid/widget/Spinner;

    .line 134
    const v4, 0x7f07003e

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/AccountSetupOptions;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Spinner;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/email/activity/setup/AccountSetupOptions;->mEmailSizeView:Landroid/widget/Spinner;

    .line 136
    const v4, 0x7f070020

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/AccountSetupOptions;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/email/activity/setup/AccountSetupOptions;->mDefaultView:Landroid/widget/CheckBox;

    .line 137
    const v4, 0x7f070041

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/AccountSetupOptions;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/email/activity/setup/AccountSetupOptions;->mNotifyView:Landroid/widget/CheckBox;

    .line 138
    const v4, 0x7f070042

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/AccountSetupOptions;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/email/activity/setup/AccountSetupOptions;->mSyncContactsView:Landroid/widget/CheckBox;

    .line 139
    const v4, 0x7f070043

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/AccountSetupOptions;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/email/activity/setup/AccountSetupOptions;->mSyncCalendarView:Landroid/widget/CheckBox;

    .line 147
    const v4, 0x7f070040

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/AccountSetupOptions;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Spinner;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/email/activity/setup/AccountSetupOptions;->mCalendarSyncWindowView:Landroid/widget/Spinner;

    .line 149
    const v4, 0x7f070044

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/AccountSetupOptions;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/email/activity/setup/AccountSetupOptions;->mSyncSmsView:Landroid/widget/CheckBox;

    .line 152
    const v4, 0x7f070022

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/AccountSetupOptions;->findViewById(I)Landroid/view/View;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 155
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/setup/AccountSetupOptions;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "account"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/android/email/provider/EmailContent$Account;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/email/activity/setup/AccountSetupOptions;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    .line 156
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/setup/AccountSetupOptions;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "makeDefault"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v19

    .line 161
    .local v19, makeDefault:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupOptions;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/email/provider/EmailContent$Account;->getStoreUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p0

    invoke-static {v0, v1}, Lcom/android/email/mail/Store$StoreInfo;->getStoreInfo(Ljava/lang/String;Landroid/content/Context;)Lcom/android/email/mail/Store$StoreInfo;

    move-result-object v18

    .line 162
    .local v18, info:Lcom/android/email/mail/Store$StoreInfo;
    move-object/from16 v0, v18

    iget-boolean v0, v0, Lcom/android/email/mail/Store$StoreInfo;->mPushSupported:Z

    move v4, v0

    if-eqz v4, :cond_0

    .line 163
    const v16, 0x7f060005

    .line 164
    .local v16, frequencyValuesId:I
    const v14, 0x7f060004

    .line 169
    .local v14, frequencyEntriesId:I
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/setup/AccountSetupOptions;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    move-object v0, v4

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v15

    .line 170
    .local v15, frequencyValues:[Ljava/lang/CharSequence;
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/setup/AccountSetupOptions;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v14}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v13

    .line 173
    .local v13, frequencyEntries:[Ljava/lang/CharSequence;
    array-length v4, v13

    new-array v11, v4, [Lcom/android/email/activity/setup/SpinnerOption;

    .line 174
    .local v11, checkFrequencies:[Lcom/android/email/activity/setup/SpinnerOption;
    const/16 v17, 0x0

    .local v17, i:I
    :goto_1
    array-length v4, v13

    move/from16 v0, v17

    move v1, v4

    if-ge v0, v1, :cond_1

    .line 175
    new-instance v4, Lcom/android/email/activity/setup/SpinnerOption;

    aget-object v5, v15, v17

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    aget-object v6, v13, v17

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/android/email/activity/setup/SpinnerOption;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v4, v11, v17

    .line 174
    add-int/lit8 v17, v17, 0x1

    goto :goto_1

    .line 166
    .end local v11           #checkFrequencies:[Lcom/android/email/activity/setup/SpinnerOption;
    .end local v13           #frequencyEntries:[Ljava/lang/CharSequence;
    .end local v14           #frequencyEntriesId:I
    .end local v15           #frequencyValues:[Ljava/lang/CharSequence;
    .end local v16           #frequencyValuesId:I
    .end local v17           #i:I
    :cond_0
    const v16, 0x7f060001

    .line 167
    .restart local v16       #frequencyValuesId:I
    const/high16 v14, 0x7f06

    .restart local v14       #frequencyEntriesId:I
    goto :goto_0

    .line 184
    .restart local v11       #checkFrequencies:[Lcom/android/email/activity/setup/SpinnerOption;
    .restart local v13       #frequencyEntries:[Ljava/lang/CharSequence;
    .restart local v15       #frequencyValues:[Ljava/lang/CharSequence;
    .restart local v17       #i:I
    :cond_1
    const v31, 0x7f060012

    .line 185
    .local v31, peakScheduleValuesId:I
    const v29, 0x7f060011

    .line 186
    .local v29, peakScheduleEntriesId:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/setup/AccountSetupOptions;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    move-object v0, v4

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v30

    .line 187
    .local v30, peakScheduleValues:[Ljava/lang/CharSequence;
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/setup/AccountSetupOptions;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    move-object v0, v4

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v28

    .line 190
    .local v28, peakScheduleEntries:[Ljava/lang/CharSequence;
    move-object/from16 v0, v28

    array-length v0, v0

    move v4, v0

    move v0, v4

    new-array v0, v0, [Lcom/android/email/activity/setup/SpinnerOption;

    move-object/from16 v26, v0

    .line 191
    .local v26, peakSchedule:[Lcom/android/email/activity/setup/SpinnerOption;
    const/16 v17, 0x0

    :goto_2
    move-object/from16 v0, v28

    array-length v0, v0

    move v4, v0

    move/from16 v0, v17

    move v1, v4

    if-ge v0, v1, :cond_2

    .line 192
    new-instance v4, Lcom/android/email/activity/setup/SpinnerOption;

    aget-object v5, v30, v17

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    aget-object v6, v28, v17

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/android/email/activity/setup/SpinnerOption;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v4, v26, v17

    .line 191
    add-int/lit8 v17, v17, 0x1

    goto :goto_2

    .line 196
    :cond_2
    new-instance v27, Landroid/widget/ArrayAdapter;

    const v4, 0x1090008

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    move v2, v4

    move-object/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 198
    .local v27, peakScheduleAdapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Lcom/android/email/activity/setup/SpinnerOption;>;"
    const v4, 0x1090009

    move-object/from16 v0, v27

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 199
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupOptions;->mPeakScheduleView:Landroid/widget/Spinner;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 205
    const v25, 0x7f060012

    .line 206
    .local v25, offpeakScheduleValuesId:I
    const v23, 0x7f060011

    .line 208
    .local v23, offpeakScheduleEntriesId:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/setup/AccountSetupOptions;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    move-object v0, v4

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v24

    .line 209
    .local v24, offpeakScheduleValues:[Ljava/lang/CharSequence;
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/setup/AccountSetupOptions;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    move-object v0, v4

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v22

    .line 212
    .local v22, offpeakScheduleEntries:[Ljava/lang/CharSequence;
    move-object/from16 v0, v22

    array-length v0, v0

    move v4, v0

    move v0, v4

    new-array v0, v0, [Lcom/android/email/activity/setup/SpinnerOption;

    move-object/from16 v20, v0

    .line 213
    .local v20, offpeakSchedule:[Lcom/android/email/activity/setup/SpinnerOption;
    const/16 v17, 0x0

    :goto_3
    move-object/from16 v0, v22

    array-length v0, v0

    move v4, v0

    move/from16 v0, v17

    move v1, v4

    if-ge v0, v1, :cond_3

    .line 214
    new-instance v4, Lcom/android/email/activity/setup/SpinnerOption;

    aget-object v5, v24, v17

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    aget-object v6, v22, v17

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/android/email/activity/setup/SpinnerOption;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v4, v20, v17

    .line 213
    add-int/lit8 v17, v17, 0x1

    goto :goto_3

    .line 218
    :cond_3
    new-instance v21, Landroid/widget/ArrayAdapter;

    const v4, 0x1090008

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    move v2, v4

    move-object/from16 v3, v20

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 220
    .local v21, offpeakScheduleAdapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Lcom/android/email/activity/setup/SpinnerOption;>;"
    const v4, 0x1090009

    move-object/from16 v0, v21

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 221
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupOptions;->mOffPeakScheduleView:Landroid/widget/Spinner;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 224
    new-instance v12, Landroid/widget/ArrayAdapter;

    const v4, 0x1090008

    move-object v0, v12

    move-object/from16 v1, p0

    move v2, v4

    move-object v3, v11

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 226
    .local v12, checkFrequenciesAdapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Lcom/android/email/activity/setup/SpinnerOption;>;"
    const v4, 0x1090009

    invoke-virtual {v12, v4}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 228
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupOptions;->mCheckFrequencyView:Landroid/widget/Spinner;

    move-object v4, v0

    invoke-virtual {v4, v12}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 229
    if-eqz v18, :cond_4

    const-string v4, "eas"

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/email/mail/Store$StoreInfo;->mScheme:Ljava/lang/String;

    move-object v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 230
    invoke-direct/range {p0 .. p0}, Lcom/android/email/activity/setup/AccountSetupOptions;->enableEASEmailSizeSpinner()V

    .line 233
    :cond_4
    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/email/mail/Store$StoreInfo;->mVisibleLimitDefault:I

    move v4, v0

    const/4 v5, -0x1

    if-ne v4, v5, :cond_5

    .line 234
    invoke-direct/range {p0 .. p0}, Lcom/android/email/activity/setup/AccountSetupOptions;->enableEASSyncWindowSpinner()V

    .line 239
    :cond_5
    const/4 v10, 0x0

    .line 241
    .local v10, c:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/setup/AccountSetupOptions;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/android/email/provider/EmailContent$Account;->CONTENT_URI:Landroid/net/Uri;

    sget-object v6, Lcom/android/email/provider/EmailContent$Account;->ID_PROJECTION:[Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 245
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-lez v4, :cond_6

    .line 246
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupOptions;->mDefaultView:Landroid/widget/CheckBox;

    move-object v4, v0

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/CheckBox;->setVisibility(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 249
    :cond_6
    if-eqz v10, :cond_7

    .line 250
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 257
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupOptions;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    move-object v4, v0

    iget-boolean v4, v4, Lcom/android/email/provider/EmailContent$Account;->mIsDefault:Z

    if-nez v4, :cond_8

    if-eqz v19, :cond_9

    .line 258
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupOptions;->mDefaultView:Landroid/widget/CheckBox;

    move-object v4, v0

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 260
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupOptions;->mNotifyView:Landroid/widget/CheckBox;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupOptions;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/email/provider/EmailContent$Account;->getFlags()I

    move-result v5

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_c

    const/4 v5, 0x1

    :goto_4
    invoke-virtual {v4, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 262
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupOptions;->mCheckFrequencyView:Landroid/widget/Spinner;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupOptions;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/email/provider/EmailContent$Account;->getSyncInterval()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/email/activity/setup/SpinnerOption;->setSpinnerOptionValue(Landroid/widget/Spinner;Ljava/lang/Object;)V

    .line 264
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupOptions;->mPeakScheduleView:Landroid/widget/Spinner;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupOptions;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/email/provider/EmailContent$Account;->getSyncScheduleData()Lcom/android/exchange/SyncScheduleData;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/exchange/SyncScheduleData;->getPeakSchedule()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/email/activity/setup/SpinnerOption;->setSpinnerOptionValue(Landroid/widget/Spinner;Ljava/lang/Object;)V

    .line 266
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupOptions;->mOffPeakScheduleView:Landroid/widget/Spinner;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupOptions;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/email/provider/EmailContent$Account;->getSyncScheduleData()Lcom/android/exchange/SyncScheduleData;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/exchange/SyncScheduleData;->getOffPeakSchedule()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/email/activity/setup/SpinnerOption;->setSpinnerOptionValue(Landroid/widget/Spinner;Ljava/lang/Object;)V

    .line 270
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/setup/AccountSetupOptions;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "easFlow"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/email/activity/setup/AccountSetupOptions;->mEasFlowMode:Z

    .line 271
    const-string v4, "eas"

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/email/mail/Store$StoreInfo;->mScheme:Ljava/lang/String;

    move-object v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 273
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupOptions;->mSyncContactsView:Landroid/widget/CheckBox;

    move-object v4, v0

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 274
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupOptions;->mSyncContactsView:Landroid/widget/CheckBox;

    move-object v4, v0

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 275
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupOptions;->mSyncCalendarView:Landroid/widget/CheckBox;

    move-object v4, v0

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 276
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupOptions;->mSyncCalendarView:Landroid/widget/CheckBox;

    move-object v4, v0

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 284
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupOptions;->mCheckFrequencyView:Landroid/widget/Spinner;

    move-object v4, v0

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 285
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupOptions;->mPeakScheduleView:Landroid/widget/Spinner;

    move-object v4, v0

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 286
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupOptions;->mOffPeakScheduleView:Landroid/widget/Spinner;

    move-object v4, v0

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 287
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupOptions;->mCheckFrequencyText:Landroid/widget/TextView;

    move-object v4, v0

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 288
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupOptions;->mPeakScheduleText:Landroid/widget/TextView;

    move-object v4, v0

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 289
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupOptions;->mOffPeakScheduleText:Landroid/widget/TextView;

    move-object v4, v0

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 296
    sget-wide v32, Lcom/android/exchange/EasSyncService;->protocolVersion:D

    .line 297
    .local v32, version:D
    const-wide/high16 v4, 0x402c

    cmpl-double v4, v32, v4

    if-ltz v4, :cond_a

    .line 298
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupOptions;->mSyncSmsView:Landroid/widget/CheckBox;

    move-object v4, v0

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 299
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupOptions;->mSyncSmsView:Landroid/widget/CheckBox;

    move-object v4, v0

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 304
    :cond_a
    invoke-direct/range {p0 .. p0}, Lcom/android/email/activity/setup/AccountSetupOptions;->enableEASCalendarSyncWindowSpinner()V

    .line 316
    .end local v32           #version:D
    :goto_5
    return-void

    .line 249
    :catchall_0
    move-exception v4

    if-eqz v10, :cond_b

    .line 250
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 249
    :cond_b
    throw v4

    .line 260
    :cond_c
    const/4 v5, 0x0

    goto/16 :goto_4

    .line 309
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupOptions;->mCheckFrequencyView:Landroid/widget/Spinner;

    move-object v4, v0

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 310
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupOptions;->mPeakScheduleView:Landroid/widget/Spinner;

    move-object v4, v0

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 311
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupOptions;->mOffPeakScheduleView:Landroid/widget/Spinner;

    move-object v4, v0

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 312
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupOptions;->mCheckFrequencyText:Landroid/widget/TextView;

    move-object v4, v0

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 313
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupOptions;->mPeakScheduleText:Landroid/widget/TextView;

    move-object v4, v0

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 314
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupOptions;->mOffPeakScheduleText:Landroid/widget/TextView;

    move-object v4, v0

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_5
.end method
