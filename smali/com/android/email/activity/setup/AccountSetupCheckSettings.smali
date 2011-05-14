.class public Lcom/android/email/activity/setup/AccountSetupCheckSettings;
.super Landroid/app/Activity;
.source "AccountSetupCheckSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/activity/setup/AccountSetupCheckSettings$AutoDiscoverAuthenticationException;
    }
.end annotation


# static fields
.field private static final DBG_FORCE_RESULT_OK:Z = false

.field private static final DBG_SKIP_CHECK_ERR:Z = false

.field private static final DBG_SKIP_CHECK_OK:Z = false

.field private static final EXTRA_ACCOUNT:Ljava/lang/String; = "account"

.field private static final EXTRA_AUTO_DISCOVER:Ljava/lang/String; = "autoDiscover"

.field private static final EXTRA_AUTO_DISCOVER_DOMAIN:Ljava/lang/String; = "domain"

.field private static final EXTRA_AUTO_DISCOVER_PASSWORD:Ljava/lang/String; = "password"

.field private static final EXTRA_AUTO_DISCOVER_TRUSTCERT:Ljava/lang/String; = "trustCert"

.field private static final EXTRA_AUTO_DISCOVER_USERNAME:Ljava/lang/String; = "userName"

.field private static final EXTRA_CHECK_INCOMING:Ljava/lang/String; = "checkIncoming"

.field private static final EXTRA_CHECK_OUTGOING:Ljava/lang/String; = "checkOutgoing"

.field public static final REQUEST_CODE_AUTO_DISCOVER:I = 0x2

.field public static final REQUEST_CODE_AUTO_DISCOVER_USER_INPUT_SCREEN:I = 0x3

.field public static final REQUEST_CODE_VALIDATE:I = 0x1

.field public static final RESULT_AUTO_DISCOVER_AUTH_FAILED:I = 0x1

.field public static final RESULT_AUTO_DISCOVER_AUTH_FAILED_FIRST_TIME:I = 0x2

.field public static final RESULT_AUTO_DISCOVER_SERVER_CONNECTION_FAILED:I = 0x3

.field public static final RESULT_AUTO_DISCOVER_USER_CANCEL:I = 0x5

.field public static final RESULT_SECURITY_REQUIRED_USER_CANCEL:I = 0x4

.field public static mAutoDiscoverRetryCount:I


# instance fields
.field private mAccount:Lcom/android/email/provider/EmailContent$Account;

.field private mAutoDiscover:Z

.field private mCanceled:Z

.field private mCheckIncoming:Z

.field private mCheckOutgoing:Z

.field private mDestroyed:Z

.field private mHandler:Landroid/os/Handler;

.field private mMessageView:Landroid/widget/TextView;

.field private mProgressBar:Landroid/widget/ProgressBar;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 89
    const/4 v0, 0x0

    sput v0, Lcom/android/email/activity/setup/AccountSetupCheckSettings;->mAutoDiscoverRetryCount:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 61
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 102
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSetupCheckSettings;->mHandler:Landroid/os/Handler;

    .line 146
    return-void
.end method

.method static synthetic access$000(Lcom/android/email/activity/setup/AccountSetupCheckSettings;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/android/email/activity/setup/AccountSetupCheckSettings;->mDestroyed:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/email/activity/setup/AccountSetupCheckSettings;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/android/email/activity/setup/AccountSetupCheckSettings;->mCanceled:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/android/email/activity/setup/AccountSetupCheckSettings;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupCheckSettings;->mMessageView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/email/activity/setup/AccountSetupCheckSettings;)Landroid/widget/ProgressBar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupCheckSettings;->mProgressBar:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/email/activity/setup/AccountSetupCheckSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupCheckSettings;->onCloseActivity()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/email/activity/setup/AccountSetupCheckSettings;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/android/email/activity/setup/AccountSetupCheckSettings;->mAutoDiscover:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/email/activity/setup/AccountSetupCheckSettings;)Lcom/android/email/provider/EmailContent$Account;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupCheckSettings;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/email/activity/setup/AccountSetupCheckSettings;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/android/email/activity/setup/AccountSetupCheckSettings;->mCheckIncoming:Z

    return v0
.end method

.method static synthetic access$500(Lcom/android/email/activity/setup/AccountSetupCheckSettings;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/android/email/activity/setup/AccountSetupCheckSettings;->setMessage(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/email/activity/setup/AccountSetupCheckSettings;Landroid/content/Context;Lcom/android/email/provider/EmailContent$Account;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/email/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 61
    invoke-direct {p0, p1, p2}, Lcom/android/email/activity/setup/AccountSetupCheckSettings;->checkITPolicy(Landroid/content/Context;Lcom/android/email/provider/EmailContent$Account;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/email/activity/setup/AccountSetupCheckSettings;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/android/email/activity/setup/AccountSetupCheckSettings;->mCheckOutgoing:Z

    return v0
.end method

.method static synthetic access$800(Lcom/android/email/activity/setup/AccountSetupCheckSettings;ZI[Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 61
    invoke-direct {p0, p1, p2, p3}, Lcom/android/email/activity/setup/AccountSetupCheckSettings;->showErrorDialog(ZI[Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/email/activity/setup/AccountSetupCheckSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupCheckSettings;->showSecurityRequiredDialog()V

    return-void
.end method

.method public static actionAutoDiscover(Landroid/app/Activity;Lcom/android/email/provider/EmailContent$Account;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 4
    .parameter "fromActivity"
    .parameter "account"
    .parameter "userName"
    .parameter "password"
    .parameter "domain"
    .parameter "trustCert"
    .parameter "bIsRetry"

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 126
    if-eqz p6, :cond_1

    move v1, v3

    :goto_0
    sput v1, Lcom/android/email/activity/setup/AccountSetupCheckSettings;->mAutoDiscoverRetryCount:I

    .line 129
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/email/activity/setup/AccountSetupCheckSettings;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 130
    .local v0, i:Landroid/content/Intent;
    const-string v1, "account"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 131
    const-string v1, "autoDiscover"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 132
    const-string v1, "userName"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 133
    const-string v1, "password"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 134
    if-eqz p4, :cond_0

    .line 135
    const-string v1, "domain"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 137
    :cond_0
    const-string v1, "trustCert"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 138
    invoke-virtual {p0, v0, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 139
    return-void

    .end local v0           #i:Landroid/content/Intent;
    :cond_1
    move v1, v2

    .line 126
    goto :goto_0
.end method

.method public static actionValidateSettings(Landroid/app/Activity;Lcom/android/email/provider/EmailContent$Account;ZZ)V
    .locals 2
    .parameter "fromActivity"
    .parameter "account"
    .parameter "checkIncoming"
    .parameter "checkOutgoing"

    .prologue
    .line 115
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/email/activity/setup/AccountSetupCheckSettings;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 116
    .local v0, i:Landroid/content/Intent;
    const-string v1, "account"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 117
    const-string v1, "checkIncoming"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 118
    const-string v1, "checkOutgoing"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 119
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 120
    return-void
.end method

.method private checkITPolicy(Landroid/content/Context;Lcom/android/email/provider/EmailContent$Account;)V
    .locals 4
    .parameter "context"
    .parameter "acc"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/email/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 385
    invoke-virtual {p2, p0}, Lcom/android/email/provider/EmailContent$Account;->getStoreUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 386
    .local v1, uriStr:Ljava/lang/String;
    const-string v2, "eas"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    if-nez p1, :cond_1

    .line 396
    :cond_0
    return-void

    .line 388
    :cond_1
    const-string v2, "device_policy"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 389
    .local v0, mDPM:Landroid/app/admin/DevicePolicyManager;
    if-eqz v0, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/app/admin/DevicePolicyManager;->getAllowPOPIMAPEmail(Landroid/content/ComponentName;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 391
    const-string v2, "AccountSetupCheckSettings"

    const-string v3, "Exchange IT Policy has disabled POP/IMAP Email"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    new-instance v2, Lcom/android/email/mail/MessagingException;

    const/16 v3, 0x8

    invoke-direct {v2, v3}, Lcom/android/email/mail/MessagingException;-><init>(I)V

    throw v2
.end method

.method private onCancel()V
    .locals 1

    .prologue
    .line 506
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/email/activity/setup/AccountSetupCheckSettings;->mCanceled:Z

    .line 507
    const v0, 0x7f080089

    invoke-direct {p0, v0}, Lcom/android/email/activity/setup/AccountSetupCheckSettings;->setMessage(I)V

    .line 508
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupCheckSettings;->onCloseActivity()V

    .line 509
    return-void
.end method

.method private onCloseActivity()V
    .locals 6

    .prologue
    .line 490
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupCheckSettings;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/email/activity/setup/AccountSetupCheckSettings$5;

    invoke-direct {v1, p0}, Lcom/android/email/activity/setup/AccountSetupCheckSettings$5;-><init>(Lcom/android/email/activity/setup/AccountSetupCheckSettings;)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    add-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    .line 502
    return-void
.end method

.method private setMessage(I)V
    .locals 2
    .parameter "resId"

    .prologue
    .line 373
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupCheckSettings;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/email/activity/setup/AccountSetupCheckSettings$2;

    invoke-direct {v1, p0, p1}, Lcom/android/email/activity/setup/AccountSetupCheckSettings$2;-><init>(Lcom/android/email/activity/setup/AccountSetupCheckSettings;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 381
    return-void
.end method

.method private varargs showErrorDialog(ZI[Ljava/lang/Object;)V
    .locals 2
    .parameter "autoDiscoverAuthException"
    .parameter "msgResId"
    .parameter "args"

    .prologue
    .line 406
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupCheckSettings;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/email/activity/setup/AccountSetupCheckSettings$3;

    invoke-direct {v1, p0, p2, p3, p1}, Lcom/android/email/activity/setup/AccountSetupCheckSettings$3;-><init>(Lcom/android/email/activity/setup/AccountSetupCheckSettings;I[Ljava/lang/Object;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 443
    return-void
.end method

.method private showSecurityRequiredDialog()V
    .locals 2

    .prologue
    .line 453
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupCheckSettings;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/email/activity/setup/AccountSetupCheckSettings$4;

    invoke-direct {v1, p0}, Lcom/android/email/activity/setup/AccountSetupCheckSettings$4;-><init>(Lcom/android/email/activity/setup/AccountSetupCheckSettings;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 486
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 512
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 521
    :goto_0
    return-void

    .line 516
    :pswitch_0
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupCheckSettings;->onCancel()V

    goto :goto_0

    .line 512
    :pswitch_data_0
    .packed-switch 0x7f070022
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x0

    .line 156
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 157
    const v1, 0x7f030005

    invoke-virtual {p0, v1}, Lcom/android/email/activity/setup/AccountSetupCheckSettings;->setContentView(I)V

    .line 158
    const v1, 0x7f070020

    invoke-virtual {p0, v1}, Lcom/android/email/activity/setup/AccountSetupCheckSettings;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/email/activity/setup/AccountSetupCheckSettings;->mMessageView:Landroid/widget/TextView;

    .line 159
    const v1, 0x7f070021

    invoke-virtual {p0, v1}, Lcom/android/email/activity/setup/AccountSetupCheckSettings;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/android/email/activity/setup/AccountSetupCheckSettings;->mProgressBar:Landroid/widget/ProgressBar;

    .line 162
    const v1, 0x7f070022

    invoke-virtual {p0, v1}, Lcom/android/email/activity/setup/AccountSetupCheckSettings;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    invoke-virtual {v1, p0}, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 164
    const v1, 0x7f080086

    invoke-direct {p0, v1}, Lcom/android/email/activity/setup/AccountSetupCheckSettings;->setMessage(I)V

    .line 165
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupCheckSettings;->mProgressBar:Landroid/widget/ProgressBar;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 174
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupCheckSettings;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 175
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "account"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/android/email/provider/EmailContent$Account;

    iput-object v1, p0, Lcom/android/email/activity/setup/AccountSetupCheckSettings;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    .line 176
    const-string v1, "checkIncoming"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/email/activity/setup/AccountSetupCheckSettings;->mCheckIncoming:Z

    .line 177
    const-string v1, "checkOutgoing"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/email/activity/setup/AccountSetupCheckSettings;->mCheckOutgoing:Z

    .line 178
    const-string v1, "autoDiscover"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/email/activity/setup/AccountSetupCheckSettings;->mAutoDiscover:Z

    .line 180
    new-instance v1, Lcom/android/email/activity/setup/AccountSetupCheckSettings$1;

    invoke-direct {v1, p0, v0}, Lcom/android/email/activity/setup/AccountSetupCheckSettings$1;-><init>(Lcom/android/email/activity/setup/AccountSetupCheckSettings;Landroid/content/Intent;)V

    invoke-virtual {v1}, Lcom/android/email/activity/setup/AccountSetupCheckSettings$1;->start()V

    .line 363
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 367
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 368
    iput-boolean v0, p0, Lcom/android/email/activity/setup/AccountSetupCheckSettings;->mDestroyed:Z

    .line 369
    iput-boolean v0, p0, Lcom/android/email/activity/setup/AccountSetupCheckSettings;->mCanceled:Z

    .line 370
    return-void
.end method
