.class public Lcom/android/email/activity/setup/AccountSetupOutgoing;
.super Landroid/app/Activity;
.source "AccountSetupOutgoing.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# static fields
.field private static final smtpPorts:[I

.field private static final smtpSchemes:[Ljava/lang/String;


# instance fields
.field private mAccount:Lcom/android/email/provider/EmailContent$Account;

.field private mMakeDefault:Z

.field private mNextTwSoftkeyItem:Lcom/android/email/EmailTwSoftkeyItem;

.field private mPasswordView:Landroid/widget/EditText;

.field private mPortView:Landroid/widget/EditText;

.field private mRequireLoginSettingsView:Landroid/view/ViewGroup;

.field private mRequireLoginView:Landroid/widget/CheckBox;

.field private mSecurityTypeView:Landroid/widget/Spinner;

.field private mServerView:Landroid/widget/EditText;

.field private mUsernameView:Landroid/widget/EditText;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v1, 0x5

    .line 60
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/email/activity/setup/AccountSetupOutgoing;->smtpPorts:[I

    .line 64
    new-array v0, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "smtp"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "smtp+ssl+"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "smtp+ssl+trustallcerts"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "smtp+tls+"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "smtp+tls+trustallcerts"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/email/activity/setup/AccountSetupOutgoing;->smtpSchemes:[Ljava/lang/String;

    return-void

    .line 60
    :array_0
    .array-data 0x4
        0x4bt 0x2t 0x0t 0x0t
        0xd1t 0x1t 0x0t 0x0t
        0xd1t 0x1t 0x0t 0x0t
        0x4bt 0x2t 0x0t 0x0t
        0x4bt 0x2t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/email/activity/setup/AccountSetupOutgoing;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupOutgoing;->updatePortFromSecurityType()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/email/activity/setup/AccountSetupOutgoing;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupOutgoing;->mPortView:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/email/activity/setup/AccountSetupOutgoing;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupOutgoing;->validateFields()V

    return-void
.end method

.method public static actionEditOutgoingSettings(Landroid/app/Activity;Lcom/android/email/provider/EmailContent$Account;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 103
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/email/activity/setup/AccountSetupOutgoing;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 104
    const-string v1, "android.intent.action.EDIT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 105
    const-string v1, "account"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 106
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 107
    return-void
.end method

.method public static actionOutgoingSettings(Landroid/app/Activity;Lcom/android/email/provider/EmailContent$Account;ZZ)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 94
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/email/activity/setup/AccountSetupOutgoing;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 95
    const-string v1, "account"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 96
    const-string v1, "makeDefault"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 97
    const-string v1, "com.android.email.extra.setwiz_flow"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 98
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 99
    return-void
.end method

.method private getUri()Ljava/net/URI;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;,
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 343
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupOutgoing;->mSecurityTypeView:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/email/activity/setup/SpinnerOption;

    iget-object v1, v1, Lcom/android/email/activity/setup/SpinnerOption;->value:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 344
    .local v8, securityType:I
    const/4 v2, 0x0

    .line 345
    .local v2, userInfo:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupOutgoing;->mRequireLoginView:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 346
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSetupOutgoing;->mUsernameView:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ":"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSetupOutgoing;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 349
    :cond_0
    new-instance v0, Ljava/net/URI;

    sget-object v1, Lcom/android/email/activity/setup/AccountSetupOutgoing;->smtpSchemes:[Ljava/lang/String;

    aget-object v1, v1, v8

    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSetupOutgoing;->mServerView:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSetupOutgoing;->mPortView:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    move-object v6, v5

    move-object v7, v5

    invoke-direct/range {v0 .. v7}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    .local v0, uri:Ljava/net/URI;
    return-object v0
.end method

.method private onNext()V
    .locals 5

    .prologue
    .line 362
    :try_start_0
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupOutgoing;->getUri()Ljava/net/URI;

    move-result-object v0

    .line 363
    .local v0, uri:Ljava/net/URI;
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupOutgoing;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    invoke-virtual {v0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, p0, v3}, Lcom/android/email/provider/EmailContent$Account;->setSenderUri(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 371
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupOutgoing;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {p0, v2, v3, v4}, Lcom/android/email/activity/setup/AccountSetupCheckSettings;->actionValidateSettings(Landroid/app/Activity;Lcom/android/email/provider/EmailContent$Account;ZZ)V

    .line 372
    return-void

    .line 364
    .end local v0           #uri:Ljava/net/URI;
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 369
    .local v1, use:Ljava/net/URISyntaxException;
    new-instance v2, Ljava/lang/Error;

    invoke-direct {v2, v1}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method private updatePortFromSecurityType()V
    .locals 3

    .prologue
    .line 307
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupOutgoing;->mSecurityTypeView:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/email/activity/setup/SpinnerOption;

    iget-object v1, v1, Lcom/android/email/activity/setup/SpinnerOption;->value:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 308
    .local v0, securityType:I
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupOutgoing;->mPortView:Landroid/widget/EditText;

    sget-object v2, Lcom/android/email/activity/setup/AccountSetupOutgoing;->smtpPorts:[I

    aget v2, v2, v0

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 309
    return-void
.end method

.method private validateFields()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 275
    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSetupOutgoing;->mServerView:Landroid/widget/EditText;

    invoke-static {v3}, Lcom/android/email/Utility;->requiredFieldValid(Landroid/widget/TextView;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSetupOutgoing;->mPortView:Landroid/widget/EditText;

    invoke-static {v3}, Lcom/android/email/Utility;->requiredFieldValid(Landroid/widget/TextView;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v0, v5

    .line 278
    .local v0, enabled:Z
    :goto_0
    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSetupOutgoing;->mRequireLoginView:Landroid/widget/CheckBox;

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 279
    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSetupOutgoing;->mUsernameView:Landroid/widget/EditText;

    invoke-static {v3}, Lcom/android/email/Utility;->requiredFieldValid(Landroid/widget/TextView;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSetupOutgoing;->mPasswordView:Landroid/widget/EditText;

    invoke-static {v3}, Lcom/android/email/Utility;->requiredFieldValid(Landroid/widget/TextView;)Z

    move-result v3

    if-eqz v3, :cond_3

    move v0, v5

    .line 283
    :cond_0
    :goto_1
    if-eqz v0, :cond_1

    .line 285
    :try_start_0
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupOutgoing;->getUri()Ljava/net/URI;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 299
    :cond_1
    :goto_2
    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSetupOutgoing;->mNextTwSoftkeyItem:Lcom/android/email/EmailTwSoftkeyItem;

    invoke-virtual {v3, v0}, Lcom/android/email/EmailTwSoftkeyItem;->setEnabled(Z)V

    .line 300
    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSetupOutgoing;->mNextTwSoftkeyItem:Lcom/android/email/EmailTwSoftkeyItem;

    invoke-virtual {v3, v0}, Lcom/android/email/EmailTwSoftkeyItem;->setFocusable(Z)V

    .line 304
    return-void

    .end local v0           #enabled:Z
    :cond_2
    move v0, v4

    .line 275
    goto :goto_0

    .restart local v0       #enabled:Z
    :cond_3
    move v0, v4

    .line 279
    goto :goto_1

    .line 286
    :catch_0
    move-exception v2

    .line 287
    .local v2, use:Ljava/net/URISyntaxException;
    const/4 v0, 0x0

    .line 292
    goto :goto_2

    .line 290
    .end local v2           #use:Ljava/net/URISyntaxException;
    :catch_1
    move-exception v1

    .line 291
    .local v1, npe:Ljava/lang/NullPointerException;
    const/4 v0, 0x0

    goto :goto_2
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v3, 0x0

    .line 313
    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    .line 314
    const-string v1, "android.intent.action.EDIT"

    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupOutgoing;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 315
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupOutgoing;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    invoke-virtual {v1}, Lcom/android/email/provider/EmailContent$Account;->isSaved()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 316
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupOutgoing;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupOutgoing;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    invoke-virtual {v2}, Lcom/android/email/provider/EmailContent$Account;->toContentValues()Landroid/content/ContentValues;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Lcom/android/email/provider/EmailContent$Account;->update(Landroid/content/Context;Landroid/content/ContentValues;)I

    .line 317
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupOutgoing;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-object v1, v1, Lcom/android/email/provider/EmailContent$Account;->mHostAuthSend:Lcom/android/email/provider/EmailContent$HostAuth;

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupOutgoing;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-object v2, v2, Lcom/android/email/provider/EmailContent$Account;->mHostAuthSend:Lcom/android/email/provider/EmailContent$HostAuth;

    invoke-virtual {v2}, Lcom/android/email/provider/EmailContent$HostAuth;->toContentValues()Landroid/content/ContentValues;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Lcom/android/email/provider/EmailContent$HostAuth;->update(Landroid/content/Context;Landroid/content/ContentValues;)I

    .line 323
    :goto_0
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupOutgoing;->finish()V

    .line 333
    :cond_0
    :goto_1
    return-void

    .line 319
    :cond_1
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupOutgoing;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    invoke-virtual {v1, p0}, Lcom/android/email/provider/EmailContent$Account;->save(Landroid/content/Context;)Landroid/net/Uri;

    goto :goto_0

    .line 328
    :cond_2
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupOutgoing;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "com.android.email.extra.setwiz_flow"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 329
    .local v0, mSetWizMode:Z
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupOutgoing;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-boolean v2, p0, Lcom/android/email/activity/setup/AccountSetupOutgoing;->mMakeDefault:Z

    invoke-static {p0, v1, v2, v3, v0}, Lcom/android/email/activity/setup/AccountSetupOptions;->actionOptions(Landroid/app/Activity;Lcom/android/email/provider/EmailContent$Account;ZZZ)V

    .line 330
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupOutgoing;->finish()V

    goto :goto_1
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 388
    if-eqz p2, :cond_2

    .line 389
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupOutgoing;->mRequireLoginSettingsView:Landroid/view/ViewGroup;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 390
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupOutgoing;->mPortView:Landroid/widget/EditText;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 395
    :goto_0
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupOutgoing;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_0

    .line 397
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupOutgoing;->mServerView:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    .line 399
    :cond_0
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupOutgoing;->mPortView:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->hasFocus()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 401
    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Lcom/android/email/activity/setup/AccountSetupOutgoing;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 402
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupOutgoing;->mPortView:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    .line 405
    .end local v0           #imm:Landroid/view/inputmethod/InputMethodManager;
    :cond_1
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupOutgoing;->validateFields()V

    .line 406
    return-void

    .line 392
    :cond_2
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupOutgoing;->mRequireLoginSettingsView:Landroid/view/ViewGroup;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 393
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupOutgoing;->mPortView:Landroid/widget/EditText;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setImeOptions(I)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 375
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 384
    :goto_0
    return-void

    .line 379
    :pswitch_0
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupOutgoing;->onNext()V

    goto :goto_0

    .line 375
    :pswitch_data_0
    .packed-switch 0x7f070022
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 13
    .parameter "savedInstanceState"

    .prologue
    .line 111
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 112
    const v9, 0x7f03000a

    invoke-virtual {p0, v9}, Lcom/android/email/activity/setup/AccountSetupOutgoing;->setContentView(I)V

    .line 114
    const v9, 0x7f070026

    invoke-virtual {p0, v9}, Lcom/android/email/activity/setup/AccountSetupOutgoing;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSetupOutgoing;->mUsernameView:Landroid/widget/EditText;

    .line 115
    const v9, 0x7f07001e

    invoke-virtual {p0, v9}, Lcom/android/email/activity/setup/AccountSetupOutgoing;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSetupOutgoing;->mPasswordView:Landroid/widget/EditText;

    .line 116
    const v9, 0x7f070027

    invoke-virtual {p0, v9}, Lcom/android/email/activity/setup/AccountSetupOutgoing;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSetupOutgoing;->mServerView:Landroid/widget/EditText;

    .line 117
    const v9, 0x7f07002c

    invoke-virtual {p0, v9}, Lcom/android/email/activity/setup/AccountSetupOutgoing;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSetupOutgoing;->mPortView:Landroid/widget/EditText;

    .line 118
    const v9, 0x7f070045

    invoke-virtual {p0, v9}, Lcom/android/email/activity/setup/AccountSetupOutgoing;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSetupOutgoing;->mRequireLoginView:Landroid/widget/CheckBox;

    .line 119
    const v9, 0x7f070046

    invoke-virtual {p0, v9}, Lcom/android/email/activity/setup/AccountSetupOutgoing;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSetupOutgoing;->mRequireLoginSettingsView:Landroid/view/ViewGroup;

    .line 120
    const v9, 0x7f07002d

    invoke-virtual {p0, v9}, Lcom/android/email/activity/setup/AccountSetupOutgoing;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSetupOutgoing;->mSecurityTypeView:Landroid/widget/Spinner;

    .line 123
    const v9, 0x7f070022

    invoke-virtual {p0, v9}, Lcom/android/email/activity/setup/AccountSetupOutgoing;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/email/EmailTwSoftkeyItem;

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSetupOutgoing;->mNextTwSoftkeyItem:Lcom/android/email/EmailTwSoftkeyItem;

    .line 125
    iget-object v9, p0, Lcom/android/email/activity/setup/AccountSetupOutgoing;->mNextTwSoftkeyItem:Lcom/android/email/EmailTwSoftkeyItem;

    invoke-virtual {v9, p0}, Lcom/android/email/EmailTwSoftkeyItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 129
    iget-object v9, p0, Lcom/android/email/activity/setup/AccountSetupOutgoing;->mRequireLoginView:Landroid/widget/CheckBox;

    invoke-virtual {v9, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 131
    const/4 v9, 0x5

    new-array v2, v9, [Lcom/android/email/activity/setup/SpinnerOption;

    const/4 v9, 0x0

    new-instance v10, Lcom/android/email/activity/setup/SpinnerOption;

    const/4 v11, 0x0

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const v12, 0x7f0800a5

    invoke-virtual {p0, v12}, Lcom/android/email/activity/setup/AccountSetupOutgoing;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v11, v12}, Lcom/android/email/activity/setup/SpinnerOption;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v10, v2, v9

    const/4 v9, 0x1

    new-instance v10, Lcom/android/email/activity/setup/SpinnerOption;

    const/4 v11, 0x1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const v12, 0x7f0800a7

    invoke-virtual {p0, v12}, Lcom/android/email/activity/setup/AccountSetupOutgoing;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v11, v12}, Lcom/android/email/activity/setup/SpinnerOption;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v10, v2, v9

    const/4 v9, 0x2

    new-instance v10, Lcom/android/email/activity/setup/SpinnerOption;

    const/4 v11, 0x2

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const v12, 0x7f0800a6

    invoke-virtual {p0, v12}, Lcom/android/email/activity/setup/AccountSetupOutgoing;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v11, v12}, Lcom/android/email/activity/setup/SpinnerOption;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v10, v2, v9

    const/4 v9, 0x3

    new-instance v10, Lcom/android/email/activity/setup/SpinnerOption;

    const/4 v11, 0x3

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const v12, 0x7f0800a9

    invoke-virtual {p0, v12}, Lcom/android/email/activity/setup/AccountSetupOutgoing;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v11, v12}, Lcom/android/email/activity/setup/SpinnerOption;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v10, v2, v9

    const/4 v9, 0x4

    new-instance v10, Lcom/android/email/activity/setup/SpinnerOption;

    const/4 v11, 0x4

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const v12, 0x7f0800a8

    invoke-virtual {p0, v12}, Lcom/android/email/activity/setup/AccountSetupOutgoing;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v11, v12}, Lcom/android/email/activity/setup/SpinnerOption;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v10, v2, v9

    .line 141
    .local v2, securityTypes:[Lcom/android/email/activity/setup/SpinnerOption;
    new-instance v3, Landroid/widget/ArrayAdapter;

    const v9, 0x1090008

    invoke-direct {v3, p0, v9, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 143
    .local v3, securityTypesAdapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Lcom/android/email/activity/setup/SpinnerOption;>;"
    const v9, 0x1090009

    invoke-virtual {v3, v9}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 144
    iget-object v9, p0, Lcom/android/email/activity/setup/AccountSetupOutgoing;->mSecurityTypeView:Landroid/widget/Spinner;

    invoke-virtual {v9, v3}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 150
    iget-object v9, p0, Lcom/android/email/activity/setup/AccountSetupOutgoing;->mSecurityTypeView:Landroid/widget/Spinner;

    new-instance v10, Lcom/android/email/activity/setup/AccountSetupOutgoing$1;

    invoke-direct {v10, p0}, Lcom/android/email/activity/setup/AccountSetupOutgoing$1;-><init>(Lcom/android/email/activity/setup/AccountSetupOutgoing;)V

    invoke-virtual {v9, v10}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 163
    new-instance v8, Lcom/android/email/activity/setup/AccountSetupOutgoing$2;

    invoke-direct {v8, p0}, Lcom/android/email/activity/setup/AccountSetupOutgoing$2;-><init>(Lcom/android/email/activity/setup/AccountSetupOutgoing;)V

    .line 182
    .local v8, validationTextWatcher:Landroid/text/TextWatcher;
    iget-object v9, p0, Lcom/android/email/activity/setup/AccountSetupOutgoing;->mUsernameView:Landroid/widget/EditText;

    invoke-virtual {v9, v8}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 183
    iget-object v9, p0, Lcom/android/email/activity/setup/AccountSetupOutgoing;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v9, v8}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 184
    iget-object v9, p0, Lcom/android/email/activity/setup/AccountSetupOutgoing;->mServerView:Landroid/widget/EditText;

    invoke-virtual {v9, v8}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 185
    iget-object v9, p0, Lcom/android/email/activity/setup/AccountSetupOutgoing;->mPortView:Landroid/widget/EditText;

    invoke-virtual {v9, v8}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 190
    iget-object v9, p0, Lcom/android/email/activity/setup/AccountSetupOutgoing;->mPortView:Landroid/widget/EditText;

    const-string v10, "0123456789"

    invoke-static {v10}, Landroid/text/method/DigitsKeyListener;->getInstance(Ljava/lang/String;)Landroid/text/method/DigitsKeyListener;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 191
    iget-object v9, p0, Lcom/android/email/activity/setup/AccountSetupOutgoing;->mRequireLoginView:Landroid/widget/CheckBox;

    invoke-virtual {v9}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 192
    iget-object v9, p0, Lcom/android/email/activity/setup/AccountSetupOutgoing;->mPortView:Landroid/widget/EditText;

    const/4 v10, 0x5

    invoke-virtual {v9, v10}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 196
    :goto_0
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupOutgoing;->getIntent()Landroid/content/Intent;

    move-result-object v9

    const-string v10, "account"

    invoke-virtual {v9, v10}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/email/provider/EmailContent$Account;

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSetupOutgoing;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    .line 197
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupOutgoing;->getIntent()Landroid/content/Intent;

    move-result-object v9

    const-string v10, "makeDefault"

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v9

    iput-boolean v9, p0, Lcom/android/email/activity/setup/AccountSetupOutgoing;->mMakeDefault:Z

    .line 203
    if-eqz p1, :cond_0

    const-string v9, "account"

    invoke-virtual {p1, v9}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 204
    const-string v9, "account"

    invoke-virtual {p1, v9}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    .end local p1
    check-cast p1, Lcom/android/email/provider/EmailContent$Account;

    iput-object p1, p0, Lcom/android/email/activity/setup/AccountSetupOutgoing;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    .line 209
    :cond_0
    :try_start_0
    new-instance v4, Ljava/net/URI;

    iget-object v9, p0, Lcom/android/email/activity/setup/AccountSetupOutgoing;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    invoke-virtual {v9, p0}, Lcom/android/email/provider/EmailContent$Account;->getSenderUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v4, v9}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 210
    .local v4, uri:Ljava/net/URI;
    const/4 v7, 0x0

    .line 211
    .local v7, username:Ljava/lang/String;
    const/4 v1, 0x0

    .line 212
    .local v1, password:Ljava/lang/String;
    invoke-virtual {v4}, Ljava/net/URI;->getUserInfo()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_1

    .line 213
    invoke-virtual {v4}, Ljava/net/URI;->getUserInfo()Ljava/lang/String;

    move-result-object v9

    const-string v10, ":"

    const/4 v11, 0x2

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v6

    .line 214
    .local v6, userInfoParts:[Ljava/lang/String;
    const/4 v9, 0x0

    aget-object v7, v6, v9

    .line 215
    array-length v9, v6

    const/4 v10, 0x1

    if-le v9, v10, :cond_1

    .line 216
    const/4 v9, 0x1

    aget-object v1, v6, v9

    .line 220
    .end local v6           #userInfoParts:[Ljava/lang/String;
    :cond_1
    if-eqz v7, :cond_2

    .line 221
    iget-object v9, p0, Lcom/android/email/activity/setup/AccountSetupOutgoing;->mUsernameView:Landroid/widget/EditText;

    const v10, 0x7f0800b4

    invoke-virtual {v9, v10}, Landroid/widget/EditText;->setHint(I)V

    .line 222
    iget-object v9, p0, Lcom/android/email/activity/setup/AccountSetupOutgoing;->mUsernameView:Landroid/widget/EditText;

    invoke-virtual {v9, v7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 223
    iget-object v9, p0, Lcom/android/email/activity/setup/AccountSetupOutgoing;->mRequireLoginView:Landroid/widget/CheckBox;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 226
    :cond_2
    if-eqz v1, :cond_3

    .line 227
    iget-object v9, p0, Lcom/android/email/activity/setup/AccountSetupOutgoing;->mPasswordView:Landroid/widget/EditText;

    const v10, 0x7f0800b5

    invoke-virtual {v9, v10}, Landroid/widget/EditText;->setHint(I)V

    .line 228
    iget-object v9, p0, Lcom/android/email/activity/setup/AccountSetupOutgoing;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v9, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 231
    :cond_3
    iget-object v9, p0, Lcom/android/email/activity/setup/AccountSetupOutgoing;->mServerView:Landroid/widget/EditText;

    const v10, 0x7f0800b0

    invoke-virtual {v9, v10}, Landroid/widget/EditText;->setHint(I)V

    .line 232
    iget-object v9, p0, Lcom/android/email/activity/setup/AccountSetupOutgoing;->mPortView:Landroid/widget/EditText;

    const v10, 0x7f0800b1

    invoke-virtual {v9, v10}, Landroid/widget/EditText;->setHint(I)V

    .line 234
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    sget-object v9, Lcom/android/email/activity/setup/AccountSetupOutgoing;->smtpSchemes:[Ljava/lang/String;

    array-length v9, v9

    if-ge v0, v9, :cond_6

    .line 235
    sget-object v9, Lcom/android/email/activity/setup/AccountSetupOutgoing;->smtpSchemes:[Ljava/lang/String;

    aget-object v9, v9, v0

    invoke-virtual {v4}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 236
    iget-object v9, p0, Lcom/android/email/activity/setup/AccountSetupOutgoing;->mSecurityTypeView:Landroid/widget/Spinner;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/email/activity/setup/SpinnerOption;->setSpinnerOptionValue(Landroid/widget/Spinner;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 234
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 194
    .end local v0           #i:I
    .end local v1           #password:Ljava/lang/String;
    .end local v4           #uri:Ljava/net/URI;
    .end local v7           #username:Ljava/lang/String;
    .restart local p1
    :cond_5
    iget-object v9, p0, Lcom/android/email/activity/setup/AccountSetupOutgoing;->mPortView:Landroid/widget/EditText;

    const/4 v10, 0x6

    invoke-virtual {v9, v10}, Landroid/widget/EditText;->setImeOptions(I)V

    goto/16 :goto_0

    .line 240
    .end local p1
    .restart local v0       #i:I
    .restart local v1       #password:Ljava/lang/String;
    .restart local v4       #uri:Ljava/net/URI;
    .restart local v7       #username:Ljava/lang/String;
    :cond_6
    :try_start_1
    invoke-virtual {v4}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_7

    .line 241
    iget-object v9, p0, Lcom/android/email/activity/setup/AccountSetupOutgoing;->mServerView:Landroid/widget/EditText;

    invoke-virtual {v4}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 244
    :cond_7
    invoke-virtual {v4}, Ljava/net/URI;->getPort()I

    move-result v9

    const/4 v10, -0x1

    if-eq v9, v10, :cond_8

    .line 245
    iget-object v9, p0, Lcom/android/email/activity/setup/AccountSetupOutgoing;->mPortView:Landroid/widget/EditText;

    invoke-virtual {v4}, Ljava/net/URI;->getPort()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_0

    .line 256
    :goto_2
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupOutgoing;->validateFields()V

    .line 258
    iget-object v9, p0, Lcom/android/email/activity/setup/AccountSetupOutgoing;->mUsernameView:Landroid/widget/EditText;

    iget-object v10, p0, Lcom/android/email/activity/setup/AccountSetupOutgoing;->mUsernameView:Landroid/widget/EditText;

    invoke-virtual {v10}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v10

    invoke-interface {v10}, Landroid/text/Editable;->length()I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/widget/EditText;->setSelection(I)V

    .line 259
    iget-object v9, p0, Lcom/android/email/activity/setup/AccountSetupOutgoing;->mPasswordView:Landroid/widget/EditText;

    iget-object v10, p0, Lcom/android/email/activity/setup/AccountSetupOutgoing;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v10}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v10

    invoke-interface {v10}, Landroid/text/Editable;->length()I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/widget/EditText;->setSelection(I)V

    .line 260
    iget-object v9, p0, Lcom/android/email/activity/setup/AccountSetupOutgoing;->mServerView:Landroid/widget/EditText;

    iget-object v10, p0, Lcom/android/email/activity/setup/AccountSetupOutgoing;->mServerView:Landroid/widget/EditText;

    invoke-virtual {v10}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v10

    invoke-interface {v10}, Landroid/text/Editable;->length()I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/widget/EditText;->setSelection(I)V

    .line 261
    iget-object v9, p0, Lcom/android/email/activity/setup/AccountSetupOutgoing;->mPortView:Landroid/widget/EditText;

    iget-object v10, p0, Lcom/android/email/activity/setup/AccountSetupOutgoing;->mPortView:Landroid/widget/EditText;

    invoke-virtual {v10}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v10

    invoke-interface {v10}, Landroid/text/Editable;->length()I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/widget/EditText;->setSelection(I)V

    .line 262
    return-void

    .line 247
    :cond_8
    :try_start_2
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupOutgoing;->updatePortFromSecurityType()V
    :try_end_2
    .catch Ljava/net/URISyntaxException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    .line 249
    .end local v0           #i:I
    .end local v1           #password:Ljava/lang/String;
    .end local v4           #uri:Ljava/net/URI;
    .end local v7           #username:Ljava/lang/String;
    :catch_0
    move-exception v9

    move-object v5, v9

    .line 253
    .local v5, use:Ljava/net/URISyntaxException;
    new-instance v9, Ljava/lang/Error;

    invoke-direct {v9, v5}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v9
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 266
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 267
    const-string v0, "account"

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupOutgoing;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 268
    return-void
.end method
