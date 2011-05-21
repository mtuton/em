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
.field private static final ACCOUNT_INFO_COLUMN_FLAGS:I = 0x0

.field private static final ACCOUNT_INFO_COLUMN_SECURITY_FLAGS:I = 0x1

.field private static final ACCOUNT_INFO_PROJECTION:[Ljava/lang/String; = null

.field private static final EXTRA_ACCOUNT_ID:Ljava/lang/String; = "accountId"

.field private static final EXTRA_EAS_FLOW:Ljava/lang/String; = "easFlow"

.field public static final EXTRA_SETWIZ_FLOW:Ljava/lang/String; = "com.android.email.extra.setwiz_flow"

.field private static final REQUEST_SECURITY:I


# instance fields
.field private mAccount:Lcom/android/email/provider/EmailContent$Account;

.field private mCheckAccountStateTask:Lcom/android/email/activity/setup/AccountSetupNames$CheckAccountStateTask;

.field private mDescription:Landroid/widget/EditText;

.field private mDoneTwSoftkeyItem:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

.field private mEasAccount:Z

.field private mName:Landroid/widget/EditText;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 65
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
    .line 45
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 59
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/email/activity/setup/AccountSetupNames;->mEasAccount:Z

    .line 247
    return-void
.end method

.method static synthetic access$000(Lcom/android/email/activity/setup/AccountSetupNames;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupNames;->validateFields()V

    return-void
.end method

.method static synthetic access$100()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lcom/android/email/activity/setup/AccountSetupNames;->ACCOUNT_INFO_PROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method public static actionSetNames(Landroid/app/Activity;JZ)V
    .locals 2
    .parameter "fromActivity"
    .parameter "accountId"
    .parameter "easFlowMode"

    .prologue
    .line 69
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/email/activity/setup/AccountSetupNames;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 70
    .local v0, i:Landroid/content/Intent;
    const-string v1, "accountId"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 71
    const-string v1, "easFlow"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 72
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 73
    return-void
.end method

.method public static actionSetNames(Landroid/app/Activity;JZZ)V
    .locals 2
    .parameter "fromActivity"
    .parameter "accountId"
    .parameter "easFlowMode"
    .parameter "setWizMode"

    .prologue
    .line 76
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/email/activity/setup/AccountSetupNames;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 77
    .local v0, i:Landroid/content/Intent;
    const-string v1, "accountId"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 78
    const-string v1, "easFlow"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 79
    const-string v1, "com.android.email.extra.setwiz_flow"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 80
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 81
    return-void
.end method

.method private onNext()V
    .locals 5

    .prologue
    .line 200
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupNames;->mDescription:Landroid/widget/EditText;

    invoke-static {v2}, Lcom/android/email/Utility;->requiredFieldValid(Landroid/widget/TextView;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 201
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupNames;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSetupNames;->mDescription:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/email/provider/EmailContent$Account;->setDisplayName(Ljava/lang/String;)V

    .line 203
    :cond_0
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupNames;->mName:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 204
    .local v1, name:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupNames;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    invoke-virtual {v2, v1}, Lcom/android/email/provider/EmailContent$Account;->setSenderName(Ljava/lang/String;)V

    .line 205
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 206
    .local v0, cv:Landroid/content/ContentValues;
    const-string v2, "displayName"

    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSetupNames;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    invoke-virtual {v3}, Lcom/android/email/provider/EmailContent$Account;->getDisplayName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    const-string v2, "senderName"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupNames;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    invoke-virtual {v2, p0, v0}, Lcom/android/email/provider/EmailContent$Account;->update(Landroid/content/Context;Landroid/content/ContentValues;)I

    .line 222
    new-instance v2, Lcom/android/email/activity/setup/AccountSetupNames$CheckAccountStateTask;

    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSetupNames;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-wide v3, v3, Lcom/android/email/provider/EmailContent$Account;->mId:J

    invoke-direct {v2, p0, v3, v4}, Lcom/android/email/activity/setup/AccountSetupNames$CheckAccountStateTask;-><init>(Lcom/android/email/activity/setup/AccountSetupNames;J)V

    iput-object v2, p0, Lcom/android/email/activity/setup/AccountSetupNames;->mCheckAccountStateTask:Lcom/android/email/activity/setup/AccountSetupNames$CheckAccountStateTask;

    .line 223
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupNames;->mCheckAccountStateTask:Lcom/android/email/activity/setup/AccountSetupNames$CheckAccountStateTask;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-virtual {v2, v3}, Lcom/android/email/activity/setup/AccountSetupNames$CheckAccountStateTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 224
    return-void
.end method

.method private validateFields()V
    .locals 2

    .prologue
    .line 164
    iget-boolean v0, p0, Lcom/android/email/activity/setup/AccountSetupNames;->mEasAccount:Z

    if-nez v0, :cond_0

    .line 168
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupNames;->mDoneTwSoftkeyItem:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupNames;->mName:Landroid/widget/EditText;

    invoke-static {v1}, Lcom/android/email/Utility;->requiredFieldValid(Landroid/widget/TextView;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->setEnabled(Z)V

    .line 172
    :cond_0
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 296
    packed-switch p1, :pswitch_data_0

    .line 300
    :goto_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 301
    return-void

    .line 298
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupNames;->onBackPressed()V

    goto :goto_0

    .line 296
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

    .line 176
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupNames;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "easFlow"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 177
    .local v0, easFlowMode:Z
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupNames;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "com.android.email.extra.setwiz_flow"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 178
    .local v1, setWizFlowMode:Z
    if-nez v0, :cond_0

    if-eqz v1, :cond_1

    .line 179
    :cond_0
    invoke-static {p0}, Lcom/android/email/activity/setup/AccountSetupBasics;->actionAccountCreateFinishedEas(Landroid/app/Activity;)V

    .line 189
    :goto_0
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupNames;->finish()V

    .line 190
    return-void

    .line 181
    :cond_1
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupNames;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    if-eqz v2, :cond_2

    .line 182
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupNames;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-wide v2, v2, Lcom/android/email/provider/EmailContent$Account;->mId:J

    invoke-static {p0, v2, v3}, Lcom/android/email/activity/setup/AccountSetupBasics;->actionAccountCreateFinished(Landroid/app/Activity;J)V

    goto :goto_0

    .line 186
    :cond_2
    invoke-static {p0}, Lcom/android/email/activity/Welcome;->actionStart(Landroid/app/Activity;)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 227
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 235
    :goto_0
    return-void

    .line 231
    :pswitch_0
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupNames;->onNext()V

    goto :goto_0

    .line 227
    :pswitch_data_0
    .packed-switch 0x7f070031
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9
    .parameter "savedInstanceState"

    .prologue
    const/16 v8, 0x8

    .line 85
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 86
    const v4, 0x7f030008

    invoke-virtual {p0, v4}, Lcom/android/email/activity/setup/AccountSetupNames;->setContentView(I)V

    .line 87
    const v4, 0x7f07002f

    invoke-virtual {p0, v4}, Lcom/android/email/activity/setup/AccountSetupNames;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lcom/android/email/activity/setup/AccountSetupNames;->mDescription:Landroid/widget/EditText;

    .line 88
    const v4, 0x7f070007

    invoke-virtual {p0, v4}, Lcom/android/email/activity/setup/AccountSetupNames;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lcom/android/email/activity/setup/AccountSetupNames;->mName:Landroid/widget/EditText;

    .line 92
    const v4, 0x7f070031

    invoke-virtual {p0, v4}, Lcom/android/email/activity/setup/AccountSetupNames;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    iput-object v4, p0, Lcom/android/email/activity/setup/AccountSetupNames;->mDoneTwSoftkeyItem:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    .line 94
    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSetupNames;->mDoneTwSoftkeyItem:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    invoke-virtual {v4, p0}, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    new-instance v3, Lcom/android/email/activity/setup/AccountSetupNames$1;

    invoke-direct {v3, p0}, Lcom/android/email/activity/setup/AccountSetupNames$1;-><init>(Lcom/android/email/activity/setup/AccountSetupNames;)V

    .line 109
    .local v3, validationTextWatcher:Landroid/text/TextWatcher;
    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSetupNames;->mName:Landroid/widget/EditText;

    invoke-virtual {v4, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 111
    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSetupNames;->mName:Landroid/widget/EditText;

    const/4 v5, 0x0

    sget-object v6, Landroid/text/method/TextKeyListener$Capitalize;->WORDS:Landroid/text/method/TextKeyListener$Capitalize;

    invoke-static {v5, v6}, Landroid/text/method/TextKeyListener;->getInstance(ZLandroid/text/method/TextKeyListener$Capitalize;)Landroid/text/method/TextKeyListener;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 113
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupNames;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "accountId"

    const-wide/16 v6, -0x1

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 114
    .local v0, accountId:J
    invoke-static {p0, v0, v1}, Lcom/android/email/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Account;

    move-result-object v4

    iput-object v4, p0, Lcom/android/email/activity/setup/AccountSetupNames;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    .line 116
    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSetupNames;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    if-nez v4, :cond_0

    .line 117
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupNames;->onBackPressed()V

    .line 147
    :goto_0
    return-void

    .line 121
    :cond_0
    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSetupNames;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-wide v4, v4, Lcom/android/email/provider/EmailContent$Account;->mHostAuthKeyRecv:J

    invoke-static {p0, v4, v5}, Lcom/android/email/provider/EmailContent$HostAuth;->restoreHostAuthWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$HostAuth;

    move-result-object v2

    .line 122
    .local v2, hostAuth:Lcom/android/email/provider/EmailContent$HostAuth;
    if-nez v2, :cond_1

    .line 123
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupNames;->onBackPressed()V

    .line 127
    :cond_1
    iget-object v4, v2, Lcom/android/email/provider/EmailContent$HostAuth;->mProtocol:Ljava/lang/String;

    const-string v5, "eas"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/email/activity/setup/AccountSetupNames;->mEasAccount:Z

    .line 128
    iget-boolean v4, p0, Lcom/android/email/activity/setup/AccountSetupNames;->mEasAccount:Z

    if-eqz v4, :cond_2

    .line 129
    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSetupNames;->mName:Landroid/widget/EditText;

    invoke-virtual {v4, v8}, Landroid/widget/EditText;->setVisibility(I)V

    .line 130
    const v4, 0x7f070030

    invoke-virtual {p0, v4}, Lcom/android/email/activity/setup/AccountSetupNames;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    .line 133
    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSetupNames;->mDescription:Landroid/widget/EditText;

    const/4 v5, 0x6

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 141
    :cond_2
    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSetupNames;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSetupNames;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    invoke-virtual {v4}, Lcom/android/email/provider/EmailContent$Account;->getSenderName()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 142
    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSetupNames;->mName:Landroid/widget/EditText;

    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSetupNames;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    invoke-virtual {v5}, Lcom/android/email/provider/EmailContent$Account;->getSenderName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 146
    :cond_3
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupNames;->validateFields()V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 151
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 153
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupNames;->mCheckAccountStateTask:Lcom/android/email/activity/setup/AccountSetupNames$CheckAccountStateTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupNames;->mCheckAccountStateTask:Lcom/android/email/activity/setup/AccountSetupNames$CheckAccountStateTask;

    invoke-virtual {v0}, Lcom/android/email/activity/setup/AccountSetupNames$CheckAccountStateTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v0, v1, :cond_0

    .line 155
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupNames;->mCheckAccountStateTask:Lcom/android/email/activity/setup/AccountSetupNames$CheckAccountStateTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/AccountSetupNames$CheckAccountStateTask;->cancel(Z)Z

    .line 156
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSetupNames;->mCheckAccountStateTask:Lcom/android/email/activity/setup/AccountSetupNames$CheckAccountStateTask;

    .line 158
    :cond_0
    return-void
.end method
