.class public Lcom/android/email/activity/setup/AccountSetupOutgoing;
.super Landroid/app/Activity;
.source "AccountSetupOutgoing.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# static fields
.field private static final EXTRA_ACCOUNT:Ljava/lang/String; = "account"

.field private static final EXTRA_MAKE_DEFAULT:Ljava/lang/String; = "makeDefault"

.field public static final EXTRA_SETWIZ_FLOW:Ljava/lang/String; = "com.android.email.extra.setwiz_flow"

.field private static final MAX_PORT:I = 0xffff

.field private static final smtpPorts:[I

.field private static final smtpSchemes:[Ljava/lang/String;


# instance fields
.field private mAccount:Lcom/android/email/provider/EmailContent$Account;

.field private mMakeDefault:Z

.field private mNextTwSoftkeyItem:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

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

    .line 57
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/email/activity/setup/AccountSetupOutgoing;->smtpPorts:[I

    .line 61
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

    .line 57
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
    .line 49
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/email/activity/setup/AccountSetupOutgoing;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupOutgoing;->updatePortFromSecurityType()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/email/activity/setup/AccountSetupOutgoing;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupOutgoing;->mPortView:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/email/activity/setup/AccountSetupOutgoing;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupOutgoing;->validateFields()V

    return-void
.end method

.method public static actionEditOutgoingSettings(Landroid/app/Activity;Lcom/android/email/provider/EmailContent$Account;)V
    .locals 2
    .parameter "fromActivity"
    .parameter "account"

    .prologue
    .line 100
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/email/activity/setup/AccountSetupOutgoing;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 101
    .local v0, i:Landroid/content/Intent;
    const-string v1, "android.intent.action.EDIT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 102
    const-string v1, "account"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 103
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 104
    return-void
.end method

.method public static actionOutgoingSettings(Landroid/app/Activity;Lcom/android/email/provider/EmailContent$Account;Z)V
    .locals 2
    .parameter "fromActivity"
    .parameter "account"
    .parameter "makeDefault"

    .prologue
    .line 81
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/email/activity/setup/AccountSetupOutgoing;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 82
    .local v0, i:Landroid/content/Intent;
    const-string v1, "account"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 83
    const-string v1, "makeDefault"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 84
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 85
    return-void
.end method

.method public static actionOutgoingSettings(Landroid/app/Activity;Lcom/android/email/provider/EmailContent$Account;ZZ)V
    .locals 2
    .parameter "fromActivity"
    .parameter "account"
    .parameter "makeDefault"
    .parameter "setWizMode"

    .prologue
    .line 91
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/email/activity/setup/AccountSetupOutgoing;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 92
    .local v0, i:Landroid/content/Intent;
    const-string v1, "account"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 93
    const-string v1, "makeDefault"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 94
    const-string v1, "com.android.email.extra.setwiz_flow"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 95
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 96
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

    .line 334
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupOutgoing;->mSecurityTypeView:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/email/activity/setup/SpinnerOption;

    iget-object v1, v1, Lcom/android/email/activity/setup/SpinnerOption;->value:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 335
    .local v8, securityType:I
    const/4 v2, 0x0

    .line 336
    .local v2, userInfo:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupOutgoing;->mRequireLoginView:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 337
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

    .line 340
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

    .line 347
    .local v0, uri:Ljava/net/URI;
    return-object v0
.end method

.method private onNext()V
    .locals 5

    .prologue
    .line 353
    :try_start_0
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupOutgoing;->getUri()Ljava/net/URI;

    move-result-object v0

    .line 354
    .local v0, uri:Ljava/net/URI;
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupOutgoing;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    invoke-virtual {v0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, p0, v3}, Lcom/android/email/provider/EmailContent$Account;->setSenderUri(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 362
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupOutgoing;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {p0, v2, v3, v4}, Lcom/android/email/activity/setup/AccountSetupCheckSettings;->actionValidateSettings(Landroid/app/Activity;Lcom/android/email/provider/EmailContent$Account;ZZ)V

    .line 363
    return-void

    .line 355
    .end local v0           #uri:Ljava/net/URI;
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 360
    .local v1, use:Ljava/net/URISyntaxException;
    new-instance v2, Ljava/lang/Error;

    invoke-direct {v2, v1}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method private updatePortFromSecurityType()V
    .locals 3

    .prologue
    .line 298
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupOutgoing;->mSecurityTypeView:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/email/activity/setup/SpinnerOption;

    iget-object v1, v1, Lcom/android/email/activity/setup/SpinnerOption;->value:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 299
    .local v0, securityType:I
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupOutgoing;->mPortView:Landroid/widget/EditText;

    sget-object v2, Lcom/android/email/activity/setup/AccountSetupOutgoing;->smtpPorts:[I

    aget v2, v2, v0

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 300
    return-void
.end method

.method private validateFields()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 267
    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSetupOutgoing;->mServerView:Landroid/widget/EditText;

    invoke-static {v3}, Lcom/android/email/Utility;->requiredFieldValid(Landroid/widget/TextView;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSetupOutgoing;->mPortView:Landroid/widget/EditText;

    invoke-static {v3}, Lcom/android/email/Utility;->requiredFieldValid(Landroid/widget/TextView;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v0, v5

    .line 270
    .local v0, enabled:Z
    :goto_0
    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSetupOutgoing;->mRequireLoginView:Landroid/widget/CheckBox;

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 271
    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSetupOutgoing;->mUsernameView:Landroid/widget/EditText;

    invoke-static {v3}, Lcom/android/email/Utility;->requiredFieldValid(Landroid/widget/TextView;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSetupOutgoing;->mPasswordView:Landroid/widget/EditText;

    invoke-static {v3}, Lcom/android/email/Utility;->requiredFieldValid(Landroid/widget/TextView;)Z

    move-result v3

    if-eqz v3, :cond_3

    move v0, v5

    .line 275
    :cond_0
    :goto_1
    if-eqz v0, :cond_1

    .line 277
    :try_start_0
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupOutgoing;->getUri()Ljava/net/URI;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 291
    :cond_1
    :goto_2
    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSetupOutgoing;->mNextTwSoftkeyItem:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    invoke-virtual {v3, v0}, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->setEnabled(Z)V

    .line 295
    return-void

    .end local v0           #enabled:Z
    :cond_2
    move v0, v4

    .line 267
    goto :goto_0

    .restart local v0       #enabled:Z
    :cond_3
    move v0, v4

    .line 271
    goto :goto_1

    .line 278
    :catch_0
    move-exception v2

    .line 279
    .local v2, use:Ljava/net/URISyntaxException;
    const/4 v0, 0x0

    .line 284
    goto :goto_2

    .line 282
    .end local v2           #use:Ljava/net/URISyntaxException;
    :catch_1
    move-exception v1

    .line 283
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

    .line 304
    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    .line 305
    const-string v1, "android.intent.action.EDIT"

    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupOutgoing;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 306
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupOutgoing;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    invoke-virtual {v1}, Lcom/android/email/provider/EmailContent$Account;->isSaved()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 307
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupOutgoing;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupOutgoing;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    invoke-virtual {v2}, Lcom/android/email/provider/EmailContent$Account;->toContentValues()Landroid/content/ContentValues;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Lcom/android/email/provider/EmailContent$Account;->update(Landroid/content/Context;Landroid/content/ContentValues;)I

    .line 308
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupOutgoing;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-object v1, v1, Lcom/android/email/provider/EmailContent$Account;->mHostAuthSend:Lcom/android/email/provider/EmailContent$HostAuth;

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupOutgoing;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-object v2, v2, Lcom/android/email/provider/EmailContent$Account;->mHostAuthSend:Lcom/android/email/provider/EmailContent$HostAuth;

    invoke-virtual {v2}, Lcom/android/email/provider/EmailContent$HostAuth;->toContentValues()Landroid/content/ContentValues;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Lcom/android/email/provider/EmailContent$HostAuth;->update(Landroid/content/Context;Landroid/content/ContentValues;)I

    .line 314
    :goto_0
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupOutgoing;->finish()V

    .line 324
    :cond_0
    :goto_1
    return-void

    .line 310
    :cond_1
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupOutgoing;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    invoke-virtual {v1, p0}, Lcom/android/email/provider/EmailContent$Account;->save(Landroid/content/Context;)Landroid/net/Uri;

    goto :goto_0

    .line 319
    :cond_2
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupOutgoing;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "com.android.email.extra.setwiz_flow"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 320
    .local v0, mSetWizMode:Z
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupOutgoing;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-boolean v2, p0, Lcom/android/email/activity/setup/AccountSetupOutgoing;->mMakeDefault:Z

    invoke-static {p0, v1, v2, v3, v0}, Lcom/android/email/activity/setup/AccountSetupOptions;->actionOptions(Landroid/app/Activity;Lcom/android/email/provider/EmailContent$Account;ZZZ)V

    .line 321
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupOutgoing;->finish()V

    goto :goto_1
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 378
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupOutgoing;->mRequireLoginSettingsView:Landroid/view/ViewGroup;

    if-eqz p2, :cond_0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 379
    const/16 v0, 0x9

    invoke-virtual {p1, v0}, Landroid/widget/CompoundButton;->playSoundEffect(I)V

    .line 381
    if-eqz p2, :cond_1

    .line 382
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupOutgoing;->mPortView:Landroid/widget/EditText;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 386
    :goto_1
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupOutgoing;->validateFields()V

    .line 387
    return-void

    .line 378
    :cond_0
    const/16 v1, 0x8

    goto :goto_0

    .line 384
    :cond_1
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupOutgoing;->mPortView:Landroid/widget/EditText;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setImeOptions(I)V

    goto :goto_1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 366
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 375
    :goto_0
    return-void

    .line 370
    :pswitch_0
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupOutgoing;->onNext()V

    goto :goto_0

    .line 366
    :pswitch_data_0
    .packed-switch 0x7f07001f
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 13
    .parameter "savedInstanceState"

    .prologue
    .line 108
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 109
    const v9, 0x7f03000a

    invoke-virtual {p0, v9}, Lcom/android/email/activity/setup/AccountSetupOutgoing;->setContentView(I)V

    .line 111
    const v9, 0x7f070023

    invoke-virtual {p0, v9}, Lcom/android/email/activity/setup/AccountSetupOutgoing;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSetupOutgoing;->mUsernameView:Landroid/widget/EditText;

    .line 112
    const v9, 0x7f07001a

    invoke-virtual {p0, v9}, Lcom/android/email/activity/setup/AccountSetupOutgoing;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSetupOutgoing;->mPasswordView:Landroid/widget/EditText;

    .line 113
    const v9, 0x7f070024

    invoke-virtual {p0, v9}, Lcom/android/email/activity/setup/AccountSetupOutgoing;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSetupOutgoing;->mServerView:Landroid/widget/EditText;

    .line 114
    const v9, 0x7f070029

    invoke-virtual {p0, v9}, Lcom/android/email/activity/setup/AccountSetupOutgoing;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSetupOutgoing;->mPortView:Landroid/widget/EditText;

    .line 115
    const v9, 0x7f07003b

    invoke-virtual {p0, v9}, Lcom/android/email/activity/setup/AccountSetupOutgoing;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSetupOutgoing;->mRequireLoginView:Landroid/widget/CheckBox;

    .line 116
    const v9, 0x7f07003c

    invoke-virtual {p0, v9}, Lcom/android/email/activity/setup/AccountSetupOutgoing;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSetupOutgoing;->mRequireLoginSettingsView:Landroid/view/ViewGroup;

    .line 117
    const v9, 0x7f07002a

    invoke-virtual {p0, v9}, Lcom/android/email/activity/setup/AccountSetupOutgoing;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSetupOutgoing;->mSecurityTypeView:Landroid/widget/Spinner;

    .line 120
    const v9, 0x7f07001f

    invoke-virtual {p0, v9}, Lcom/android/email/activity/setup/AccountSetupOutgoing;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSetupOutgoing;->mNextTwSoftkeyItem:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    .line 122
    iget-object v9, p0, Lcom/android/email/activity/setup/AccountSetupOutgoing;->mNextTwSoftkeyItem:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    invoke-virtual {v9, p0}, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 126
    iget-object v9, p0, Lcom/android/email/activity/setup/AccountSetupOutgoing;->mRequireLoginView:Landroid/widget/CheckBox;

    invoke-virtual {v9, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 128
    const/4 v9, 0x5

    new-array v2, v9, [Lcom/android/email/activity/setup/SpinnerOption;

    const/4 v9, 0x0

    new-instance v10, Lcom/android/email/activity/setup/SpinnerOption;

    const/4 v11, 0x0

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const v12, 0x7f08009b

    invoke-virtual {p0, v12}, Lcom/android/email/activity/setup/AccountSetupOutgoing;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v11, v12}, Lcom/android/email/activity/setup/SpinnerOption;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v10, v2, v9

    const/4 v9, 0x1

    new-instance v10, Lcom/android/email/activity/setup/SpinnerOption;

    const/4 v11, 0x1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const v12, 0x7f08009d

    invoke-virtual {p0, v12}, Lcom/android/email/activity/setup/AccountSetupOutgoing;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v11, v12}, Lcom/android/email/activity/setup/SpinnerOption;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v10, v2, v9

    const/4 v9, 0x2

    new-instance v10, Lcom/android/email/activity/setup/SpinnerOption;

    const/4 v11, 0x2

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const v12, 0x7f08009c

    invoke-virtual {p0, v12}, Lcom/android/email/activity/setup/AccountSetupOutgoing;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v11, v12}, Lcom/android/email/activity/setup/SpinnerOption;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v10, v2, v9

    const/4 v9, 0x3

    new-instance v10, Lcom/android/email/activity/setup/SpinnerOption;

    const/4 v11, 0x3

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const v12, 0x7f08009f

    invoke-virtual {p0, v12}, Lcom/android/email/activity/setup/AccountSetupOutgoing;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v11, v12}, Lcom/android/email/activity/setup/SpinnerOption;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v10, v2, v9

    const/4 v9, 0x4

    new-instance v10, Lcom/android/email/activity/setup/SpinnerOption;

    const/4 v11, 0x4

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const v12, 0x7f08009e

    invoke-virtual {p0, v12}, Lcom/android/email/activity/setup/AccountSetupOutgoing;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v11, v12}, Lcom/android/email/activity/setup/SpinnerOption;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v10, v2, v9

    .line 138
    .local v2, securityTypes:[Lcom/android/email/activity/setup/SpinnerOption;
    new-instance v3, Landroid/widget/ArrayAdapter;

    const v9, 0x1090008

    invoke-direct {v3, p0, v9, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 140
    .local v3, securityTypesAdapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Lcom/android/email/activity/setup/SpinnerOption;>;"
    const v9, 0x1090009

    invoke-virtual {v3, v9}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 141
    iget-object v9, p0, Lcom/android/email/activity/setup/AccountSetupOutgoing;->mSecurityTypeView:Landroid/widget/Spinner;

    invoke-virtual {v9, v3}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 147
    iget-object v9, p0, Lcom/android/email/activity/setup/AccountSetupOutgoing;->mSecurityTypeView:Landroid/widget/Spinner;

    new-instance v10, Lcom/android/email/activity/setup/AccountSetupOutgoing$1;

    invoke-direct {v10, p0}, Lcom/android/email/activity/setup/AccountSetupOutgoing$1;-><init>(Lcom/android/email/activity/setup/AccountSetupOutgoing;)V

    invoke-virtual {v9, v10}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 160
    new-instance v8, Lcom/android/email/activity/setup/AccountSetupOutgoing$2;

    invoke-direct {v8, p0}, Lcom/android/email/activity/setup/AccountSetupOutgoing$2;-><init>(Lcom/android/email/activity/setup/AccountSetupOutgoing;)V

    .line 179
    .local v8, validationTextWatcher:Landroid/text/TextWatcher;
    iget-object v9, p0, Lcom/android/email/activity/setup/AccountSetupOutgoing;->mUsernameView:Landroid/widget/EditText;

    invoke-virtual {v9, v8}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 180
    iget-object v9, p0, Lcom/android/email/activity/setup/AccountSetupOutgoing;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v9, v8}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 181
    iget-object v9, p0, Lcom/android/email/activity/setup/AccountSetupOutgoing;->mServerView:Landroid/widget/EditText;

    invoke-virtual {v9, v8}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 182
    iget-object v9, p0, Lcom/android/email/activity/setup/AccountSetupOutgoing;->mPortView:Landroid/widget/EditText;

    invoke-virtual {v9, v8}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 187
    iget-object v9, p0, Lcom/android/email/activity/setup/AccountSetupOutgoing;->mPortView:Landroid/widget/EditText;

    const-string v10, "0123456789"

    invoke-static {v10}, Landroid/text/method/DigitsKeyListener;->getInstance(Ljava/lang/String;)Landroid/text/method/DigitsKeyListener;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 188
    iget-object v9, p0, Lcom/android/email/activity/setup/AccountSetupOutgoing;->mRequireLoginView:Landroid/widget/CheckBox;

    invoke-virtual {v9}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 189
    iget-object v9, p0, Lcom/android/email/activity/setup/AccountSetupOutgoing;->mPortView:Landroid/widget/EditText;

    const/4 v10, 0x5

    invoke-virtual {v9, v10}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 193
    :goto_0
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupOutgoing;->getIntent()Landroid/content/Intent;

    move-result-object v9

    const-string v10, "account"

    invoke-virtual {v9, v10}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/email/provider/EmailContent$Account;

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSetupOutgoing;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    .line 194
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupOutgoing;->getIntent()Landroid/content/Intent;

    move-result-object v9

    const-string v10, "makeDefault"

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v9

    iput-boolean v9, p0, Lcom/android/email/activity/setup/AccountSetupOutgoing;->mMakeDefault:Z

    .line 200
    if-eqz p1, :cond_0

    const-string v9, "account"

    invoke-virtual {p1, v9}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 201
    const-string v9, "account"

    invoke-virtual {p1, v9}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    .end local p1
    check-cast p1, Lcom/android/email/provider/EmailContent$Account;

    iput-object p1, p0, Lcom/android/email/activity/setup/AccountSetupOutgoing;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    .line 206
    :cond_0
    :try_start_0
    new-instance v4, Ljava/net/URI;

    iget-object v9, p0, Lcom/android/email/activity/setup/AccountSetupOutgoing;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    invoke-virtual {v9, p0}, Lcom/android/email/provider/EmailContent$Account;->getSenderUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v4, v9}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 207
    .local v4, uri:Ljava/net/URI;
    const/4 v7, 0x0

    .line 208
    .local v7, username:Ljava/lang/String;
    const/4 v1, 0x0

    .line 209
    .local v1, password:Ljava/lang/String;
    invoke-virtual {v4}, Ljava/net/URI;->getUserInfo()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_1

    .line 210
    invoke-virtual {v4}, Ljava/net/URI;->getUserInfo()Ljava/lang/String;

    move-result-object v9

    const-string v10, ":"

    const/4 v11, 0x2

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v6

    .line 211
    .local v6, userInfoParts:[Ljava/lang/String;
    const/4 v9, 0x0

    aget-object v7, v6, v9

    .line 212
    array-length v9, v6

    const/4 v10, 0x1

    if-le v9, v10, :cond_1

    .line 213
    const/4 v9, 0x1

    aget-object v1, v6, v9

    .line 217
    .end local v6           #userInfoParts:[Ljava/lang/String;
    :cond_1
    if-eqz v7, :cond_2

    .line 218
    iget-object v9, p0, Lcom/android/email/activity/setup/AccountSetupOutgoing;->mUsernameView:Landroid/widget/EditText;

    const v10, 0x7f0800aa

    invoke-virtual {v9, v10}, Landroid/widget/EditText;->setHint(I)V

    .line 219
    iget-object v9, p0, Lcom/android/email/activity/setup/AccountSetupOutgoing;->mUsernameView:Landroid/widget/EditText;

    invoke-virtual {v9, v7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 220
    iget-object v9, p0, Lcom/android/email/activity/setup/AccountSetupOutgoing;->mRequireLoginView:Landroid/widget/CheckBox;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 223
    :cond_2
    if-eqz v1, :cond_3

    .line 224
    iget-object v9, p0, Lcom/android/email/activity/setup/AccountSetupOutgoing;->mPasswordView:Landroid/widget/EditText;

    const v10, 0x7f0800ab

    invoke-virtual {v9, v10}, Landroid/widget/EditText;->setHint(I)V

    .line 225
    iget-object v9, p0, Lcom/android/email/activity/setup/AccountSetupOutgoing;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v9, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 228
    :cond_3
    iget-object v9, p0, Lcom/android/email/activity/setup/AccountSetupOutgoing;->mServerView:Landroid/widget/EditText;

    const v10, 0x7f0800a6

    invoke-virtual {v9, v10}, Landroid/widget/EditText;->setHint(I)V

    .line 229
    iget-object v9, p0, Lcom/android/email/activity/setup/AccountSetupOutgoing;->mPortView:Landroid/widget/EditText;

    const v10, 0x7f0800a7

    invoke-virtual {v9, v10}, Landroid/widget/EditText;->setHint(I)V

    .line 231
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    sget-object v9, Lcom/android/email/activity/setup/AccountSetupOutgoing;->smtpSchemes:[Ljava/lang/String;

    array-length v9, v9

    if-ge v0, v9, :cond_6

    .line 232
    sget-object v9, Lcom/android/email/activity/setup/AccountSetupOutgoing;->smtpSchemes:[Ljava/lang/String;

    aget-object v9, v9, v0

    invoke-virtual {v4}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 233
    iget-object v9, p0, Lcom/android/email/activity/setup/AccountSetupOutgoing;->mSecurityTypeView:Landroid/widget/Spinner;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/email/activity/setup/SpinnerOption;->setSpinnerOptionValue(Landroid/widget/Spinner;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 231
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 191
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

    .line 237
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

    .line 238
    iget-object v9, p0, Lcom/android/email/activity/setup/AccountSetupOutgoing;->mServerView:Landroid/widget/EditText;

    invoke-virtual {v4}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 241
    :cond_7
    invoke-virtual {v4}, Ljava/net/URI;->getPort()I

    move-result v9

    const/4 v10, -0x1

    if-eq v9, v10, :cond_8

    .line 242
    iget-object v9, p0, Lcom/android/email/activity/setup/AccountSetupOutgoing;->mPortView:Landroid/widget/EditText;

    invoke-virtual {v4}, Ljava/net/URI;->getPort()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_0

    .line 253
    :goto_2
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupOutgoing;->validateFields()V

    .line 254
    return-void

    .line 244
    :cond_8
    :try_start_2
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupOutgoing;->updatePortFromSecurityType()V
    :try_end_2
    .catch Ljava/net/URISyntaxException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    .line 246
    .end local v0           #i:I
    .end local v1           #password:Ljava/lang/String;
    .end local v4           #uri:Ljava/net/URI;
    .end local v7           #username:Ljava/lang/String;
    :catch_0
    move-exception v9

    move-object v5, v9

    .line 250
    .local v5, use:Ljava/net/URISyntaxException;
    new-instance v9, Ljava/lang/Error;

    invoke-direct {v9, v5}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v9
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 258
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 259
    const-string v0, "account"

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupOutgoing;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 260
    return-void
.end method
