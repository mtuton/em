.class public Lcom/android/email/activity/setup/AccountSetupIncoming;
.super Landroid/app/Activity;
.source "AccountSetupIncoming.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final imapPorts:[I

.field private static final imapSchemes:[Ljava/lang/String;

.field private static final popPorts:[I

.field private static final popSchemes:[Ljava/lang/String;


# instance fields
.field private mAccount:Lcom/android/email/provider/EmailContent$Account;

.field private mAccountPorts:[I

.field private mAccountSchemes:[Ljava/lang/String;

.field private mCacheLoginCredential:Ljava/lang/String;

.field private mDeletePolicyView:Landroid/widget/Spinner;

.field private mDuplicateAccountName:Ljava/lang/String;

.field private mImapPathPrefixView:Landroid/widget/EditText;

.field private mMakeDefault:Z

.field private mNextTwSoftkeyItem:Lcom/android/email/EmailTwSoftkeyItem;

.field private mPasswordView:Landroid/widget/EditText;

.field private mPortView:Landroid/widget/EditText;

.field private mSecurityTypeView:Landroid/widget/Spinner;

.field private mServerView:Landroid/widget/EditText;

.field private mUsernameView:Landroid/widget/EditText;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x5

    .line 55
    new-array v0, v3, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/email/activity/setup/AccountSetupIncoming;->popPorts:[I

    .line 58
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "pop3"

    aput-object v1, v0, v4

    const-string v1, "pop3+ssl+"

    aput-object v1, v0, v5

    const-string v1, "pop3+ssl+trustallcerts"

    aput-object v1, v0, v6

    const-string v1, "pop3+tls+"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "pop3+tls+trustallcerts"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/email/activity/setup/AccountSetupIncoming;->popSchemes:[Ljava/lang/String;

    .line 61
    new-array v0, v3, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/email/activity/setup/AccountSetupIncoming;->imapPorts:[I

    .line 64
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "imap"

    aput-object v1, v0, v4

    const-string v1, "imap+ssl+"

    aput-object v1, v0, v5

    const-string v1, "imap+ssl+trustallcerts"

    aput-object v1, v0, v6

    const-string v1, "imap+tls+"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "imap+tls+trustallcerts"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/email/activity/setup/AccountSetupIncoming;->imapSchemes:[Ljava/lang/String;

    return-void

    .line 55
    :array_0
    .array-data 0x4
        0x6et 0x0t 0x0t 0x0t
        0xe3t 0x3t 0x0t 0x0t
        0xe3t 0x3t 0x0t 0x0t
        0x6et 0x0t 0x0t 0x0t
        0x6et 0x0t 0x0t 0x0t
    .end array-data

    .line 61
    :array_1
    .array-data 0x4
        0x8ft 0x0t 0x0t 0x0t
        0xe1t 0x3t 0x0t 0x0t
        0xe1t 0x3t 0x0t 0x0t
        0x8ft 0x0t 0x0t 0x0t
        0x8ft 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/email/activity/setup/AccountSetupIncoming;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupIncoming;->updatePortFromSecurityType()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/email/activity/setup/AccountSetupIncoming;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupIncoming;->mPortView:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/email/activity/setup/AccountSetupIncoming;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupIncoming;->validateFields()V

    return-void
.end method

.method public static actionEditIncomingSettings(Landroid/app/Activity;Lcom/android/email/provider/EmailContent$Account;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 114
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/email/activity/setup/AccountSetupIncoming;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 115
    const-string v1, "android.intent.action.EDIT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 116
    const-string v1, "account"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 117
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 118
    return-void
.end method

.method public static actionEditIncomingSettings(Landroid/app/Activity;Lcom/android/email/provider/EmailContent$Account;Z)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 123
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/email/activity/setup/AccountSetupIncoming;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 124
    const-string v1, "android.intent.action.EDIT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 125
    const-string v1, "account"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 126
    const-string v1, "accountEditImapPop"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 127
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 128
    return-void
.end method

.method public static actionIncomingSettings(Landroid/app/Activity;Lcom/android/email/provider/EmailContent$Account;ZZ)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 105
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/email/activity/setup/AccountSetupIncoming;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 106
    const-string v1, "account"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 107
    const-string v1, "makeDefault"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 108
    const-string v1, "com.android.email.extra.setwiz_flow"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 109
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 110
    return-void
.end method

.method private getUri()Ljava/net/URI;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;,
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 501
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupIncoming;->mSecurityTypeView:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/email/activity/setup/SpinnerOption;

    iget-object v1, v1, Lcom/android/email/activity/setup/SpinnerOption;->value:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 502
    .local v8, securityType:I
    const/4 v5, 0x0

    .line 503
    .local v5, path:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupIncoming;->mAccountSchemes:[Ljava/lang/String;

    aget-object v1, v1, v8

    const-string v2, "imap"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 504
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupIncoming;->mImapPathPrefixView:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 506
    :cond_0
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupIncoming;->mUsernameView:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    .line 507
    .local v9, userName:Ljava/lang/String;
    iput-object v9, p0, Lcom/android/email/activity/setup/AccountSetupIncoming;->mCacheLoginCredential:Ljava/lang/String;

    .line 508
    new-instance v0, Ljava/net/URI;

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupIncoming;->mAccountSchemes:[Ljava/lang/String;

    aget-object v1, v1, v8

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSetupIncoming;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSetupIncoming;->mServerView:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSetupIncoming;->mPortView:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    move-object v7, v6

    invoke-direct/range {v0 .. v7}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 517
    .local v0, uri:Ljava/net/URI;
    return-object v0
.end method

.method private onNext()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 522
    :try_start_0
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupIncoming;->getUri()Ljava/net/URI;

    move-result-object v1

    .line 523
    .local v1, uri:Ljava/net/URI;
    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSetupIncoming;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    invoke-virtual {v1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, p0, v4}, Lcom/android/email/provider/EmailContent$Account;->setStoreUri(Landroid/content/Context;Ljava/lang/String;)V

    .line 527
    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSetupIncoming;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-wide v3, v3, Lcom/android/email/provider/EmailContent$Account;->mId:J

    invoke-virtual {v1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/email/activity/setup/AccountSetupIncoming;->mCacheLoginCredential:Ljava/lang/String;

    invoke-static {p0, v3, v4, v5, v6}, Lcom/android/email/Utility;->findDuplicateAccount(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/email/activity/setup/AccountSetupIncoming;->mDuplicateAccountName:Ljava/lang/String;

    .line 529
    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSetupIncoming;->mDuplicateAccountName:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 530
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/android/email/activity/setup/AccountSetupIncoming;->showDialog(I)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 547
    :goto_0
    return-void

    .line 533
    .end local v1           #uri:Ljava/net/URI;
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 538
    .local v2, use:Ljava/net/URISyntaxException;
    new-instance v3, Ljava/lang/Error;

    invoke-direct {v3, v2}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 540
    .end local v2           #use:Ljava/net/URISyntaxException;
    :catch_1
    move-exception v3

    move-object v0, v3

    .line 541
    .local v0, ne:Ljava/lang/NullPointerException;
    new-instance v3, Ljava/lang/Error;

    invoke-direct {v3, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 545
    .end local v0           #ne:Ljava/lang/NullPointerException;
    .restart local v1       #uri:Ljava/net/URI;
    :cond_0
    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSetupIncoming;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSetupIncoming;->mDeletePolicyView:Landroid/widget/Spinner;

    invoke-virtual {v3}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/email/activity/setup/SpinnerOption;

    iget-object v3, v3, Lcom/android/email/activity/setup/SpinnerOption;->value:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v4, v3}, Lcom/android/email/provider/EmailContent$Account;->setDeletePolicy(I)V

    .line 546
    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSetupIncoming;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    const/4 v4, 0x0

    invoke-static {p0, v3, v7, v4}, Lcom/android/email/activity/setup/AccountSetupCheckSettings;->actionValidateSettings(Landroid/app/Activity;Lcom/android/email/provider/EmailContent$Account;ZZ)V

    goto :goto_0
.end method

.method private updatePortFromSecurityType()V
    .locals 3

    .prologue
    .line 442
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupIncoming;->mSecurityTypeView:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/email/activity/setup/SpinnerOption;

    iget-object v1, v1, Lcom/android/email/activity/setup/SpinnerOption;->value:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 443
    .local v0, securityType:I
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupIncoming;->mPortView:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupIncoming;->mAccountPorts:[I

    aget v2, v2, v0

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 444
    return-void
.end method

.method private validateFields()V
    .locals 4

    .prologue
    .line 416
    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSetupIncoming;->mUsernameView:Landroid/widget/EditText;

    invoke-static {v3}, Lcom/android/email/Utility;->requiredFieldValid(Landroid/widget/TextView;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSetupIncoming;->mPasswordView:Landroid/widget/EditText;

    invoke-static {v3}, Lcom/android/email/Utility;->requiredFieldValid(Landroid/widget/TextView;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSetupIncoming;->mServerView:Landroid/widget/EditText;

    invoke-static {v3}, Lcom/android/email/Utility;->requiredFieldValid(Landroid/widget/TextView;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSetupIncoming;->mPortView:Landroid/widget/EditText;

    invoke-static {v3}, Lcom/android/email/Utility;->requiredFieldValid(Landroid/widget/TextView;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    move v0, v3

    .line 420
    .local v0, enabled:Z
    :goto_0
    if-eqz v0, :cond_0

    .line 422
    :try_start_0
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupIncoming;->getUri()Ljava/net/URI;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 435
    :cond_0
    :goto_1
    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSetupIncoming;->mNextTwSoftkeyItem:Lcom/android/email/EmailTwSoftkeyItem;

    invoke-virtual {v3, v0}, Lcom/android/email/EmailTwSoftkeyItem;->setEnabled(Z)V

    .line 436
    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSetupIncoming;->mNextTwSoftkeyItem:Lcom/android/email/EmailTwSoftkeyItem;

    invoke-virtual {v3, v0}, Lcom/android/email/EmailTwSoftkeyItem;->setFocusable(Z)V

    .line 439
    return-void

    .line 416
    .end local v0           #enabled:Z
    :cond_1
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    .line 423
    .restart local v0       #enabled:Z
    :catch_0
    move-exception v2

    .line 424
    .local v2, use:Ljava/net/URISyntaxException;
    const/4 v0, 0x0

    .line 428
    goto :goto_1

    .line 426
    .end local v2           #use:Ljava/net/URISyntaxException;
    :catch_1
    move-exception v1

    .line 427
    .local v1, ne:Ljava/lang/NullPointerException;
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 10
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 448
    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    .line 449
    const-string v1, "android.intent.action.EDIT"

    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupIncoming;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 450
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupIncoming;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    invoke-virtual {v1}, Lcom/android/email/provider/EmailContent$Account;->isSaved()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 451
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupIncoming;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupIncoming;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    invoke-virtual {v2}, Lcom/android/email/provider/EmailContent$Account;->toContentValues()Landroid/content/ContentValues;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Lcom/android/email/provider/EmailContent$Account;->update(Landroid/content/Context;Landroid/content/ContentValues;)I

    .line 452
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupIncoming;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-object v1, v1, Lcom/android/email/provider/EmailContent$Account;->mHostAuthRecv:Lcom/android/email/provider/EmailContent$HostAuth;

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupIncoming;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-object v2, v2, Lcom/android/email/provider/EmailContent$Account;->mHostAuthRecv:Lcom/android/email/provider/EmailContent$HostAuth;

    invoke-virtual {v2}, Lcom/android/email/provider/EmailContent$HostAuth;->toContentValues()Landroid/content/ContentValues;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Lcom/android/email/provider/EmailContent$HostAuth;->update(Landroid/content/Context;Landroid/content/ContentValues;)I

    .line 458
    :goto_0
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupIncoming;->finish()V

    .line 492
    :cond_0
    :goto_1
    return-void

    .line 454
    :cond_1
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupIncoming;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    invoke-virtual {v1, p0}, Lcom/android/email/provider/EmailContent$Account;->save(Landroid/content/Context;)Landroid/net/Uri;

    goto :goto_0

    .line 465
    :cond_2
    :try_start_0
    new-instance v9, Ljava/net/URI;

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupIncoming;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    invoke-virtual {v1, p0}, Lcom/android/email/provider/EmailContent$Account;->getSenderUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v9, v1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 466
    .local v9, oldUri:Ljava/net/URI;
    new-instance v0, Ljava/net/URI;

    invoke-virtual {v9}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSetupIncoming;->mUsernameView:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSetupIncoming;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9}, Ljava/net/URI;->getPort()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 475
    .local v0, uri:Ljava/net/URI;
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupIncoming;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    invoke-virtual {v0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Lcom/android/email/provider/EmailContent$Account;->setSenderUri(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 486
    .end local v0           #uri:Ljava/net/URI;
    .end local v9           #oldUri:Ljava/net/URI;
    :goto_2
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupIncoming;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "com.android.email.extra.setwiz_flow"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    .line 487
    .local v8, mSetWizMode:Z
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupIncoming;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-boolean v2, p0, Lcom/android/email/activity/setup/AccountSetupIncoming;->mMakeDefault:Z

    invoke-static {p0, v1, v2, v8}, Lcom/android/email/activity/setup/AccountSetupOutgoing;->actionOutgoingSettings(Landroid/app/Activity;Lcom/android/email/provider/EmailContent$Account;ZZ)V

    .line 489
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupIncoming;->finish()V

    goto :goto_1

    .line 476
    .end local v8           #mSetWizMode:Z
    :catch_0
    move-exception v1

    goto :goto_2
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 550
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 558
    :goto_0
    return-void

    .line 554
    :pswitch_0
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupIncoming;->onNext()V

    goto :goto_0

    .line 550
    :pswitch_data_0
    .packed-switch 0x7f070022
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 21
    .parameter "savedInstanceState"

    .prologue
    .line 133
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 134
    const v17, 0x7f030007

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/AccountSetupIncoming;->setContentView(I)V

    .line 136
    const v17, 0x7f070026

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/AccountSetupIncoming;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/email/activity/setup/AccountSetupIncoming;->mUsernameView:Landroid/widget/EditText;

    .line 137
    const v17, 0x7f07001e

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/AccountSetupIncoming;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/email/activity/setup/AccountSetupIncoming;->mPasswordView:Landroid/widget/EditText;

    .line 138
    const v17, 0x7f07002b

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/AccountSetupIncoming;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 139
    .local v11, serverLabelView:Landroid/widget/TextView;
    const v17, 0x7f070027

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/AccountSetupIncoming;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/email/activity/setup/AccountSetupIncoming;->mServerView:Landroid/widget/EditText;

    .line 140
    const v17, 0x7f07002c

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/AccountSetupIncoming;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/email/activity/setup/AccountSetupIncoming;->mPortView:Landroid/widget/EditText;

    .line 141
    const v17, 0x7f07002d

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/AccountSetupIncoming;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Spinner;

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/email/activity/setup/AccountSetupIncoming;->mSecurityTypeView:Landroid/widget/Spinner;

    .line 142
    const v17, 0x7f07002f

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/AccountSetupIncoming;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Spinner;

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/email/activity/setup/AccountSetupIncoming;->mDeletePolicyView:Landroid/widget/Spinner;

    .line 143
    const v17, 0x7f070031

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/AccountSetupIncoming;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/email/activity/setup/AccountSetupIncoming;->mImapPathPrefixView:Landroid/widget/EditText;

    .line 147
    const v17, 0x7f070022

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/AccountSetupIncoming;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/email/EmailTwSoftkeyItem;

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/email/activity/setup/AccountSetupIncoming;->mNextTwSoftkeyItem:Lcom/android/email/EmailTwSoftkeyItem;

    .line 149
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupIncoming;->mNextTwSoftkeyItem:Lcom/android/email/EmailTwSoftkeyItem;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/email/EmailTwSoftkeyItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 152
    const/16 v17, 0x5

    move/from16 v0, v17

    new-array v0, v0, [Lcom/android/email/activity/setup/SpinnerOption;

    move-object v9, v0

    const/16 v17, 0x0

    new-instance v18, Lcom/android/email/activity/setup/SpinnerOption;

    const/16 v19, 0x0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    const v20, 0x7f0800a5

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/AccountSetupIncoming;->getString(I)Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v18 .. v20}, Lcom/android/email/activity/setup/SpinnerOption;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v18, v9, v17

    const/16 v17, 0x1

    new-instance v18, Lcom/android/email/activity/setup/SpinnerOption;

    const/16 v19, 0x1

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    const v20, 0x7f0800a7

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/AccountSetupIncoming;->getString(I)Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v18 .. v20}, Lcom/android/email/activity/setup/SpinnerOption;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v18, v9, v17

    const/16 v17, 0x2

    new-instance v18, Lcom/android/email/activity/setup/SpinnerOption;

    const/16 v19, 0x2

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    const v20, 0x7f0800a6

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/AccountSetupIncoming;->getString(I)Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v18 .. v20}, Lcom/android/email/activity/setup/SpinnerOption;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v18, v9, v17

    const/16 v17, 0x3

    new-instance v18, Lcom/android/email/activity/setup/SpinnerOption;

    const/16 v19, 0x3

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    const v20, 0x7f0800a9

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/AccountSetupIncoming;->getString(I)Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v18 .. v20}, Lcom/android/email/activity/setup/SpinnerOption;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v18, v9, v17

    const/16 v17, 0x4

    new-instance v18, Lcom/android/email/activity/setup/SpinnerOption;

    const/16 v19, 0x4

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    const v20, 0x7f0800a8

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/AccountSetupIncoming;->getString(I)Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v18 .. v20}, Lcom/android/email/activity/setup/SpinnerOption;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v18, v9, v17

    .line 162
    .local v9, securityTypes:[Lcom/android/email/activity/setup/SpinnerOption;
    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [Lcom/android/email/activity/setup/SpinnerOption;

    move-object v4, v0

    const/16 v17, 0x0

    new-instance v18, Lcom/android/email/activity/setup/SpinnerOption;

    const/16 v19, 0x0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    const v20, 0x7f0800ab

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/AccountSetupIncoming;->getString(I)Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v18 .. v20}, Lcom/android/email/activity/setup/SpinnerOption;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v18, v4, v17

    const/16 v17, 0x1

    new-instance v18, Lcom/android/email/activity/setup/SpinnerOption;

    const/16 v19, 0x2

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    const v20, 0x7f0800ac

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/AccountSetupIncoming;->getString(I)Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v18 .. v20}, Lcom/android/email/activity/setup/SpinnerOption;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v18, v4, v17

    .line 169
    .local v4, deletePolicies:[Lcom/android/email/activity/setup/SpinnerOption;
    new-instance v10, Landroid/widget/ArrayAdapter;

    const v17, 0x1090008

    move-object v0, v10

    move-object/from16 v1, p0

    move/from16 v2, v17

    move-object v3, v9

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 171
    .local v10, securityTypesAdapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Lcom/android/email/activity/setup/SpinnerOption;>;"
    const v17, 0x1090009

    move-object v0, v10

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 172
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupIncoming;->mSecurityTypeView:Landroid/widget/Spinner;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object v1, v10

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 174
    new-instance v5, Landroid/widget/ArrayAdapter;

    const v17, 0x1090008

    move-object v0, v5

    move-object/from16 v1, p0

    move/from16 v2, v17

    move-object v3, v4

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 176
    .local v5, deletePoliciesAdapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Lcom/android/email/activity/setup/SpinnerOption;>;"
    const v17, 0x1090009

    move-object v0, v5

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 178
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupIncoming;->mDeletePolicyView:Landroid/widget/Spinner;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 184
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupIncoming;->mSecurityTypeView:Landroid/widget/Spinner;

    move-object/from16 v17, v0

    new-instance v18, Lcom/android/email/activity/setup/AccountSetupIncoming$1;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/email/activity/setup/AccountSetupIncoming$1;-><init>(Lcom/android/email/activity/setup/AccountSetupIncoming;)V

    invoke-virtual/range {v17 .. v18}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 197
    new-instance v16, Lcom/android/email/activity/setup/AccountSetupIncoming$2;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/email/activity/setup/AccountSetupIncoming$2;-><init>(Lcom/android/email/activity/setup/AccountSetupIncoming;)V

    .line 219
    .local v16, validationTextWatcher:Landroid/text/TextWatcher;
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/setup/AccountSetupIncoming;->getIntent()Landroid/content/Intent;

    move-result-object v17

    const-string v18, "accountEditImapPop"

    const/16 v19, 0x0

    invoke-virtual/range {v17 .. v19}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    .line 220
    .local v6, editing:Z
    if-eqz v6, :cond_6

    .line 221
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupIncoming;->mUsernameView:Landroid/widget/EditText;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 222
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupIncoming;->mUsernameView:Landroid/widget/EditText;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 225
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupIncoming;->mPasswordView:Landroid/widget/EditText;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 226
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupIncoming;->mServerView:Landroid/widget/EditText;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 227
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupIncoming;->mPortView:Landroid/widget/EditText;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 239
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupIncoming;->mPortView:Landroid/widget/EditText;

    move-object/from16 v17, v0

    const-string v18, "0123456789"

    invoke-static/range {v18 .. v18}, Landroid/text/method/DigitsKeyListener;->getInstance(Ljava/lang/String;)Landroid/text/method/DigitsKeyListener;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 241
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/setup/AccountSetupIncoming;->getIntent()Landroid/content/Intent;

    move-result-object v17

    const-string v18, "account"

    invoke-virtual/range {v17 .. v18}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    .end local v4           #deletePolicies:[Lcom/android/email/activity/setup/SpinnerOption;
    check-cast v4, Lcom/android/email/provider/EmailContent$Account;

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/email/activity/setup/AccountSetupIncoming;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    .line 242
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/setup/AccountSetupIncoming;->getIntent()Landroid/content/Intent;

    move-result-object v17

    const-string v18, "makeDefault"

    const/16 v19, 0x0

    invoke-virtual/range {v17 .. v19}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/email/activity/setup/AccountSetupIncoming;->mMakeDefault:Z

    .line 248
    if-eqz p1, :cond_0

    const-string v17, "account"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_0

    .line 249
    const-string v17, "account"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    .end local p1
    check-cast p1, Lcom/android/email/provider/EmailContent$Account;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/email/activity/setup/AccountSetupIncoming;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    .line 254
    :cond_0
    :try_start_0
    new-instance v12, Ljava/net/URI;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupIncoming;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/email/provider/EmailContent$Account;->getStoreUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v17

    move-object v0, v12

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 255
    .local v12, uri:Ljava/net/URI;
    const/4 v15, 0x0

    .line 256
    .local v15, username:Ljava/lang/String;
    const/4 v8, 0x0

    .line 257
    .local v8, password:Ljava/lang/String;
    invoke-virtual {v12}, Ljava/net/URI;->getUserInfo()Ljava/lang/String;

    move-result-object v17

    if-eqz v17, :cond_1

    .line 258
    invoke-virtual {v12}, Ljava/net/URI;->getUserInfo()Ljava/lang/String;

    move-result-object v17

    const-string v18, ":"

    const/16 v19, 0x2

    invoke-virtual/range {v17 .. v19}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v14

    .line 259
    .local v14, userInfoParts:[Ljava/lang/String;
    const/16 v17, 0x0

    aget-object v15, v14, v17

    .line 260
    move-object v0, v14

    array-length v0, v0

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_1

    .line 261
    const/16 v17, 0x1

    aget-object v8, v14, v17

    .line 265
    .end local v14           #userInfoParts:[Ljava/lang/String;
    :cond_1
    if-eqz v15, :cond_2

    .line 266
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupIncoming;->mUsernameView:Landroid/widget/EditText;

    move-object/from16 v17, v0

    const v18, 0x7f08009f

    invoke-virtual/range {v17 .. v18}, Landroid/widget/EditText;->setHint(I)V

    .line 267
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupIncoming;->mUsernameView:Landroid/widget/EditText;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object v1, v15

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 270
    :cond_2
    if-eqz v8, :cond_3

    .line 271
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupIncoming;->mPasswordView:Landroid/widget/EditText;

    move-object/from16 v17, v0

    const v18, 0x7f0800a0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/EditText;->setHint(I)V

    .line 272
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupIncoming;->mPasswordView:Landroid/widget/EditText;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object v1, v8

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 275
    :cond_3
    invoke-virtual {v12}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v17

    const-string v18, "pop3"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_7

    .line 276
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupIncoming;->mPortView:Landroid/widget/EditText;

    move-object/from16 v17, v0

    const v18, 0x7f0800a3

    invoke-virtual/range {v17 .. v18}, Landroid/widget/EditText;->setHint(I)V

    .line 277
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupIncoming;->mServerView:Landroid/widget/EditText;

    move-object/from16 v17, v0

    const v18, 0x7f0800a1

    invoke-virtual/range {v17 .. v18}, Landroid/widget/EditText;->setHint(I)V

    .line 278
    const v17, 0x7f0800a1

    move-object v0, v11

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 279
    sget-object v17, Lcom/android/email/activity/setup/AccountSetupIncoming;->popPorts:[I

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/email/activity/setup/AccountSetupIncoming;->mAccountPorts:[I

    .line 280
    sget-object v17, Lcom/android/email/activity/setup/AccountSetupIncoming;->popSchemes:[Ljava/lang/String;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/email/activity/setup/AccountSetupIncoming;->mAccountSchemes:[Ljava/lang/String;

    .line 282
    const v17, 0x7f070030

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/AccountSetupIncoming;->findViewById(I)Landroid/view/View;

    move-result-object v17

    const/16 v18, 0x8

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->setVisibility(I)V

    .line 303
    :cond_4
    :goto_1
    const/4 v7, 0x0

    .local v7, i:I
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupIncoming;->mAccountSchemes:[Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    move v0, v7

    move/from16 v1, v17

    if-ge v0, v1, :cond_9

    .line 304
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupIncoming;->mAccountSchemes:[Ljava/lang/String;

    move-object/from16 v17, v0

    aget-object v17, v17, v7

    invoke-virtual {v12}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_5

    .line 305
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupIncoming;->mSecurityTypeView:Landroid/widget/Spinner;

    move-object/from16 v17, v0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/android/email/activity/setup/SpinnerOption;->setSpinnerOptionValue(Landroid/widget/Spinner;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 303
    :cond_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 229
    .end local v7           #i:I
    .end local v8           #password:Ljava/lang/String;
    .end local v12           #uri:Ljava/net/URI;
    .end local v15           #username:Ljava/lang/String;
    .restart local v4       #deletePolicies:[Lcom/android/email/activity/setup/SpinnerOption;
    .restart local p1
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupIncoming;->mUsernameView:Landroid/widget/EditText;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 230
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupIncoming;->mPasswordView:Landroid/widget/EditText;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 231
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupIncoming;->mServerView:Landroid/widget/EditText;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 232
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupIncoming;->mPortView:Landroid/widget/EditText;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    goto/16 :goto_0

    .line 283
    .end local v4           #deletePolicies:[Lcom/android/email/activity/setup/SpinnerOption;
    .end local p1
    .restart local v8       #password:Ljava/lang/String;
    .restart local v12       #uri:Ljava/net/URI;
    .restart local v15       #username:Ljava/lang/String;
    :cond_7
    :try_start_1
    invoke-virtual {v12}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v17

    const-string v18, "imap"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_8

    .line 284
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupIncoming;->mPortView:Landroid/widget/EditText;

    move-object/from16 v17, v0

    const v18, 0x7f0800a3

    invoke-virtual/range {v17 .. v18}, Landroid/widget/EditText;->setHint(I)V

    .line 285
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupIncoming;->mServerView:Landroid/widget/EditText;

    move-object/from16 v17, v0

    const v18, 0x7f0800a2

    invoke-virtual/range {v17 .. v18}, Landroid/widget/EditText;->setHint(I)V

    .line 286
    const v17, 0x7f0800a2

    move-object v0, v11

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 287
    sget-object v17, Lcom/android/email/activity/setup/AccountSetupIncoming;->imapPorts:[I

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/email/activity/setup/AccountSetupIncoming;->mAccountPorts:[I

    .line 288
    sget-object v17, Lcom/android/email/activity/setup/AccountSetupIncoming;->imapSchemes:[Ljava/lang/String;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/email/activity/setup/AccountSetupIncoming;->mAccountSchemes:[Ljava/lang/String;

    .line 291
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupIncoming;->mPortView:Landroid/widget/EditText;

    move-object/from16 v17, v0

    const/16 v18, 0x5

    invoke-virtual/range {v17 .. v18}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 294
    const v17, 0x7f07002e

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/AccountSetupIncoming;->findViewById(I)Landroid/view/View;

    move-result-object v17

    const/16 v18, 0x8

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->setVisibility(I)V

    .line 295
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupIncoming;->mDeletePolicyView:Landroid/widget/Spinner;

    move-object/from16 v17, v0

    const/16 v18, 0x8

    invoke-virtual/range {v17 .. v18}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 296
    invoke-virtual {v12}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v17

    if-eqz v17, :cond_4

    invoke-virtual {v12}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v17

    if-lez v17, :cond_4

    .line 297
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupIncoming;->mImapPathPrefixView:Landroid/widget/EditText;

    move-object/from16 v17, v0

    invoke-virtual {v12}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 320
    .end local v8           #password:Ljava/lang/String;
    .end local v12           #uri:Ljava/net/URI;
    .end local v15           #username:Ljava/lang/String;
    :catch_0
    move-exception v17

    move-object/from16 v13, v17

    .line 324
    .local v13, use:Ljava/net/URISyntaxException;
    new-instance v17, Ljava/lang/Error;

    move-object/from16 v0, v17

    move-object v1, v13

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v17

    .line 300
    .end local v13           #use:Ljava/net/URISyntaxException;
    .restart local v8       #password:Ljava/lang/String;
    .restart local v12       #uri:Ljava/net/URI;
    .restart local v15       #username:Ljava/lang/String;
    :cond_8
    :try_start_2
    new-instance v17, Ljava/lang/Error;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Unknown account type: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupIncoming;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/email/provider/EmailContent$Account;->getStoreUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v17

    .line 309
    .restart local v7       #i:I
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupIncoming;->mDeletePolicyView:Landroid/widget/Spinner;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupIncoming;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/email/provider/EmailContent$Account;->getDeletePolicy()I

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/android/email/activity/setup/SpinnerOption;->setSpinnerOptionValue(Landroid/widget/Spinner;Ljava/lang/Object;)V

    .line 311
    invoke-virtual {v12}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v17

    if-eqz v17, :cond_a

    .line 312
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupIncoming;->mServerView:Landroid/widget/EditText;

    move-object/from16 v17, v0

    invoke-virtual {v12}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 315
    :cond_a
    invoke-virtual {v12}, Ljava/net/URI;->getPort()I

    move-result v17

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_b

    .line 316
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupIncoming;->mPortView:Landroid/widget/EditText;

    move-object/from16 v17, v0

    invoke-virtual {v12}, Ljava/net/URI;->getPort()I

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V
    :try_end_2
    .catch Ljava/net/URISyntaxException; {:try_start_2 .. :try_end_2} :catch_0

    .line 327
    :goto_3
    invoke-direct/range {p0 .. p0}, Lcom/android/email/activity/setup/AccountSetupIncoming;->validateFields()V

    .line 329
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupIncoming;->mUsernameView:Landroid/widget/EditText;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupIncoming;->mUsernameView:Landroid/widget/EditText;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Landroid/text/Editable;->length()I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Landroid/widget/EditText;->setSelection(I)V

    .line 330
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupIncoming;->mPasswordView:Landroid/widget/EditText;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupIncoming;->mPasswordView:Landroid/widget/EditText;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Landroid/text/Editable;->length()I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Landroid/widget/EditText;->setSelection(I)V

    .line 331
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupIncoming;->mServerView:Landroid/widget/EditText;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupIncoming;->mServerView:Landroid/widget/EditText;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Landroid/text/Editable;->length()I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Landroid/widget/EditText;->setSelection(I)V

    .line 332
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupIncoming;->mPortView:Landroid/widget/EditText;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupIncoming;->mPortView:Landroid/widget/EditText;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Landroid/text/Editable;->length()I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Landroid/widget/EditText;->setSelection(I)V

    .line 333
    return-void

    .line 318
    :cond_b
    :try_start_3
    invoke-direct/range {p0 .. p0}, Lcom/android/email/activity/setup/AccountSetupIncoming;->updatePortFromSecurityType()V
    :try_end_3
    .catch Ljava/net/URISyntaxException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_3
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 3
    .parameter "id"

    .prologue
    .line 377
    packed-switch p1, :pswitch_data_0

    .line 392
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 379
    :pswitch_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f08008e

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0801a0

    invoke-virtual {p0, v1}, Lcom/android/email/activity/setup/AccountSetupIncoming;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f080011

    new-instance v2, Lcom/android/email/activity/setup/AccountSetupIncoming$3;

    invoke-direct {v2, p0}, Lcom/android/email/activity/setup/AccountSetupIncoming$3;-><init>(Lcom/android/email/activity/setup/AccountSetupIncoming;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 377
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 5
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v4, 0x1

    .line 337
    const/16 v1, 0x13

    if-ne p1, v1, :cond_3

    .line 338
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupIncoming;->mNextTwSoftkeyItem:Lcom/android/email/EmailTwSoftkeyItem;

    invoke-virtual {v1}, Lcom/android/email/EmailTwSoftkeyItem;->isEnabled()Z

    move-result v1

    if-ne v1, v4, :cond_0

    .line 339
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupIncoming;->mNextTwSoftkeyItem:Lcom/android/email/EmailTwSoftkeyItem;

    invoke-virtual {v1}, Lcom/android/email/EmailTwSoftkeyItem;->requestFocus()Z

    :goto_0
    move v1, v4

    .line 363
    :goto_1
    return v1

    .line 341
    :cond_0
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupIncoming;->mDeletePolicyView:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    .line 342
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupIncoming;->mDeletePolicyView:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->requestFocus()Z

    goto :goto_0

    .line 343
    :cond_1
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupIncoming;->mImapPathPrefixView:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getVisibility()I

    move-result v1

    if-nez v1, :cond_2

    .line 344
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupIncoming;->mImapPathPrefixView:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_0

    .line 346
    :cond_2
    new-instance v1, Ljava/lang/Error;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown account type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSetupIncoming;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    invoke-virtual {v3, p0}, Lcom/android/email/provider/EmailContent$Account;->getStoreUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v1

    .line 351
    :cond_3
    const/16 v1, 0x14

    if-ne p1, v1, :cond_5

    .line 353
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupIncoming;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "accountEditImapPop"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 355
    .local v0, editing:Z
    if-eqz v0, :cond_4

    .line 356
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupIncoming;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    :goto_2
    move v1, v4

    .line 360
    goto :goto_1

    .line 358
    :cond_4
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupIncoming;->mUsernameView:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_2

    .line 363
    .end local v0           #editing:Z
    :cond_5
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_1
.end method

.method public onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 3
    .parameter "id"
    .parameter "dialog"

    .prologue
    .line 400
    packed-switch p1, :pswitch_data_0

    .line 409
    :cond_0
    :goto_0
    return-void

    .line 402
    :pswitch_0
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupIncoming;->mDuplicateAccountName:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 403
    move-object v0, p2

    check-cast v0, Landroid/app/AlertDialog;

    move-object v1, v0

    .line 405
    .local v1, alert:Landroid/app/AlertDialog;
    const v2, 0x7f0801a0

    invoke-virtual {p0, v2}, Lcom/android/email/activity/setup/AccountSetupIncoming;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 400
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 368
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 369
    const-string v0, "account"

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupIncoming;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 370
    return-void
.end method
