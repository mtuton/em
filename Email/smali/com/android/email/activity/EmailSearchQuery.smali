.class public Lcom/android/email/activity/EmailSearchQuery;
.super Landroid/app/Activity;
.source "EmailSearchQuery.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/activity/EmailSearchQuery$OnSearchButtonClickListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private dateHolder:Landroid/widget/LinearLayout;

.field private mAccount:Lcom/android/email/provider/EmailContent$Account;

.field private mController:Lcom/android/email/Controller;

.field private mConversationId:Ljava/lang/String;

.field private mEmailSearchAdapter:Lcom/android/exchange/provider/EmailSearchAdapter;

.field private mFromDay:I

.field private mFromHour:I

.field private mFromMinute:I

.field private mFromMonth:I

.field private mFromYear:I

.field private mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

.field private mQuery:Landroid/widget/EditText;

.field private mSearchButton:Landroid/widget/Button;

.field private mSearchText:Landroid/widget/TextView;

.field private mToDay:I

.field private mToHour:I

.field private mToMinute:I

.field private mToMonth:I

.field private mToYear:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    const-class v0, Lcom/android/email/activity/EmailSearchQuery;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/email/activity/EmailSearchQuery;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 87
    return-void
.end method

.method static synthetic access$000(Lcom/android/email/activity/EmailSearchQuery;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/email/activity/EmailSearchQuery;->mQuery:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/email/activity/EmailSearchQuery;)Lcom/android/exchange/provider/EmailSearchAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/email/activity/EmailSearchQuery;->mEmailSearchAdapter:Lcom/android/exchange/provider/EmailSearchAdapter;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/email/activity/EmailSearchQuery;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget v0, p0, Lcom/android/email/activity/EmailSearchQuery;->mToHour:I

    return v0
.end method

.method static synthetic access$1100(Lcom/android/email/activity/EmailSearchQuery;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget v0, p0, Lcom/android/email/activity/EmailSearchQuery;->mToMinute:I

    return v0
.end method

.method static synthetic access$1200(Lcom/android/email/activity/EmailSearchQuery;)Lcom/android/email/provider/EmailContent$Mailbox;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/email/activity/EmailSearchQuery;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/email/activity/EmailSearchQuery;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/email/activity/EmailSearchQuery;->mConversationId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/email/activity/EmailSearchQuery;)Lcom/android/email/provider/EmailContent$Account;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/email/activity/EmailSearchQuery;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/email/activity/EmailSearchQuery;)Lcom/android/email/Controller;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/email/activity/EmailSearchQuery;->mController:Lcom/android/email/Controller;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/email/activity/EmailSearchQuery;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/email/activity/EmailSearchQuery;->mSearchText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/email/activity/EmailSearchQuery;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget v0, p0, Lcom/android/email/activity/EmailSearchQuery;->mFromYear:I

    return v0
.end method

.method static synthetic access$202(Lcom/android/email/activity/EmailSearchQuery;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    iput p1, p0, Lcom/android/email/activity/EmailSearchQuery;->mFromYear:I

    return p1
.end method

.method static synthetic access$300(Lcom/android/email/activity/EmailSearchQuery;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget v0, p0, Lcom/android/email/activity/EmailSearchQuery;->mFromMonth:I

    return v0
.end method

.method static synthetic access$302(Lcom/android/email/activity/EmailSearchQuery;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    iput p1, p0, Lcom/android/email/activity/EmailSearchQuery;->mFromMonth:I

    return p1
.end method

.method static synthetic access$400(Lcom/android/email/activity/EmailSearchQuery;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget v0, p0, Lcom/android/email/activity/EmailSearchQuery;->mFromDay:I

    return v0
.end method

.method static synthetic access$402(Lcom/android/email/activity/EmailSearchQuery;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    iput p1, p0, Lcom/android/email/activity/EmailSearchQuery;->mFromDay:I

    return p1
.end method

.method static synthetic access$500(Lcom/android/email/activity/EmailSearchQuery;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget v0, p0, Lcom/android/email/activity/EmailSearchQuery;->mToYear:I

    return v0
.end method

.method static synthetic access$600(Lcom/android/email/activity/EmailSearchQuery;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget v0, p0, Lcom/android/email/activity/EmailSearchQuery;->mToMonth:I

    return v0
.end method

.method static synthetic access$700(Lcom/android/email/activity/EmailSearchQuery;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget v0, p0, Lcom/android/email/activity/EmailSearchQuery;->mToDay:I

    return v0
.end method

.method static synthetic access$800(Lcom/android/email/activity/EmailSearchQuery;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget v0, p0, Lcom/android/email/activity/EmailSearchQuery;->mFromHour:I

    return v0
.end method

.method static synthetic access$900(Lcom/android/email/activity/EmailSearchQuery;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget v0, p0, Lcom/android/email/activity/EmailSearchQuery;->mFromMinute:I

    return v0
.end method

.method private readArgumentsFromIntent()V
    .locals 9

    .prologue
    const-wide/16 v7, -0x1

    .line 346
    invoke-virtual {p0}, Lcom/android/email/activity/EmailSearchQuery;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "com.android.email.AccountId"

    invoke-virtual {v5, v6, v7, v8}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 347
    .local v0, accountId:J
    cmp-long v5, v0, v7

    if-nez v5, :cond_1

    .line 348
    sget-object v5, Lcom/android/email/activity/EmailSearchQuery;->TAG:Ljava/lang/String;

    const-string v6, "Must pass com.android.email.AccountId of type long in extras"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    invoke-virtual {p0}, Lcom/android/email/activity/EmailSearchQuery;->finish()V

    .line 353
    :goto_0
    invoke-virtual {p0}, Lcom/android/email/activity/EmailSearchQuery;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "com.android.email.MailboxId"

    invoke-virtual {v5, v6, v7, v8}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    .line 354
    .local v3, mailboxId:J
    cmp-long v5, v3, v7

    if-gtz v5, :cond_2

    .line 355
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/email/activity/EmailSearchQuery;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    .line 360
    :goto_1
    invoke-virtual {p0}, Lcom/android/email/activity/EmailSearchQuery;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "com.android.email.ConversationId"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 361
    .local v2, conversationId:Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 362
    iput-object v2, p0, Lcom/android/email/activity/EmailSearchQuery;->mConversationId:Ljava/lang/String;

    .line 367
    :cond_0
    return-void

    .line 351
    .end local v2           #conversationId:Ljava/lang/String;
    .end local v3           #mailboxId:J
    :cond_1
    invoke-static {p0, v0, v1}, Lcom/android/email/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Account;

    move-result-object v5

    iput-object v5, p0, Lcom/android/email/activity/EmailSearchQuery;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    goto :goto_0

    .line 357
    .restart local v3       #mailboxId:J
    :cond_2
    invoke-static {p0, v3, v4}, Lcom/android/email/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Mailbox;

    move-result-object v5

    iput-object v5, p0, Lcom/android/email/activity/EmailSearchQuery;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    goto :goto_1
.end method

.method public static startActivity(Landroid/app/Activity;JJLjava/lang/String;IZ)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 189
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 190
    if-eqz p7, :cond_0

    .line 193
    :cond_0
    const-class v1, Lcom/android/email/activity/EmailSearchQuery;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 194
    const-string v1, "com.android.email.AccountId"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 195
    const-string v1, "com.android.email.MailboxId"

    invoke-virtual {v0, v1, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 196
    const-string v1, "com.android.email.ConversationId"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 197
    invoke-virtual {p0, v0, p6}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 199
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3
    .parameter "editText"

    .prologue
    .line 203
    iget-object v1, p0, Lcom/android/email/activity/EmailSearchQuery;->mQuery:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 204
    .local v0, queryString:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 205
    iget-object v1, p0, Lcom/android/email/activity/EmailSearchQuery;->mSearchButton:Landroid/widget/Button;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 209
    :goto_0
    return-void

    .line 207
    :cond_0
    iget-object v1, p0, Lcom/android/email/activity/EmailSearchQuery;->mSearchButton:Landroid/widget/Button;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 213
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const-string v3, " "

    .line 371
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 372
    const-string v0, "FROM_YEAR"

    iget v1, p0, Lcom/android/email/activity/EmailSearchQuery;->mFromYear:I

    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/email/activity/EmailSearchQuery;->mFromYear:I

    .line 373
    const-string v0, "FROM_MONTH"

    iget v1, p0, Lcom/android/email/activity/EmailSearchQuery;->mFromMonth:I

    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/email/activity/EmailSearchQuery;->mFromMonth:I

    .line 374
    const-string v0, "FROM_DAY"

    iget v1, p0, Lcom/android/email/activity/EmailSearchQuery;->mFromDay:I

    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/email/activity/EmailSearchQuery;->mFromDay:I

    .line 376
    const-string v0, "TO_YEAR"

    iget v1, p0, Lcom/android/email/activity/EmailSearchQuery;->mToYear:I

    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/email/activity/EmailSearchQuery;->mToYear:I

    .line 377
    const-string v0, "TO_MONTH"

    iget v1, p0, Lcom/android/email/activity/EmailSearchQuery;->mToMonth:I

    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/email/activity/EmailSearchQuery;->mToMonth:I

    .line 378
    const-string v0, "TO_DAY"

    iget v1, p0, Lcom/android/email/activity/EmailSearchQuery;->mToDay:I

    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/email/activity/EmailSearchQuery;->mToDay:I

    .line 386
    iget-object v0, p0, Lcom/android/email/activity/EmailSearchQuery;->mSearchText:Landroid/widget/TextView;

    const-string v1, "SEARCH_STRING"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 388
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityResult y m d"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/email/activity/EmailSearchQuery;->mFromYear:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/email/activity/EmailSearchQuery;->mFromMonth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/email/activity/EmailSearchQuery;->mFromDay:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 390
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 391
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 12
    .parameter "savedInstanceState"

    .prologue
    const v3, 0x7f0801c7

    const/4 v11, 0x5

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 221
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 222
    const v2, 0x7f030018

    invoke-virtual {p0, v2}, Lcom/android/email/activity/EmailSearchQuery;->setContentView(I)V

    .line 223
    invoke-direct {p0}, Lcom/android/email/activity/EmailSearchQuery;->readArgumentsFromIntent()V

    .line 225
    iget-object v2, p0, Lcom/android/email/activity/EmailSearchQuery;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    if-eqz v2, :cond_0

    .line 226
    invoke-virtual {p0}, Lcom/android/email/activity/EmailSearchQuery;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/email/activity/EmailSearchQuery;->setTitle(Ljava/lang/CharSequence;)V

    .line 236
    :goto_0
    invoke-virtual {p0}, Lcom/android/email/activity/EmailSearchQuery;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-static {v2}, Lcom/android/email/Controller;->getInstance(Landroid/content/Context;)Lcom/android/email/Controller;

    move-result-object v2

    iput-object v2, p0, Lcom/android/email/activity/EmailSearchQuery;->mController:Lcom/android/email/Controller;

    .line 239
    new-instance v2, Lcom/android/exchange/provider/EmailSearchAdapter;

    invoke-direct {v2, p0}, Lcom/android/exchange/provider/EmailSearchAdapter;-><init>(Landroid/app/Activity;)V

    iput-object v2, p0, Lcom/android/email/activity/EmailSearchQuery;->mEmailSearchAdapter:Lcom/android/exchange/provider/EmailSearchAdapter;

    .line 240
    iget-object v2, p0, Lcom/android/email/activity/EmailSearchQuery;->mEmailSearchAdapter:Lcom/android/exchange/provider/EmailSearchAdapter;

    iget-object v3, p0, Lcom/android/email/activity/EmailSearchQuery;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    invoke-virtual {v2, v3}, Lcom/android/exchange/provider/EmailSearchAdapter;->setAccount(Lcom/android/email/provider/EmailContent$Account;)V

    .line 243
    const v2, 0x7f07008f

    invoke-virtual {p0, v2}, Lcom/android/email/activity/EmailSearchQuery;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/email/activity/EmailSearchQuery;->dateHolder:Landroid/widget/LinearLayout;

    .line 244
    iget-object v2, p0, Lcom/android/email/activity/EmailSearchQuery;->dateHolder:Landroid/widget/LinearLayout;

    new-instance v3, Lcom/android/email/activity/EmailSearchQuery$1;

    invoke-direct {v3, p0}, Lcom/android/email/activity/EmailSearchQuery$1;-><init>(Lcom/android/email/activity/EmailSearchQuery;)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 253
    const v2, 0x7f070092

    invoke-virtual {p0, v2}, Lcom/android/email/activity/EmailSearchQuery;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/email/activity/EmailSearchQuery;->mSearchButton:Landroid/widget/Button;

    .line 254
    iget-object v2, p0, Lcom/android/email/activity/EmailSearchQuery;->mSearchButton:Landroid/widget/Button;

    invoke-virtual {v2, v8}, Landroid/widget/Button;->setEnabled(Z)V

    .line 255
    iget-object v2, p0, Lcom/android/email/activity/EmailSearchQuery;->mSearchButton:Landroid/widget/Button;

    new-instance v3, Lcom/android/email/activity/EmailSearchQuery$OnSearchButtonClickListener;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/android/email/activity/EmailSearchQuery$OnSearchButtonClickListener;-><init>(Lcom/android/email/activity/EmailSearchQuery;Lcom/android/email/activity/EmailSearchQuery$1;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 257
    const v2, 0x7f070093

    invoke-virtual {p0, v2}, Lcom/android/email/activity/EmailSearchQuery;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 258
    .local v1, cancelButton:Landroid/widget/Button;
    new-instance v2, Lcom/android/email/activity/EmailSearchQuery$2;

    invoke-direct {v2, p0}, Lcom/android/email/activity/EmailSearchQuery$2;-><init>(Lcom/android/email/activity/EmailSearchQuery;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 265
    const v2, 0x7f07008d

    invoke-virtual {p0, v2}, Lcom/android/email/activity/EmailSearchQuery;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/android/email/activity/EmailSearchQuery;->mQuery:Landroid/widget/EditText;

    .line 266
    iget-object v2, p0, Lcom/android/email/activity/EmailSearchQuery;->mQuery:Landroid/widget/EditText;

    const v3, 0x7f08013a

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setHint(I)V

    .line 267
    iget-object v2, p0, Lcom/android/email/activity/EmailSearchQuery;->mQuery:Landroid/widget/EditText;

    invoke-virtual {v2, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 269
    const v2, 0x7f070091

    invoke-virtual {p0, v2}, Lcom/android/email/activity/EmailSearchQuery;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/email/activity/EmailSearchQuery;->mSearchText:Landroid/widget/TextView;

    .line 289
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 290
    .local v0, c:Ljava/util/Calendar;
    invoke-virtual {v0, v9}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iput v2, p0, Lcom/android/email/activity/EmailSearchQuery;->mFromYear:I

    .line 291
    invoke-virtual {v0, v10}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iput v2, p0, Lcom/android/email/activity/EmailSearchQuery;->mFromMonth:I

    .line 292
    invoke-virtual {v0, v11}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iput v2, p0, Lcom/android/email/activity/EmailSearchQuery;->mFromDay:I

    .line 294
    invoke-virtual {v0, v9}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iput v2, p0, Lcom/android/email/activity/EmailSearchQuery;->mToYear:I

    .line 295
    invoke-virtual {v0, v10}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iput v2, p0, Lcom/android/email/activity/EmailSearchQuery;->mToMonth:I

    .line 296
    invoke-virtual {v0, v11}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iput v2, p0, Lcom/android/email/activity/EmailSearchQuery;->mToDay:I

    .line 298
    iput v8, p0, Lcom/android/email/activity/EmailSearchQuery;->mFromHour:I

    .line 299
    iput v8, p0, Lcom/android/email/activity/EmailSearchQuery;->mFromMinute:I

    .line 301
    const/16 v2, 0xb

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iput v2, p0, Lcom/android/email/activity/EmailSearchQuery;->mToHour:I

    .line 302
    const/16 v2, 0xc

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iput v2, p0, Lcom/android/email/activity/EmailSearchQuery;->mToMinute:I

    .line 303
    return-void

    .line 228
    .end local v0           #c:Ljava/util/Calendar;
    .end local v1           #cancelButton:Landroid/widget/Button;
    :cond_0
    iget-object v2, p0, Lcom/android/email/activity/EmailSearchQuery;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    if-eqz v2, :cond_1

    .line 229
    invoke-virtual {p0}, Lcom/android/email/activity/EmailSearchQuery;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/email/activity/EmailSearchQuery;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 231
    :cond_1
    sget-object v2, Lcom/android/email/activity/EmailSearchQuery;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not restoreAccountWithId "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/email/activity/EmailSearchQuery;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "com.android.email.AccountId"

    const-wide/16 v6, -0x1

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    invoke-virtual {p0}, Lcom/android/email/activity/EmailSearchQuery;->finish()V

    goto/16 :goto_0
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 6
    .parameter "id"

    .prologue
    .line 307
    packed-switch p1, :pswitch_data_0

    .line 342
    const/4 v1, 0x0

    :goto_0
    return-object v1

    .line 309
    :pswitch_0
    new-instance v2, Lcom/android/email/activity/EmailSearchQuery$3;

    invoke-direct {v2, p0}, Lcom/android/email/activity/EmailSearchQuery$3;-><init>(Lcom/android/email/activity/EmailSearchQuery;)V

    .line 327
    .local v2, dateSetListener:Landroid/app/DatePickerDialog$OnDateSetListener;
    new-instance v0, Landroid/app/DatePickerDialog;

    iget v3, p0, Lcom/android/email/activity/EmailSearchQuery;->mFromYear:I

    iget v4, p0, Lcom/android/email/activity/EmailSearchQuery;->mFromMonth:I

    iget v5, p0, Lcom/android/email/activity/EmailSearchQuery;->mFromDay:I

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    .line 332
    .local v0, datePickerDialog:Landroid/app/Dialog;
    new-instance v1, Lcom/android/email/activity/EmailSearchQuery$4;

    invoke-direct {v1, p0}, Lcom/android/email/activity/EmailSearchQuery$4;-><init>(Lcom/android/email/activity/EmailSearchQuery;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    move-object v1, v0

    .line 340
    goto :goto_0

    .line 307
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 217
    return-void
.end method
