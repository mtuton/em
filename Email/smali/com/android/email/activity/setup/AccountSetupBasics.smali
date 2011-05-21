.class public Lcom/android/email/activity/setup/AccountSetupBasics;
.super Landroid/app/Activity;
.source "AccountSetupBasics.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/text/TextWatcher;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/activity/setup/AccountSetupBasics$GetInfoFromWDSTask;,
        Lcom/android/email/activity/setup/AccountSetupBasics$AccountSetupBasicsHandler;
    }
.end annotation


# static fields
.field private static final ACTION_RETURN_TO_CALLER:Ljava/lang/String; = "com.android.email.AccountSetupBasics.return"

.field private static final ACTION_START_AT_MESSAGE_LIST:Ljava/lang/String; = "com.android.email.AccountSetupBasics.messageList"

.field private static final DEFAULT_ACCOUNT_CHECK_INTERVAL:I = -0x1

.field private static final DIALOG_DUPLICATE_ACCOUNT:I = 0x2

.field private static final DIALOG_EXCHANGE_ACCOUNT_WARNNING:I = 0x3

.field private static final DIALOG_NOTE:I = 0x1

.field private static final ENTER_DEBUG_SCREEN:Z = true

.field public static final EXTRA_ACCOUNT:Ljava/lang/String; = "com.android.email.AccountSetupBasics.account"

.field public static final EXTRA_EAS_FLOW:Ljava/lang/String; = "com.android.email.extra.eas_flow"

.field private static final EXTRA_PASSWORD:Ljava/lang/String; = "com.android.email.AccountSetupBasics.password"

.field public static final EXTRA_SETWIZ_FLOW:Ljava/lang/String; = "com.android.email.extra.setwiz_flow"

.field private static final EXTRA_USERNAME:Ljava/lang/String; = "com.android.email.AccountSetupBasics.username"

.field private static final STATE_KEY_PROVIDER:Ljava/lang/String; = "com.android.email.AccountSetupBasics.provider"

.field private static final TAG:Ljava/lang/String; = "SetBasics"

.field public static mShowAlertImei:Z


# instance fields
.field private mAccount:Lcom/android/email/provider/EmailContent$Account;

.field private mDefaultView:Landroid/widget/CheckBox;

.field private mDuplicateAccountName:Ljava/lang/String;

.field private mEasFlowMode:Z

.field private mEmailValidator:Lcom/android/email/EmailAddressValidator;

.field private mEmailView:Landroid/widget/EditText;

.field private mGetInfoFromWDSTask:Lcom/android/email/activity/setup/AccountSetupBasics$GetInfoFromWDSTask;

.field private mHandler:Lcom/android/email/activity/setup/AccountSetupBasics$AccountSetupBasicsHandler;

.field private mManualSetupTwSoftkeyItem:Lcom/android/email/EmailTwSoftkeyItem;

.field private mNextTwSoftkeyItem:Lcom/android/email/EmailTwSoftkeyItem;

.field private mPasswordView:Landroid/widget/EditText;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mProvider:Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 118
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/email/activity/setup/AccountSetupBasics;->mShowAlertImei:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 75
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 119
    new-instance v0, Lcom/android/email/EmailAddressValidator;

    invoke-direct {v0}, Lcom/android/email/EmailAddressValidator;-><init>()V

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mEmailValidator:Lcom/android/email/EmailAddressValidator;

    .line 124
    new-instance v0, Lcom/android/email/activity/setup/AccountSetupBasics$AccountSetupBasicsHandler;

    invoke-direct {v0, p0}, Lcom/android/email/activity/setup/AccountSetupBasics$AccountSetupBasicsHandler;-><init>(Lcom/android/email/activity/setup/AccountSetupBasics;)V

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mHandler:Lcom/android/email/activity/setup/AccountSetupBasics$AccountSetupBasicsHandler;

    .line 888
    return-void
.end method

.method static synthetic access$000(Lcom/android/email/activity/setup/AccountSetupBasics;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupBasics;->finishAutoSetup()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/email/activity/setup/AccountSetupBasics;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/android/email/activity/setup/AccountSetupBasics;->onManualSetup(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/email/activity/setup/AccountSetupBasics;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/email/activity/setup/AccountSetupBasics;)Lcom/android/email/activity/setup/AccountSetupBasics$AccountSetupBasicsHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mHandler:Lcom/android/email/activity/setup/AccountSetupBasics$AccountSetupBasicsHandler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/email/activity/setup/AccountSetupBasics;Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/android/email/activity/setup/AccountSetupBasics;->onNextManualSetup(Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;)V

    return-void
.end method

.method public static actionAccountCreateFinished(Landroid/app/Activity;J)V
    .locals 2
    .parameter "fromActivity"
    .parameter "accountId"

    .prologue
    .line 161
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/email/activity/setup/AccountSetupBasics;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 164
    .local v0, i:Landroid/content/Intent;
    const-string v1, "com.android.email.AccountSetupBasics.messageList"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 165
    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 166
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 167
    return-void
.end method

.method public static actionAccountCreateFinishedEas(Landroid/app/Activity;)V
    .locals 3
    .parameter "fromActivity"

    .prologue
    .line 152
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/email/activity/setup/AccountSetupBasics;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 155
    .local v0, i:Landroid/content/Intent;
    const-string v1, "com.android.email.AccountSetupBasics.return"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 156
    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 157
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 158
    return-void
.end method

.method public static actionNewAccount(Landroid/app/Activity;)V
    .locals 2
    .parameter "fromActivity"

    .prologue
    .line 128
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/email/activity/setup/AccountSetupBasics;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 129
    .local v0, i:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 130
    return-void
.end method

.method public static actionNewAccountWithCredentials(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2
    .parameter "fromActivity"
    .parameter "username"
    .parameter "password"
    .parameter "easFlow"

    .prologue
    .line 134
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/email/activity/setup/AccountSetupBasics;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 135
    .local v0, i:Landroid/content/Intent;
    const-string v1, "com.android.email.AccountSetupBasics.username"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 136
    const-string v1, "com.android.email.AccountSetupBasics.password"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 137
    const-string v1, "com.android.email.extra.eas_flow"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 138
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 139
    return-void
.end method

.method public static actionSetupExchangeIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 3
    .parameter "context"

    .prologue
    .line 146
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/email/activity/setup/AccountSetupBasics;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 147
    .local v0, i:Landroid/content/Intent;
    const-string v1, "com.android.email.extra.eas_flow"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 148
    return-object v0
.end method

.method private findProviderCustomer(Ljava/lang/String;)Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;
    .locals 5
    .parameter "domain"

    .prologue
    .line 827
    invoke-static {}, Lcom/android/email/activity/setup/AccountSetupCustomer;->getInstance()Lcom/android/email/activity/setup/AccountSetupCustomer;

    move-result-object v0

    .line 828
    .local v0, customer:Lcom/android/email/activity/setup/AccountSetupCustomer;
    invoke-virtual {v0, p1}, Lcom/android/email/activity/setup/AccountSetupCustomer;->getProviderCustomer(Ljava/lang/String;)Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;

    move-result-object v1

    .line 829
    .local v1, provider:Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;
    if-nez v1, :cond_0

    .line 830
    invoke-static {p0, p1}, Lcom/android/email/activity/setup/AccountSettingsUtils;->findProviderForDomain(Landroid/content/Context;Ljava/lang/String;)Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;

    move-result-object v1

    .line 833
    :cond_0
    if-nez v1, :cond_1

    .line 834
    new-instance v2, Lcom/android/email/activity/setup/AccountSetupBasics$GetInfoFromWDSTask;

    invoke-direct {v2, p0}, Lcom/android/email/activity/setup/AccountSetupBasics$GetInfoFromWDSTask;-><init>(Lcom/android/email/activity/setup/AccountSetupBasics;)V

    iput-object v2, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mGetInfoFromWDSTask:Lcom/android/email/activity/setup/AccountSetupBasics$GetInfoFromWDSTask;

    .line 835
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mGetInfoFromWDSTask:Lcom/android/email/activity/setup/AccountSetupBasics$GetInfoFromWDSTask;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v2, v3}, Lcom/android/email/activity/setup/AccountSetupBasics$GetInfoFromWDSTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 839
    :cond_1
    return-object v1
.end method

.method private finishAutoSetup()V
    .locals 26

    .prologue
    .line 491
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupBasics;->mEmailView:Landroid/widget/EditText;

    move-object v7, v0

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v15

    .line 492
    .local v15, email:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupBasics;->mPasswordView:Landroid/widget/EditText;

    move-object v7, v0

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v23

    .line 493
    .local v23, password:Ljava/lang/String;
    const-string v7, "@"

    invoke-virtual {v15, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v16

    .line 494
    .local v16, emailParts:[Ljava/lang/String;
    const/4 v7, 0x0

    aget-object v25, v16, v7

    .line 495
    .local v25, user:Ljava/lang/String;
    const/4 v7, 0x1

    aget-object v14, v16, v7

    .line 496
    .local v14, domain:Ljava/lang/String;
    const/16 v17, 0x0

    .line 497
    .local v17, incomingUri:Ljava/net/URI;
    const/16 v20, 0x0

    .line 499
    .local v20, outgoingUri:Ljava/net/URI;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupBasics;->mProvider:Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;

    move-object v7, v0

    move-object v0, v7

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;->incomingUsernameTemplate:Ljava/lang/String;

    move-object/from16 v19, v0

    .line 500
    .local v19, incomingUsername:Ljava/lang/String;
    const-string v7, "\\$email"

    move-object/from16 v0, v19

    move-object v1, v7

    move-object v2, v15

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 501
    const-string v7, "\\$user"

    move-object/from16 v0, v19

    move-object v1, v7

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 502
    const-string v7, "\\$domain"

    move-object/from16 v0, v19

    move-object v1, v7

    move-object v2, v14

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 504
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupBasics;->mProvider:Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;

    move-object v7, v0

    move-object v0, v7

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;->incomingUriTemplate:Ljava/net/URI;

    move-object/from16 v18, v0

    .line 505
    .local v18, incomingUriTemplate:Ljava/net/URI;
    new-instance v5, Ljava/net/URI;

    invoke-virtual/range {v18 .. v18}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, v7

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v0, v7

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {v18 .. v18}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {v18 .. v18}, Ljava/net/URI;->getPort()I

    move-result v9

    invoke-virtual/range {v18 .. v18}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-direct/range {v5 .. v12}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 509
    .end local v17           #incomingUri:Ljava/net/URI;
    .local v5, incomingUri:Ljava/net/URI;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupBasics;->mProvider:Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;

    move-object v7, v0

    move-object v0, v7

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;->outgoingUsernameTemplate:Ljava/lang/String;

    move-object/from16 v22, v0

    .line 510
    .local v22, outgoingUsername:Ljava/lang/String;
    const-string v7, "\\$email"

    move-object/from16 v0, v22

    move-object v1, v7

    move-object v2, v15

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 511
    const-string v7, "\\$user"

    move-object/from16 v0, v22

    move-object v1, v7

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 512
    const-string v7, "\\$domain"

    move-object/from16 v0, v22

    move-object v1, v7

    move-object v2, v14

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 514
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupBasics;->mProvider:Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;

    move-object v7, v0

    move-object v0, v7

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;->outgoingUriTemplate:Ljava/net/URI;

    move-object/from16 v21, v0

    .line 515
    .local v21, outgoingUriTemplate:Ljava/net/URI;
    new-instance v6, Ljava/net/URI;

    invoke-virtual/range {v21 .. v21}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, v8

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ":"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v0, v8

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {v21 .. v21}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {v21 .. v21}, Ljava/net/URI;->getPort()I

    move-result v10

    invoke-virtual/range {v21 .. v21}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-direct/range {v6 .. v13}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_1

    .line 520
    .end local v20           #outgoingUri:Ljava/net/URI;
    .local v6, outgoingUri:Ljava/net/URI;
    const-wide/16 v7, -0x1

    :try_start_2
    invoke-virtual {v5}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p0

    move-wide v1, v7

    move-object v3, v9

    move-object/from16 v4, v19

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/email/Utility;->findDuplicateAccount(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object v0, v7

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/email/activity/setup/AccountSetupBasics;->mDuplicateAccountName:Ljava/lang/String;

    .line 522
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupBasics;->mDuplicateAccountName:Ljava/lang/String;

    move-object v7, v0

    if-eqz v7, :cond_0

    .line 523
    const/4 v7, 0x2

    move-object/from16 v0, p0

    move v1, v7

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/AccountSetupBasics;->showDialog(I)V
    :try_end_2
    .catch Ljava/net/URISyntaxException; {:try_start_2 .. :try_end_2} :catch_2

    .line 556
    .end local v18           #incomingUriTemplate:Ljava/net/URI;
    .end local v19           #incomingUsername:Ljava/lang/String;
    .end local v21           #outgoingUriTemplate:Ljava/net/URI;
    .end local v22           #outgoingUsername:Ljava/lang/String;
    :goto_0
    return-void

    .line 527
    .end local v5           #incomingUri:Ljava/net/URI;
    .end local v6           #outgoingUri:Ljava/net/URI;
    .restart local v17       #incomingUri:Ljava/net/URI;
    .restart local v20       #outgoingUri:Ljava/net/URI;
    :catch_0
    move-exception v7

    move-object/from16 v24, v7

    move-object/from16 v6, v20

    .end local v20           #outgoingUri:Ljava/net/URI;
    .restart local v6       #outgoingUri:Ljava/net/URI;
    move-object/from16 v5, v17

    .line 534
    .end local v17           #incomingUri:Ljava/net/URI;
    .restart local v5       #incomingUri:Ljava/net/URI;
    .local v24, use:Ljava/net/URISyntaxException;
    :goto_1
    const/4 v7, 0x1

    move-object/from16 v0, p0

    move v1, v7

    invoke-direct {v0, v1}, Lcom/android/email/activity/setup/AccountSetupBasics;->onManualSetup(Z)V

    goto :goto_0

    .line 538
    .end local v24           #use:Ljava/net/URISyntaxException;
    .restart local v18       #incomingUriTemplate:Ljava/net/URI;
    .restart local v19       #incomingUsername:Ljava/lang/String;
    .restart local v21       #outgoingUriTemplate:Ljava/net/URI;
    .restart local v22       #outgoingUsername:Ljava/lang/String;
    :cond_0
    new-instance v7, Lcom/android/email/provider/EmailContent$Account;

    invoke-direct {v7}, Lcom/android/email/provider/EmailContent$Account;-><init>()V

    move-object v0, v7

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/email/activity/setup/AccountSetupBasics;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    .line 539
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupBasics;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    move-object v7, v0

    invoke-direct/range {p0 .. p0}, Lcom/android/email/activity/setup/AccountSetupBasics;->getOwnerName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/email/provider/EmailContent$Account;->setSenderName(Ljava/lang/String;)V

    .line 540
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupBasics;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    move-object v7, v0

    invoke-virtual {v7, v15}, Lcom/android/email/provider/EmailContent$Account;->setEmailAddress(Ljava/lang/String;)V

    .line 541
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupBasics;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    move-object v7, v0

    invoke-virtual {v5}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v8

    move-object v0, v7

    move-object/from16 v1, p0

    move-object v2, v8

    invoke-virtual {v0, v1, v2}, Lcom/android/email/provider/EmailContent$Account;->setStoreUri(Landroid/content/Context;Ljava/lang/String;)V

    .line 542
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupBasics;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    move-object v7, v0

    invoke-virtual {v6}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v8

    move-object v0, v7

    move-object/from16 v1, p0

    move-object v2, v8

    invoke-virtual {v0, v1, v2}, Lcom/android/email/provider/EmailContent$Account;->setSenderUri(Landroid/content/Context;Ljava/lang/String;)V

    .line 549
    invoke-virtual {v5}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "imap"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 552
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupBasics;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    move-object v7, v0

    const/4 v8, 0x2

    invoke-virtual {v7, v8}, Lcom/android/email/provider/EmailContent$Account;->setDeletePolicy(I)V

    .line 554
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupBasics;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    move-object v7, v0

    const/4 v8, -0x1

    invoke-virtual {v7, v8}, Lcom/android/email/provider/EmailContent$Account;->setSyncInterval(I)V

    .line 555
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupBasics;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    move-object v7, v0

    const/4 v8, 0x1

    const/4 v9, 0x1

    move-object/from16 v0, p0

    move-object v1, v7

    move v2, v8

    move v3, v9

    invoke-static {v0, v1, v2, v3}, Lcom/android/email/activity/setup/AccountSetupCheckSettings;->actionValidateSettings(Landroid/app/Activity;Lcom/android/email/provider/EmailContent$Account;ZZ)V

    goto :goto_0

    .line 527
    .end local v6           #outgoingUri:Ljava/net/URI;
    .end local v21           #outgoingUriTemplate:Ljava/net/URI;
    .end local v22           #outgoingUsername:Ljava/lang/String;
    .restart local v20       #outgoingUri:Ljava/net/URI;
    :catch_1
    move-exception v7

    move-object/from16 v24, v7

    move-object/from16 v6, v20

    .end local v20           #outgoingUri:Ljava/net/URI;
    .restart local v6       #outgoingUri:Ljava/net/URI;
    goto :goto_1

    .restart local v21       #outgoingUriTemplate:Ljava/net/URI;
    .restart local v22       #outgoingUsername:Ljava/lang/String;
    :catch_2
    move-exception v7

    move-object/from16 v24, v7

    goto :goto_1
.end method

.method private getOwnerName()Ljava/lang/String;
    .locals 6

    .prologue
    .line 367
    const/4 v3, 0x0

    .line 383
    .local v3, name:Ljava/lang/String;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_1

    .line 384
    :cond_0
    invoke-static {p0}, Lcom/android/email/provider/EmailContent$Account;->getDefaultAccountId(Landroid/content/Context;)J

    move-result-wide v1

    .line 385
    .local v1, defaultId:J
    const-wide/16 v4, -0x1

    cmp-long v4, v1, v4

    if-eqz v4, :cond_1

    .line 386
    invoke-static {p0, v1, v2}, Lcom/android/email/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Account;

    move-result-object v0

    .line 387
    .local v0, account:Lcom/android/email/provider/EmailContent$Account;
    if-eqz v0, :cond_1

    .line 388
    invoke-virtual {v0}, Lcom/android/email/provider/EmailContent$Account;->getSenderName()Ljava/lang/String;

    move-result-object v3

    .line 392
    .end local v0           #account:Lcom/android/email/provider/EmailContent$Account;
    .end local v1           #defaultId:J
    :cond_1
    return-object v3
.end method

.method private onManualSetup(Z)V
    .locals 20
    .parameter "allowAutoDiscover"

    .prologue
    .line 677
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupBasics;->mEmailView:Landroid/widget/EditText;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v14

    .line 678
    .local v14, email:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupBasics;->mPasswordView:Landroid/widget/EditText;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v17

    .line 679
    .local v17, password:Ljava/lang/String;
    const-string v4, "@"

    invoke-virtual {v14, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    .line 680
    .local v15, emailParts:[Ljava/lang/String;
    const/16 v19, 0x0

    .line 681
    .local v19, user:Ljava/lang/String;
    const/4 v6, 0x0

    .line 682
    .local v6, domain:Ljava/lang/String;
    const/4 v4, 0x1

    sput-boolean v4, Lcom/android/email/activity/setup/AccountSetupBasics;->mShowAlertImei:Z

    .line 685
    const/4 v4, 0x0

    :try_start_0
    aget-object v4, v15, v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v19

    .line 686
    const/4 v4, 0x1

    aget-object v4, v15, v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 696
    const-string v4, "e@e.e"

    invoke-virtual {v4, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "emails"

    move-object v0, v4

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 697
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupBasics;->mEmailView:Landroid/widget/EditText;

    move-object v4, v0

    const-string v5, ""

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 698
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupBasics;->mPasswordView:Landroid/widget/EditText;

    move-object v4, v0

    const-string v5, ""

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 699
    new-instance v4, Landroid/content/Intent;

    const-class v5, Lcom/android/email/activity/Debug;

    move-object v0, v4

    move-object/from16 v1, p0

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/AccountSetupBasics;->startActivity(Landroid/content/Intent;)V

    .line 741
    :goto_0
    return-void

    .line 687
    :catch_0
    move-exception v4

    move-object v13, v4

    .line 688
    .local v13, e:Ljava/lang/ArrayIndexOutOfBoundsException;
    const v4, 0x7f080083

    const/4 v5, 0x1

    move-object/from16 v0, p0

    move v1, v4

    move v2, v5

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 703
    .end local v13           #e:Ljava/lang/ArrayIndexOutOfBoundsException;
    :cond_0
    new-instance v4, Lcom/android/email/provider/EmailContent$Account;

    invoke-direct {v4}, Lcom/android/email/provider/EmailContent$Account;-><init>()V

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/email/activity/setup/AccountSetupBasics;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    .line 704
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupBasics;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    move-object v4, v0

    invoke-direct/range {p0 .. p0}, Lcom/android/email/activity/setup/AccountSetupBasics;->getOwnerName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/email/provider/EmailContent$Account;->setSenderName(Ljava/lang/String;)V

    .line 705
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupBasics;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    move-object v4, v0

    invoke-virtual {v4, v14}, Lcom/android/email/provider/EmailContent$Account;->setEmailAddress(Ljava/lang/String;)V

    .line 707
    :try_start_1
    new-instance v3, Ljava/net/URI;

    const-string v4, "placeholder"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, v5

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ":"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v7, -0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-direct/range {v3 .. v10}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 708
    .local v3, uri:Ljava/net/URI;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupBasics;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    move-object v4, v0

    invoke-virtual {v3}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v0, v4

    move-object/from16 v1, p0

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/android/email/provider/EmailContent$Account;->setStoreUri(Landroid/content/Context;Ljava/lang/String;)V

    .line 709
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupBasics;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    move-object v4, v0

    invoke-virtual {v3}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v0, v4

    move-object/from16 v1, p0

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/android/email/provider/EmailContent$Account;->setSenderUri(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_2

    .line 731
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupBasics;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    move-object v4, v0

    const/4 v5, -0x1

    invoke-virtual {v4, v5}, Lcom/android/email/provider/EmailContent$Account;->setSyncInterval(I)V

    .line 737
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/setup/AccountSetupBasics;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "com.android.email.extra.setwiz_flow"

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v12

    .line 738
    .local v12, mSetWizMode:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupBasics;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    move-object v8, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupBasics;->mDefaultView:Landroid/widget/CheckBox;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v9

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/email/activity/setup/AccountSetupBasics;->mEasFlowMode:Z

    move v10, v0

    move-object/from16 v7, p0

    move/from16 v11, p1

    invoke-static/range {v7 .. v12}, Lcom/android/email/activity/setup/AccountSetupAccountType;->actionSelectAccountType(Landroid/app/Activity;Lcom/android/email/provider/EmailContent$Account;ZZZZ)V

    goto/16 :goto_0

    .line 710
    .end local v3           #uri:Ljava/net/URI;
    .end local v12           #mSetWizMode:Z
    :catch_1
    move-exception v4

    move-object/from16 v18, v4

    .line 712
    .local v18, use:Ljava/net/URISyntaxException;
    const v4, 0x7f080083

    const/4 v5, 0x1

    move-object/from16 v0, p0

    move v1, v4

    move v2, v5

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 714
    const/4 v4, 0x0

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/email/activity/setup/AccountSetupBasics;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    goto/16 :goto_0

    .line 717
    .end local v18           #use:Ljava/net/URISyntaxException;
    :catch_2
    move-exception v4

    move-object/from16 v16, v4

    .line 719
    .local v16, npe:Ljava/lang/NullPointerException;
    const v4, 0x7f080083

    const/4 v5, 0x1

    move-object/from16 v0, p0

    move v1, v4

    move v2, v5

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 721
    const/4 v4, 0x0

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/email/activity/setup/AccountSetupBasics;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    goto/16 :goto_0
.end method

.method private onNext()V
    .locals 14

    .prologue
    const/4 v13, 0x1

    const/4 v11, 0x0

    .line 560
    iget-boolean v10, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mEasFlowMode:Z

    if-eqz v10, :cond_2

    .line 563
    const-string v10, "input_method"

    invoke-virtual {p0, v10}, Lcom/android/email/activity/setup/AccountSetupBasics;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/inputmethod/InputMethodManager;

    .line 564
    .local v6, im:Landroid/view/inputmethod/InputMethodManager;
    iget-object v9, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mNextTwSoftkeyItem:Lcom/android/email/EmailTwSoftkeyItem;

    .line 565
    .local v9, mView:Landroid/view/View;
    iget-object v10, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mNextTwSoftkeyItem:Lcom/android/email/EmailTwSoftkeyItem;

    invoke-virtual {v10}, Lcom/android/email/EmailTwSoftkeyItem;->getWindowToken()Landroid/os/IBinder;

    move-result-object v10

    invoke-virtual {v6, v10, v11}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 566
    sput-boolean v11, Lcom/android/email/activity/setup/AccountSetupBasics;->mShowAlertImei:Z

    .line 568
    const-string v1, "AndroidMail.Main"

    .line 569
    .local v1, PREFERENCES_FILE:Ljava/lang/String;
    const-string v0, "activationLicense"

    .line 570
    .local v0, ACTIVATION_LICENSE:Ljava/lang/String;
    invoke-virtual {p0, v1, v11}, Lcom/android/email/activity/setup/AccountSetupBasics;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v8

    .line 571
    .local v8, mSharedPreferences:Landroid/content/SharedPreferences;
    const/4 v10, 0x0

    invoke-interface {v8, v0, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 573
    .local v7, license:Ljava/lang/String;
    const-string v10, "isCheckIMEI"

    invoke-interface {v8, v10, v11}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 574
    .local v2, checkIMEI:Z
    const-string v10, "VINS"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "AccountSetupBasic1"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 583
    if-eqz v2, :cond_1

    .line 584
    const/4 v10, 0x3

    invoke-virtual {p0, v10}, Lcom/android/email/activity/setup/AccountSetupBasics;->showDialog(I)V

    .line 606
    .end local v0           #ACTIVATION_LICENSE:Ljava/lang/String;
    .end local v1           #PREFERENCES_FILE:Ljava/lang/String;
    .end local v2           #checkIMEI:Z
    .end local v6           #im:Landroid/view/inputmethod/InputMethodManager;
    .end local v7           #license:Ljava/lang/String;
    .end local v8           #mSharedPreferences:Landroid/content/SharedPreferences;
    .end local v9           #mView:Landroid/view/View;
    :cond_0
    :goto_0
    return-void

    .line 586
    .restart local v0       #ACTIVATION_LICENSE:Ljava/lang/String;
    .restart local v1       #PREFERENCES_FILE:Ljava/lang/String;
    .restart local v2       #checkIMEI:Z
    .restart local v6       #im:Landroid/view/inputmethod/InputMethodManager;
    .restart local v7       #license:Ljava/lang/String;
    .restart local v8       #mSharedPreferences:Landroid/content/SharedPreferences;
    .restart local v9       #mView:Landroid/view/View;
    :cond_1
    invoke-direct {p0, v13}, Lcom/android/email/activity/setup/AccountSetupBasics;->onManualSetup(Z)V

    goto :goto_0

    .line 592
    .end local v0           #ACTIVATION_LICENSE:Ljava/lang/String;
    .end local v1           #PREFERENCES_FILE:Ljava/lang/String;
    .end local v2           #checkIMEI:Z
    .end local v6           #im:Landroid/view/inputmethod/InputMethodManager;
    .end local v7           #license:Ljava/lang/String;
    .end local v8           #mSharedPreferences:Landroid/content/SharedPreferences;
    .end local v9           #mView:Landroid/view/View;
    :cond_2
    sput-boolean v13, Lcom/android/email/activity/setup/AccountSetupBasics;->mShowAlertImei:Z

    .line 593
    iget-object v10, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mEmailView:Landroid/widget/EditText;

    invoke-virtual {v10}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 594
    .local v4, email:Ljava/lang/String;
    const-string v10, "@"

    invoke-virtual {v4, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 595
    .local v5, emailParts:[Ljava/lang/String;
    aget-object v10, v5, v13

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 596
    .local v3, domain:Ljava/lang/String;
    invoke-direct {p0, v3}, Lcom/android/email/activity/setup/AccountSetupBasics;->findProviderCustomer(Ljava/lang/String;)Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;

    move-result-object v10

    iput-object v10, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mProvider:Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;

    .line 597
    iget-object v10, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mProvider:Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;

    if-eqz v10, :cond_0

    .line 598
    iget-object v10, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mProvider:Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;

    iget-object v10, v10, Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;->note:Ljava/lang/String;

    if-eqz v10, :cond_3

    .line 599
    invoke-virtual {p0, v13}, Lcom/android/email/activity/setup/AccountSetupBasics;->showDialog(I)V

    goto :goto_0

    .line 601
    :cond_3
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupBasics;->finishAutoSetup()V

    goto :goto_0
.end method

.method private onNextManualSetup(Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;)V
    .locals 3
    .parameter "provider"

    .prologue
    .line 609
    const-string v0, "SetBasics"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "provider : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 610
    if-eqz p1, :cond_0

    .line 611
    iput-object p1, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mProvider:Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;

    .line 612
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupBasics;->finishAutoSetup()V

    .line 618
    :goto_0
    return-void

    .line 617
    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/email/activity/setup/AccountSetupBasics;->onManualSetup(Z)V

    goto :goto_0
.end method

.method private validateFields()V
    .locals 3

    .prologue
    .line 348
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mEmailView:Landroid/widget/EditText;

    invoke-static {v1}, Lcom/android/email/Utility;->requiredFieldValid(Landroid/widget/TextView;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mPasswordView:Landroid/widget/EditText;

    invoke-static {v1}, Lcom/android/email/Utility;->requiredFieldValid(Landroid/widget/TextView;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mEmailValidator:Lcom/android/email/EmailAddressValidator;

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mEmailView:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/email/EmailAddressValidator;->isValid(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    move v0, v1

    .line 361
    .local v0, valid:Z
    :goto_0
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mNextTwSoftkeyItem:Lcom/android/email/EmailTwSoftkeyItem;

    invoke-virtual {v1, v0}, Lcom/android/email/EmailTwSoftkeyItem;->setEnabled(Z)V

    .line 362
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mManualSetupTwSoftkeyItem:Lcom/android/email/EmailTwSoftkeyItem;

    invoke-virtual {v1, v0}, Lcom/android/email/EmailTwSoftkeyItem;->setEnabled(Z)V

    .line 364
    return-void

    .line 348
    .end local v0           #valid:Z
    :cond_0
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .parameter "s"

    .prologue
    .line 338
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupBasics;->validateFields()V

    .line 339
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 342
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 9
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v7, 0x0

    const-string v8, "onActivityResult: mAccountId is not valid."

    const-string v6, "SetBasics"

    .line 629
    const/4 v5, -0x1

    if-ne p2, v5, :cond_0

    .line 630
    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    invoke-virtual {v5}, Lcom/android/email/provider/EmailContent$Account;->getEmailAddress()Ljava/lang/String;

    move-result-object v1

    .line 631
    .local v1, email:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mDefaultView:Landroid/widget/CheckBox;

    invoke-virtual {v5}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    .line 632
    .local v2, isDefault:Z
    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    invoke-virtual {v5, v1}, Lcom/android/email/provider/EmailContent$Account;->setDisplayName(Ljava/lang/String;)V

    .line 633
    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    invoke-virtual {v5, v2}, Lcom/android/email/provider/EmailContent$Account;->setDefaultAccount(Z)V

    .line 637
    :try_start_0
    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    invoke-virtual {v5, p0}, Lcom/android/email/provider/EmailContent$Account;->save(Landroid/content/Context;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 661
    :goto_0
    invoke-static {p0}, Lcom/android/email/Email;->setServicesEnabled(Landroid/content/Context;)Z

    .line 665
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupBasics;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "com.android.email.extra.setwiz_flow"

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 666
    .local v3, mSetWizMode:Z
    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-wide v5, v5, Lcom/android/email/provider/EmailContent$Account;->mId:J

    invoke-static {p0, v5, v6, v7, v3}, Lcom/android/email/activity/setup/AccountSetupNames;->actionSetNames(Landroid/app/Activity;JZZ)V

    .line 667
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupBasics;->finish()V

    .line 669
    .end local v1           #email:Ljava/lang/String;
    .end local v2           #isDefault:Z
    .end local v3           #mSetWizMode:Z
    :cond_0
    :goto_1
    return-void

    .line 639
    .restart local v1       #email:Ljava/lang/String;
    .restart local v2       #isDefault:Z
    :catch_0
    move-exception v5

    move-object v0, v5

    .line 640
    .local v0, e:Ljava/lang/UnsupportedOperationException;
    const-string v5, "com.android.email.AccountSetupBasics.account"

    invoke-virtual {p3, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Lcom/android/email/provider/EmailContent$Account;

    iput-object v5, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    .line 641
    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    if-nez v5, :cond_1

    .line 643
    const-string v5, "SetBasics"

    const-string v5, "onActivityResult: mAccountId is not valid."

    invoke-static {v6, v8}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 646
    :cond_1
    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    invoke-virtual {v5}, Lcom/android/email/provider/EmailContent$Account;->getEmailAddress()Ljava/lang/String;

    move-result-object v1

    .line 647
    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mDefaultView:Landroid/widget/CheckBox;

    invoke-virtual {v5}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    .line 648
    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    invoke-virtual {v5, v1}, Lcom/android/email/provider/EmailContent$Account;->setDisplayName(Ljava/lang/String;)V

    .line 649
    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    invoke-virtual {v5, v2}, Lcom/android/email/provider/EmailContent$Account;->setDefaultAccount(Z)V

    .line 651
    :try_start_1
    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    invoke-virtual {v5, p0}, Lcom/android/email/provider/EmailContent$Account;->save(Landroid/content/Context;)Landroid/net/Uri;
    :try_end_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 653
    :catch_1
    move-exception v5

    move-object v4, v5

    .line 654
    .local v4, uoe:Ljava/lang/UnsupportedOperationException;
    const-string v5, "SetBasics"

    const-string v5, "onActivityResult: mAccountId is not valid."

    invoke-static {v6, v8}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 655
    invoke-virtual {v4}, Ljava/lang/UnsupportedOperationException;->printStackTrace()V

    goto :goto_1
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 951
    const/16 v0, 0x9

    invoke-virtual {p1, v0}, Landroid/widget/CompoundButton;->playSoundEffect(I)V

    .line 952
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 744
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 757
    :goto_0
    return-void

    .line 748
    :pswitch_0
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupBasics;->onNext()V

    goto :goto_0

    .line 753
    :pswitch_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/email/activity/setup/AccountSetupBasics;->onManualSetup(Z)V

    goto :goto_0

    .line 744
    nop

    :pswitch_data_0
    .packed-switch 0x7f07001e
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 22
    .parameter "savedInstanceState"

    .prologue
    .line 181
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 182
    const/4 v12, 0x0

    .line 184
    .local v12, ac_count:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/setup/AccountSetupBasics;->getIntent()Landroid/content/Intent;

    move-result-object v19

    .line 185
    .local v19, intent:Landroid/content/Intent;
    const-string v4, "com.android.email.AccountSetupBasics.return"

    const/4 v5, 0x0

    move-object/from16 v0, v19

    move-object v1, v4

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 187
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/setup/AccountSetupBasics;->finish()V

    .line 320
    .end local p1
    :cond_0
    :goto_0
    return-void

    .line 190
    .restart local p1
    :cond_1
    const-string v4, "com.android.email.AccountSetupBasics.messageList"

    const-wide/16 v5, -0x1

    move-object/from16 v0, v19

    move-object v1, v4

    move-wide v2, v5

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v13

    .line 193
    .local v13, accountId:J
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/setup/AccountSetupBasics;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/android/email/provider/EmailContent$Account;->CONTENT_URI:Landroid/net/Uri;

    sget-object v6, Lcom/android/email/provider/EmailContent$Account;->ID_PROJECTION:[Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v16

    .line 196
    .local v16, c:Landroid/database/Cursor;
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->getCount()I

    move-result v12

    .line 197
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 202
    .end local v16           #c:Landroid/database/Cursor;
    :goto_1
    const-wide/16 v4, 0x0

    cmp-long v4, v13, v4

    if-lez v4, :cond_2

    .line 212
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-wide v1, v13

    move v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/android/email/activity/MessageList;->actionHandleAccount(Landroid/content/Context;JI)V

    .line 213
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/setup/AccountSetupBasics;->finish()V

    goto :goto_0

    .line 199
    :catch_0
    move-exception v4

    move-object/from16 v17, v4

    .line 200
    .local v17, e:Ljava/lang/Exception;
    const-string v4, "SetBasics"

    const-string v5, "MessageList---- onCreate -"

    invoke-static {v4, v5}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 218
    .end local v17           #e:Ljava/lang/Exception;
    :cond_2
    const v4, 0x7f030004

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/AccountSetupBasics;->setContentView(I)V

    .line 220
    const v4, 0x7f070018

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/AccountSetupBasics;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/email/activity/setup/AccountSetupBasics;->mEmailView:Landroid/widget/EditText;

    .line 221
    const v4, 0x7f07001a

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/AccountSetupBasics;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/email/activity/setup/AccountSetupBasics;->mPasswordView:Landroid/widget/EditText;

    .line 222
    const v4, 0x7f07001c

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/AccountSetupBasics;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/email/activity/setup/AccountSetupBasics;->mDefaultView:Landroid/widget/CheckBox;

    .line 224
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupBasics;->mDefaultView:Landroid/widget/CheckBox;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 229
    const v4, 0x7f07001e

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/AccountSetupBasics;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/email/EmailTwSoftkeyItem;

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/email/activity/setup/AccountSetupBasics;->mManualSetupTwSoftkeyItem:Lcom/android/email/EmailTwSoftkeyItem;

    .line 230
    const v4, 0x7f07001f

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/AccountSetupBasics;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/email/EmailTwSoftkeyItem;

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/email/activity/setup/AccountSetupBasics;->mNextTwSoftkeyItem:Lcom/android/email/EmailTwSoftkeyItem;

    .line 231
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupBasics;->mNextTwSoftkeyItem:Lcom/android/email/EmailTwSoftkeyItem;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/email/EmailTwSoftkeyItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 232
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupBasics;->mManualSetupTwSoftkeyItem:Lcom/android/email/EmailTwSoftkeyItem;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/email/EmailTwSoftkeyItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 235
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupBasics;->mEmailView:Landroid/widget/EditText;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 236
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupBasics;->mPasswordView:Landroid/widget/EditText;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 239
    new-instance v4, Lcom/android/email/activity/setup/AccountSetupBasics$1;

    move-object v0, v4

    move-object/from16 v1, p0

    move-object/from16 v2, p0

    invoke-direct {v0, v1, v2}, Lcom/android/email/activity/setup/AccountSetupBasics$1;-><init>(Lcom/android/email/activity/setup/AccountSetupBasics;Landroid/content/Context;)V

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/email/activity/setup/AccountSetupBasics;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 244
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupBasics;->mProgressDialog:Landroid/app/ProgressDialog;

    move-object v4, v0

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 245
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupBasics;->mProgressDialog:Landroid/app/ProgressDialog;

    move-object v4, v0

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 246
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupBasics;->mProgressDialog:Landroid/app/ProgressDialog;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 251
    const/16 v16, 0x0

    .line 253
    .restart local v16       #c:Landroid/database/Cursor;
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/setup/AccountSetupBasics;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/android/email/provider/EmailContent$Account;->CONTENT_URI:Landroid/net/Uri;

    sget-object v6, Lcom/android/email/provider/EmailContent$Account;->ID_PROJECTION:[Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v16

    .line 257
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-lez v4, :cond_3

    .line 258
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupBasics;->mDefaultView:Landroid/widget/CheckBox;

    move-object v4, v0

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/CheckBox;->setVisibility(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 261
    :cond_3
    if-eqz v16, :cond_4

    .line 262
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 266
    :cond_4
    const-string v4, "com.android.email.extra.eas_flow"

    const/4 v5, 0x0

    move-object/from16 v0, v19

    move-object v1, v4

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/email/activity/setup/AccountSetupBasics;->mEasFlowMode:Z

    .line 267
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/email/activity/setup/AccountSetupBasics;->mEasFlowMode:Z

    move v4, v0

    if-eqz v4, :cond_5

    .line 271
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupBasics;->mManualSetupTwSoftkeyItem:Lcom/android/email/EmailTwSoftkeyItem;

    move-object v4, v0

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Lcom/android/email/EmailTwSoftkeyItem;->setVisibility(I)V

    .line 275
    const v4, 0x7f070017

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/AccountSetupBasics;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/TextView;

    .line 276
    .local v21, welcomeView:Landroid/widget/TextView;
    invoke-static/range {p0 .. p0}, Lcom/android/email/VendorPolicyLoader;->getInstance(Landroid/content/Context;)Lcom/android/email/VendorPolicyLoader;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/email/VendorPolicyLoader;->useAlternateExchangeStrings()Z

    move-result v15

    .line 278
    .local v15, alternateStrings:Z
    if-eqz v15, :cond_b

    const v4, 0x7f08017f

    :goto_2
    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/AccountSetupBasics;->setTitle(I)V

    .line 289
    .end local v15           #alternateStrings:Z
    .end local v21           #welcomeView:Landroid/widget/TextView;
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupBasics;->mEmailView:Landroid/widget/EditText;

    move-object v4, v0

    const-string v5, "account@example.com"

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 291
    const-string v4, "com.android.email.AccountSetupBasics.username"

    move-object/from16 v0, v19

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 292
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupBasics;->mEmailView:Landroid/widget/EditText;

    move-object v4, v0

    const-string v5, "com.android.email.AccountSetupBasics.username"

    move-object/from16 v0, v19

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 294
    :cond_6
    const-string v4, "com.android.email.AccountSetupBasics.password"

    move-object/from16 v0, v19

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 295
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupBasics;->mPasswordView:Landroid/widget/EditText;

    move-object v4, v0

    const-string v5, "com.android.email.AccountSetupBasics.password"

    move-object/from16 v0, v19

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 298
    :cond_7
    if-eqz p1, :cond_8

    const-string v4, "com.android.email.AccountSetupBasics.account"

    move-object/from16 v0, p1

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 299
    const-string v4, "com.android.email.AccountSetupBasics.account"

    move-object/from16 v0, p1

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Lcom/android/email/provider/EmailContent$Account;

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/email/activity/setup/AccountSetupBasics;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    .line 302
    :cond_8
    if-eqz p1, :cond_9

    const-string v4, "com.android.email.AccountSetupBasics.provider"

    move-object/from16 v0, p1

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 303
    const-string v4, "com.android.email.AccountSetupBasics.provider"

    move-object/from16 v0, p1

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    .end local p1
    check-cast p1, Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/email/activity/setup/AccountSetupBasics;->mProvider:Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;

    .line 306
    :cond_9
    const-string v11, "AndroidMail.Main"

    .line 307
    .local v11, PREFERENCES_FILE:Ljava/lang/String;
    const-string v10, "activationLicense"

    .line 308
    .local v10, ACTIVATION_LICENSE:Ljava/lang/String;
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object v1, v11

    move v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/android/email/activity/setup/AccountSetupBasics;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v20

    .line 309
    .local v20, mSharedPreferences:Landroid/content/SharedPreferences;
    const-string v4, "VINS"

    const-string v5, "AccountSetupBasic1"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    const-string v4, "isSet"

    const/4 v5, 0x0

    move-object/from16 v0, v20

    move-object v1, v4

    move v2, v5

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_0

    .line 312
    invoke-interface/range {v20 .. v20}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v18

    .line 313
    .local v18, editPref:Landroid/content/SharedPreferences$Editor;
    const-string v4, "isSet"

    const/4 v5, 0x1

    move-object/from16 v0, v18

    move-object v1, v4

    move v2, v5

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 314
    const-string v4, "isCheckIMEI"

    const/4 v5, 0x1

    move-object/from16 v0, v18

    move-object v1, v4

    move v2, v5

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 315
    invoke-interface/range {v18 .. v18}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 316
    const-string v4, "VINS"

    const-string v5, "AccountSetupBasic2"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 261
    .end local v10           #ACTIVATION_LICENSE:Ljava/lang/String;
    .end local v11           #PREFERENCES_FILE:Ljava/lang/String;
    .end local v18           #editPref:Landroid/content/SharedPreferences$Editor;
    .end local v20           #mSharedPreferences:Landroid/content/SharedPreferences;
    .restart local p1
    :catchall_0
    move-exception v4

    if-eqz v16, :cond_a

    .line 262
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 261
    :cond_a
    throw v4

    .line 278
    .restart local v15       #alternateStrings:Z
    .restart local v21       #welcomeView:Landroid/widget/TextView;
    :cond_b
    const v4, 0x7f080180

    goto/16 :goto_2
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 11
    .parameter "id"

    .prologue
    const v10, 0x7f080012

    const v7, 0x1080027

    const/4 v9, 0x0

    const v8, 0x7f080011

    .line 397
    const/4 v6, 0x1

    if-ne p1, v6, :cond_0

    .line 398
    iget-object v6, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mProvider:Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mProvider:Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;

    iget-object v6, v6, Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;->note:Ljava/lang/String;

    if-eqz v6, :cond_2

    .line 399
    new-instance v6, Landroid/app/AlertDialog$Builder;

    invoke-direct {v6, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const v7, 0x1040014

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mProvider:Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;

    iget-object v7, v7, Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;->note:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {p0, v8}, Lcom/android/email/activity/setup/AccountSetupBasics;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lcom/android/email/activity/setup/AccountSetupBasics$2;

    invoke-direct {v8, p0}, Lcom/android/email/activity/setup/AccountSetupBasics$2;-><init>(Lcom/android/email/activity/setup/AccountSetupBasics;)V

    invoke-virtual {v6, v7, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {p0, v10}, Lcom/android/email/activity/setup/AccountSetupBasics;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, v9}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    .line 465
    :goto_0
    return-object v6

    .line 415
    :cond_0
    const/4 v6, 0x2

    if-ne p1, v6, :cond_1

    .line 416
    new-instance v6, Landroid/app/AlertDialog$Builder;

    invoke-direct {v6, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const v7, 0x7f080084

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const v7, 0x7f080185

    invoke-virtual {p0, v7}, Lcom/android/email/activity/setup/AccountSetupBasics;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    new-instance v7, Lcom/android/email/activity/setup/AccountSetupBasics$3;

    invoke-direct {v7, p0}, Lcom/android/email/activity/setup/AccountSetupBasics$3;-><init>(Lcom/android/email/activity/setup/AccountSetupBasics;)V

    invoke-virtual {v6, v8, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    goto :goto_0

    .line 428
    :cond_1
    const/4 v6, 0x3

    if-ne p1, v6, :cond_2

    .line 430
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 431
    .local v3, factory:Landroid/view/LayoutInflater;
    const v6, 0x7f030016

    invoke-virtual {v3, v6, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 433
    .local v5, textEntryView:Landroid/view/View;
    const v6, 0x7f07007b

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    .line 434
    .local v2, checkboxImei:Landroid/widget/CheckBox;
    const-string v1, "AndroidMail.Main"

    .line 435
    .local v1, PREFERENCES_FILE:Ljava/lang/String;
    const-string v0, "activationLicense"

    .line 436
    .local v0, ACTIVATION_LICENSE:Ljava/lang/String;
    const/4 v6, 0x0

    invoke-virtual {p0, v1, v6}, Lcom/android/email/activity/setup/AccountSetupBasics;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 440
    .local v4, mSharedPreferences:Landroid/content/SharedPreferences;
    new-instance v6, Landroid/app/AlertDialog$Builder;

    invoke-direct {v6, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6, v5}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const v7, 0x7f080186

    invoke-virtual {p0, v7}, Lcom/android/email/activity/setup/AccountSetupBasics;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    new-instance v7, Lcom/android/email/activity/setup/AccountSetupBasics$6;

    invoke-direct {v7, p0, v4, v2}, Lcom/android/email/activity/setup/AccountSetupBasics$6;-><init>(Lcom/android/email/activity/setup/AccountSetupBasics;Landroid/content/SharedPreferences;Landroid/widget/CheckBox;)V

    invoke-virtual {v6, v8, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    new-instance v7, Lcom/android/email/activity/setup/AccountSetupBasics$5;

    invoke-direct {v7, p0}, Lcom/android/email/activity/setup/AccountSetupBasics$5;-><init>(Lcom/android/email/activity/setup/AccountSetupBasics;)V

    invoke-virtual {v6, v10, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    new-instance v7, Lcom/android/email/activity/setup/AccountSetupBasics$4;

    invoke-direct {v7, p0}, Lcom/android/email/activity/setup/AccountSetupBasics$4;-><init>(Lcom/android/email/activity/setup/AccountSetupBasics;)V

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    goto :goto_0

    .end local v0           #ACTIVATION_LICENSE:Ljava/lang/String;
    .end local v1           #PREFERENCES_FILE:Ljava/lang/String;
    .end local v2           #checkboxImei:Landroid/widget/CheckBox;
    .end local v3           #factory:Landroid/view/LayoutInflater;
    .end local v4           #mSharedPreferences:Landroid/content/SharedPreferences;
    .end local v5           #textEntryView:Landroid/view/View;
    :cond_2
    move-object v6, v9

    .line 465
    goto/16 :goto_0
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 844
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 845
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 847
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 849
    :cond_0
    iput-object v2, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 851
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mGetInfoFromWDSTask:Lcom/android/email/activity/setup/AccountSetupBasics$GetInfoFromWDSTask;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mGetInfoFromWDSTask:Lcom/android/email/activity/setup/AccountSetupBasics$GetInfoFromWDSTask;

    invoke-virtual {v0}, Lcom/android/email/activity/setup/AccountSetupBasics$GetInfoFromWDSTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v0, v1, :cond_1

    .line 853
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mGetInfoFromWDSTask:Lcom/android/email/activity/setup/AccountSetupBasics$GetInfoFromWDSTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/AccountSetupBasics$GetInfoFromWDSTask;->cancel(Z)Z

    .line 854
    iput-object v2, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mGetInfoFromWDSTask:Lcom/android/email/activity/setup/AccountSetupBasics$GetInfoFromWDSTask;

    .line 856
    :cond_1
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 939
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mGetInfoFromWDSTask:Lcom/android/email/activity/setup/AccountSetupBasics$GetInfoFromWDSTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mGetInfoFromWDSTask:Lcom/android/email/activity/setup/AccountSetupBasics$GetInfoFromWDSTask;

    invoke-virtual {v0}, Lcom/android/email/activity/setup/AccountSetupBasics$GetInfoFromWDSTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v0, v1, :cond_0

    .line 941
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mGetInfoFromWDSTask:Lcom/android/email/activity/setup/AccountSetupBasics$GetInfoFromWDSTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/AccountSetupBasics$GetInfoFromWDSTask;->cancel(Z)Z

    .line 942
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mGetInfoFromWDSTask:Lcom/android/email/activity/setup/AccountSetupBasics$GetInfoFromWDSTask;

    .line 944
    :cond_0
    return-void
.end method

.method public onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 3
    .parameter "id"
    .parameter "dialog"

    .prologue
    .line 473
    packed-switch p1, :pswitch_data_0

    .line 488
    :cond_0
    :goto_0
    return-void

    .line 475
    :pswitch_0
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mProvider:Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mProvider:Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;

    iget-object v2, v2, Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;->note:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 476
    move-object v0, p2

    check-cast v0, Landroid/app/AlertDialog;

    move-object v1, v0

    .line 477
    .local v1, alert:Landroid/app/AlertDialog;
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mProvider:Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;

    iget-object v2, v2, Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;->note:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 481
    .end local v1           #alert:Landroid/app/AlertDialog;
    :pswitch_1
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mDuplicateAccountName:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 482
    move-object v0, p2

    check-cast v0, Landroid/app/AlertDialog;

    move-object v1, v0

    .line 484
    .restart local v1       #alert:Landroid/app/AlertDialog;
    const v2, 0x7f080185

    invoke-virtual {p0, v2}, Lcom/android/email/activity/setup/AccountSetupBasics;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 473
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 324
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 325
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupBasics;->validateFields()V

    .line 326
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 330
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 331
    const-string v0, "com.android.email.AccountSetupBasics.account"

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 332
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mProvider:Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;

    if-eqz v0, :cond_0

    .line 333
    const-string v0, "com.android.email.AccountSetupBasics.provider"

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mProvider:Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 335
    :cond_0
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 345
    return-void
.end method
