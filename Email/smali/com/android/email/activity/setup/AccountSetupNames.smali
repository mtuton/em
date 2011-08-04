.class public Lcom/android/email/activity/setup/AccountSetupNames;
.super Landroid/app/Activity;
.source "AccountSetupNames.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/activity/setup/AccountSetupNames$CheckAccountStateTask;
    }
.end annotation


# static fields
.field private static final ACCOUNT_INFO_PROJECTION:[Ljava/lang/String;


# instance fields
.field private mAccount:Lcom/android/email/provider/EmailContent$Account;

.field private mCheckAccountStateTask:Lcom/android/email/activity/setup/AccountSetupNames$CheckAccountStateTask;

.field private mDescription:Landroid/widget/EditText;

.field private mDoneTwSoftkeyItem:Lcom/android/email/EmailTwSoftkeyItem;

.field private mEasAccount:Z

.field private mName:Landroid/widget/EditText;

.field withOutDotDomain:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 66
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "flags"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "securityFlags"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/email/activity/setup/AccountSetupNames;->ACCOUNT_INFO_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 60
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/email/activity/setup/AccountSetupNames;->mEasAccount:Z

    .line 292
    return-void
.end method

.method static synthetic access$000(Lcom/android/email/activity/setup/AccountSetupNames;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupNames;->validateFields()V

    return-void
.end method

.method static synthetic access$100()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/android/email/activity/setup/AccountSetupNames;->ACCOUNT_INFO_PROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method public static actionSetNames(Landroid/app/Activity;JZZ)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 79
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/email/activity/setup/AccountSetupNames;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 80
    const-string v1, "accountId"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 81
    const-string v1, "easFlow"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 82
    const-string v1, "com.android.email.extra.setwiz_flow"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 83
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 84
    return-void
.end method

.method private onNext()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const-string v5, ""

    .line 239
    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSetupNames;->mDescription:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 240
    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSetupNames;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSetupNames;->mDescription:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/email/provider/EmailContent$Account;->setDisplayName(Ljava/lang/String;)V

    .line 242
    :cond_0
    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSetupNames;->mName:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 243
    .local v2, name:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 245
    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSetupNames;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    invoke-virtual {v3}, Lcom/android/email/provider/EmailContent$Account;->getEmailAddress()Ljava/lang/String;

    move-result-object v3

    const-string v4, "@"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 246
    .local v1, emailParts:[Ljava/lang/String;
    aget-object v2, v1, v6

    .line 249
    .end local v1           #emailParts:[Ljava/lang/String;
    :cond_1
    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSetupNames;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    invoke-virtual {v3, v2}, Lcom/android/email/provider/EmailContent$Account;->setSenderName(Ljava/lang/String;)V

    .line 250
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 251
    .local v0, cv:Landroid/content/ContentValues;
    const-string v3, "displayName"

    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSetupNames;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    invoke-virtual {v4}, Lcom/android/email/provider/EmailContent$Account;->getDisplayName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    const-string v3, "senderName"

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSetupNames;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    invoke-virtual {v3, p0, v0}, Lcom/android/email/provider/EmailContent$Account;->update(Landroid/content/Context;Landroid/content/ContentValues;)I

    .line 267
    new-instance v3, Lcom/android/email/activity/setup/AccountSetupNames$CheckAccountStateTask;

    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSetupNames;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-wide v4, v4, Lcom/android/email/provider/EmailContent$Account;->mId:J

    invoke-direct {v3, p0, v4, v5}, Lcom/android/email/activity/setup/AccountSetupNames$CheckAccountStateTask;-><init>(Lcom/android/email/activity/setup/AccountSetupNames;J)V

    iput-object v3, p0, Lcom/android/email/activity/setup/AccountSetupNames;->mCheckAccountStateTask:Lcom/android/email/activity/setup/AccountSetupNames$CheckAccountStateTask;

    .line 268
    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSetupNames;->mCheckAccountStateTask:Lcom/android/email/activity/setup/AccountSetupNames$CheckAccountStateTask;

    new-array v4, v6, [Ljava/lang/Void;

    invoke-virtual {v3, v4}, Lcom/android/email/activity/setup/AccountSetupNames$CheckAccountStateTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 269
    return-void
.end method

.method private validateFields()V
    .locals 4

    .prologue
    const v3, 0x7f070033

    .line 187
    iget-boolean v1, p0, Lcom/android/email/activity/setup/AccountSetupNames;->mEasAccount:Z

    if-nez v1, :cond_0

    .line 192
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupNames;->mName:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    move v0, v1

    .line 193
    .local v0, valid:Z
    :goto_0
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupNames;->mDoneTwSoftkeyItem:Lcom/android/email/EmailTwSoftkeyItem;

    invoke-virtual {v1, v0}, Lcom/android/email/EmailTwSoftkeyItem;->setEnabled(Z)V

    .line 194
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupNames;->mDoneTwSoftkeyItem:Lcom/android/email/EmailTwSoftkeyItem;

    invoke-virtual {v1, v0}, Lcom/android/email/EmailTwSoftkeyItem;->setFocusable(Z)V

    .line 196
    if-eqz v0, :cond_2

    .line 197
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupNames;->mName:Landroid/widget/EditText;

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setNextFocusDownId(I)V

    .line 198
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupNames;->mDescription:Landroid/widget/EditText;

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setNextFocusUpId(I)V

    .line 209
    .end local v0           #valid:Z
    :cond_0
    :goto_1
    return-void

    .line 192
    :cond_1
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0

    .line 201
    .restart local v0       #valid:Z
    :cond_2
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupNames;->mName:Landroid/widget/EditText;

    const v2, 0x7f070032

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setNextFocusDownId(I)V

    .line 202
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupNames;->mDescription:Landroid/widget/EditText;

    const v2, 0x7f070007

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setNextFocusUpId(I)V

    goto :goto_1
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 341
    packed-switch p1, :pswitch_data_0

    .line 345
    :goto_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 346
    return-void

    .line 343
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupNames;->onBackPressed()V

    goto :goto_0

    .line 341
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onBackPressed()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 213
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupNames;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "easFlow"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 214
    .local v0, easFlowMode:Z
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupNames;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "com.android.email.extra.setwiz_flow"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 216
    .local v1, setWizFlowMode:Z
    if-nez v0, :cond_0

    if-eqz v1, :cond_1

    .line 217
    :cond_0
    invoke-static {p0}, Lcom/android/email/activity/setup/AccountSetupBasics;->actionAccountCreateFinishedEas(Landroid/app/Activity;)V

    .line 227
    :goto_0
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupNames;->finish()V

    .line 228
    return-void

    .line 219
    :cond_1
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupNames;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    if-eqz v2, :cond_2

    .line 220
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupNames;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-wide v2, v2, Lcom/android/email/provider/EmailContent$Account;->mId:J

    invoke-static {p0, v2, v3}, Lcom/android/email/activity/setup/AccountSetupBasics;->actionAccountCreateFinished(Landroid/app/Activity;J)V

    goto :goto_0

    .line 224
    :cond_2
    invoke-static {p0}, Lcom/android/email/activity/Welcome;->actionStart(Landroid/app/Activity;)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 272
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 280
    :goto_0
    return-void

    .line 276
    :pswitch_0
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupNames;->onNext()V

    goto :goto_0

    .line 272
    :pswitch_data_0
    .packed-switch 0x7f070033
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 14
    .parameter "savedInstanceState"

    .prologue
    .line 88
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 89
    const v10, 0x7f030008

    invoke-virtual {p0, v10}, Lcom/android/email/activity/setup/AccountSetupNames;->setContentView(I)V

    .line 90
    const v10, 0x7f070032

    invoke-virtual {p0, v10}, Lcom/android/email/activity/setup/AccountSetupNames;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .end local p1
    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/android/email/activity/setup/AccountSetupNames;->mDescription:Landroid/widget/EditText;

    .line 91
    const v10, 0x7f070007

    invoke-virtual {p0, v10}, Lcom/android/email/activity/setup/AccountSetupNames;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/android/email/activity/setup/AccountSetupNames;->mName:Landroid/widget/EditText;

    .line 95
    const v10, 0x7f070033

    invoke-virtual {p0, v10}, Lcom/android/email/activity/setup/AccountSetupNames;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/email/EmailTwSoftkeyItem;

    iput-object p1, p0, Lcom/android/email/activity/setup/AccountSetupNames;->mDoneTwSoftkeyItem:Lcom/android/email/EmailTwSoftkeyItem;

    .line 97
    iget-object v10, p0, Lcom/android/email/activity/setup/AccountSetupNames;->mDoneTwSoftkeyItem:Lcom/android/email/EmailTwSoftkeyItem;

    invoke-virtual {v10, p0}, Lcom/android/email/EmailTwSoftkeyItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    new-instance v9, Lcom/android/email/activity/setup/AccountSetupNames$1;

    invoke-direct {v9, p0}, Lcom/android/email/activity/setup/AccountSetupNames$1;-><init>(Lcom/android/email/activity/setup/AccountSetupNames;)V

    .line 112
    .local v9, validationTextWatcher:Landroid/text/TextWatcher;
    iget-object v10, p0, Lcom/android/email/activity/setup/AccountSetupNames;->mName:Landroid/widget/EditText;

    invoke-virtual {v10, v9}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 114
    iget-object v10, p0, Lcom/android/email/activity/setup/AccountSetupNames;->mName:Landroid/widget/EditText;

    const/4 v11, 0x0

    sget-object v12, Landroid/text/method/TextKeyListener$Capitalize;->WORDS:Landroid/text/method/TextKeyListener$Capitalize;

    invoke-static {v11, v12}, Landroid/text/method/TextKeyListener;->getInstance(ZLandroid/text/method/TextKeyListener$Capitalize;)Landroid/text/method/TextKeyListener;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 116
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupNames;->getIntent()Landroid/content/Intent;

    move-result-object v10

    const-string v11, "accountId"

    const-wide/16 v12, -0x1

    invoke-virtual {v10, v11, v12, v13}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 117
    .local v0, accountId:J
    invoke-static {p0, v0, v1}, Lcom/android/email/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Account;

    move-result-object v10

    iput-object v10, p0, Lcom/android/email/activity/setup/AccountSetupNames;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    .line 119
    iget-object v10, p0, Lcom/android/email/activity/setup/AccountSetupNames;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    if-nez v10, :cond_0

    .line 120
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupNames;->onBackPressed()V

    .line 170
    :goto_0
    return-void

    .line 125
    :cond_0
    iget-object v10, p0, Lcom/android/email/activity/setup/AccountSetupNames;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    invoke-virtual {v10}, Lcom/android/email/provider/EmailContent$Account;->getEmailAddress()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 126
    .local v4, email:Ljava/lang/String;
    const-string v10, "@"

    invoke-virtual {v4, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 127
    .local v5, emailParts:[Ljava/lang/String;
    const/4 v10, 0x0

    aget-object v10, v5, v10

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    .line 128
    .local v8, username:Ljava/lang/String;
    invoke-virtual {v8}, Ljava/lang/String;->toCharArray()[C

    move-result-object v7

    .line 129
    .local v7, imsi:[C
    const/4 v10, 0x0

    aget-char v10, v7, v10

    invoke-static {v10}, Ljava/lang/Character;->isLowerCase(C)Z

    move-result v10

    if-eqz v10, :cond_1

    const/4 v10, 0x0

    const/4 v11, 0x0

    aget-char v11, v7, v11

    invoke-static {v11}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v11

    aput-char v11, v7, v10

    .line 130
    :cond_1
    new-instance v8, Ljava/lang/String;

    .end local v8           #username:Ljava/lang/String;
    invoke-direct {v8, v7}, Ljava/lang/String;-><init>([C)V

    .line 131
    .restart local v8       #username:Ljava/lang/String;
    iget-object v10, p0, Lcom/android/email/activity/setup/AccountSetupNames;->mName:Landroid/widget/EditText;

    invoke-virtual {v10, v8}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 132
    iget-object v10, p0, Lcom/android/email/activity/setup/AccountSetupNames;->mName:Landroid/widget/EditText;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/widget/EditText;->setSelection(I)V

    .line 134
    const/4 v10, 0x1

    aget-object v10, v5, v10

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 135
    .local v2, domain:Ljava/lang/String;
    const-string v10, "[.]"

    invoke-virtual {v2, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 136
    .local v3, domainWithoutDot:[Ljava/lang/String;
    const/4 v10, 0x0

    aget-object v10, v3, v10

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/android/email/activity/setup/AccountSetupNames;->withOutDotDomain:Ljava/lang/String;

    .line 137
    iget-object v10, p0, Lcom/android/email/activity/setup/AccountSetupNames;->withOutDotDomain:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->toCharArray()[C

    move-result-object v7

    .line 138
    const/4 v10, 0x0

    aget-char v10, v7, v10

    invoke-static {v10}, Ljava/lang/Character;->isLowerCase(C)Z

    move-result v10

    if-eqz v10, :cond_2

    const/4 v10, 0x0

    const/4 v11, 0x0

    aget-char v11, v7, v11

    invoke-static {v11}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v11

    aput-char v11, v7, v10

    .line 139
    :cond_2
    new-instance v10, Ljava/lang/String;

    invoke-direct {v10, v7}, Ljava/lang/String;-><init>([C)V

    iput-object v10, p0, Lcom/android/email/activity/setup/AccountSetupNames;->withOutDotDomain:Ljava/lang/String;

    .line 140
    iget-object v10, p0, Lcom/android/email/activity/setup/AccountSetupNames;->mDescription:Landroid/widget/EditText;

    iget-object v11, p0, Lcom/android/email/activity/setup/AccountSetupNames;->withOutDotDomain:Ljava/lang/String;

    invoke-virtual {v10, v11}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 141
    iget-object v10, p0, Lcom/android/email/activity/setup/AccountSetupNames;->mDescription:Landroid/widget/EditText;

    iget-object v11, p0, Lcom/android/email/activity/setup/AccountSetupNames;->withOutDotDomain:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/widget/EditText;->setSelection(I)V

    .line 153
    iget-object v10, p0, Lcom/android/email/activity/setup/AccountSetupNames;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-wide v10, v10, Lcom/android/email/provider/EmailContent$Account;->mHostAuthKeyRecv:J

    invoke-static {p0, v10, v11}, Lcom/android/email/provider/EmailContent$HostAuth;->restoreHostAuthWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$HostAuth;

    move-result-object v6

    .line 154
    .local v6, hostAuth:Lcom/android/email/provider/EmailContent$HostAuth;
    if-nez v6, :cond_3

    .line 155
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupNames;->onBackPressed()V

    .line 159
    :cond_3
    iget-object v10, v6, Lcom/android/email/provider/EmailContent$HostAuth;->mProtocol:Ljava/lang/String;

    const-string v11, "eas"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    iput-boolean v10, p0, Lcom/android/email/activity/setup/AccountSetupNames;->mEasAccount:Z

    .line 160
    iget-boolean v10, p0, Lcom/android/email/activity/setup/AccountSetupNames;->mEasAccount:Z

    if-eqz v10, :cond_4

    .line 161
    iget-object v10, p0, Lcom/android/email/activity/setup/AccountSetupNames;->mName:Landroid/widget/EditText;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/EditText;->setVisibility(I)V

    .line 162
    const v10, 0x7f070034

    invoke-virtual {p0, v10}, Lcom/android/email/activity/setup/AccountSetupNames;->findViewById(I)Landroid/view/View;

    move-result-object v10

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/view/View;->setVisibility(I)V

    .line 165
    iget-object v10, p0, Lcom/android/email/activity/setup/AccountSetupNames;->mDescription:Landroid/widget/EditText;

    const/4 v11, 0x6

    invoke-virtual {v10, v11}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 169
    :cond_4
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupNames;->validateFields()V

    goto/16 :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 174
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 176
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupNames;->mCheckAccountStateTask:Lcom/android/email/activity/setup/AccountSetupNames$CheckAccountStateTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupNames;->mCheckAccountStateTask:Lcom/android/email/activity/setup/AccountSetupNames$CheckAccountStateTask;

    invoke-virtual {v0}, Lcom/android/email/activity/setup/AccountSetupNames$CheckAccountStateTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v0, v1, :cond_0

    .line 178
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupNames;->mCheckAccountStateTask:Lcom/android/email/activity/setup/AccountSetupNames$CheckAccountStateTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/AccountSetupNames$CheckAccountStateTask;->cancel(Z)Z

    .line 179
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSetupNames;->mCheckAccountStateTask:Lcom/android/email/activity/setup/AccountSetupNames$CheckAccountStateTask;

    .line 181
    :cond_0
    return-void
.end method
