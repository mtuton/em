.class public Lcom/android/email/activity/setup/AccountSetupBasics;
.super Landroid/app/Activity;
.source "AccountSetupBasics.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/activity/setup/AccountSetupBasics$GetInfoFromWDSTask;,
        Lcom/android/email/activity/setup/AccountSetupBasics$AccountSetupBasicsHandler;
    }
.end annotation


# static fields
.field public static mShowAlertImei:Z


# instance fields
.field private isMopera:Z

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
    .line 123
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/email/activity/setup/AccountSetupBasics;->mShowAlertImei:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 76
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 111
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->isMopera:Z

    .line 124
    new-instance v0, Lcom/android/email/EmailAddressValidator;

    invoke-direct {v0}, Lcom/android/email/EmailAddressValidator;-><init>()V

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mEmailValidator:Lcom/android/email/EmailAddressValidator;

    .line 129
    new-instance v0, Lcom/android/email/activity/setup/AccountSetupBasics$AccountSetupBasicsHandler;

    invoke-direct {v0, p0}, Lcom/android/email/activity/setup/AccountSetupBasics$AccountSetupBasicsHandler;-><init>(Lcom/android/email/activity/setup/AccountSetupBasics;)V

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mHandler:Lcom/android/email/activity/setup/AccountSetupBasics$AccountSetupBasicsHandler;

    .line 1011
    return-void
.end method

.method static synthetic access$000(Lcom/android/email/activity/setup/AccountSetupBasics;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupBasics;->finishAutoSetup()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/email/activity/setup/AccountSetupBasics;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/android/email/activity/setup/AccountSetupBasics;->onManualSetup(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/email/activity/setup/AccountSetupBasics;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/email/activity/setup/AccountSetupBasics;)Lcom/android/email/activity/setup/AccountSetupBasics$AccountSetupBasicsHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mHandler:Lcom/android/email/activity/setup/AccountSetupBasics$AccountSetupBasicsHandler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/email/activity/setup/AccountSetupBasics;Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/android/email/activity/setup/AccountSetupBasics;->onNextManualSetup(Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;)V

    return-void
.end method

.method public static actionAccountCreateFinished(Landroid/app/Activity;J)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 166
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/email/activity/setup/AccountSetupBasics;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 169
    const-string v1, "com.android.email.AccountSetupBasics.messageList"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 170
    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 171
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 172
    return-void
.end method

.method public static actionAccountCreateFinishedEas(Landroid/app/Activity;)V
    .locals 3
    .parameter

    .prologue
    .line 157
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/email/activity/setup/AccountSetupBasics;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 160
    const-string v1, "com.android.email.AccountSetupBasics.return"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 161
    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 162
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 163
    return-void
.end method

.method public static actionNewAccount(Landroid/app/Activity;)V
    .locals 2
    .parameter

    .prologue
    .line 133
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/email/activity/setup/AccountSetupBasics;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 134
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 135
    return-void
.end method

.method public static actionSetupExchangeIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 3
    .parameter

    .prologue
    .line 151
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/email/activity/setup/AccountSetupBasics;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 152
    const-string v1, "com.android.email.extra.eas_flow"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 153
    return-object v0
.end method

.method private findProviderCustomer(Ljava/lang/String;)Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;
    .locals 5
    .parameter "domain"

    .prologue
    .line 950
    invoke-static {}, Lcom/android/email/activity/setup/AccountSetupCustomer;->getInstance()Lcom/android/email/activity/setup/AccountSetupCustomer;

    move-result-object v0

    .line 951
    .local v0, customer:Lcom/android/email/activity/setup/AccountSetupCustomer;
    invoke-virtual {v0, p1}, Lcom/android/email/activity/setup/AccountSetupCustomer;->getProviderCustomer(Ljava/lang/String;)Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;

    move-result-object v1

    .line 952
    .local v1, provider:Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;
    if-nez v1, :cond_0

    .line 953
    invoke-static {p0, p1}, Lcom/android/email/activity/setup/AccountSettingsUtils;->findProviderForDomain(Landroid/content/Context;Ljava/lang/String;)Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;

    move-result-object v1

    .line 956
    :cond_0
    if-nez v1, :cond_1

    .line 957
    new-instance v2, Lcom/android/email/activity/setup/AccountSetupBasics$GetInfoFromWDSTask;

    invoke-direct {v2, p0}, Lcom/android/email/activity/setup/AccountSetupBasics$GetInfoFromWDSTask;-><init>(Lcom/android/email/activity/setup/AccountSetupBasics;)V

    iput-object v2, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mGetInfoFromWDSTask:Lcom/android/email/activity/setup/AccountSetupBasics$GetInfoFromWDSTask;

    .line 958
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mGetInfoFromWDSTask:Lcom/android/email/activity/setup/AccountSetupBasics$GetInfoFromWDSTask;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v2, v3}, Lcom/android/email/activity/setup/AccountSetupBasics$GetInfoFromWDSTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 962
    :cond_1
    return-object v1
.end method

.method private finishAutoSetup()V
    .locals 26

    .prologue
    .line 592
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupBasics;->mEmailView:Landroid/widget/EditText;

    move-object v7, v0

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v15

    .line 593
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

    .line 594
    .local v23, password:Ljava/lang/String;
    const-string v7, "@"

    invoke-virtual {v15, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v16

    .line 595
    .local v16, emailParts:[Ljava/lang/String;
    const/4 v7, 0x0

    aget-object v25, v16, v7

    .line 596
    .local v25, user:Ljava/lang/String;
    const/4 v7, 0x1

    aget-object v14, v16, v7

    .line 597
    .local v14, domain:Ljava/lang/String;
    const/16 v17, 0x0

    .line 598
    .local v17, incomingUri:Ljava/net/URI;
    const/16 v20, 0x0

    .line 600
    .local v20, outgoingUri:Ljava/net/URI;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupBasics;->mProvider:Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;

    move-object v7, v0

    move-object v0, v7

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;->incomingUsernameTemplate:Ljava/lang/String;

    move-object/from16 v19, v0

    .line 601
    .local v19, incomingUsername:Ljava/lang/String;
    const-string v7, "\\$email"

    move-object/from16 v0, v19

    move-object v1, v7

    move-object v2, v15

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 602
    const-string v7, "\\$user"

    move-object/from16 v0, v19

    move-object v1, v7

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 603
    const-string v7, "\\$domain"

    move-object/from16 v0, v19

    move-object v1, v7

    move-object v2, v14

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 605
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupBasics;->mProvider:Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;

    move-object v7, v0

    move-object v0, v7

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;->incomingUriTemplate:Ljava/net/URI;

    move-object/from16 v18, v0

    .line 606
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

    .line 610
    .end local v17           #incomingUri:Ljava/net/URI;
    .local v5, incomingUri:Ljava/net/URI;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupBasics;->mProvider:Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;

    move-object v7, v0

    move-object v0, v7

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;->outgoingUsernameTemplate:Ljava/lang/String;

    move-object/from16 v22, v0

    .line 611
    .local v22, outgoingUsername:Ljava/lang/String;
    const-string v7, "\\$email"

    move-object/from16 v0, v22

    move-object v1, v7

    move-object v2, v15

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 612
    const-string v7, "\\$user"

    move-object/from16 v0, v22

    move-object v1, v7

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 613
    const-string v7, "\\$domain"

    move-object/from16 v0, v22

    move-object v1, v7

    move-object v2, v14

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 615
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupBasics;->mProvider:Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;

    move-object v7, v0

    move-object v0, v7

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;->outgoingUriTemplate:Ljava/net/URI;

    move-object/from16 v21, v0

    .line 616
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

    .line 621
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

    .line 623
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupBasics;->mDuplicateAccountName:Ljava/lang/String;

    move-object v7, v0

    if-eqz v7, :cond_0

    .line 624
    const/4 v7, 0x2

    move-object/from16 v0, p0

    move v1, v7

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/AccountSetupBasics;->showDialog(I)V
    :try_end_2
    .catch Ljava/net/URISyntaxException; {:try_start_2 .. :try_end_2} :catch_2

    .line 657
    .end local v18           #incomingUriTemplate:Ljava/net/URI;
    .end local v19           #incomingUsername:Ljava/lang/String;
    .end local v21           #outgoingUriTemplate:Ljava/net/URI;
    .end local v22           #outgoingUsername:Ljava/lang/String;
    :goto_0
    return-void

    .line 628
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

    .line 635
    .end local v17           #incomingUri:Ljava/net/URI;
    .restart local v5       #incomingUri:Ljava/net/URI;
    .local v24, use:Ljava/net/URISyntaxException;
    :goto_1
    const/4 v7, 0x1

    move-object/from16 v0, p0

    move v1, v7

    invoke-direct {v0, v1}, Lcom/android/email/activity/setup/AccountSetupBasics;->onManualSetup(Z)V

    goto :goto_0

    .line 639
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

    .line 640
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupBasics;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    move-object v7, v0

    move-object v0, v7

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/email/provider/EmailContent$Account;->setSenderName(Ljava/lang/String;)V

    .line 641
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupBasics;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    move-object v7, v0

    invoke-virtual {v7, v15}, Lcom/android/email/provider/EmailContent$Account;->setEmailAddress(Ljava/lang/String;)V

    .line 642
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupBasics;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    move-object v7, v0

    invoke-virtual {v5}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v8

    move-object v0, v7

    move-object/from16 v1, p0

    move-object v2, v8

    invoke-virtual {v0, v1, v2}, Lcom/android/email/provider/EmailContent$Account;->setStoreUri(Landroid/content/Context;Ljava/lang/String;)V

    .line 643
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupBasics;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    move-object v7, v0

    invoke-virtual {v6}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v8

    move-object v0, v7

    move-object/from16 v1, p0

    move-object v2, v8

    invoke-virtual {v0, v1, v2}, Lcom/android/email/provider/EmailContent$Account;->setSenderUri(Landroid/content/Context;Ljava/lang/String;)V

    .line 650
    invoke-virtual {v5}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "imap"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 653
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupBasics;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    move-object v7, v0

    const/4 v8, 0x2

    invoke-virtual {v7, v8}, Lcom/android/email/provider/EmailContent$Account;->setDeletePolicy(I)V

    .line 655
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupBasics;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    move-object v7, v0

    const/4 v8, -0x1

    invoke-virtual {v7, v8}, Lcom/android/email/provider/EmailContent$Account;->setSyncInterval(I)V

    .line 656
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

    .line 628
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

.method private finishAutoSetupForMopera()V
    .locals 27

    .prologue
    .line 535
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupBasics;->mEmailView:Landroid/widget/EditText;

    move-object v7, v0

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v15

    .line 536
    .local v15, email:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupBasics;->mPasswordView:Landroid/widget/EditText;

    move-object v7, v0

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v24

    .line 537
    .local v24, password:Ljava/lang/String;
    const-string v7, "@"

    invoke-virtual {v15, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v16

    .line 538
    .local v16, emailParts:[Ljava/lang/String;
    const/4 v7, 0x0

    aget-object v26, v16, v7

    .line 539
    .local v26, user:Ljava/lang/String;
    const/4 v7, 0x1

    aget-object v14, v16, v7

    .line 540
    .local v14, domain:Ljava/lang/String;
    const/16 v17, 0x0

    .line 541
    .local v17, incomingUri:Ljava/net/URI;
    const/16 v21, 0x0

    .line 543
    .local v21, outgoingUri:Ljava/net/URI;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupBasics;->mProvider:Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;

    move-object v7, v0

    move-object v0, v7

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;->incomingUsernameTemplate:Ljava/lang/String;

    move-object/from16 v19, v0

    .line 544
    .local v19, incomingUsername:Ljava/lang/String;
    const-string v7, "\\$email"

    move-object/from16 v0, v19

    move-object v1, v7

    move-object v2, v15

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 545
    const-string v7, "\\$user"

    move-object/from16 v0, v19

    move-object v1, v7

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 546
    const-string v7, "\\$domain"

    move-object/from16 v0, v19

    move-object v1, v7

    move-object v2, v14

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 548
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupBasics;->mProvider:Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;

    move-object v7, v0

    move-object v0, v7

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;->incomingUriTemplate:Ljava/net/URI;

    move-object/from16 v18, v0

    .line 549
    .local v18, incomingUriTemplate:Ljava/net/URI;
    new-instance v5, Ljava/net/URI;

    invoke-virtual/range {v18 .. v18}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v0, v7

    move-object/from16 v1, v24

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

    .line 553
    .end local v17           #incomingUri:Ljava/net/URI;
    .local v5, incomingUri:Ljava/net/URI;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupBasics;->mProvider:Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;

    move-object v7, v0

    move-object v0, v7

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;->outgoingUsernameTemplate:Ljava/lang/String;

    move-object/from16 v23, v0

    .line 554
    .local v23, outgoingUsername:Ljava/lang/String;
    const-string v7, "\\$email"

    move-object/from16 v0, v23

    move-object v1, v7

    move-object v2, v15

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 555
    const-string v7, "\\$user"

    move-object/from16 v0, v23

    move-object v1, v7

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 556
    const-string v7, "\\$domain"

    move-object/from16 v0, v23

    move-object v1, v7

    move-object v2, v14

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 558
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupBasics;->mProvider:Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;

    move-object v7, v0

    move-object v0, v7

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;->outgoingUriTemplate:Ljava/net/URI;

    move-object/from16 v22, v0

    .line 559
    .local v22, outgoingUriTemplate:Ljava/net/URI;
    new-instance v6, Ljava/net/URI;

    invoke-virtual/range {v22 .. v22}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ":"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v0, v8

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {v22 .. v22}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {v22 .. v22}, Ljava/net/URI;->getPort()I

    move-result v10

    invoke-virtual/range {v22 .. v22}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-direct/range {v6 .. v13}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_1

    .line 564
    .end local v21           #outgoingUri:Ljava/net/URI;
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

    .line 566
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupBasics;->mDuplicateAccountName:Ljava/lang/String;

    move-object v7, v0

    if-eqz v7, :cond_0

    .line 567
    const/4 v7, 0x2

    move-object/from16 v0, p0

    move v1, v7

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/AccountSetupBasics;->showDialog(I)V
    :try_end_2
    .catch Ljava/net/URISyntaxException; {:try_start_2 .. :try_end_2} :catch_2

    .line 587
    .end local v18           #incomingUriTemplate:Ljava/net/URI;
    .end local v19           #incomingUsername:Ljava/lang/String;
    .end local v22           #outgoingUriTemplate:Ljava/net/URI;
    .end local v23           #outgoingUsername:Ljava/lang/String;
    :goto_0
    return-void

    .line 571
    .end local v5           #incomingUri:Ljava/net/URI;
    .end local v6           #outgoingUri:Ljava/net/URI;
    .restart local v17       #incomingUri:Ljava/net/URI;
    .restart local v21       #outgoingUri:Ljava/net/URI;
    :catch_0
    move-exception v7

    move-object/from16 v25, v7

    move-object/from16 v6, v21

    .end local v21           #outgoingUri:Ljava/net/URI;
    .restart local v6       #outgoingUri:Ljava/net/URI;
    move-object/from16 v5, v17

    .line 572
    .end local v17           #incomingUri:Ljava/net/URI;
    .restart local v5       #incomingUri:Ljava/net/URI;
    .local v25, use:Ljava/net/URISyntaxException;
    :goto_1
    const/4 v7, 0x1

    move-object/from16 v0, p0

    move v1, v7

    invoke-direct {v0, v1}, Lcom/android/email/activity/setup/AccountSetupBasics;->onManualSetup(Z)V

    goto :goto_0

    .line 576
    .end local v25           #use:Ljava/net/URISyntaxException;
    .restart local v18       #incomingUriTemplate:Ljava/net/URI;
    .restart local v19       #incomingUsername:Ljava/lang/String;
    .restart local v22       #outgoingUriTemplate:Ljava/net/URI;
    .restart local v23       #outgoingUsername:Ljava/lang/String;
    :cond_0
    new-instance v7, Lcom/android/email/provider/EmailContent$Account;

    invoke-direct {v7}, Lcom/android/email/provider/EmailContent$Account;-><init>()V

    move-object v0, v7

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/email/activity/setup/AccountSetupBasics;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    .line 577
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupBasics;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    move-object v7, v0

    invoke-direct/range {p0 .. p0}, Lcom/android/email/activity/setup/AccountSetupBasics;->getOwnerName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/email/provider/EmailContent$Account;->setSenderName(Ljava/lang/String;)V

    .line 578
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupBasics;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    move-object v7, v0

    invoke-virtual {v7, v15}, Lcom/android/email/provider/EmailContent$Account;->setEmailAddress(Ljava/lang/String;)V

    .line 579
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupBasics;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    move-object v7, v0

    invoke-virtual {v5}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v8

    move-object v0, v7

    move-object/from16 v1, p0

    move-object v2, v8

    invoke-virtual {v0, v1, v2}, Lcom/android/email/provider/EmailContent$Account;->setStoreUri(Landroid/content/Context;Ljava/lang/String;)V

    .line 580
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupBasics;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    move-object v7, v0

    invoke-virtual {v6}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v8

    move-object v0, v7

    move-object/from16 v1, p0

    move-object v2, v8

    invoke-virtual {v0, v1, v2}, Lcom/android/email/provider/EmailContent$Account;->setSenderUri(Landroid/content/Context;Ljava/lang/String;)V

    .line 582
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupBasics;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    move-object v7, v0

    const/4 v8, -0x1

    invoke-virtual {v7, v8}, Lcom/android/email/provider/EmailContent$Account;->setSyncInterval(I)V

    .line 585
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/setup/AccountSetupBasics;->getIntent()Landroid/content/Intent;

    move-result-object v7

    const-string v8, "com.android.email.extra.setwiz_flow"

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v20

    .line 586
    .local v20, mSetWizMode:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupBasics;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    move-object v7, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupBasics;->mDefaultView:Landroid/widget/CheckBox;

    move-object v8, v0

    invoke-virtual {v8}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v8

    move-object/from16 v0, p0

    move-object v1, v7

    move v2, v8

    move/from16 v3, v20

    invoke-static {v0, v1, v2, v3}, Lcom/android/email/activity/setup/AccountSetupIncoming;->actionIncomingSettings(Landroid/app/Activity;Lcom/android/email/provider/EmailContent$Account;ZZ)V

    goto :goto_0

    .line 571
    .end local v6           #outgoingUri:Ljava/net/URI;
    .end local v20           #mSetWizMode:Z
    .end local v22           #outgoingUriTemplate:Ljava/net/URI;
    .end local v23           #outgoingUsername:Ljava/lang/String;
    .restart local v21       #outgoingUri:Ljava/net/URI;
    :catch_1
    move-exception v7

    move-object/from16 v25, v7

    move-object/from16 v6, v21

    .end local v21           #outgoingUri:Ljava/net/URI;
    .restart local v6       #outgoingUri:Ljava/net/URI;
    goto :goto_1

    .restart local v22       #outgoingUriTemplate:Ljava/net/URI;
    .restart local v23       #outgoingUsername:Ljava/lang/String;
    :catch_2
    move-exception v7

    move-object/from16 v25, v7

    goto :goto_1
.end method

.method private getOwnerName()Ljava/lang/String;
    .locals 6

    .prologue
    .line 410
    const/4 v3, 0x0

    .line 426
    .local v3, name:Ljava/lang/String;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_1

    .line 427
    :cond_0
    invoke-static {p0}, Lcom/android/email/provider/EmailContent$Account;->getDefaultAccountId(Landroid/content/Context;)J

    move-result-wide v1

    .line 428
    .local v1, defaultId:J
    const-wide/16 v4, -0x1

    cmp-long v4, v1, v4

    if-eqz v4, :cond_1

    .line 429
    invoke-static {p0, v1, v2}, Lcom/android/email/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Account;

    move-result-object v0

    .line 430
    .local v0, account:Lcom/android/email/provider/EmailContent$Account;
    if-eqz v0, :cond_1

    .line 431
    invoke-virtual {v0}, Lcom/android/email/provider/EmailContent$Account;->getSenderName()Ljava/lang/String;

    move-result-object v3

    .line 435
    .end local v0           #account:Lcom/android/email/provider/EmailContent$Account;
    .end local v1           #defaultId:J
    :cond_1
    return-object v3
.end method

.method private onManualSetup(Z)V
    .locals 13
    .parameter

    .prologue
    const/4 v12, 0x0

    const/4 v11, -0x1

    const v10, 0x7f08008d

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 800
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mEmailView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 801
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 802
    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 805
    sput-boolean v8, Lcom/android/email/activity/setup/AccountSetupBasics;->mShowAlertImei:Z

    .line 808
    const/4 v3, 0x0

    :try_start_0
    aget-object v3, v1, v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 809
    const/4 v3, 0x1

    aget-object v1, v1, v3

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 819
    const-string v1, "e@e.e"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "emails"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 820
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mEmailView:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 821
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mPasswordView:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 822
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/email/activity/Debug;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/android/email/activity/setup/AccountSetupBasics;->startActivity(Landroid/content/Intent;)V

    .line 864
    :goto_0
    return-void

    .line 810
    :catch_0
    move-exception v0

    .line 811
    invoke-static {p0, v10, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 826
    :cond_0
    new-instance v1, Lcom/android/email/provider/EmailContent$Account;

    invoke-direct {v1}, Lcom/android/email/provider/EmailContent$Account;-><init>()V

    iput-object v1, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    .line 827
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    invoke-virtual {v1, v4}, Lcom/android/email/provider/EmailContent$Account;->setSenderName(Ljava/lang/String;)V

    .line 828
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    invoke-virtual {v1, v0}, Lcom/android/email/provider/EmailContent$Account;->setEmailAddress(Ljava/lang/String;)V

    .line 830
    :try_start_1
    new-instance v0, Ljava/net/URI;

    const-string v1, "placeholder"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 831
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    invoke-virtual {v0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Lcom/android/email/provider/EmailContent$Account;->setStoreUri(Landroid/content/Context;Ljava/lang/String;)V

    .line 832
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    invoke-virtual {v0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, p0, v0}, Lcom/android/email/provider/EmailContent$Account;->setSenderUri(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_2

    .line 854
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    invoke-virtual {v0, v11}, Lcom/android/email/provider/EmailContent$Account;->setSyncInterval(I)V

    .line 860
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupBasics;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.android.email.extra.setwiz_flow"

    invoke-virtual {v0, v1, v12}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    .line 861
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mDefaultView:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    iget-boolean v3, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mEasFlowMode:Z

    move-object v0, p0

    move v4, p1

    invoke-static/range {v0 .. v5}, Lcom/android/email/activity/setup/AccountSetupAccountType;->actionSelectAccountType(Landroid/app/Activity;Lcom/android/email/provider/EmailContent$Account;ZZZZ)V

    goto :goto_0

    .line 833
    :catch_1
    move-exception v0

    .line 835
    invoke-static {p0, v10, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 837
    iput-object v9, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    goto :goto_0

    .line 840
    :catch_2
    move-exception v0

    .line 842
    invoke-static {p0, v10, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 844
    iput-object v9, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    goto/16 :goto_0
.end method

.method private onNext()V
    .locals 14

    .prologue
    const/4 v11, 0x0

    const/4 v13, 0x1

    const-string v12, "@"

    .line 661
    iget-boolean v10, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mEasFlowMode:Z

    if-eqz v10, :cond_2

    .line 664
    const-string v10, "input_method"

    invoke-virtual {p0, v10}, Lcom/android/email/activity/setup/AccountSetupBasics;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/inputmethod/InputMethodManager;

    .line 665
    .local v6, im:Landroid/view/inputmethod/InputMethodManager;
    iget-object v9, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mNextTwSoftkeyItem:Lcom/android/email/EmailTwSoftkeyItem;

    .line 666
    .local v9, mView:Landroid/view/View;
    iget-object v10, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mNextTwSoftkeyItem:Lcom/android/email/EmailTwSoftkeyItem;

    invoke-virtual {v10}, Lcom/android/email/EmailTwSoftkeyItem;->getWindowToken()Landroid/os/IBinder;

    move-result-object v10

    invoke-virtual {v6, v10, v11}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 667
    sput-boolean v11, Lcom/android/email/activity/setup/AccountSetupBasics;->mShowAlertImei:Z

    .line 669
    const-string v1, "AndroidMail.Main"

    .line 670
    .local v1, PREFERENCES_FILE:Ljava/lang/String;
    const-string v0, "activationLicense"

    .line 671
    .local v0, ACTIVATION_LICENSE:Ljava/lang/String;
    invoke-virtual {p0, v1, v11}, Lcom/android/email/activity/setup/AccountSetupBasics;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v8

    .line 672
    .local v8, mSharedPreferences:Landroid/content/SharedPreferences;
    const/4 v10, 0x0

    invoke-interface {v8, v0, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 674
    .local v7, license:Ljava/lang/String;
    const-string v10, "isCheckIMEI"

    invoke-interface {v8, v10, v11}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 675
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

    .line 684
    if-eqz v2, :cond_1

    .line 685
    const/4 v10, 0x3

    invoke-virtual {p0, v10}, Lcom/android/email/activity/setup/AccountSetupBasics;->showDialog(I)V

    .line 723
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

    .line 687
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

    .line 693
    .end local v0           #ACTIVATION_LICENSE:Ljava/lang/String;
    .end local v1           #PREFERENCES_FILE:Ljava/lang/String;
    .end local v2           #checkIMEI:Z
    .end local v6           #im:Landroid/view/inputmethod/InputMethodManager;
    .end local v7           #license:Ljava/lang/String;
    .end local v8           #mSharedPreferences:Landroid/content/SharedPreferences;
    .end local v9           #mView:Landroid/view/View;
    :cond_2
    iget-boolean v10, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->isMopera:Z

    if-ne v10, v13, :cond_4

    .line 694
    iget-object v10, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mEmailView:Landroid/widget/EditText;

    invoke-virtual {v10}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 695
    .local v4, email:Ljava/lang/String;
    const-string v10, "@"

    invoke-virtual {v4, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 696
    .local v5, emailParts:[Ljava/lang/String;
    aget-object v10, v5, v13

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 697
    .local v3, domain:Ljava/lang/String;
    invoke-direct {p0, v3}, Lcom/android/email/activity/setup/AccountSetupBasics;->findProviderCustomer(Ljava/lang/String;)Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;

    move-result-object v10

    iput-object v10, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mProvider:Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;

    .line 698
    iget-object v10, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mProvider:Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;

    if-eqz v10, :cond_0

    .line 699
    iget-object v10, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mProvider:Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;

    iget-object v10, v10, Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;->note:Ljava/lang/String;

    if-eqz v10, :cond_3

    .line 700
    invoke-virtual {p0, v13}, Lcom/android/email/activity/setup/AccountSetupBasics;->showDialog(I)V

    goto :goto_0

    .line 702
    :cond_3
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupBasics;->finishAutoSetupForMopera()V

    goto :goto_0

    .line 709
    .end local v3           #domain:Ljava/lang/String;
    .end local v4           #email:Ljava/lang/String;
    .end local v5           #emailParts:[Ljava/lang/String;
    :cond_4
    sput-boolean v13, Lcom/android/email/activity/setup/AccountSetupBasics;->mShowAlertImei:Z

    .line 710
    iget-object v10, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mEmailView:Landroid/widget/EditText;

    invoke-virtual {v10}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 711
    .restart local v4       #email:Ljava/lang/String;
    const-string v10, "@"

    invoke-virtual {v4, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 712
    .restart local v5       #emailParts:[Ljava/lang/String;
    aget-object v10, v5, v13

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 713
    .restart local v3       #domain:Ljava/lang/String;
    invoke-direct {p0, v3}, Lcom/android/email/activity/setup/AccountSetupBasics;->findProviderCustomer(Ljava/lang/String;)Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;

    move-result-object v10

    iput-object v10, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mProvider:Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;

    .line 714
    iget-object v10, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mProvider:Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;

    if-eqz v10, :cond_0

    .line 715
    iget-object v10, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mProvider:Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;

    iget-object v10, v10, Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;->note:Ljava/lang/String;

    if-eqz v10, :cond_5

    .line 716
    invoke-virtual {p0, v13}, Lcom/android/email/activity/setup/AccountSetupBasics;->showDialog(I)V

    goto :goto_0

    .line 718
    :cond_5
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupBasics;->finishAutoSetup()V

    goto :goto_0
.end method

.method private onNextManualSetup(Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;)V
    .locals 3
    .parameter "provider"

    .prologue
    .line 726
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

    .line 727
    if-eqz p1, :cond_0

    .line 728
    iput-object p1, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mProvider:Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;

    .line 729
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupBasics;->finishAutoSetup()V

    .line 735
    :goto_0
    return-void

    .line 734
    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/email/activity/setup/AccountSetupBasics;->onManualSetup(Z)V

    goto :goto_0
.end method

.method private validateFields()V
    .locals 9

    .prologue
    const v8, 0x7f07001c

    const v7, 0x7f07001b

    const/4 v6, 0x1

    const/4 v5, 0x0

    const v4, 0x7f070020

    .line 357
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mEmailView:Landroid/widget/EditText;

    invoke-static {v2}, Lcom/android/email/Utility;->requiredFieldValid(Landroid/widget/TextView;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mPasswordView:Landroid/widget/EditText;

    invoke-static {v2}, Lcom/android/email/Utility;->requiredFieldValid(Landroid/widget/TextView;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mEmailValidator:Lcom/android/email/EmailAddressValidator;

    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mEmailView:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/email/EmailAddressValidator;->isValid(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v1, v6

    .line 371
    .local v1, valid:Z
    :goto_0
    iput-boolean v5, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->isMopera:Z

    .line 372
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mEmailView:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, "mopera.net"

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_0

    .line 374
    iput-boolean v6, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->isMopera:Z

    .line 377
    :cond_0
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupBasics;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 379
    .local v0, resources:Landroid/content/res/Resources;
    if-eqz v1, :cond_3

    .line 380
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mNextTwSoftkeyItem:Lcom/android/email/EmailTwSoftkeyItem;

    const v3, 0x7f020054

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/email/EmailTwSoftkeyItem;->setEmailTwSoftkeyItemImage(Landroid/graphics/drawable/Drawable;)V

    .line 381
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mEmailView:Landroid/widget/EditText;

    invoke-virtual {v2, v8}, Landroid/widget/EditText;->setNextFocusUpId(I)V

    .line 383
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mDefaultView:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->getVisibility()I

    move-result v2

    if-nez v2, :cond_2

    .line 384
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setNextFocusDownId(I)V

    .line 402
    :goto_1
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mNextTwSoftkeyItem:Lcom/android/email/EmailTwSoftkeyItem;

    invoke-virtual {v2, v1}, Lcom/android/email/EmailTwSoftkeyItem;->setEnabled(Z)V

    .line 403
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mNextTwSoftkeyItem:Lcom/android/email/EmailTwSoftkeyItem;

    invoke-virtual {v2, v1}, Lcom/android/email/EmailTwSoftkeyItem;->setFocusable(Z)V

    .line 404
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mManualSetupTwSoftkeyItem:Lcom/android/email/EmailTwSoftkeyItem;

    invoke-virtual {v2, v1}, Lcom/android/email/EmailTwSoftkeyItem;->setEnabled(Z)V

    .line 405
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mManualSetupTwSoftkeyItem:Lcom/android/email/EmailTwSoftkeyItem;

    invoke-virtual {v2, v1}, Lcom/android/email/EmailTwSoftkeyItem;->setFocusable(Z)V

    .line 407
    return-void

    .end local v0           #resources:Landroid/content/res/Resources;
    .end local v1           #valid:Z
    :cond_1
    move v1, v5

    .line 357
    goto :goto_0

    .line 386
    .restart local v0       #resources:Landroid/content/res/Resources;
    .restart local v1       #valid:Z
    :cond_2
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v2, v8}, Landroid/widget/EditText;->setNextFocusDownId(I)V

    goto :goto_1

    .line 389
    :cond_3
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mNextTwSoftkeyItem:Lcom/android/email/EmailTwSoftkeyItem;

    const v3, 0x7f020055

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/email/EmailTwSoftkeyItem;->setEmailTwSoftkeyItemImage(Landroid/graphics/drawable/Drawable;)V

    .line 390
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v2, v7}, Landroid/widget/EditText;->setNextFocusDownId(I)V

    .line 392
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mDefaultView:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->getVisibility()I

    move-result v2

    if-nez v2, :cond_4

    .line 393
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mEmailView:Landroid/widget/EditText;

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setNextFocusUpId(I)V

    .line 394
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setNextFocusDownId(I)V

    goto :goto_1

    .line 397
    :cond_4
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mEmailView:Landroid/widget/EditText;

    const v3, 0x7f07001e

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setNextFocusUpId(I)V

    .line 398
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v2, v7}, Landroid/widget/EditText;->setNextFocusDownId(I)V

    goto :goto_1
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .parameter "s"

    .prologue
    .line 347
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupBasics;->validateFields()V

    .line 348
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 351
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 12
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 746
    const/4 v9, -0x1

    if-ne p2, v9, :cond_0

    .line 747
    iget-object v9, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mDefaultView:Landroid/widget/CheckBox;

    invoke-virtual {v9}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v5

    .line 749
    .local v5, isDefault:Z
    iget-object v9, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    invoke-virtual {v9}, Lcom/android/email/provider/EmailContent$Account;->getEmailAddress()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 750
    .local v3, email:Ljava/lang/String;
    const-string v9, "@"

    invoke-virtual {v3, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 751
    .local v4, emailParts:[Ljava/lang/String;
    const/4 v9, 0x1

    aget-object v9, v4, v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 752
    .local v0, domain:Ljava/lang/String;
    const-string v9, "[.]"

    invoke-virtual {v0, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 753
    .local v1, domainWithoutDot:[Ljava/lang/String;
    const/4 v9, 0x0

    aget-object v9, v1, v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    .line 755
    .local v8, withOutDotDomain:Ljava/lang/String;
    iget-object v9, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    invoke-virtual {v9, v8}, Lcom/android/email/provider/EmailContent$Account;->setDisplayName(Ljava/lang/String;)V

    .line 756
    iget-object v9, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    invoke-virtual {v9, v5}, Lcom/android/email/provider/EmailContent$Account;->setDefaultAccount(Z)V

    .line 760
    :try_start_0
    iget-object v9, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    invoke-virtual {v9, p0}, Lcom/android/email/provider/EmailContent$Account;->save(Landroid/content/Context;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 784
    .end local p1
    :goto_0
    invoke-static {p0}, Lcom/android/email/Email;->setServicesEnabled(Landroid/content/Context;)Z

    .line 788
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupBasics;->getIntent()Landroid/content/Intent;

    move-result-object v9

    const-string v10, "com.android.email.extra.setwiz_flow"

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    .line 789
    .local v6, mSetWizMode:Z
    iget-object v9, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-wide v9, v9, Lcom/android/email/provider/EmailContent$Account;->mId:J

    const/4 v11, 0x0

    invoke-static {p0, v9, v10, v11, v6}, Lcom/android/email/activity/setup/AccountSetupNames;->actionSetNames(Landroid/app/Activity;JZZ)V

    .line 790
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupBasics;->finish()V

    .line 792
    .end local v0           #domain:Ljava/lang/String;
    .end local v1           #domainWithoutDot:[Ljava/lang/String;
    .end local v3           #email:Ljava/lang/String;
    .end local v4           #emailParts:[Ljava/lang/String;
    .end local v5           #isDefault:Z
    .end local v6           #mSetWizMode:Z
    .end local v8           #withOutDotDomain:Ljava/lang/String;
    :cond_0
    :goto_1
    return-void

    .line 762
    .restart local v0       #domain:Ljava/lang/String;
    .restart local v1       #domainWithoutDot:[Ljava/lang/String;
    .restart local v3       #email:Ljava/lang/String;
    .restart local v4       #emailParts:[Ljava/lang/String;
    .restart local v5       #isDefault:Z
    .restart local v8       #withOutDotDomain:Ljava/lang/String;
    .restart local p1
    :catch_0
    move-exception v9

    move-object v2, v9

    .line 763
    .local v2, e:Ljava/lang/UnsupportedOperationException;
    const-string v9, "com.android.email.AccountSetupBasics.account"

    invoke-virtual {p3, v9}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    .end local p1
    check-cast p1, Lcom/android/email/provider/EmailContent$Account;

    iput-object p1, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    .line 764
    iget-object v9, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    if-nez v9, :cond_1

    .line 766
    const-string v9, "SetBasics"

    const-string v10, "onActivityResult: mAccountId is not valid."

    invoke-static {v9, v10}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 769
    :cond_1
    iget-object v9, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    invoke-virtual {v9}, Lcom/android/email/provider/EmailContent$Account;->getEmailAddress()Ljava/lang/String;

    move-result-object v3

    .line 770
    iget-object v9, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mDefaultView:Landroid/widget/CheckBox;

    invoke-virtual {v9}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v5

    .line 771
    iget-object v9, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    invoke-virtual {v9, v8}, Lcom/android/email/provider/EmailContent$Account;->setDisplayName(Ljava/lang/String;)V

    .line 772
    iget-object v9, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    invoke-virtual {v9, v5}, Lcom/android/email/provider/EmailContent$Account;->setDefaultAccount(Z)V

    .line 774
    :try_start_1
    iget-object v9, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    invoke-virtual {v9, p0}, Lcom/android/email/provider/EmailContent$Account;->save(Landroid/content/Context;)Landroid/net/Uri;
    :try_end_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 776
    :catch_1
    move-exception v9

    move-object v7, v9

    .line 777
    .local v7, uoe:Ljava/lang/UnsupportedOperationException;
    const-string v9, "SetBasics"

    const-string v10, "onActivityResult: mAccountId is not valid."

    invoke-static {v9, v10}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 778
    invoke-virtual {v7}, Ljava/lang/UnsupportedOperationException;->printStackTrace()V

    goto :goto_1
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 1075
    const/16 v0, 0x9

    invoke-virtual {p1, v0}, Landroid/widget/CompoundButton;->playSoundEffect(I)V

    .line 1076
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 867
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 880
    :goto_0
    return-void

    .line 871
    :sswitch_0
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupBasics;->onNext()V

    goto :goto_0

    .line 876
    :sswitch_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/email/activity/setup/AccountSetupBasics;->onManualSetup(Z)V

    goto :goto_0

    .line 867
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f07001c -> :sswitch_1
        0x7f070022 -> :sswitch_0
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 22
    .parameter "savedInstanceState"

    .prologue
    .line 186
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 187
    const/4 v12, 0x0

    .line 189
    .local v12, ac_count:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/setup/AccountSetupBasics;->getIntent()Landroid/content/Intent;

    move-result-object v19

    .line 190
    .local v19, intent:Landroid/content/Intent;
    const-string v4, "com.android.email.AccountSetupBasics.return"

    const/4 v5, 0x0

    move-object/from16 v0, v19

    move-object v1, v4

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 192
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/setup/AccountSetupBasics;->finish()V

    .line 329
    .end local p1
    :cond_0
    :goto_0
    return-void

    .line 195
    .restart local p1
    :cond_1
    const-string v4, "com.android.email.AccountSetupBasics.messageList"

    const-wide/16 v5, -0x1

    move-object/from16 v0, v19

    move-object v1, v4

    move-wide v2, v5

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v13

    .line 198
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

    .line 201
    .local v16, c:Landroid/database/Cursor;
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->getCount()I

    move-result v12

    .line 202
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 207
    .end local v16           #c:Landroid/database/Cursor;
    :goto_1
    const-wide/16 v4, 0x0

    cmp-long v4, v13, v4

    if-lez v4, :cond_2

    .line 217
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-wide v1, v13

    move v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/android/email/activity/MessageList;->actionHandleAccount(Landroid/content/Context;JI)V

    .line 218
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/setup/AccountSetupBasics;->finish()V

    goto :goto_0

    .line 204
    :catch_0
    move-exception v4

    move-object/from16 v17, v4

    .line 205
    .local v17, e:Ljava/lang/Exception;
    const-string v4, "SetBasics"

    const-string v5, "MessageList---- onCreate -"

    invoke-static {v4, v5}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 224
    .end local v17           #e:Ljava/lang/Exception;
    :cond_2
    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/email/activity/setup/AccountSetupBasics;->isMopera:Z

    .line 227
    const v4, 0x7f030004

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/AccountSetupBasics;->setContentView(I)V

    .line 229
    const v4, 0x7f07001b

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/AccountSetupBasics;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/email/activity/setup/AccountSetupBasics;->mEmailView:Landroid/widget/EditText;

    .line 230
    const v4, 0x7f07001e

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/AccountSetupBasics;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/email/activity/setup/AccountSetupBasics;->mPasswordView:Landroid/widget/EditText;

    .line 231
    const v4, 0x7f070020

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/AccountSetupBasics;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/email/activity/setup/AccountSetupBasics;->mDefaultView:Landroid/widget/CheckBox;

    .line 233
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupBasics;->mDefaultView:Landroid/widget/CheckBox;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 238
    const v4, 0x7f07001c

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/AccountSetupBasics;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/email/EmailTwSoftkeyItem;

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/email/activity/setup/AccountSetupBasics;->mManualSetupTwSoftkeyItem:Lcom/android/email/EmailTwSoftkeyItem;

    .line 239
    const v4, 0x7f070022

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/AccountSetupBasics;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/email/EmailTwSoftkeyItem;

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/email/activity/setup/AccountSetupBasics;->mNextTwSoftkeyItem:Lcom/android/email/EmailTwSoftkeyItem;

    .line 240
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupBasics;->mNextTwSoftkeyItem:Lcom/android/email/EmailTwSoftkeyItem;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/email/EmailTwSoftkeyItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 241
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupBasics;->mManualSetupTwSoftkeyItem:Lcom/android/email/EmailTwSoftkeyItem;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/email/EmailTwSoftkeyItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 244
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupBasics;->mEmailView:Landroid/widget/EditText;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 245
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupBasics;->mPasswordView:Landroid/widget/EditText;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 248
    new-instance v4, Lcom/android/email/activity/setup/AccountSetupBasics$1;

    move-object v0, v4

    move-object/from16 v1, p0

    move-object/from16 v2, p0

    invoke-direct {v0, v1, v2}, Lcom/android/email/activity/setup/AccountSetupBasics$1;-><init>(Lcom/android/email/activity/setup/AccountSetupBasics;Landroid/content/Context;)V

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/email/activity/setup/AccountSetupBasics;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 253
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupBasics;->mProgressDialog:Landroid/app/ProgressDialog;

    move-object v4, v0

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 254
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupBasics;->mProgressDialog:Landroid/app/ProgressDialog;

    move-object v4, v0

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 255
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupBasics;->mProgressDialog:Landroid/app/ProgressDialog;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 260
    const/16 v16, 0x0

    .line 262
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

    .line 266
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-lez v4, :cond_3

    .line 267
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupBasics;->mDefaultView:Landroid/widget/CheckBox;

    move-object v4, v0

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/CheckBox;->setVisibility(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 270
    :cond_3
    if-eqz v16, :cond_4

    .line 271
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 275
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

    .line 276
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/email/activity/setup/AccountSetupBasics;->mEasFlowMode:Z

    move v4, v0

    if-eqz v4, :cond_5

    .line 280
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupBasics;->mManualSetupTwSoftkeyItem:Lcom/android/email/EmailTwSoftkeyItem;

    move-object v4, v0

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Lcom/android/email/EmailTwSoftkeyItem;->setVisibility(I)V

    .line 284
    const v4, 0x7f07001a

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/AccountSetupBasics;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/TextView;

    .line 285
    .local v21, welcomeView:Landroid/widget/TextView;
    invoke-static/range {p0 .. p0}, Lcom/android/email/VendorPolicyLoader;->getInstance(Landroid/content/Context;)Lcom/android/email/VendorPolicyLoader;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/email/VendorPolicyLoader;->useAlternateExchangeStrings()Z

    move-result v15

    .line 287
    .local v15, alternateStrings:Z
    if-eqz v15, :cond_b

    const v4, 0x7f08019a

    :goto_2
    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/AccountSetupBasics;->setTitle(I)V

    .line 298
    .end local v15           #alternateStrings:Z
    .end local v21           #welcomeView:Landroid/widget/TextView;
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupBasics;->mEmailView:Landroid/widget/EditText;

    move-object v4, v0

    const-string v5, "account@example.com"

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 300
    const-string v4, "com.android.email.AccountSetupBasics.username"

    move-object/from16 v0, v19

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 301
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupBasics;->mEmailView:Landroid/widget/EditText;

    move-object v4, v0

    const-string v5, "com.android.email.AccountSetupBasics.username"

    move-object/from16 v0, v19

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 303
    :cond_6
    const-string v4, "com.android.email.AccountSetupBasics.password"

    move-object/from16 v0, v19

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 304
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupBasics;->mPasswordView:Landroid/widget/EditText;

    move-object v4, v0

    const-string v5, "com.android.email.AccountSetupBasics.password"

    move-object/from16 v0, v19

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 307
    :cond_7
    if-eqz p1, :cond_8

    const-string v4, "com.android.email.AccountSetupBasics.account"

    move-object/from16 v0, p1

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 308
    const-string v4, "com.android.email.AccountSetupBasics.account"

    move-object/from16 v0, p1

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Lcom/android/email/provider/EmailContent$Account;

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/email/activity/setup/AccountSetupBasics;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    .line 311
    :cond_8
    if-eqz p1, :cond_9

    const-string v4, "com.android.email.AccountSetupBasics.provider"

    move-object/from16 v0, p1

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 312
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

    .line 315
    :cond_9
    const-string v11, "AndroidMail.Main"

    .line 316
    .local v11, PREFERENCES_FILE:Ljava/lang/String;
    const-string v10, "activationLicense"

    .line 317
    .local v10, ACTIVATION_LICENSE:Ljava/lang/String;
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object v1, v11

    move v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/android/email/activity/setup/AccountSetupBasics;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v20

    .line 318
    .local v20, mSharedPreferences:Landroid/content/SharedPreferences;
    const-string v4, "VINS"

    const-string v5, "AccountSetupBasic1"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    const-string v4, "isSet"

    const/4 v5, 0x0

    move-object/from16 v0, v20

    move-object v1, v4

    move v2, v5

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_0

    .line 321
    invoke-interface/range {v20 .. v20}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v18

    .line 322
    .local v18, editPref:Landroid/content/SharedPreferences$Editor;
    const-string v4, "isSet"

    const/4 v5, 0x1

    move-object/from16 v0, v18

    move-object v1, v4

    move v2, v5

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 323
    const-string v4, "isCheckIMEI"

    const/4 v5, 0x1

    move-object/from16 v0, v18

    move-object v1, v4

    move v2, v5

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 324
    invoke-interface/range {v18 .. v18}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 325
    const-string v4, "VINS"

    const-string v5, "AccountSetupBasic2"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 270
    .end local v10           #ACTIVATION_LICENSE:Ljava/lang/String;
    .end local v11           #PREFERENCES_FILE:Ljava/lang/String;
    .end local v18           #editPref:Landroid/content/SharedPreferences$Editor;
    .end local v20           #mSharedPreferences:Landroid/content/SharedPreferences;
    .restart local p1
    :catchall_0
    move-exception v4

    if-eqz v16, :cond_a

    .line 271
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 270
    :cond_a
    throw v4

    .line 287
    .restart local v15       #alternateStrings:Z
    .restart local v21       #welcomeView:Landroid/widget/TextView;
    :cond_b
    const v4, 0x7f08019b

    goto/16 :goto_2
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 10
    .parameter "id"

    .prologue
    const v8, 0x7f080011

    const v7, 0x1080027

    const/4 v9, 0x0

    .line 440
    const/4 v6, 0x1

    if-ne p1, v6, :cond_0

    .line 441
    iget-object v6, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mProvider:Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mProvider:Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;

    iget-object v6, v6, Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;->note:Ljava/lang/String;

    if-eqz v6, :cond_2

    .line 442
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

    const v7, 0x7f080012

    invoke-virtual {p0, v7}, Lcom/android/email/activity/setup/AccountSetupBasics;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, v9}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    .line 509
    :goto_0
    return-object v6

    .line 458
    :cond_0
    const/4 v6, 0x2

    if-ne p1, v6, :cond_1

    .line 459
    new-instance v6, Landroid/app/AlertDialog$Builder;

    invoke-direct {v6, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const v7, 0x7f08008e

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const v7, 0x7f0801a0

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

    .line 471
    :cond_1
    const/4 v6, 0x3

    if-ne p1, v6, :cond_2

    .line 473
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 474
    .local v3, factory:Landroid/view/LayoutInflater;
    const v6, 0x7f03001a

    invoke-virtual {v3, v6, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 476
    .local v5, textEntryView:Landroid/view/View;
    const v6, 0x7f070096

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    .line 477
    .local v2, checkboxImei:Landroid/widget/CheckBox;
    invoke-virtual {v2, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 478
    const-string v1, "AndroidMail.Main"

    .line 479
    .local v1, PREFERENCES_FILE:Ljava/lang/String;
    const-string v0, "activationLicense"

    .line 480
    .local v0, ACTIVATION_LICENSE:Ljava/lang/String;
    const/4 v6, 0x0

    invoke-virtual {p0, v1, v6}, Lcom/android/email/activity/setup/AccountSetupBasics;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 484
    .local v4, mSharedPreferences:Landroid/content/SharedPreferences;
    new-instance v6, Landroid/app/AlertDialog$Builder;

    invoke-direct {v6, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6, v5}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const v7, 0x7f0801a1

    invoke-virtual {p0, v7}, Lcom/android/email/activity/setup/AccountSetupBasics;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const v7, 0x7f080113

    new-instance v8, Lcom/android/email/activity/setup/AccountSetupBasics$6;

    invoke-direct {v8, p0, v4, v2}, Lcom/android/email/activity/setup/AccountSetupBasics$6;-><init>(Lcom/android/email/activity/setup/AccountSetupBasics;Landroid/content/SharedPreferences;Landroid/widget/CheckBox;)V

    invoke-virtual {v6, v7, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const v7, 0x7f080114

    new-instance v8, Lcom/android/email/activity/setup/AccountSetupBasics$5;

    invoke-direct {v8, p0}, Lcom/android/email/activity/setup/AccountSetupBasics$5;-><init>(Lcom/android/email/activity/setup/AccountSetupBasics;)V

    invoke-virtual {v6, v7, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    new-instance v7, Lcom/android/email/activity/setup/AccountSetupBasics$4;

    invoke-direct {v7, p0}, Lcom/android/email/activity/setup/AccountSetupBasics$4;-><init>(Lcom/android/email/activity/setup/AccountSetupBasics;)V

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    goto/16 :goto_0

    .end local v0           #ACTIVATION_LICENSE:Ljava/lang/String;
    .end local v1           #PREFERENCES_FILE:Ljava/lang/String;
    .end local v2           #checkboxImei:Landroid/widget/CheckBox;
    .end local v3           #factory:Landroid/view/LayoutInflater;
    .end local v4           #mSharedPreferences:Landroid/content/SharedPreferences;
    .end local v5           #textEntryView:Landroid/view/View;
    :cond_2
    move-object v6, v9

    .line 509
    goto/16 :goto_0
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 967
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 968
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 970
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 972
    :cond_0
    iput-object v2, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 974
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mGetInfoFromWDSTask:Lcom/android/email/activity/setup/AccountSetupBasics$GetInfoFromWDSTask;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mGetInfoFromWDSTask:Lcom/android/email/activity/setup/AccountSetupBasics$GetInfoFromWDSTask;

    invoke-virtual {v0}, Lcom/android/email/activity/setup/AccountSetupBasics$GetInfoFromWDSTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v0, v1, :cond_1

    .line 976
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mGetInfoFromWDSTask:Lcom/android/email/activity/setup/AccountSetupBasics$GetInfoFromWDSTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/AccountSetupBasics$GetInfoFromWDSTask;->cancel(Z)Z

    .line 977
    iput-object v2, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mGetInfoFromWDSTask:Lcom/android/email/activity/setup/AccountSetupBasics$GetInfoFromWDSTask;

    .line 979
    :cond_1
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 1063
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mGetInfoFromWDSTask:Lcom/android/email/activity/setup/AccountSetupBasics$GetInfoFromWDSTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mGetInfoFromWDSTask:Lcom/android/email/activity/setup/AccountSetupBasics$GetInfoFromWDSTask;

    invoke-virtual {v0}, Lcom/android/email/activity/setup/AccountSetupBasics$GetInfoFromWDSTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v0, v1, :cond_0

    .line 1065
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mGetInfoFromWDSTask:Lcom/android/email/activity/setup/AccountSetupBasics$GetInfoFromWDSTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/AccountSetupBasics$GetInfoFromWDSTask;->cancel(Z)Z

    .line 1066
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mGetInfoFromWDSTask:Lcom/android/email/activity/setup/AccountSetupBasics$GetInfoFromWDSTask;

    .line 1068
    :cond_0
    return-void
.end method

.method public onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 3
    .parameter "id"
    .parameter "dialog"

    .prologue
    .line 517
    packed-switch p1, :pswitch_data_0

    .line 532
    :cond_0
    :goto_0
    return-void

    .line 519
    :pswitch_0
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mProvider:Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mProvider:Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;

    iget-object v2, v2, Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;->note:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 520
    move-object v0, p2

    check-cast v0, Landroid/app/AlertDialog;

    move-object v1, v0

    .line 521
    .local v1, alert:Landroid/app/AlertDialog;
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mProvider:Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;

    iget-object v2, v2, Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;->note:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 525
    .end local v1           #alert:Landroid/app/AlertDialog;
    :pswitch_1
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mDuplicateAccountName:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 526
    move-object v0, p2

    check-cast v0, Landroid/app/AlertDialog;

    move-object v1, v0

    .line 528
    .restart local v1       #alert:Landroid/app/AlertDialog;
    const v2, 0x7f0801a0

    invoke-virtual {p0, v2}, Lcom/android/email/activity/setup/AccountSetupBasics;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 517
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
    .line 333
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 334
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupBasics;->validateFields()V

    .line 335
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 339
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 340
    const-string v0, "com.android.email.AccountSetupBasics.account"

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 341
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mProvider:Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;

    if-eqz v0, :cond_0

    .line 342
    const-string v0, "com.android.email.AccountSetupBasics.provider"

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mProvider:Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 344
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
    .line 354
    return-void
.end method
