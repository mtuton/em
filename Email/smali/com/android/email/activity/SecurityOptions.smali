.class public Lcom/android/email/activity/SecurityOptions;
.super Landroid/app/Activity;
.source "SecurityOptions.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private encryptCheckBox:Landroid/widget/CheckBox;

.field private encryptLayout:Landroid/widget/RelativeLayout;

.field private encryptTextView:Landroid/widget/TextView;

.field private mAccount:Lcom/android/email/provider/EmailContent$Account;

.field private mDraft:Lcom/android/email/provider/EmailContent$Message;

.field private signCheckBox:Landroid/widget/CheckBox;

.field private signLayout:Landroid/widget/RelativeLayout;

.field private signTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 35
    new-instance v0, Lcom/android/email/provider/EmailContent$Message;

    invoke-direct {v0}, Lcom/android/email/provider/EmailContent$Message;-><init>()V

    iput-object v0, p0, Lcom/android/email/activity/SecurityOptions;->mDraft:Lcom/android/email/provider/EmailContent$Message;

    return-void
.end method

.method private configureSmimeOptions()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 139
    invoke-static {p0}, Lcom/android/email/SecurityPolicy;->getInstance(Landroid/content/Context;)Lcom/android/email/SecurityPolicy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/email/SecurityPolicy;->getAggregatePolicy()Lcom/android/email/SecurityPolicy$PolicySet;

    move-result-object v0

    .line 140
    .local v0, ps:Lcom/android/email/SecurityPolicy$PolicySet;
    iget-boolean v1, v0, Lcom/android/email/SecurityPolicy$PolicySet;->mRequireEncryptedSMIMEMessages:Z

    if-eqz v1, :cond_0

    .line 141
    iget-object v1, p0, Lcom/android/email/activity/SecurityOptions;->encryptLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 142
    iget-object v1, p0, Lcom/android/email/activity/SecurityOptions;->encryptCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 143
    iget-object v1, p0, Lcom/android/email/activity/SecurityOptions;->encryptTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 145
    iget-object v1, p0, Lcom/android/email/activity/SecurityOptions;->mDraft:Lcom/android/email/provider/EmailContent$Message;

    iput-boolean v2, v1, Lcom/android/email/provider/EmailContent$Message;->mEncrypted:Z

    .line 152
    :goto_0
    iget-boolean v1, v0, Lcom/android/email/SecurityPolicy$PolicySet;->mRequireSignedSMIMEMessages:Z

    if-eqz v1, :cond_1

    .line 153
    iget-object v1, p0, Lcom/android/email/activity/SecurityOptions;->signLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 154
    iget-object v1, p0, Lcom/android/email/activity/SecurityOptions;->signCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 155
    iget-object v1, p0, Lcom/android/email/activity/SecurityOptions;->signTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 157
    iget-object v1, p0, Lcom/android/email/activity/SecurityOptions;->mDraft:Lcom/android/email/provider/EmailContent$Message;

    iput-boolean v2, v1, Lcom/android/email/provider/EmailContent$Message;->mSigned:Z

    .line 163
    :goto_1
    return-void

    .line 147
    :cond_0
    iget-object v1, p0, Lcom/android/email/activity/SecurityOptions;->encryptLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 148
    iget-object v1, p0, Lcom/android/email/activity/SecurityOptions;->encryptCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 149
    iget-object v1, p0, Lcom/android/email/activity/SecurityOptions;->encryptTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0

    .line 159
    :cond_1
    iget-object v1, p0, Lcom/android/email/activity/SecurityOptions;->signLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 160
    iget-object v1, p0, Lcom/android/email/activity/SecurityOptions;->signCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 161
    iget-object v1, p0, Lcom/android/email/activity/SecurityOptions;->signTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_1
.end method

.method private setAccount(Landroid/content/Intent;)V
    .locals 5
    .parameter "intent"

    .prologue
    const-wide/16 v3, -0x1

    .line 88
    const-string v2, "account_id"

    invoke-virtual {p1, v2, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 90
    .local v0, accountId:J
    cmp-long v2, v0, v3

    if-nez v2, :cond_0

    .line 91
    invoke-static {p0}, Lcom/android/email/provider/EmailContent$Account;->getDefaultAccountId(Landroid/content/Context;)J

    move-result-wide v0

    .line 93
    :cond_0
    cmp-long v2, v0, v3

    if-nez v2, :cond_1

    .line 96
    invoke-static {p0}, Lcom/android/email/activity/AccountFolderList;->actionShowAccounts(Landroid/content/Context;)V

    .line 97
    invoke-virtual {p0}, Lcom/android/email/activity/SecurityOptions;->finish()V

    .line 102
    :goto_0
    return-void

    .line 100
    :cond_1
    invoke-static {p0, v0, v1}, Lcom/android/email/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Account;

    move-result-object v2

    iput-object v2, p0, Lcom/android/email/activity/SecurityOptions;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 120
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 132
    :goto_0
    :pswitch_0
    return-void

    .line 122
    :pswitch_1
    iget-object v0, p0, Lcom/android/email/activity/SecurityOptions;->encryptCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->toggle()V

    .line 123
    iget-object v0, p0, Lcom/android/email/activity/SecurityOptions;->mDraft:Lcom/android/email/provider/EmailContent$Message;

    iget-object v1, p0, Lcom/android/email/activity/SecurityOptions;->encryptCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/email/provider/EmailContent$Message;->mEncrypted:Z

    goto :goto_0

    .line 126
    :pswitch_2
    iget-object v0, p0, Lcom/android/email/activity/SecurityOptions;->signCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->toggle()V

    .line 127
    iget-object v0, p0, Lcom/android/email/activity/SecurityOptions;->mDraft:Lcom/android/email/provider/EmailContent$Message;

    iget-object v1, p0, Lcom/android/email/activity/SecurityOptions;->signCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/email/provider/EmailContent$Message;->mSigned:Z

    goto :goto_0

    .line 120
    :pswitch_data_0
    .packed-switch 0x7f070165
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    const/4 v4, 0x0

    .line 57
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 58
    const v1, 0x7f030049

    invoke-virtual {p0, v1}, Lcom/android/email/activity/SecurityOptions;->setContentView(I)V

    .line 60
    const v1, 0x7f070165

    invoke-virtual {p0, v1}, Lcom/android/email/activity/SecurityOptions;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/android/email/activity/SecurityOptions;->encryptLayout:Landroid/widget/RelativeLayout;

    .line 61
    const v1, 0x7f070168

    invoke-virtual {p0, v1}, Lcom/android/email/activity/SecurityOptions;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/android/email/activity/SecurityOptions;->signLayout:Landroid/widget/RelativeLayout;

    .line 63
    const v1, 0x7f070167

    invoke-virtual {p0, v1}, Lcom/android/email/activity/SecurityOptions;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/android/email/activity/SecurityOptions;->encryptCheckBox:Landroid/widget/CheckBox;

    .line 64
    const v1, 0x7f07016a

    invoke-virtual {p0, v1}, Lcom/android/email/activity/SecurityOptions;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/android/email/activity/SecurityOptions;->signCheckBox:Landroid/widget/CheckBox;

    .line 66
    const v1, 0x7f070166

    invoke-virtual {p0, v1}, Lcom/android/email/activity/SecurityOptions;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/email/activity/SecurityOptions;->encryptTextView:Landroid/widget/TextView;

    .line 67
    const v1, 0x7f070169

    invoke-virtual {p0, v1}, Lcom/android/email/activity/SecurityOptions;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/email/activity/SecurityOptions;->signTextView:Landroid/widget/TextView;

    .line 69
    iget-object v1, p0, Lcom/android/email/activity/SecurityOptions;->encryptLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    iget-object v1, p0, Lcom/android/email/activity/SecurityOptions;->signLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    invoke-virtual {p0}, Lcom/android/email/activity/SecurityOptions;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 73
    .local v0, i:Landroid/content/Intent;
    invoke-direct {p0, v0}, Lcom/android/email/activity/SecurityOptions;->setAccount(Landroid/content/Intent;)V

    .line 75
    if-eqz p1, :cond_0

    .line 77
    iget-object v1, p0, Lcom/android/email/activity/SecurityOptions;->mDraft:Lcom/android/email/provider/EmailContent$Message;

    const-string v2, "com.android.email.securityoption.sign"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, v1, Lcom/android/email/provider/EmailContent$Message;->mSigned:Z

    .line 78
    iget-object v1, p0, Lcom/android/email/activity/SecurityOptions;->mDraft:Lcom/android/email/provider/EmailContent$Message;

    const-string v2, "com.android.email.securityoption.encrypt"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, v1, Lcom/android/email/provider/EmailContent$Message;->mEncrypted:Z

    .line 85
    :goto_0
    return-void

    .line 82
    :cond_0
    iget-object v1, p0, Lcom/android/email/activity/SecurityOptions;->mDraft:Lcom/android/email/provider/EmailContent$Message;

    invoke-virtual {p0}, Lcom/android/email/activity/SecurityOptions;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "signed"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, v1, Lcom/android/email/provider/EmailContent$Message;->mSigned:Z

    .line 83
    iget-object v1, p0, Lcom/android/email/activity/SecurityOptions;->mDraft:Lcom/android/email/provider/EmailContent$Message;

    invoke-virtual {p0}, Lcom/android/email/activity/SecurityOptions;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "encrypted"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, v1, Lcom/android/email/provider/EmailContent$Message;->mEncrypted:Z

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 176
    const/4 v1, 0x4

    if-ne p1, v1, :cond_0

    .line 177
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "BACK PRESSED"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 178
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 179
    .local v0, mIntent:Landroid/content/Intent;
    const-string v1, "signed"

    iget-object v2, p0, Lcom/android/email/activity/SecurityOptions;->signCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 180
    const-string v1, "encrypted"

    iget-object v2, p0, Lcom/android/email/activity/SecurityOptions;->encryptCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 181
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/android/email/activity/SecurityOptions;->setResult(ILandroid/content/Intent;)V

    .line 183
    .end local v0           #mIntent:Landroid/content/Intent;
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    return v1
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 106
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 107
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 111
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 113
    invoke-direct {p0}, Lcom/android/email/activity/SecurityOptions;->configureSmimeOptions()V

    .line 115
    iget-object v0, p0, Lcom/android/email/activity/SecurityOptions;->signCheckBox:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/android/email/activity/SecurityOptions;->mDraft:Lcom/android/email/provider/EmailContent$Message;

    iget-boolean v1, v1, Lcom/android/email/provider/EmailContent$Message;->mSigned:Z

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 116
    iget-object v0, p0, Lcom/android/email/activity/SecurityOptions;->encryptCheckBox:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/android/email/activity/SecurityOptions;->mDraft:Lcom/android/email/provider/EmailContent$Message;

    iget-boolean v1, v1, Lcom/android/email/provider/EmailContent$Message;->mEncrypted:Z

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 117
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 188
    iget-object v0, p0, Lcom/android/email/activity/SecurityOptions;->mDraft:Lcom/android/email/provider/EmailContent$Message;

    if-eqz v0, :cond_0

    .line 189
    const-string v0, "com.android.email.securityoption.sign"

    iget-object v1, p0, Lcom/android/email/activity/SecurityOptions;->mDraft:Lcom/android/email/provider/EmailContent$Message;

    iget-boolean v1, v1, Lcom/android/email/provider/EmailContent$Message;->mSigned:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 190
    const-string v0, "com.android.email.securityoption.encrypt"

    iget-object v1, p0, Lcom/android/email/activity/SecurityOptions;->mDraft:Lcom/android/email/provider/EmailContent$Message;

    iget-boolean v1, v1, Lcom/android/email/provider/EmailContent$Message;->mEncrypted:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 192
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 193
    return-void
.end method
