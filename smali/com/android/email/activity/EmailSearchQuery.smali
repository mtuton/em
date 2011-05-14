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
.field private static final DATE_DIALOG_ID:I = 0x0

.field private static final KEY_EXTRA_ACCOUNT_ID:Ljava/lang/String; = "com.android.email.AccountId"

.field private static final KEY_EXTRA_MAILBOX_ID:Ljava/lang/String; = "com.android.email.MailboxId"

.field private static final RESULT_SEARCH:I = 0x1

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private dateHolder:Landroid/widget/LinearLayout;

.field private mAccount:Lcom/android/email/provider/EmailContent$Account;

.field private mController:Lcom/android/email/Controller;

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

    .line 77
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

.method static synthetic access$1300(Lcom/android/email/activity/EmailSearchQuery;)Lcom/android/email/provider/EmailContent$Account;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/email/activity/EmailSearchQuery;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/email/activity/EmailSearchQuery;)Lcom/android/email/Controller;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/email/activity/EmailSearchQuery;->mController:Lcom/android/email/Controller;

    return-object v0
.end method

.method static synthetic access$1500()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lcom/android/email/activity/EmailSearchQuery;->TAG:Ljava/lang/String;

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
    .locals 8

    .prologue
    const-wide/16 v6, -0x1

    .line 314
    invoke-virtual {p0}, Lcom/android/email/activity/EmailSearchQuery;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "com.android.email.AccountId"

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 315
    .local v0, accountId:J
    cmp-long v4, v0, v6

    if-nez v4, :cond_0

    .line 316
    sget-object v4, Lcom/android/email/activity/EmailSearchQuery;->TAG:Ljava/lang/String;

    const-string v5, "Must pass com.android.email.AccountId of type long in extras"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    invoke-virtual {p0}, Lcom/android/email/activity/EmailSearchQuery;->finish()V

    .line 321
    :goto_0
    invoke-virtual {p0}, Lcom/android/email/activity/EmailSearchQuery;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "com.android.email.MailboxId"

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    .line 322
    .local v2, mailboxId:J
    cmp-long v4, v2, v6

    if-gtz v4, :cond_1

    .line 323
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/email/activity/EmailSearchQuery;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    .line 327
    :goto_1
    return-void

    .line 319
    .end local v2           #mailboxId:J
    :cond_0
    invoke-static {p0, v0, v1}, Lcom/android/email/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Account;

    move-result-object v4

    iput-object v4, p0, Lcom/android/email/activity/EmailSearchQuery;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    goto :goto_0

    .line 325
    .restart local v2       #mailboxId:J
    :cond_1
    invoke-static {p0, v2, v3}, Lcom/android/email/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Mailbox;

    move-result-object v4

    iput-object v4, p0, Lcom/android/email/activity/EmailSearchQuery;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    goto :goto_1
.end method

.method public static startActivity(Landroid/app/Activity;JJI)V
    .locals 2
    .parameter "activity"
    .parameter "accountId"
    .parameter "mailboxId"
    .parameter "requestCode"

    .prologue
    .line 165
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 166
    .local v0, searchQuery:Landroid/content/Intent;
    const-class v1, Lcom/android/email/activity/EmailSearchQuery;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 167
    const-string v1, "com.android.email.AccountId"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 168
    const-string v1, "com.android.email.MailboxId"

    invoke-virtual {v0, v1, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 169
    invoke-virtual {p0, v0, p5}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 170
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3
    .parameter "editText"

    .prologue
    .line 173
    iget-object v1, p0, Lcom/android/email/activity/EmailSearchQuery;->mQuery:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 174
    .local v0, queryString:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 175
    iget-object v1, p0, Lcom/android/email/activity/EmailSearchQuery;->mSearchButton:Landroid/widget/Button;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 179
    :goto_0
    return-void

    .line 177
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
    .line 183
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const-string v3, " "

    .line 331
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 332
    const-string v0, "FROM_YEAR"

    iget v1, p0, Lcom/android/email/activity/EmailSearchQuery;->mFromYear:I

    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/email/activity/EmailSearchQuery;->mFromYear:I

    .line 333
    const-string v0, "FROM_MONTH"

    iget v1, p0, Lcom/android/email/activity/EmailSearchQuery;->mFromMonth:I

    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/email/activity/EmailSearchQuery;->mFromMonth:I

    .line 334
    const-string v0, "FROM_DAY"

    iget v1, p0, Lcom/android/email/activity/EmailSearchQuery;->mFromDay:I

    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/email/activity/EmailSearchQuery;->mFromDay:I

    .line 336
    const-string v0, "TO_YEAR"

    iget v1, p0, Lcom/android/email/activity/EmailSearchQuery;->mToYear:I

    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/email/activity/EmailSearchQuery;->mToYear:I

    .line 337
    const-string v0, "TO_MONTH"

    iget v1, p0, Lcom/android/email/activity/EmailSearchQuery;->mToMonth:I

    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/email/activity/EmailSearchQuery;->mToMonth:I

    .line 338
    const-string v0, "TO_DAY"

    iget v1, p0, Lcom/android/email/activity/EmailSearchQuery;->mToDay:I

    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/email/activity/EmailSearchQuery;->mToDay:I

    .line 346
    iget-object v0, p0, Lcom/android/email/activity/EmailSearchQuery;->mSearchText:Landroid/widget/TextView;

    const-string v1, "SEARCH_STRING"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 348
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

    .line 350
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 351
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 12
    .parameter "savedInstanceState"

    .prologue
    const v3, 0x7f0801a0

    const/4 v11, 0x5

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 191
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 192
    const v2, 0x7f030014

    invoke-virtual {p0, v2}, Lcom/android/email/activity/EmailSearchQuery;->setContentView(I)V

    .line 193
    invoke-direct {p0}, Lcom/android/email/activity/EmailSearchQuery;->readArgumentsFromIntent()V

    .line 195
    iget-object v2, p0, Lcom/android/email/activity/EmailSearchQuery;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    if-eqz v2, :cond_0

    .line 196
    invoke-virtual {p0}, Lcom/android/email/activity/EmailSearchQuery;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/email/activity/EmailSearchQuery;->setTitle(Ljava/lang/CharSequence;)V

    .line 206
    :goto_0
    invoke-virtual {p0}, Lcom/android/email/activity/EmailSearchQuery;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-static {v2}, Lcom/android/email/Controller;->getInstance(Landroid/content/Context;)Lcom/android/email/Controller;

    move-result-object v2

    iput-object v2, p0, Lcom/android/email/activity/EmailSearchQuery;->mController:Lcom/android/email/Controller;

    .line 209
    new-instance v2, Lcom/android/exchange/provider/EmailSearchAdapter;

    invoke-direct {v2, p0}, Lcom/android/exchange/provider/EmailSearchAdapter;-><init>(Landroid/app/Activity;)V

    iput-object v2, p0, Lcom/android/email/activity/EmailSearchQuery;->mEmailSearchAdapter:Lcom/android/exchange/provider/EmailSearchAdapter;

    .line 210
    iget-object v2, p0, Lcom/android/email/activity/EmailSearchQuery;->mEmailSearchAdapter:Lcom/android/exchange/provider/EmailSearchAdapter;

    iget-object v3, p0, Lcom/android/email/activity/EmailSearchQuery;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    invoke-virtual {v2, v3}, Lcom/android/exchange/provider/EmailSearchAdapter;->setAccount(Lcom/android/email/provider/EmailContent$Account;)V

    .line 213
    const v2, 0x7f070074

    invoke-virtual {p0, v2}, Lcom/android/email/activity/EmailSearchQuery;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/email/activity/EmailSearchQuery;->dateHolder:Landroid/widget/LinearLayout;

    .line 214
    iget-object v2, p0, Lcom/android/email/activity/EmailSearchQuery;->dateHolder:Landroid/widget/LinearLayout;

    new-instance v3, Lcom/android/email/activity/EmailSearchQuery$1;

    invoke-direct {v3, p0}, Lcom/android/email/activity/EmailSearchQuery$1;-><init>(Lcom/android/email/activity/EmailSearchQuery;)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 221
    const v2, 0x7f070077

    invoke-virtual {p0, v2}, Lcom/android/email/activity/EmailSearchQuery;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/email/activity/EmailSearchQuery;->mSearchButton:Landroid/widget/Button;

    .line 222
    iget-object v2, p0, Lcom/android/email/activity/EmailSearchQuery;->mSearchButton:Landroid/widget/Button;

    invoke-virtual {v2, v8}, Landroid/widget/Button;->setEnabled(Z)V

    .line 223
    iget-object v2, p0, Lcom/android/email/activity/EmailSearchQuery;->mSearchButton:Landroid/widget/Button;

    new-instance v3, Lcom/android/email/activity/EmailSearchQuery$OnSearchButtonClickListener;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/android/email/activity/EmailSearchQuery$OnSearchButtonClickListener;-><init>(Lcom/android/email/activity/EmailSearchQuery;Lcom/android/email/activity/EmailSearchQuery$1;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 225
    const v2, 0x7f070078

    invoke-virtual {p0, v2}, Lcom/android/email/activity/EmailSearchQuery;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 226
    .local v1, cancelButton:Landroid/widget/Button;
    new-instance v2, Lcom/android/email/activity/EmailSearchQuery$2;

    invoke-direct {v2, p0}, Lcom/android/email/activity/EmailSearchQuery$2;-><init>(Lcom/android/email/activity/EmailSearchQuery;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 233
    const v2, 0x7f070072

    invoke-virtual {p0, v2}, Lcom/android/email/activity/EmailSearchQuery;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/android/email/activity/EmailSearchQuery;->mQuery:Landroid/widget/EditText;

    .line 234
    iget-object v2, p0, Lcom/android/email/activity/EmailSearchQuery;->mQuery:Landroid/widget/EditText;

    const v3, 0x7f080124

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setHint(I)V

    .line 235
    iget-object v2, p0, Lcom/android/email/activity/EmailSearchQuery;->mQuery:Landroid/widget/EditText;

    invoke-virtual {v2, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 237
    const v2, 0x7f070076

    invoke-virtual {p0, v2}, Lcom/android/email/activity/EmailSearchQuery;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/email/activity/EmailSearchQuery;->mSearchText:Landroid/widget/TextView;

    .line 257
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 258
    .local v0, c:Ljava/util/Calendar;
    invoke-virtual {v0, v9}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iput v2, p0, Lcom/android/email/activity/EmailSearchQuery;->mFromYear:I

    .line 259
    invoke-virtual {v0, v10}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iput v2, p0, Lcom/android/email/activity/EmailSearchQuery;->mFromMonth:I

    .line 260
    invoke-virtual {v0, v11}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iput v2, p0, Lcom/android/email/activity/EmailSearchQuery;->mFromDay:I

    .line 262
    invoke-virtual {v0, v9}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iput v2, p0, Lcom/android/email/activity/EmailSearchQuery;->mToYear:I

    .line 263
    invoke-virtual {v0, v10}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iput v2, p0, Lcom/android/email/activity/EmailSearchQuery;->mToMonth:I

    .line 264
    invoke-virtual {v0, v11}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iput v2, p0, Lcom/android/email/activity/EmailSearchQuery;->mToDay:I

    .line 266
    iput v8, p0, Lcom/android/email/activity/EmailSearchQuery;->mFromHour:I

    .line 267
    iput v8, p0, Lcom/android/email/activity/EmailSearchQuery;->mFromMinute:I

    .line 269
    const/16 v2, 0xb

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iput v2, p0, Lcom/android/email/activity/EmailSearchQuery;->mToHour:I

    .line 270
    const/16 v2, 0xc

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iput v2, p0, Lcom/android/email/activity/EmailSearchQuery;->mToMinute:I

    .line 271
    return-void

    .line 198
    .end local v0           #c:Ljava/util/Calendar;
    .end local v1           #cancelButton:Landroid/widget/Button;
    :cond_0
    iget-object v2, p0, Lcom/android/email/activity/EmailSearchQuery;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    if-eqz v2, :cond_1

    .line 199
    invoke-virtual {p0}, Lcom/android/email/activity/EmailSearchQuery;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/email/activity/EmailSearchQuery;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 201
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

    .line 202
    invoke-virtual {p0}, Lcom/android/email/activity/EmailSearchQuery;->finish()V

    goto/16 :goto_0
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 6
    .parameter "id"

    .prologue
    .line 275
    packed-switch p1, :pswitch_data_0

    .line 310
    const/4 v1, 0x0

    :goto_0
    return-object v1

    .line 277
    :pswitch_0
    new-instance v2, Lcom/android/email/activity/EmailSearchQuery$3;

    invoke-direct {v2, p0}, Lcom/android/email/activity/EmailSearchQuery$3;-><init>(Lcom/android/email/activity/EmailSearchQuery;)V

    .line 295
    .local v2, dateSetListener:Landroid/app/DatePickerDialog$OnDateSetListener;
    new-instance v0, Landroid/app/DatePickerDialog;

    iget v3, p0, Lcom/android/email/activity/EmailSearchQuery;->mFromYear:I

    iget v4, p0, Lcom/android/email/activity/EmailSearchQuery;->mFromMonth:I

    iget v5, p0, Lcom/android/email/activity/EmailSearchQuery;->mFromDay:I

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    .line 300
    .local v0, datePickerDialog:Landroid/app/Dialog;
    new-instance v1, Lcom/android/email/activity/EmailSearchQuery$4;

    invoke-direct {v1, p0}, Lcom/android/email/activity/EmailSearchQuery$4;-><init>(Lcom/android/email/activity/EmailSearchQuery;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    move-object v1, v0

    .line 308
    goto :goto_0

    .line 275
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
    .line 187
    return-void
.end method
