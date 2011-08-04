.class public Lcom/android/email/activity/setup/AccountSetupExchange;
.super Landroid/app/Activity;
.source "AccountSetupExchange.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private AccountHandler:Landroid/os/Handler;

.field private mAccount:Lcom/android/email/provider/EmailContent$Account;

.field private mCacheLoginCredential:Ljava/lang/String;

.field private mDuplicateAccountName:Ljava/lang/String;

.field private mEASFlowMode:Z

.field private mMakeDefault:Z

.field private mNextTwSoftkeyItem:Lcom/android/email/EmailTwSoftkeyItem;

.field private mPasswordView:Landroid/widget/EditText;

.field private mServerView:Landroid/widget/EditText;

.field private mSslSecurityView:Landroid/widget/CheckBox;

.field private mTrustCertificatesView:Landroid/widget/CheckBox;

.field private mUsernameView:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 103
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 137
    new-instance v0, Lcom/android/email/activity/setup/AccountSetupExchange$1;

    invoke-direct {v0, p0}, Lcom/android/email/activity/setup/AccountSetupExchange$1;-><init>(Lcom/android/email/activity/setup/AccountSetupExchange;)V

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSetupExchange;->AccountHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/email/activity/setup/AccountSetupExchange;)Lcom/android/email/EmailTwSoftkeyItem;
    .locals 1
    .parameter "x0"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupExchange;->mNextTwSoftkeyItem:Lcom/android/email/EmailTwSoftkeyItem;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/email/activity/setup/AccountSetupExchange;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 103
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupExchange;->validateFields()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/email/activity/setup/AccountSetupExchange;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 103
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupExchange;->doNextAction()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/email/activity/setup/AccountSetupExchange;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 103
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupExchange;->onNext()V

    return-void
.end method

.method public static actionEditIncomingSettings(Landroid/app/Activity;Lcom/android/email/provider/EmailContent$Account;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 186
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/email/activity/setup/AccountSetupExchange;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 187
    const-string v1, "android.intent.action.EDIT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 188
    const-string v1, "account"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 189
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 190
    return-void
.end method

.method public static actionEditIncomingSettings(Landroid/app/Activity;Lcom/android/email/provider/EmailContent$Account;Z)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 195
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/email/activity/setup/AccountSetupExchange;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 196
    const-string v1, "android.intent.action.EDIT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 197
    const-string v1, "account"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 198
    const-string v1, "accountEdit"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 199
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 200
    return-void
.end method

.method public static actionEditOutgoingSettings(Landroid/app/Activity;Lcom/android/email/provider/EmailContent$Account;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 209
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/email/activity/setup/AccountSetupExchange;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 210
    const-string v1, "android.intent.action.EDIT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 211
    const-string v1, "account"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 212
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 213
    return-void
.end method

.method public static actionIncomingSettings(Landroid/app/Activity;Lcom/android/email/provider/EmailContent$Account;ZZZ)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 159
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/email/activity/setup/AccountSetupExchange;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 160
    const-string v1, "account"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 161
    const-string v1, "makeDefault"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 162
    const-string v1, "easFlow"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 163
    if-nez p4, :cond_0

    .line 164
    const-string v1, "disableAutoDiscover"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 166
    :cond_0
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 167
    return-void
.end method

.method public static actionIncomingSettings(Landroid/app/Activity;Lcom/android/email/provider/EmailContent$Account;ZZZZ)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 173
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/email/activity/setup/AccountSetupExchange;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 174
    const-string v1, "account"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 175
    const-string v1, "makeDefault"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 176
    const-string v1, "easFlow"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 177
    if-nez p4, :cond_0

    .line 178
    const-string v1, "disableAutoDiscover"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 180
    :cond_0
    const-string v1, "com.android.email.extra.setwiz_flow"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 181
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 182
    return-void
.end method

.method private doActivityResultAutoDiscoverNewAccount(ILandroid/content/Intent;)V
    .locals 6
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v5, 0x1

    .line 708
    const/4 v3, 0x2

    if-ne p1, v3, :cond_1

    .line 709
    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSetupExchange;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-boolean v4, p0, Lcom/android/email/activity/setup/AccountSetupExchange;->mMakeDefault:Z

    invoke-static {p0, v3, v4, v5}, Lcom/android/email/activity/setup/AutoDiscoverSetupExchange;->actionAutoDiscoverSetupExchangeIntent(Landroid/app/Activity;Lcom/android/email/provider/EmailContent$Account;ZZ)V

    .line 738
    :cond_0
    :goto_0
    return-void

    .line 711
    :cond_1
    if-eq p1, v5, :cond_0

    .line 713
    const/4 v3, 0x5

    if-ne p1, v3, :cond_2

    .line 714
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupExchange;->finish()V

    goto :goto_0

    .line 716
    :cond_2
    const/4 v3, 0x4

    if-eq p1, v3, :cond_0

    .line 724
    if-eqz p2, :cond_0

    .line 725
    const-string v3, "HostAuth"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    .line 726
    .local v2, p:Landroid/os/Parcelable;
    if-eqz v2, :cond_0

    .line 727
    move-object v0, v2

    check-cast v0, Lcom/android/email/provider/EmailContent$HostAuth;

    move-object v1, v0

    .line 728
    .local v1, hostAuth:Lcom/android/email/provider/EmailContent$HostAuth;
    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSetupExchange;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iput-object v1, v3, Lcom/android/email/provider/EmailContent$Account;->mHostAuthSend:Lcom/android/email/provider/EmailContent$HostAuth;

    .line 729
    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSetupExchange;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iput-object v1, v3, Lcom/android/email/provider/EmailContent$Account;->mHostAuthRecv:Lcom/android/email/provider/EmailContent$HostAuth;

    .line 730
    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSetupExchange;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    invoke-virtual {p0, v3}, Lcom/android/email/activity/setup/AccountSetupExchange;->loadFields(Lcom/android/email/provider/EmailContent$Account;)V

    .line 731
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupExchange;->validateFields()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 733
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupExchange;->onNext()V

    goto :goto_0
.end method

.method private doActivityResultValidateExistingAccount(ILandroid/content/Intent;)V
    .locals 3
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 659
    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    .line 660
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupExchange;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    invoke-virtual {v0}, Lcom/android/email/provider/EmailContent$Account;->isSaved()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 662
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupExchange;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupExchange;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    invoke-virtual {v1}, Lcom/android/email/provider/EmailContent$Account;->toContentValues()Landroid/content/ContentValues;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/android/email/provider/EmailContent$Account;->update(Landroid/content/Context;Landroid/content/ContentValues;)I

    .line 663
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupExchange;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-object v0, v0, Lcom/android/email/provider/EmailContent$Account;->mHostAuthRecv:Lcom/android/email/provider/EmailContent$HostAuth;

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupExchange;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-object v1, v1, Lcom/android/email/provider/EmailContent$Account;->mHostAuthRecv:Lcom/android/email/provider/EmailContent$HostAuth;

    invoke-virtual {v1}, Lcom/android/email/provider/EmailContent$HostAuth;->toContentValues()Landroid/content/ContentValues;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/android/email/provider/EmailContent$HostAuth;->update(Landroid/content/Context;Landroid/content/ContentValues;)I

    .line 665
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupExchange;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-object v0, v0, Lcom/android/email/provider/EmailContent$Account;->mHostAuthSend:Lcom/android/email/provider/EmailContent$HostAuth;

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupExchange;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-object v1, v1, Lcom/android/email/provider/EmailContent$Account;->mHostAuthSend:Lcom/android/email/provider/EmailContent$HostAuth;

    invoke-virtual {v1}, Lcom/android/email/provider/EmailContent$HostAuth;->toContentValues()Landroid/content/ContentValues;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/android/email/provider/EmailContent$HostAuth;->update(Landroid/content/Context;Landroid/content/ContentValues;)I

    .line 667
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupExchange;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-object v0, v0, Lcom/android/email/provider/EmailContent$Account;->mHostAuthRecv:Lcom/android/email/provider/EmailContent$HostAuth;

    iget-object v0, v0, Lcom/android/email/provider/EmailContent$HostAuth;->mProtocol:Ljava/lang/String;

    const-string v1, "eas"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 670
    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0, v0}, Lcom/android/email/ExchangeUtils;->getExchangeEmailService(Landroid/content/Context;Lcom/android/email/service/IEmailServiceCallback;)Lcom/android/email/service/IEmailService;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupExchange;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-wide v1, v1, Lcom/android/email/provider/EmailContent$Account;->mId:J

    invoke-interface {v0, v1, v2}, Lcom/android/email/service/IEmailService;->hostChanged(J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 682
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupExchange;->finish()V

    .line 685
    :cond_1
    return-void

    .line 678
    :cond_2
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupExchange;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    invoke-virtual {v0, p0}, Lcom/android/email/provider/EmailContent$Account;->save(Landroid/content/Context;)Landroid/net/Uri;

    goto :goto_0

    .line 672
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private doActivityResultValidateNewAccount(ILandroid/content/Intent;)V
    .locals 1
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 691
    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    .line 693
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupExchange;->doOptions()V

    .line 699
    :cond_0
    :goto_0
    return-void

    .line 694
    :cond_1
    const/4 v0, 0x4

    if-eq p1, v0, :cond_2

    const/4 v0, 0x5

    if-ne p1, v0, :cond_0

    .line 696
    :cond_2
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupExchange;->finish()V

    goto :goto_0
.end method

.method private doNextAction()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 809
    const-string v2, "input_method"

    invoke-virtual {p0, v2}, Lcom/android/email/activity/setup/AccountSetupExchange;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 810
    .local v0, im:Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupExchange;->mNextTwSoftkeyItem:Lcom/android/email/EmailTwSoftkeyItem;

    .line 811
    .local v1, mView:Landroid/view/View;
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupExchange;->mNextTwSoftkeyItem:Lcom/android/email/EmailTwSoftkeyItem;

    invoke-virtual {v2}, Lcom/android/email/EmailTwSoftkeyItem;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v0, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 812
    const v2, 0x7f070022

    invoke-virtual {p0, v2}, Lcom/android/email/activity/setup/AccountSetupExchange;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/View;->setClickable(Z)V

    .line 813
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/android/email/activity/setup/AccountSetupExchange$7;

    invoke-direct {v3, p0, v0, v1}, Lcom/android/email/activity/setup/AccountSetupExchange$7;-><init>(Lcom/android/email/activity/setup/AccountSetupExchange;Landroid/view/inputmethod/InputMethodManager;Landroid/view/View;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 827
    return-void
.end method

.method private doOptions()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 623
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupExchange;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "easFlow"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 627
    .local v0, easFlowMode:Z
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupExchange;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "com.android.email.extra.setwiz_flow"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 628
    .local v1, mSetWizMode:Z
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupExchange;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-boolean v3, p0, Lcom/android/email/activity/setup/AccountSetupExchange;->mMakeDefault:Z

    invoke-static {p0, v2, v3, v0, v1}, Lcom/android/email/activity/setup/AccountSetupOptions;->actionOptions(Landroid/app/Activity;Lcom/android/email/provider/EmailContent$Account;ZZZ)V

    .line 629
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupExchange;->finish()V

    .line 630
    return-void
.end method

.method private getAutDiscoverUri(Landroid/content/Intent;)Ljava/net/URI;
    .locals 19
    .parameter "intent"

    .prologue
    .line 397
    const-string v7, "com.android.email.EMAIL"

    move-object/from16 v0, p1

    move-object v1, v7

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 398
    .local v14, email:Ljava/lang/String;
    const-string v7, "com.android.email.DOMAIN"

    move-object/from16 v0, p1

    move-object v1, v7

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 399
    .local v12, domain:Ljava/lang/String;
    const-string v7, "com.android.email.USER"

    move-object/from16 v0, p1

    move-object v1, v7

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 400
    .local v18, userName:Ljava/lang/String;
    const-string v7, "com.android.email.PASSWORD"

    move-object/from16 v0, p1

    move-object v1, v7

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 401
    .local v15, password:Ljava/lang/String;
    const-string v7, "com.android.email.TRUSTCERT"

    const/4 v8, 0x0

    move-object/from16 v0, p1

    move-object v1, v7

    move v2, v8

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v16

    .line 402
    .local v16, trustCertificates:Z
    if-eqz v16, :cond_2

    const-string v7, "eas+ssl+trustallcerts"

    move-object v4, v7

    .line 403
    .local v4, scheme:Ljava/lang/String;
    :goto_0
    const/16 v7, 0x40

    invoke-virtual {v14, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v11

    .line 404
    .local v11, amp:I
    add-int/lit8 v7, v11, 0x1

    invoke-virtual {v14, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 408
    .local v6, host:Ljava/lang/String;
    const-string v7, "\\"

    move-object/from16 v0, v18

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 409
    const/4 v7, 0x1

    move-object/from16 v0, v18

    move v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v18

    .line 413
    :cond_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, v7

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 415
    .local v5, userInfo:Ljava/lang/String;
    if-eqz v12, :cond_1

    .line 416
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\\"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 419
    :cond_1
    const/16 v17, 0x0

    .line 422
    .local v17, uri:Ljava/net/URI;
    :try_start_0
    new-instance v3, Ljava/net/URI;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-direct/range {v3 .. v10}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 448
    .end local v17           #uri:Ljava/net/URI;
    .end local p0
    .local v3, uri:Ljava/net/URI;
    :goto_1
    return-object v3

    .line 402
    .end local v3           #uri:Ljava/net/URI;
    .end local v4           #scheme:Ljava/lang/String;
    .end local v5           #userInfo:Ljava/lang/String;
    .end local v6           #host:Ljava/lang/String;
    .end local v11           #amp:I
    .restart local p0
    :cond_2
    const-string v7, "eas+ssl+"

    move-object v4, v7

    goto :goto_0

    .line 430
    .restart local v4       #scheme:Ljava/lang/String;
    .restart local v5       #userInfo:Ljava/lang/String;
    .restart local v6       #host:Ljava/lang/String;
    .restart local v11       #amp:I
    .restart local v17       #uri:Ljava/net/URI;
    :catch_0
    move-exception v7

    move-object v13, v7

    .line 432
    .local v13, e:Ljava/net/URISyntaxException;
    invoke-virtual {v13}, Ljava/net/URISyntaxException;->printStackTrace()V

    .line 437
    const v7, 0x7f07002a

    move-object/from16 v0, p0

    move v1, v7

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/AccountSetupExchange;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/widget/TextView;

    const/16 v7, 0x8

    move-object/from16 v0, p0

    move v1, v7

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    move-object/from16 v3, v17

    .end local v17           #uri:Ljava/net/URI;
    .restart local v3       #uri:Ljava/net/URI;
    goto :goto_1
.end method

.method private getUri()Ljava/net/URI;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;,
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 748
    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSetupExchange;->mSslSecurityView:Landroid/widget/CheckBox;

    invoke-virtual {v4}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v8

    .line 749
    .local v8, sslRequired:Z
    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSetupExchange;->mTrustCertificatesView:Landroid/widget/CheckBox;

    invoke-virtual {v4}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v9

    .line 750
    .local v9, trustCertificates:Z
    if-eqz v8, :cond_2

    if-eqz v9, :cond_1

    const-string v4, "eas+ssl+trustallcerts"

    move-object v1, v4

    .line 753
    .local v1, scheme:Ljava/lang/String;
    :goto_0
    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSetupExchange;->mUsernameView:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    .line 756
    .local v10, userName:Ljava/lang/String;
    const-string v4, "\\"

    invoke-virtual {v10, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 757
    const/4 v4, 0x1

    invoke-virtual {v10, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    .line 759
    :cond_0
    iput-object v10, p0, Lcom/android/email/activity/setup/AccountSetupExchange;->mCacheLoginCredential:Ljava/lang/String;

    .line 760
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, ":"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v7, p0, Lcom/android/email/activity/setup/AccountSetupExchange;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 761
    .local v2, userInfo:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSetupExchange;->mServerView:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 762
    .local v3, host:Ljava/lang/String;
    const/4 v5, 0x0

    .line 764
    .local v5, path:Ljava/lang/String;
    new-instance v0, Ljava/net/URI;

    const/4 v4, 0x0

    move-object v7, v6

    invoke-direct/range {v0 .. v7}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 773
    .local v0, uri:Ljava/net/URI;
    return-object v0

    .line 750
    .end local v0           #uri:Ljava/net/URI;
    .end local v1           #scheme:Ljava/lang/String;
    .end local v2           #userInfo:Ljava/lang/String;
    .end local v3           #host:Ljava/lang/String;
    .end local v5           #path:Ljava/lang/String;
    .end local v10           #userName:Ljava/lang/String;
    :cond_1
    const-string v4, "eas+ssl+"

    move-object v1, v4

    goto :goto_0

    :cond_2
    const-string v4, "eas"

    move-object v1, v4

    goto :goto_0
.end method

.method private onNext()V
    .locals 6

    .prologue
    .line 781
    :try_start_0
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupExchange;->getUri()Ljava/net/URI;

    move-result-object v0

    .line 782
    .local v0, uri:Ljava/net/URI;
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupExchange;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    invoke-virtual {v0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, p0, v3}, Lcom/android/email/provider/EmailContent$Account;->setStoreUri(Landroid/content/Context;Ljava/lang/String;)V

    .line 783
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupExchange;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    invoke-virtual {v0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, p0, v3}, Lcom/android/email/provider/EmailContent$Account;->setSenderUri(Landroid/content/Context;Ljava/lang/String;)V

    .line 787
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupExchange;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-wide v2, v2, Lcom/android/email/provider/EmailContent$Account;->mId:J

    invoke-virtual {v0}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSetupExchange;->mCacheLoginCredential:Ljava/lang/String;

    invoke-static {p0, v2, v3, v4, v5}, Lcom/android/email/Utility;->findDuplicateAccount(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/email/activity/setup/AccountSetupExchange;->mDuplicateAccountName:Ljava/lang/String;

    .line 789
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupExchange;->mDuplicateAccountName:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 792
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupExchange;->AccountHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSetupExchange;->AccountHandler:Landroid/os/Handler;

    const/16 v4, 0x64

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 805
    :goto_0
    return-void

    .line 796
    .end local v0           #uri:Ljava/net/URI;
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 801
    .local v1, use:Ljava/net/URISyntaxException;
    new-instance v2, Ljava/lang/Error;

    invoke-direct {v2, v1}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 804
    .end local v1           #use:Ljava/net/URISyntaxException;
    .restart local v0       #uri:Ljava/net/URI;
    :cond_0
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupExchange;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {p0, v2, v3, v4}, Lcom/android/email/activity/setup/AccountSetupCheckSettings;->actionValidateSettings(Landroid/app/Activity;Lcom/android/email/provider/EmailContent$Account;ZZ)V

    goto :goto_0
.end method

.method private usernameFieldValid(Landroid/widget/EditText;)Z
    .locals 2
    .parameter "usernameView"

    .prologue
    .line 466
    invoke-static {p1}, Lcom/android/email/Utility;->requiredFieldValid(Landroid/widget/TextView;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private validateFields()Z
    .locals 4

    .prologue
    .line 597
    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSetupExchange;->mUsernameView:Landroid/widget/EditText;

    invoke-direct {p0, v3}, Lcom/android/email/activity/setup/AccountSetupExchange;->usernameFieldValid(Landroid/widget/EditText;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSetupExchange;->mPasswordView:Landroid/widget/EditText;

    invoke-static {v3}, Lcom/android/email/Utility;->requiredFieldValid(Landroid/widget/TextView;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSetupExchange;->mServerView:Landroid/widget/EditText;

    invoke-static {v3}, Lcom/android/email/Utility;->requiredFieldValid(Landroid/widget/TextView;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    move v0, v3

    .line 600
    .local v0, enabled:Z
    :goto_0
    if-eqz v0, :cond_0

    .line 602
    :try_start_0
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupExchange;->getUri()Ljava/net/URI;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 616
    :cond_0
    :goto_1
    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSetupExchange;->mNextTwSoftkeyItem:Lcom/android/email/EmailTwSoftkeyItem;

    invoke-virtual {v3, v0}, Lcom/android/email/EmailTwSoftkeyItem;->setEnabled(Z)V

    .line 619
    return v0

    .line 597
    .end local v0           #enabled:Z
    :cond_1
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    .line 603
    .restart local v0       #enabled:Z
    :catch_0
    move-exception v2

    .line 604
    .local v2, use:Ljava/net/URISyntaxException;
    const/4 v0, 0x0

    .line 609
    goto :goto_1

    .line 607
    .end local v2           #use:Ljava/net/URISyntaxException;
    :catch_1
    move-exception v1

    .line 608
    .local v1, npe:Ljava/lang/NullPointerException;
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method loadFields(Lcom/android/email/provider/EmailContent$Account;)V
    .locals 9
    .parameter "account"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 556
    iget-object v0, p1, Lcom/android/email/provider/EmailContent$Account;->mHostAuthRecv:Lcom/android/email/provider/EmailContent$HostAuth;

    .line 558
    .local v0, hostAuth:Lcom/android/email/provider/EmailContent$HostAuth;
    iget-object v4, v0, Lcom/android/email/provider/EmailContent$HostAuth;->mLogin:Ljava/lang/String;

    .line 559
    .local v4, userName:Ljava/lang/String;
    if-eqz v4, :cond_1

    .line 562
    const/16 v5, 0x5c

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-gez v5, :cond_0

    .line 563
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\\"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 565
    :cond_0
    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSetupExchange;->mUsernameView:Landroid/widget/EditText;

    const v6, 0x7f0800b8

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setHint(I)V

    .line 566
    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSetupExchange;->mUsernameView:Landroid/widget/EditText;

    invoke-virtual {v5, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 569
    :cond_1
    iget-object v5, v0, Lcom/android/email/provider/EmailContent$HostAuth;->mPassword:Ljava/lang/String;

    if-eqz v5, :cond_2

    .line 570
    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSetupExchange;->mPasswordView:Landroid/widget/EditText;

    const v6, 0x7f0800a0

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setHint(I)V

    .line 571
    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSetupExchange;->mPasswordView:Landroid/widget/EditText;

    iget-object v6, v0, Lcom/android/email/provider/EmailContent$HostAuth;->mPassword:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 574
    :cond_2
    iget-object v1, v0, Lcom/android/email/provider/EmailContent$HostAuth;->mProtocol:Ljava/lang/String;

    .line 575
    .local v1, protocol:Ljava/lang/String;
    if-eqz v1, :cond_3

    const-string v5, "eas"

    invoke-virtual {v1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 576
    :cond_3
    new-instance v5, Ljava/lang/Error;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown account type: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1, p0}, Lcom/android/email/provider/EmailContent$Account;->getStoreUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v5

    .line 579
    :cond_4
    iget-object v5, v0, Lcom/android/email/provider/EmailContent$HostAuth;->mAddress:Ljava/lang/String;

    if-eqz v5, :cond_5

    .line 580
    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSetupExchange;->mServerView:Landroid/widget/EditText;

    const v6, 0x7f0800b7

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setHint(I)V

    .line 581
    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSetupExchange;->mServerView:Landroid/widget/EditText;

    iget-object v6, v0, Lcom/android/email/provider/EmailContent$HostAuth;->mAddress:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 584
    :cond_5
    iget v5, v0, Lcom/android/email/provider/EmailContent$HostAuth;->mFlags:I

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_6

    move v2, v8

    .line 585
    .local v2, ssl:Z
    :goto_0
    iget v5, v0, Lcom/android/email/provider/EmailContent$HostAuth;->mFlags:I

    and-int/lit8 v5, v5, 0x8

    if-eqz v5, :cond_7

    move v3, v8

    .line 586
    .local v3, trustCertificates:Z
    :goto_1
    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSetupExchange;->mSslSecurityView:Landroid/widget/CheckBox;

    invoke-virtual {v5, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 587
    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSetupExchange;->mTrustCertificatesView:Landroid/widget/CheckBox;

    invoke-virtual {v5, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 588
    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSetupExchange;->mTrustCertificatesView:Landroid/widget/CheckBox;

    if-eqz v2, :cond_8

    move v6, v7

    :goto_2
    invoke-virtual {v5, v6}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 589
    return-void

    .end local v2           #ssl:Z
    .end local v3           #trustCertificates:Z
    :cond_6
    move v2, v7

    .line 584
    goto :goto_0

    .restart local v2       #ssl:Z
    :cond_7
    move v3, v7

    .line 585
    goto :goto_1

    .line 588
    .restart local v3       #trustCertificates:Z
    :cond_8
    const/16 v6, 0x8

    goto :goto_2
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 642
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 643
    const-string v0, "android.intent.action.EDIT"

    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupExchange;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 644
    invoke-direct {p0, p2, p3}, Lcom/android/email/activity/setup/AccountSetupExchange;->doActivityResultValidateExistingAccount(ILandroid/content/Intent;)V

    .line 653
    :cond_0
    :goto_0
    return-void

    .line 646
    :cond_1
    invoke-direct {p0, p2, p3}, Lcom/android/email/activity/setup/AccountSetupExchange;->doActivityResultValidateNewAccount(ILandroid/content/Intent;)V

    goto :goto_0

    .line 648
    :cond_2
    const/4 v0, 0x2

    if-ne p1, v0, :cond_3

    .line 649
    invoke-direct {p0, p2, p3}, Lcom/android/email/activity/setup/AccountSetupExchange;->doActivityResultAutoDiscoverNewAccount(ILandroid/content/Intent;)V

    goto :goto_0

    .line 650
    :cond_3
    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 651
    invoke-virtual {p0, p3}, Lcom/android/email/activity/setup/AccountSetupExchange;->performAutoDiscoverAgain(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 873
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result v0

    const v1, 0x7f070028

    if-ne v0, v1, :cond_0

    .line 874
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupExchange;->mTrustCertificatesView:Landroid/widget/CheckBox;

    if-eqz p2, :cond_1

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 879
    :cond_0
    const/16 v0, 0x9

    invoke-virtual {p1, v0}, Landroid/widget/CompoundButton;->playSoundEffect(I)V

    .line 882
    return-void

    .line 874
    :cond_1
    const/16 v1, 0x8

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 8
    .parameter "v"

    .prologue
    const/4 v7, 0x0

    .line 831
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 870
    :goto_0
    return-void

    .line 836
    :pswitch_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mEASFlowMode is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/email/activity/setup/AccountSetupExchange;->mEASFlowMode:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/email/Email;->log(Ljava/lang/String;)V

    .line 837
    iget-boolean v5, p0, Lcom/android/email/activity/setup/AccountSetupExchange;->mEASFlowMode:Z

    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSetupExchange;->mUsernameView:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->isEnabled()Z

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    .line 840
    const-string v1, "AndroidMail.Main"

    .line 841
    .local v1, PREFERENCES_FILE:Ljava/lang/String;
    const-string v0, "activationLicense"

    .line 842
    .local v0, ACTIVATION_LICENSE:Ljava/lang/String;
    invoke-virtual {p0, v1, v7}, Lcom/android/email/activity/setup/AccountSetupExchange;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 843
    .local v4, mSharedPreferences:Landroid/content/SharedPreferences;
    const/4 v5, 0x0

    invoke-interface {v4, v0, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 845
    .local v3, license:Ljava/lang/String;
    const-string v5, "isCheckIMEI"

    invoke-interface {v4, v5, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 846
    .local v2, checkIMEI:Z
    const-string v5, "VINS"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "AccountSetupExchange"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 853
    sget-boolean v5, Lcom/android/email/activity/setup/AccountSetupBasics;->mShowAlertImei:Z

    if-eqz v5, :cond_0

    if-eqz v2, :cond_0

    .line 854
    const/4 v5, 0x2

    invoke-virtual {p0, v5}, Lcom/android/email/activity/setup/AccountSetupExchange;->showDialog(I)V

    goto :goto_0

    .line 856
    :cond_0
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupExchange;->doNextAction()V

    goto :goto_0

    .line 864
    .end local v0           #ACTIVATION_LICENSE:Ljava/lang/String;
    .end local v1           #PREFERENCES_FILE:Ljava/lang/String;
    .end local v2           #checkIMEI:Z
    .end local v3           #license:Ljava/lang/String;
    .end local v4           #mSharedPreferences:Landroid/content/SharedPreferences;
    :cond_1
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupExchange;->doNextAction()V

    goto :goto_0

    .line 831
    :pswitch_data_0
    .packed-switch 0x7f070022
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 11
    .parameter "savedInstanceState"

    .prologue
    .line 217
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 218
    const v8, 0x7f030006

    invoke-virtual {p0, v8}, Lcom/android/email/activity/setup/AccountSetupExchange;->setContentView(I)V

    .line 220
    const v8, 0x7f070026

    invoke-virtual {p0, v8}, Lcom/android/email/activity/setup/AccountSetupExchange;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSetupExchange;->mUsernameView:Landroid/widget/EditText;

    .line 221
    const v8, 0x7f07001e

    invoke-virtual {p0, v8}, Lcom/android/email/activity/setup/AccountSetupExchange;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSetupExchange;->mPasswordView:Landroid/widget/EditText;

    .line 222
    const v8, 0x7f070027

    invoke-virtual {p0, v8}, Lcom/android/email/activity/setup/AccountSetupExchange;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSetupExchange;->mServerView:Landroid/widget/EditText;

    .line 223
    const v8, 0x7f070028

    invoke-virtual {p0, v8}, Lcom/android/email/activity/setup/AccountSetupExchange;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSetupExchange;->mSslSecurityView:Landroid/widget/CheckBox;

    .line 224
    iget-object v8, p0, Lcom/android/email/activity/setup/AccountSetupExchange;->mSslSecurityView:Landroid/widget/CheckBox;

    invoke-virtual {v8, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 225
    const v8, 0x7f070029

    invoke-virtual {p0, v8}, Lcom/android/email/activity/setup/AccountSetupExchange;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSetupExchange;->mTrustCertificatesView:Landroid/widget/CheckBox;

    .line 227
    iget-object v8, p0, Lcom/android/email/activity/setup/AccountSetupExchange;->mTrustCertificatesView:Landroid/widget/CheckBox;

    invoke-virtual {v8, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 232
    const v8, 0x7f070022

    invoke-virtual {p0, v8}, Lcom/android/email/activity/setup/AccountSetupExchange;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/email/EmailTwSoftkeyItem;

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSetupExchange;->mNextTwSoftkeyItem:Lcom/android/email/EmailTwSoftkeyItem;

    .line 234
    iget-object v8, p0, Lcom/android/email/activity/setup/AccountSetupExchange;->mNextTwSoftkeyItem:Lcom/android/email/EmailTwSoftkeyItem;

    invoke-virtual {v8, p0}, Lcom/android/email/EmailTwSoftkeyItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 240
    new-instance v7, Lcom/android/email/activity/setup/AccountSetupExchange$2;

    invoke-direct {v7, p0}, Lcom/android/email/activity/setup/AccountSetupExchange$2;-><init>(Lcom/android/email/activity/setup/AccountSetupExchange;)V

    .line 254
    .local v7, validationTextWatcher:Landroid/text/TextWatcher;
    iget-object v8, p0, Lcom/android/email/activity/setup/AccountSetupExchange;->mPasswordView:Landroid/widget/EditText;

    const/4 v9, 0x5

    invoke-virtual {v8, v9}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 255
    iget-object v8, p0, Lcom/android/email/activity/setup/AccountSetupExchange;->mUsernameView:Landroid/widget/EditText;

    const/4 v9, 0x5

    invoke-virtual {v8, v9}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 259
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupExchange;->getIntent()Landroid/content/Intent;

    move-result-object v8

    const-string v9, "accountEdit"

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 260
    .local v3, editing:Z
    if-eqz v3, :cond_2

    .line 261
    iget-object v8, p0, Lcom/android/email/activity/setup/AccountSetupExchange;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v8, v7}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 262
    iget-object v8, p0, Lcom/android/email/activity/setup/AccountSetupExchange;->mServerView:Landroid/widget/EditText;

    invoke-virtual {v8, v7}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 263
    iget-object v8, p0, Lcom/android/email/activity/setup/AccountSetupExchange;->mUsernameView:Landroid/widget/EditText;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 264
    iget-object v8, p0, Lcom/android/email/activity/setup/AccountSetupExchange;->mUsernameView:Landroid/widget/EditText;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 274
    :goto_0
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupExchange;->getIntent()Landroid/content/Intent;

    move-result-object v4

    .line 275
    .local v4, intent:Landroid/content/Intent;
    const-string v8, "account"

    invoke-virtual {v4, v8}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/email/provider/EmailContent$Account;

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSetupExchange;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    .line 276
    const-string v8, "makeDefault"

    const/4 v9, 0x0

    invoke-virtual {v4, v8, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    iput-boolean v8, p0, Lcom/android/email/activity/setup/AccountSetupExchange;->mMakeDefault:Z

    .line 279
    const-string v8, "easFlow"

    const/4 v9, 0x0

    invoke-virtual {v4, v8, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    iput-boolean v8, p0, Lcom/android/email/activity/setup/AccountSetupExchange;->mEASFlowMode:Z

    .line 280
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Exchange Create flow mode is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v9, p0, Lcom/android/email/activity/setup/AccountSetupExchange;->mEASFlowMode:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/email/Email;->log(Ljava/lang/String;)V

    .line 286
    if-eqz p1, :cond_0

    const-string v8, "account"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 287
    const-string v8, "account"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    .end local p1
    check-cast p1, Lcom/android/email/provider/EmailContent$Account;

    iput-object p1, p0, Lcom/android/email/activity/setup/AccountSetupExchange;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    .line 290
    :cond_0
    iget-object v8, p0, Lcom/android/email/activity/setup/AccountSetupExchange;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    invoke-virtual {p0, v8}, Lcom/android/email/activity/setup/AccountSetupExchange;->loadFields(Lcom/android/email/provider/EmailContent$Account;)V

    .line 291
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupExchange;->validateFields()Z

    .line 294
    invoke-virtual {p0, v4}, Lcom/android/email/activity/setup/AccountSetupExchange;->performAutoDiscover(Landroid/content/Intent;)V

    .line 309
    iget-object v8, p0, Lcom/android/email/activity/setup/AccountSetupExchange;->mUsernameView:Landroid/widget/EditText;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 310
    iget-object v8, p0, Lcom/android/email/activity/setup/AccountSetupExchange;->mUsernameView:Landroid/widget/EditText;

    invoke-virtual {v8}, Landroid/widget/EditText;->requestFocus()Z

    .line 311
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupExchange;->getWindow()Landroid/view/Window;

    move-result-object v8

    const/4 v9, 0x5

    invoke-virtual {v8, v9}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 312
    const-string v8, "input_method"

    invoke-virtual {p0, v8}, Lcom/android/email/activity/setup/AccountSetupExchange;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/inputmethod/InputMethodManager;

    .line 313
    .local v6, mgr:Landroid/view/inputmethod/InputMethodManager;
    iget-object v8, p0, Lcom/android/email/activity/setup/AccountSetupExchange;->mUsernameView:Landroid/widget/EditText;

    const/4 v9, 0x2

    invoke-virtual {v6, v8, v9}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 316
    const-string v1, "AndroidMail.Main"

    .line 317
    .local v1, PREFERENCES_FILE:Ljava/lang/String;
    const-string v0, "activationLicense"

    .line 318
    .local v0, ACTIVATION_LICENSE:Ljava/lang/String;
    const/4 v8, 0x0

    invoke-virtual {p0, v1, v8}, Lcom/android/email/activity/setup/AccountSetupExchange;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 319
    .local v5, mSharedPreferences:Landroid/content/SharedPreferences;
    const-string v8, "VINS"

    const-string v9, "AccountSetupExchange1"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    const-string v8, "isSet"

    const/4 v9, 0x0

    invoke-interface {v5, v8, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    if-nez v8, :cond_1

    .line 322
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 323
    .local v2, editPref:Landroid/content/SharedPreferences$Editor;
    const-string v8, "isSet"

    const/4 v9, 0x1

    invoke-interface {v2, v8, v9}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 324
    const-string v8, "isCheckIMEI"

    const/4 v9, 0x1

    invoke-interface {v2, v8, v9}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 325
    const-string v8, "VINS"

    const-string v9, "AccountSetupExchange2"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 331
    .end local v2           #editPref:Landroid/content/SharedPreferences$Editor;
    :cond_1
    return-void

    .line 268
    .end local v0           #ACTIVATION_LICENSE:Ljava/lang/String;
    .end local v1           #PREFERENCES_FILE:Ljava/lang/String;
    .end local v4           #intent:Landroid/content/Intent;
    .end local v5           #mSharedPreferences:Landroid/content/SharedPreferences;
    .end local v6           #mgr:Landroid/view/inputmethod/InputMethodManager;
    .restart local p1
    :cond_2
    iget-object v8, p0, Lcom/android/email/activity/setup/AccountSetupExchange;->mUsernameView:Landroid/widget/EditText;

    invoke-virtual {v8, v7}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 269
    iget-object v8, p0, Lcom/android/email/activity/setup/AccountSetupExchange;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v8, v7}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 270
    iget-object v8, p0, Lcom/android/email/activity/setup/AccountSetupExchange;->mServerView:Landroid/widget/EditText;

    invoke-virtual {v8, v7}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    goto/16 :goto_0
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 11
    .parameter "id"

    .prologue
    const/4 v10, 0x0

    .line 477
    packed-switch p1, :pswitch_data_0

    :goto_0
    move-object v7, v10

    .line 533
    :goto_1
    return-object v7

    .line 479
    :pswitch_0
    :try_start_0
    new-instance v7, Landroid/app/AlertDialog$Builder;

    invoke-direct {v7, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v8, 0x1080027

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    const v8, 0x7f08008e

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    const v8, 0x7f0801a0

    invoke-virtual {p0, v8}, Lcom/android/email/activity/setup/AccountSetupExchange;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    const v8, 0x7f080011

    new-instance v9, Lcom/android/email/activity/setup/AccountSetupExchange$3;

    invoke-direct {v9, p0}, Lcom/android/email/activity/setup/AccountSetupExchange$3;-><init>(Lcom/android/email/activity/setup/AccountSetupExchange;)V

    invoke-virtual {v7, v8, v9}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v7

    goto :goto_1

    .line 493
    :pswitch_1
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 494
    .local v3, factory:Landroid/view/LayoutInflater;
    const v7, 0x7f03001a

    const/4 v8, 0x0

    invoke-virtual {v3, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 496
    .local v6, textEntryView:Landroid/view/View;
    const v7, 0x7f070096

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    .line 497
    .local v2, checkboxImei:Landroid/widget/CheckBox;
    const-string v7, "VINS"

    const-string v8, "AccountSetupExchange3"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    const-string v1, "AndroidMail.Main"

    .line 499
    .local v1, PREFERENCES_FILE:Ljava/lang/String;
    const-string v0, "activationLicense"

    .line 500
    .local v0, ACTIVATION_LICENSE:Ljava/lang/String;
    const/4 v7, 0x0

    invoke-virtual {p0, v1, v7}, Lcom/android/email/activity/setup/AccountSetupExchange;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 504
    .local v4, mSharedPreferences:Landroid/content/SharedPreferences;
    new-instance v7, Landroid/app/AlertDialog$Builder;

    invoke-direct {v7, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v7, v6}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    const v8, 0x7f0801a1

    invoke-virtual {p0, v8}, Lcom/android/email/activity/setup/AccountSetupExchange;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    const v8, 0x7f080113

    new-instance v9, Lcom/android/email/activity/setup/AccountSetupExchange$6;

    invoke-direct {v9, p0, v4, v2}, Lcom/android/email/activity/setup/AccountSetupExchange$6;-><init>(Lcom/android/email/activity/setup/AccountSetupExchange;Landroid/content/SharedPreferences;Landroid/widget/CheckBox;)V

    invoke-virtual {v7, v8, v9}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    const v8, 0x7f080114

    new-instance v9, Lcom/android/email/activity/setup/AccountSetupExchange$5;

    invoke-direct {v9, p0}, Lcom/android/email/activity/setup/AccountSetupExchange$5;-><init>(Lcom/android/email/activity/setup/AccountSetupExchange;)V

    invoke-virtual {v7, v8, v9}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    new-instance v8, Lcom/android/email/activity/setup/AccountSetupExchange$4;

    invoke-direct {v8, p0}, Lcom/android/email/activity/setup/AccountSetupExchange$4;-><init>(Lcom/android/email/activity/setup/AccountSetupExchange;)V

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    goto/16 :goto_1

    .line 529
    .end local v0           #ACTIVATION_LICENSE:Ljava/lang/String;
    .end local v1           #PREFERENCES_FILE:Ljava/lang/String;
    .end local v2           #checkboxImei:Landroid/widget/CheckBox;
    .end local v3           #factory:Landroid/view/LayoutInflater;
    .end local v4           #mSharedPreferences:Landroid/content/SharedPreferences;
    .end local v6           #textEntryView:Landroid/view/View;
    :catch_0
    move-exception v7

    move-object v5, v7

    .line 530
    .local v5, rte:Ljava/lang/RuntimeException;
    invoke-virtual {v5}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto/16 :goto_0

    .line 477
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 3
    .parameter "id"
    .parameter "dialog"

    .prologue
    .line 541
    packed-switch p1, :pswitch_data_0

    .line 550
    :cond_0
    :goto_0
    return-void

    .line 543
    :pswitch_0
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupExchange;->mDuplicateAccountName:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 544
    move-object v0, p2

    check-cast v0, Landroid/app/AlertDialog;

    move-object v1, v0

    .line 546
    .local v1, alert:Landroid/app/AlertDialog;
    const v2, 0x7f0801a0

    invoke-virtual {p0, v2}, Lcom/android/email/activity/setup/AccountSetupExchange;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 541
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 455
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 456
    const v0, 0x7f070022

    invoke-virtual {p0, v0}, Lcom/android/email/activity/setup/AccountSetupExchange;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 457
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 461
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 462
    const-string v0, "account"

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupExchange;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 463
    return-void
.end method

.method public performAutoDiscover(Landroid/content/Intent;)V
    .locals 9
    .parameter "intent"

    .prologue
    const/4 v5, 0x0

    .line 336
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupExchange;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-object v0, v0, Lcom/android/email/provider/EmailContent$Account;->mHostAuthRecv:Lcom/android/email/provider/EmailContent$HostAuth;

    iget-object v8, v0, Lcom/android/email/provider/EmailContent$HostAuth;->mLogin:Ljava/lang/String;

    .line 337
    .local v8, username:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupExchange;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-object v0, v0, Lcom/android/email/provider/EmailContent$Account;->mHostAuthRecv:Lcom/android/email/provider/EmailContent$HostAuth;

    iget-object v3, v0, Lcom/android/email/provider/EmailContent$HostAuth;->mPassword:Ljava/lang/String;

    .line 338
    .local v3, password:Ljava/lang/String;
    if-eqz v8, :cond_0

    if-eqz v3, :cond_0

    const-string v0, "android.intent.action.EDIT"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 341
    const-string v0, "disableAutoDiscover"

    invoke-virtual {p1, v0, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    .line 344
    .local v7, disableAutoDiscover:Z
    if-nez v7, :cond_0

    .line 345
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupExchange;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupExchange;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-object v2, v0, Lcom/android/email/provider/EmailContent$Account;->mEmailAddress:Ljava/lang/String;

    const/4 v4, 0x0

    move-object v0, p0

    move v6, v5

    invoke-static/range {v0 .. v6}, Lcom/android/email/activity/setup/AccountSetupCheckSettings;->actionAutoDiscover(Landroid/app/Activity;Lcom/android/email/provider/EmailContent$Account;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 349
    .end local v7           #disableAutoDiscover:Z
    :cond_0
    return-void
.end method

.method public performAutoDiscoverAgain(Landroid/content/Intent;)V
    .locals 11
    .parameter "intent"

    .prologue
    const-string v6, "com.android.email.EMAIL"

    .line 357
    if-nez p1, :cond_1

    .line 358
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupExchange;->finish()V

    .line 390
    :cond_0
    :goto_0
    return-void

    .line 361
    :cond_1
    const-string v0, "com.android.email.USER"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 362
    .local v10, username:Ljava/lang/String;
    const-string v0, "com.android.email.PASSWORD"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 363
    .local v3, password:Ljava/lang/String;
    const-string v0, "com.android.email.DOMAIN"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 364
    .local v4, domain:Ljava/lang/String;
    const-string v0, "com.android.email.EMAIL"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 365
    .local v8, email:Ljava/lang/String;
    const-string v0, "com.android.email.TRUSTCERT"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    .line 368
    .local v5, bTrustCert:Z
    if-eqz v4, :cond_2

    .line 369
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupExchange;->mUsernameView:Landroid/widget/EditText;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\\"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 371
    :cond_2
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupExchange;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 373
    const/16 v0, 0x40

    invoke-virtual {v8, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    .line 374
    .local v7, amp:I
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupExchange;->mServerView:Landroid/widget/EditText;

    add-int/lit8 v1, v7, 0x1

    invoke-virtual {v8, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 376
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupExchange;->mTrustCertificatesView:Landroid/widget/CheckBox;

    invoke-virtual {v0, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 378
    invoke-direct {p0, p1}, Lcom/android/email/activity/setup/AccountSetupExchange;->getAutDiscoverUri(Landroid/content/Intent;)Ljava/net/URI;

    move-result-object v9

    .line 380
    .local v9, uri:Ljava/net/URI;
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupExchange;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    const-string v1, "com.android.email.EMAIL"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/email/provider/EmailContent$Account;->mEmailAddress:Ljava/lang/String;

    .line 381
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupExchange;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    invoke-virtual {v9}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/android/email/provider/EmailContent$Account;->setStoreUri(Landroid/content/Context;Ljava/lang/String;)V

    .line 382
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupExchange;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    invoke-virtual {v9}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/android/email/provider/EmailContent$Account;->setSenderUri(Landroid/content/Context;Ljava/lang/String;)V

    .line 385
    if-eqz v10, :cond_0

    if-eqz v3, :cond_0

    .line 386
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupExchange;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupExchange;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-object v2, v0, Lcom/android/email/provider/EmailContent$Account;->mEmailAddress:Ljava/lang/String;

    const/4 v6, 0x1

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/android/email/activity/setup/AccountSetupCheckSettings;->actionAutoDiscover(Landroid/app/Activity;Lcom/android/email/provider/EmailContent$Account;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    goto/16 :goto_0
.end method
