.class public Lcom/android/email/activity/setup/AutoDiscoverSetupExchange;
.super Landroid/app/Activity;
.source "AutoDiscoverSetupExchange.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAccount:Lcom/android/email/provider/EmailContent$Account;

.field public mDomainText:Landroid/widget/EditText;

.field private mEasFlowMode:Z

.field public mEmailText:Landroid/widget/EditText;

.field private mMakeDefault:Z

.field mNextButton:Lcom/android/email/EmailTwSoftkeyItem;

.field public mPasswordText:Landroid/widget/EditText;

.field public mUserNameText:Landroid/widget/EditText;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-class v0, Lcom/android/email/activity/setup/AutoDiscoverSetupExchange;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/email/activity/setup/AutoDiscoverSetupExchange;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/email/activity/setup/AutoDiscoverSetupExchange;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/android/email/activity/setup/AutoDiscoverSetupExchange;->enableDisableNextButton()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/email/activity/setup/AutoDiscoverSetupExchange;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/android/email/activity/setup/AutoDiscoverSetupExchange;->setupExchange(Z)V

    return-void
.end method

.method public static actionAutoDiscoverSetupExchangeIntent(Landroid/app/Activity;Lcom/android/email/provider/EmailContent$Account;ZZ)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 61
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/email/activity/setup/AutoDiscoverSetupExchange;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 62
    const-string v1, "com.android.email.ACCOUNT"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 63
    const-string v1, "com.android.email.MAKE_DEFAULT"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 64
    const-string v1, "com.android.email.EAS_FLOW"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 66
    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 68
    return-void
.end method

.method private enableDisableNextButton()V
    .locals 2

    .prologue
    .line 172
    iget-object v1, p0, Lcom/android/email/activity/setup/AutoDiscoverSetupExchange;->mEmailText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/email/activity/setup/AutoDiscoverSetupExchange;->mPasswordText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/email/activity/setup/AutoDiscoverSetupExchange;->mUserNameText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    move v0, v1

    .line 175
    .local v0, enabled:Z
    :goto_0
    iget-object v1, p0, Lcom/android/email/activity/setup/AutoDiscoverSetupExchange;->mNextButton:Lcom/android/email/EmailTwSoftkeyItem;

    invoke-virtual {v1, v0}, Lcom/android/email/EmailTwSoftkeyItem;->setEnabled(Z)V

    .line 177
    return-void

    .line 172
    .end local v0           #enabled:Z
    :cond_0
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method

.method private readArgumentsFromIntent()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 133
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AutoDiscoverSetupExchange;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.android.email.ACCOUNT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/email/provider/EmailContent$Account;

    iput-object v0, p0, Lcom/android/email/activity/setup/AutoDiscoverSetupExchange;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    .line 134
    iget-object v0, p0, Lcom/android/email/activity/setup/AutoDiscoverSetupExchange;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    if-nez v0, :cond_0

    .line 135
    sget-object v0, Lcom/android/email/activity/setup/AutoDiscoverSetupExchange;->TAG:Ljava/lang/String;

    const-string v1, "Expecting Account in KEY_EXTRA_ACCOUNT"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AutoDiscoverSetupExchange;->finish()V

    .line 138
    :cond_0
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AutoDiscoverSetupExchange;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.android.email.MAKE_DEFAULT"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/email/activity/setup/AutoDiscoverSetupExchange;->mMakeDefault:Z

    .line 139
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AutoDiscoverSetupExchange;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.android.email.EAS_FLOW"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/email/activity/setup/AutoDiscoverSetupExchange;->mEasFlowMode:Z

    .line 140
    return-void
.end method

.method private setSmartValues()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 147
    :try_start_0
    new-instance v1, Ljava/net/URI;

    iget-object v3, p0, Lcom/android/email/activity/setup/AutoDiscoverSetupExchange;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    invoke-virtual {v3, p0}, Lcom/android/email/provider/EmailContent$Account;->getStoreUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 152
    .local v1, uri:Ljava/net/URI;
    invoke-virtual {v1}, Ljava/net/URI;->getUserInfo()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 153
    invoke-virtual {v1}, Ljava/net/URI;->getUserInfo()Ljava/lang/String;

    move-result-object v3

    const-string v4, ":"

    const/4 v5, 0x2

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v2

    .line 154
    .local v2, userInfoParts:[Ljava/lang/String;
    iget-object v3, p0, Lcom/android/email/activity/setup/AutoDiscoverSetupExchange;->mUserNameText:Landroid/widget/EditText;

    const/4 v4, 0x0

    aget-object v4, v2, v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 155
    array-length v3, v2

    if-le v3, v6, :cond_0

    .line 156
    iget-object v3, p0, Lcom/android/email/activity/setup/AutoDiscoverSetupExchange;->mPasswordText:Landroid/widget/EditText;

    aget-object v4, v2, v6

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 159
    .end local v2           #userInfoParts:[Ljava/lang/String;
    :cond_0
    iget-object v3, p0, Lcom/android/email/activity/setup/AutoDiscoverSetupExchange;->mEmailText:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/android/email/activity/setup/AutoDiscoverSetupExchange;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-object v4, v4, Lcom/android/email/provider/EmailContent$Account;->mEmailAddress:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 160
    .end local v1           #uri:Ljava/net/URI;
    :goto_0
    return-void

    .line 148
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 149
    .local v0, e:Ljava/net/URISyntaxException;
    sget-object v3, Lcom/android/email/activity/setup/AutoDiscoverSetupExchange;->TAG:Ljava/lang/String;

    const-string v4, "Failed to restore Account store URI"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setupExchange(Z)V
    .locals 3
    .parameter "bAllowAutoDiscover"

    .prologue
    .line 163
    iget-object v0, p0, Lcom/android/email/activity/setup/AutoDiscoverSetupExchange;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-boolean v1, p0, Lcom/android/email/activity/setup/AutoDiscoverSetupExchange;->mMakeDefault:Z

    iget-boolean v2, p0, Lcom/android/email/activity/setup/AutoDiscoverSetupExchange;->mEasFlowMode:Z

    invoke-static {p0, v0, v1, v2, p1}, Lcom/android/email/activity/setup/AccountSetupExchange;->actionIncomingSettings(Landroid/app/Activity;Lcom/android/email/provider/EmailContent$Account;ZZZ)V

    .line 168
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AutoDiscoverSetupExchange;->finish()V

    .line 169
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 72
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 73
    const v1, 0x7f03000f

    invoke-virtual {p0, v1}, Lcom/android/email/activity/setup/AutoDiscoverSetupExchange;->setContentView(I)V

    .line 74
    invoke-direct {p0}, Lcom/android/email/activity/setup/AutoDiscoverSetupExchange;->readArgumentsFromIntent()V

    .line 76
    new-instance v0, Lcom/android/email/activity/setup/AutoDiscoverSetupExchange$1;

    invoke-direct {v0, p0}, Lcom/android/email/activity/setup/AutoDiscoverSetupExchange$1;-><init>(Lcom/android/email/activity/setup/AutoDiscoverSetupExchange;)V

    .line 88
    .local v0, validationTextWatcher:Landroid/text/TextWatcher;
    const v1, 0x7f07001f

    invoke-virtual {p0, v1}, Lcom/android/email/activity/setup/AutoDiscoverSetupExchange;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/email/EmailTwSoftkeyItem;

    iput-object v1, p0, Lcom/android/email/activity/setup/AutoDiscoverSetupExchange;->mNextButton:Lcom/android/email/EmailTwSoftkeyItem;

    .line 89
    const v1, 0x7f070050

    invoke-virtual {p0, v1}, Lcom/android/email/activity/setup/AutoDiscoverSetupExchange;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/android/email/activity/setup/AutoDiscoverSetupExchange;->mEmailText:Landroid/widget/EditText;

    .line 90
    const v1, 0x7f07001e

    invoke-virtual {p0, v1}, Lcom/android/email/activity/setup/AutoDiscoverSetupExchange;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/android/email/activity/setup/AutoDiscoverSetupExchange;->mPasswordText:Landroid/widget/EditText;

    .line 91
    const v1, 0x7f070051

    invoke-virtual {p0, v1}, Lcom/android/email/activity/setup/AutoDiscoverSetupExchange;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/android/email/activity/setup/AutoDiscoverSetupExchange;->mDomainText:Landroid/widget/EditText;

    .line 92
    const v1, 0x7f070052

    invoke-virtual {p0, v1}, Lcom/android/email/activity/setup/AutoDiscoverSetupExchange;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/android/email/activity/setup/AutoDiscoverSetupExchange;->mUserNameText:Landroid/widget/EditText;

    .line 94
    iget-object v1, p0, Lcom/android/email/activity/setup/AutoDiscoverSetupExchange;->mDomainText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    .line 96
    iget-object v1, p0, Lcom/android/email/activity/setup/AutoDiscoverSetupExchange;->mEmailText:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 97
    iget-object v1, p0, Lcom/android/email/activity/setup/AutoDiscoverSetupExchange;->mPasswordText:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 98
    iget-object v1, p0, Lcom/android/email/activity/setup/AutoDiscoverSetupExchange;->mUserNameText:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 100
    invoke-direct {p0}, Lcom/android/email/activity/setup/AutoDiscoverSetupExchange;->setSmartValues()V

    .line 102
    const v1, 0x7f070053

    invoke-virtual {p0, v1}, Lcom/android/email/activity/setup/AutoDiscoverSetupExchange;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/email/EmailTwSoftkeyItem;

    new-instance v2, Lcom/android/email/activity/setup/AutoDiscoverSetupExchange$2;

    invoke-direct {v2, p0}, Lcom/android/email/activity/setup/AutoDiscoverSetupExchange$2;-><init>(Lcom/android/email/activity/setup/AutoDiscoverSetupExchange;)V

    invoke-virtual {v1, v2}, Lcom/android/email/EmailTwSoftkeyItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    iget-object v1, p0, Lcom/android/email/activity/setup/AutoDiscoverSetupExchange;->mNextButton:Lcom/android/email/EmailTwSoftkeyItem;

    new-instance v2, Lcom/android/email/activity/setup/AutoDiscoverSetupExchange$3;

    invoke-direct {v2, p0}, Lcom/android/email/activity/setup/AutoDiscoverSetupExchange$3;-><init>(Lcom/android/email/activity/setup/AutoDiscoverSetupExchange;)V

    invoke-virtual {v1, v2}, Lcom/android/email/EmailTwSoftkeyItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 129
    return-void
.end method
