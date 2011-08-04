.class public Lcom/android/email/activity/setup/OoOSetMessage;
.super Landroid/app/Activity;
.source "OoOSetMessage.java"


# instance fields
.field private mCancelButton:Landroid/widget/Button;

.field mMsqReqType:Z

.field private mSetButton:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10
    .parameter "savedInstanceState"

    .prologue
    const v9, 0x7f070148

    const v8, 0x7f070147

    const/16 v7, 0x8

    const v6, 0x7f070149

    const/4 v5, 0x1

    .line 21
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 23
    const v3, 0x7f03003b

    invoke-virtual {p0, v3}, Lcom/android/email/activity/setup/OoOSetMessage;->setContentView(I)V

    .line 25
    const v3, 0x7f07014a

    invoke-virtual {p0, v3}, Lcom/android/email/activity/setup/OoOSetMessage;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/email/activity/setup/OoOSetMessage;->mSetButton:Landroid/widget/Button;

    .line 26
    const v3, 0x7f07014b

    invoke-virtual {p0, v3}, Lcom/android/email/activity/setup/OoOSetMessage;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/email/activity/setup/OoOSetMessage;->mCancelButton:Landroid/widget/Button;

    .line 28
    iget-object v3, p0, Lcom/android/email/activity/setup/OoOSetMessage;->mSetButton:Landroid/widget/Button;

    new-instance v4, Lcom/android/email/activity/setup/OoOSetMessage$1;

    invoke-direct {v4, p0}, Lcom/android/email/activity/setup/OoOSetMessage$1;-><init>(Lcom/android/email/activity/setup/OoOSetMessage;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    iget-object v3, p0, Lcom/android/email/activity/setup/OoOSetMessage;->mCancelButton:Landroid/widget/Button;

    new-instance v4, Lcom/android/email/activity/setup/OoOSetMessage$2;

    invoke-direct {v4, p0}, Lcom/android/email/activity/setup/OoOSetMessage$2;-><init>(Lcom/android/email/activity/setup/OoOSetMessage;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    invoke-virtual {p0}, Lcom/android/email/activity/setup/OoOSetMessage;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "oooMsgReqType"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/email/activity/setup/OoOSetMessage;->mMsqReqType:Z

    .line 72
    iget-boolean v3, p0, Lcom/android/email/activity/setup/OoOSetMessage;->mMsqReqType:Z

    if-ne v3, v5, :cond_3

    .line 73
    const v3, 0x7f08022f

    invoke-virtual {p0, v3}, Lcom/android/email/activity/setup/OoOSetMessage;->setTitle(I)V

    .line 74
    invoke-virtual {p0, v8}, Lcom/android/email/activity/setup/OoOSetMessage;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    .line 75
    .local v2, rb:Landroid/widget/RadioButton;
    if-eqz v2, :cond_0

    .line 76
    invoke-virtual {v2, v7}, Landroid/widget/RadioButton;->setVisibility(I)V

    .line 78
    :cond_0
    invoke-virtual {p0, v9}, Lcom/android/email/activity/setup/OoOSetMessage;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .end local v2           #rb:Landroid/widget/RadioButton;
    check-cast v2, Landroid/widget/RadioButton;

    .line 79
    .restart local v2       #rb:Landroid/widget/RadioButton;
    if-eqz v2, :cond_1

    .line 80
    invoke-virtual {v2, v7}, Landroid/widget/RadioButton;->setVisibility(I)V

    .line 82
    :cond_1
    invoke-virtual {p0}, Lcom/android/email/activity/setup/OoOSetMessage;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "oooMsgReqDataInternal"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 83
    .local v1, message:Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 84
    invoke-virtual {p0, v6}, Lcom/android/email/activity/setup/OoOSetMessage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 85
    .local v0, edit:Landroid/widget/EditText;
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 112
    .end local v0           #edit:Landroid/widget/EditText;
    .end local v2           #rb:Landroid/widget/RadioButton;
    :cond_2
    :goto_0
    return-void

    .line 89
    .end local v1           #message:Ljava/lang/String;
    :cond_3
    const v3, 0x7f080230

    invoke-virtual {p0, v3}, Lcom/android/email/activity/setup/OoOSetMessage;->setTitle(I)V

    .line 91
    invoke-virtual {p0}, Lcom/android/email/activity/setup/OoOSetMessage;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "oooMsgReqDataExternalKnown"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 92
    .restart local v1       #message:Ljava/lang/String;
    if-eqz v1, :cond_4

    .line 93
    invoke-virtual {p0, v6}, Lcom/android/email/activity/setup/OoOSetMessage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 94
    .restart local v0       #edit:Landroid/widget/EditText;
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 95
    invoke-virtual {p0, v8}, Lcom/android/email/activity/setup/OoOSetMessage;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    .line 96
    .restart local v2       #rb:Landroid/widget/RadioButton;
    if-eqz v2, :cond_2

    .line 97
    invoke-virtual {v2, v5}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    .line 101
    .end local v0           #edit:Landroid/widget/EditText;
    .end local v2           #rb:Landroid/widget/RadioButton;
    :cond_4
    invoke-virtual {p0}, Lcom/android/email/activity/setup/OoOSetMessage;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "oooMsgReqDataInternalUnknown"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 102
    if-eqz v1, :cond_2

    .line 103
    invoke-virtual {p0, v6}, Lcom/android/email/activity/setup/OoOSetMessage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 104
    .restart local v0       #edit:Landroid/widget/EditText;
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 105
    invoke-virtual {p0, v9}, Lcom/android/email/activity/setup/OoOSetMessage;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    .line 106
    .restart local v2       #rb:Landroid/widget/RadioButton;
    if-eqz v2, :cond_2

    .line 107
    invoke-virtual {v2, v5}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0
.end method
