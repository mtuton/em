.class public Lcom/android/email/activity/CustomizeDate;
.super Landroid/app/Activity;
.source "CustomizeDate.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private cancelButton:Landroid/widget/Button;

.field private customizeLayout:Landroid/widget/RelativeLayout;

.field private customizeRadioButton:Landroid/widget/RadioButton;

.field private dateFormatter:Ljava/text/SimpleDateFormat;

.field private fromDateButton:Landroid/widget/Button;

.field private fromTextView:Landroid/widget/TextView;

.field private mAccount:Lcom/android/email/provider/EmailContent$Account;

.field private mController:Lcom/android/email/Controller;

.field private mDate:Ljava/util/Date;

.field private mDay:I

.field private mDayFromSearch:I

.field private mDayToSearch:I

.field private mEmailSearchAdapter:Lcom/android/exchange/provider/EmailSearchAdapter;

.field private mFromDateSetListener:Landroid/app/DatePickerDialog$OnDateSetListener;

.field private mHourFromSearch:I

.field private mHourToSearch:I

.field private mIsCustomize:Z

.field private mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

.field private mMinuteFromSearch:I

.field private mMinuteToSearch:I

.field private mMonth:I

.field private mMonthFromSearch:I

.field private mMonthToSearch:I

.field private mToDateSetListener:Landroid/app/DatePickerDialog$OnDateSetListener;

.field private mYear:I

.field private mYearFromSearch:I

.field private mYearToSearch:I

.field private oneDayLayout:Landroid/widget/RelativeLayout;

.field private oneDayRadioButton:Landroid/widget/RadioButton;

.field private oneMonthLayout:Landroid/widget/RelativeLayout;

.field private oneMonthRadioButton:Landroid/widget/RadioButton;

.field private oneWeekLayout:Landroid/widget/RelativeLayout;

.field private oneWeekRadioButton:Landroid/widget/RadioButton;

.field private oneYearLayout:Landroid/widget/RelativeLayout;

.field private oneYearRadioButton:Landroid/widget/RadioButton;

.field private searchButton:Landroid/widget/Button;

.field private searchText:Ljava/lang/String;

.field private sixMonthLayout:Landroid/widget/RelativeLayout;

.field private sixMonthRadioButton:Landroid/widget/RadioButton;

.field private toDateButton:Landroid/widget/Button;

.field private toTextView:Landroid/widget/TextView;

.field private todayLayout:Landroid/widget/RelativeLayout;

.field private todayRadioButton:Landroid/widget/RadioButton;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 75
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lcom/android/email/activity/CustomizeDate;->mDate:Ljava/util/Date;

    .line 77
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/email/activity/CustomizeDate;->mIsCustomize:Z

    .line 87
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "EEE, d MMM, yyyy"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/android/email/activity/CustomizeDate;->dateFormatter:Ljava/text/SimpleDateFormat;

    .line 398
    new-instance v0, Lcom/android/email/activity/CustomizeDate$1;

    invoke-direct {v0, p0}, Lcom/android/email/activity/CustomizeDate$1;-><init>(Lcom/android/email/activity/CustomizeDate;)V

    iput-object v0, p0, Lcom/android/email/activity/CustomizeDate;->mFromDateSetListener:Landroid/app/DatePickerDialog$OnDateSetListener;

    .line 413
    new-instance v0, Lcom/android/email/activity/CustomizeDate$2;

    invoke-direct {v0, p0}, Lcom/android/email/activity/CustomizeDate$2;-><init>(Lcom/android/email/activity/CustomizeDate;)V

    iput-object v0, p0, Lcom/android/email/activity/CustomizeDate;->mToDateSetListener:Landroid/app/DatePickerDialog$OnDateSetListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/email/activity/CustomizeDate;)Ljava/text/SimpleDateFormat;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/android/email/activity/CustomizeDate;->dateFormatter:Ljava/text/SimpleDateFormat;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/email/activity/CustomizeDate;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/android/email/activity/CustomizeDate;->fromDateButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/email/activity/CustomizeDate;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29
    iput p1, p0, Lcom/android/email/activity/CustomizeDate;->mYearFromSearch:I

    return p1
.end method

.method static synthetic access$302(Lcom/android/email/activity/CustomizeDate;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29
    iput p1, p0, Lcom/android/email/activity/CustomizeDate;->mMonthFromSearch:I

    return p1
.end method

.method static synthetic access$402(Lcom/android/email/activity/CustomizeDate;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29
    iput p1, p0, Lcom/android/email/activity/CustomizeDate;->mDayFromSearch:I

    return p1
.end method

.method static synthetic access$500(Lcom/android/email/activity/CustomizeDate;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/android/email/activity/CustomizeDate;->toDateButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/email/activity/CustomizeDate;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29
    iput p1, p0, Lcom/android/email/activity/CustomizeDate;->mYearToSearch:I

    return p1
.end method

.method static synthetic access$702(Lcom/android/email/activity/CustomizeDate;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29
    iput p1, p0, Lcom/android/email/activity/CustomizeDate;->mMonthToSearch:I

    return p1
.end method

.method static synthetic access$802(Lcom/android/email/activity/CustomizeDate;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29
    iput p1, p0, Lcom/android/email/activity/CustomizeDate;->mDayToSearch:I

    return p1
.end method

.method private disableCustomView()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 450
    iget-object v0, p0, Lcom/android/email/activity/CustomizeDate;->fromTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 451
    iget-object v0, p0, Lcom/android/email/activity/CustomizeDate;->toTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 452
    iget-object v0, p0, Lcom/android/email/activity/CustomizeDate;->fromDateButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 453
    iget-object v0, p0, Lcom/android/email/activity/CustomizeDate;->toDateButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 454
    return-void
.end method

.method private enableCustomView()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 457
    iget-object v0, p0, Lcom/android/email/activity/CustomizeDate;->fromTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 458
    iget-object v0, p0, Lcom/android/email/activity/CustomizeDate;->toTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 459
    iget-object v0, p0, Lcom/android/email/activity/CustomizeDate;->fromDateButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 460
    iget-object v0, p0, Lcom/android/email/activity/CustomizeDate;->toDateButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 461
    return-void
.end method

.method private init()V
    .locals 3

    .prologue
    .line 163
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 166
    .local v0, today:Ljava/util/Date;
    const v1, 0x7f07005c

    invoke-virtual {p0, v1}, Lcom/android/email/activity/CustomizeDate;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/android/email/activity/CustomizeDate;->todayLayout:Landroid/widget/RelativeLayout;

    .line 167
    const v1, 0x7f07005f

    invoke-virtual {p0, v1}, Lcom/android/email/activity/CustomizeDate;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/android/email/activity/CustomizeDate;->oneDayLayout:Landroid/widget/RelativeLayout;

    .line 168
    const v1, 0x7f070062

    invoke-virtual {p0, v1}, Lcom/android/email/activity/CustomizeDate;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/android/email/activity/CustomizeDate;->oneWeekLayout:Landroid/widget/RelativeLayout;

    .line 169
    const v1, 0x7f070065

    invoke-virtual {p0, v1}, Lcom/android/email/activity/CustomizeDate;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/android/email/activity/CustomizeDate;->oneMonthLayout:Landroid/widget/RelativeLayout;

    .line 170
    const v1, 0x7f070068

    invoke-virtual {p0, v1}, Lcom/android/email/activity/CustomizeDate;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/android/email/activity/CustomizeDate;->sixMonthLayout:Landroid/widget/RelativeLayout;

    .line 171
    const v1, 0x7f07006b

    invoke-virtual {p0, v1}, Lcom/android/email/activity/CustomizeDate;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/android/email/activity/CustomizeDate;->oneYearLayout:Landroid/widget/RelativeLayout;

    .line 172
    const v1, 0x7f07006e

    invoke-virtual {p0, v1}, Lcom/android/email/activity/CustomizeDate;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/android/email/activity/CustomizeDate;->customizeLayout:Landroid/widget/RelativeLayout;

    .line 174
    const v1, 0x7f07005e

    invoke-virtual {p0, v1}, Lcom/android/email/activity/CustomizeDate;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p0, Lcom/android/email/activity/CustomizeDate;->todayRadioButton:Landroid/widget/RadioButton;

    .line 175
    iget-object v1, p0, Lcom/android/email/activity/CustomizeDate;->todayRadioButton:Landroid/widget/RadioButton;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 176
    const v1, 0x7f070061

    invoke-virtual {p0, v1}, Lcom/android/email/activity/CustomizeDate;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p0, Lcom/android/email/activity/CustomizeDate;->oneDayRadioButton:Landroid/widget/RadioButton;

    .line 177
    const v1, 0x7f070064

    invoke-virtual {p0, v1}, Lcom/android/email/activity/CustomizeDate;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p0, Lcom/android/email/activity/CustomizeDate;->oneWeekRadioButton:Landroid/widget/RadioButton;

    .line 178
    const v1, 0x7f070067

    invoke-virtual {p0, v1}, Lcom/android/email/activity/CustomizeDate;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p0, Lcom/android/email/activity/CustomizeDate;->oneMonthRadioButton:Landroid/widget/RadioButton;

    .line 179
    const v1, 0x7f07006a

    invoke-virtual {p0, v1}, Lcom/android/email/activity/CustomizeDate;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p0, Lcom/android/email/activity/CustomizeDate;->sixMonthRadioButton:Landroid/widget/RadioButton;

    .line 180
    const v1, 0x7f07006d

    invoke-virtual {p0, v1}, Lcom/android/email/activity/CustomizeDate;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p0, Lcom/android/email/activity/CustomizeDate;->oneYearRadioButton:Landroid/widget/RadioButton;

    .line 181
    const v1, 0x7f070070

    invoke-virtual {p0, v1}, Lcom/android/email/activity/CustomizeDate;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p0, Lcom/android/email/activity/CustomizeDate;->customizeRadioButton:Landroid/widget/RadioButton;

    .line 183
    const v1, 0x7f070071

    invoke-virtual {p0, v1}, Lcom/android/email/activity/CustomizeDate;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/email/activity/CustomizeDate;->fromTextView:Landroid/widget/TextView;

    .line 184
    const v1, 0x7f070075

    invoke-virtual {p0, v1}, Lcom/android/email/activity/CustomizeDate;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/email/activity/CustomizeDate;->toTextView:Landroid/widget/TextView;

    .line 186
    const v1, 0x7f070073

    invoke-virtual {p0, v1}, Lcom/android/email/activity/CustomizeDate;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/email/activity/CustomizeDate;->fromDateButton:Landroid/widget/Button;

    .line 187
    const v1, 0x7f070077

    invoke-virtual {p0, v1}, Lcom/android/email/activity/CustomizeDate;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/email/activity/CustomizeDate;->toDateButton:Landroid/widget/Button;

    .line 189
    const v1, 0x7f07007d

    invoke-virtual {p0, v1}, Lcom/android/email/activity/CustomizeDate;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/email/activity/CustomizeDate;->searchButton:Landroid/widget/Button;

    .line 190
    const v1, 0x7f07007b

    invoke-virtual {p0, v1}, Lcom/android/email/activity/CustomizeDate;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/email/activity/CustomizeDate;->cancelButton:Landroid/widget/Button;

    .line 192
    iget-object v1, p0, Lcom/android/email/activity/CustomizeDate;->fromDateButton:Landroid/widget/Button;

    iget-object v2, p0, Lcom/android/email/activity/CustomizeDate;->dateFormatter:Ljava/text/SimpleDateFormat;

    invoke-virtual {v2, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 193
    iget-object v1, p0, Lcom/android/email/activity/CustomizeDate;->toDateButton:Landroid/widget/Button;

    iget-object v2, p0, Lcom/android/email/activity/CustomizeDate;->dateFormatter:Ljava/text/SimpleDateFormat;

    invoke-virtual {v2, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 194
    return-void
.end method

.method private readArgumentsFromIntent()V
    .locals 8

    .prologue
    const-wide/16 v6, -0x1

    .line 137
    invoke-virtual {p0}, Lcom/android/email/activity/CustomizeDate;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "com.android.email.AccountId"

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 138
    .local v0, accountId:J
    invoke-virtual {p0}, Lcom/android/email/activity/CustomizeDate;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "com.android.email.SearchText"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/email/activity/CustomizeDate;->searchText:Ljava/lang/String;

    .line 139
    cmp-long v4, v0, v6

    if-nez v4, :cond_0

    .line 140
    const-string v4, "CustomizeDate"

    const-string v5, "Must pass com.android.email.AccountId of type long in extras"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    invoke-virtual {p0}, Lcom/android/email/activity/CustomizeDate;->finish()V

    .line 145
    :goto_0
    invoke-virtual {p0}, Lcom/android/email/activity/CustomizeDate;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "com.android.email.MailboxId"

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    .line 146
    .local v2, mailboxId:J
    cmp-long v4, v2, v6

    if-gtz v4, :cond_1

    .line 147
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/email/activity/CustomizeDate;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    .line 151
    :goto_1
    return-void

    .line 143
    .end local v2           #mailboxId:J
    :cond_0
    invoke-static {p0, v0, v1}, Lcom/android/email/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Account;

    move-result-object v4

    iput-object v4, p0, Lcom/android/email/activity/CustomizeDate;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    goto :goto_0

    .line 149
    .restart local v2       #mailboxId:J
    :cond_1
    invoke-static {p0, v2, v3}, Lcom/android/email/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Mailbox;

    move-result-object v4

    iput-object v4, p0, Lcom/android/email/activity/CustomizeDate;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    goto :goto_1
.end method

.method private setDefaultValues()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 438
    iget-object v0, p0, Lcom/android/email/activity/CustomizeDate;->mDate:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getYear()I

    move-result v0

    add-int/lit16 v0, v0, 0x76c

    iput v0, p0, Lcom/android/email/activity/CustomizeDate;->mYearToSearch:I

    .line 439
    iget-object v0, p0, Lcom/android/email/activity/CustomizeDate;->mDate:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getMonth()I

    move-result v0

    iput v0, p0, Lcom/android/email/activity/CustomizeDate;->mMonthToSearch:I

    .line 440
    iget-object v0, p0, Lcom/android/email/activity/CustomizeDate;->mDate:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getDate()I

    move-result v0

    iput v0, p0, Lcom/android/email/activity/CustomizeDate;->mDayToSearch:I

    .line 442
    iput v1, p0, Lcom/android/email/activity/CustomizeDate;->mHourFromSearch:I

    .line 443
    iput v1, p0, Lcom/android/email/activity/CustomizeDate;->mMinuteFromSearch:I

    .line 445
    iget-object v0, p0, Lcom/android/email/activity/CustomizeDate;->mDate:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getHours()I

    move-result v0

    iput v0, p0, Lcom/android/email/activity/CustomizeDate;->mHourToSearch:I

    .line 446
    iget-object v0, p0, Lcom/android/email/activity/CustomizeDate;->mDate:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getMinutes()I

    move-result v0

    iput v0, p0, Lcom/android/email/activity/CustomizeDate;->mMinuteToSearch:I

    .line 447
    return-void
.end method

.method public static startActivity(Landroid/app/Activity;JJILjava/lang/String;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 154
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 155
    const-class v1, Lcom/android/email/activity/CustomizeDate;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 156
    const-string v1, "com.android.email.AccountId"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 157
    const-string v1, "com.android.email.MailboxId"

    invoke-virtual {v0, v1, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 158
    const-string v1, "com.android.email.SearchText"

    invoke-virtual {v0, v1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 159
    invoke-virtual {p0, v0, p5}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 160
    return-void
.end method

.method private toggleAllRadioButtons()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 428
    iget-object v0, p0, Lcom/android/email/activity/CustomizeDate;->todayRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 429
    iget-object v0, p0, Lcom/android/email/activity/CustomizeDate;->oneDayRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 430
    iget-object v0, p0, Lcom/android/email/activity/CustomizeDate;->oneWeekRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 431
    iget-object v0, p0, Lcom/android/email/activity/CustomizeDate;->oneMonthRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 432
    iget-object v0, p0, Lcom/android/email/activity/CustomizeDate;->sixMonthRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 433
    iget-object v0, p0, Lcom/android/email/activity/CustomizeDate;->oneYearRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 434
    iget-object v0, p0, Lcom/android/email/activity/CustomizeDate;->customizeRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 435
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 14
    .parameter "v"

    .prologue
    .line 197
    iget-object v10, p0, Lcom/android/email/activity/CustomizeDate;->todayLayout:Landroid/widget/RelativeLayout;

    if-ne p1, v10, :cond_1

    .line 198
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/android/email/activity/CustomizeDate;->mIsCustomize:Z

    .line 199
    invoke-direct {p0}, Lcom/android/email/activity/CustomizeDate;->toggleAllRadioButtons()V

    .line 200
    iget-object v10, p0, Lcom/android/email/activity/CustomizeDate;->todayRadioButton:Landroid/widget/RadioButton;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 201
    iget-object v10, p0, Lcom/android/email/activity/CustomizeDate;->mDate:Ljava/util/Date;

    invoke-virtual {v10}, Ljava/util/Date;->getYear()I

    move-result v10

    add-int/lit16 v10, v10, 0x76c

    iput v10, p0, Lcom/android/email/activity/CustomizeDate;->mYearFromSearch:I

    .line 202
    iget-object v10, p0, Lcom/android/email/activity/CustomizeDate;->mDate:Ljava/util/Date;

    invoke-virtual {v10}, Ljava/util/Date;->getMonth()I

    move-result v10

    iput v10, p0, Lcom/android/email/activity/CustomizeDate;->mMonthFromSearch:I

    .line 203
    iget-object v10, p0, Lcom/android/email/activity/CustomizeDate;->mDate:Ljava/util/Date;

    invoke-virtual {v10}, Ljava/util/Date;->getDate()I

    move-result v10

    iput v10, p0, Lcom/android/email/activity/CustomizeDate;->mDayFromSearch:I

    .line 204
    invoke-direct {p0}, Lcom/android/email/activity/CustomizeDate;->setDefaultValues()V

    .line 205
    invoke-direct {p0}, Lcom/android/email/activity/CustomizeDate;->disableCustomView()V

    .line 382
    :cond_0
    :goto_0
    return-void

    .line 207
    :cond_1
    iget-object v10, p0, Lcom/android/email/activity/CustomizeDate;->oneDayLayout:Landroid/widget/RelativeLayout;

    if-ne p1, v10, :cond_2

    .line 209
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/android/email/activity/CustomizeDate;->mIsCustomize:Z

    .line 210
    invoke-direct {p0}, Lcom/android/email/activity/CustomizeDate;->toggleAllRadioButtons()V

    .line 211
    iget-object v10, p0, Lcom/android/email/activity/CustomizeDate;->oneDayRadioButton:Landroid/widget/RadioButton;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 212
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    .line 213
    .local v2, date:Ljava/util/Date;
    iget-object v10, p0, Lcom/android/email/activity/CustomizeDate;->mDate:Ljava/util/Date;

    invoke-virtual {v10}, Ljava/util/Date;->getDate()I

    move-result v10

    const/4 v11, 0x1

    sub-int/2addr v10, v11

    invoke-virtual {v2, v10}, Ljava/util/Date;->setDate(I)V

    .line 214
    invoke-virtual {v2}, Ljava/util/Date;->getYear()I

    move-result v10

    add-int/lit16 v10, v10, 0x76c

    iput v10, p0, Lcom/android/email/activity/CustomizeDate;->mYearFromSearch:I

    .line 215
    invoke-virtual {v2}, Ljava/util/Date;->getMonth()I

    move-result v10

    iput v10, p0, Lcom/android/email/activity/CustomizeDate;->mMonthFromSearch:I

    .line 216
    invoke-virtual {v2}, Ljava/util/Date;->getDate()I

    move-result v10

    iput v10, p0, Lcom/android/email/activity/CustomizeDate;->mDayFromSearch:I

    .line 217
    invoke-direct {p0}, Lcom/android/email/activity/CustomizeDate;->setDefaultValues()V

    .line 218
    invoke-direct {p0}, Lcom/android/email/activity/CustomizeDate;->disableCustomView()V

    goto :goto_0

    .line 220
    .end local v2           #date:Ljava/util/Date;
    :cond_2
    iget-object v10, p0, Lcom/android/email/activity/CustomizeDate;->oneWeekLayout:Landroid/widget/RelativeLayout;

    if-ne p1, v10, :cond_3

    .line 222
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/android/email/activity/CustomizeDate;->mIsCustomize:Z

    .line 223
    invoke-direct {p0}, Lcom/android/email/activity/CustomizeDate;->toggleAllRadioButtons()V

    .line 224
    iget-object v10, p0, Lcom/android/email/activity/CustomizeDate;->oneWeekRadioButton:Landroid/widget/RadioButton;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 225
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    .line 226
    .restart local v2       #date:Ljava/util/Date;
    iget-object v10, p0, Lcom/android/email/activity/CustomizeDate;->mDate:Ljava/util/Date;

    invoke-virtual {v10}, Ljava/util/Date;->getDate()I

    move-result v10

    const/4 v11, 0x7

    sub-int/2addr v10, v11

    invoke-virtual {v2, v10}, Ljava/util/Date;->setDate(I)V

    .line 227
    invoke-virtual {v2}, Ljava/util/Date;->getYear()I

    move-result v10

    add-int/lit16 v10, v10, 0x76c

    iput v10, p0, Lcom/android/email/activity/CustomizeDate;->mYearFromSearch:I

    .line 228
    invoke-virtual {v2}, Ljava/util/Date;->getMonth()I

    move-result v10

    iput v10, p0, Lcom/android/email/activity/CustomizeDate;->mMonthFromSearch:I

    .line 229
    invoke-virtual {v2}, Ljava/util/Date;->getDate()I

    move-result v10

    iput v10, p0, Lcom/android/email/activity/CustomizeDate;->mDayFromSearch:I

    .line 230
    invoke-direct {p0}, Lcom/android/email/activity/CustomizeDate;->setDefaultValues()V

    .line 231
    invoke-direct {p0}, Lcom/android/email/activity/CustomizeDate;->disableCustomView()V

    goto :goto_0

    .line 233
    .end local v2           #date:Ljava/util/Date;
    :cond_3
    iget-object v10, p0, Lcom/android/email/activity/CustomizeDate;->oneMonthLayout:Landroid/widget/RelativeLayout;

    if-ne p1, v10, :cond_4

    .line 235
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/android/email/activity/CustomizeDate;->mIsCustomize:Z

    .line 236
    invoke-direct {p0}, Lcom/android/email/activity/CustomizeDate;->toggleAllRadioButtons()V

    .line 237
    iget-object v10, p0, Lcom/android/email/activity/CustomizeDate;->oneMonthRadioButton:Landroid/widget/RadioButton;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 238
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    .line 239
    .restart local v2       #date:Ljava/util/Date;
    iget-object v10, p0, Lcom/android/email/activity/CustomizeDate;->mDate:Ljava/util/Date;

    invoke-virtual {v10}, Ljava/util/Date;->getMonth()I

    move-result v10

    const/4 v11, 0x1

    sub-int/2addr v10, v11

    invoke-virtual {v2, v10}, Ljava/util/Date;->setMonth(I)V

    .line 240
    invoke-virtual {v2}, Ljava/util/Date;->getYear()I

    move-result v10

    add-int/lit16 v10, v10, 0x76c

    iput v10, p0, Lcom/android/email/activity/CustomizeDate;->mYearFromSearch:I

    .line 241
    invoke-virtual {v2}, Ljava/util/Date;->getMonth()I

    move-result v10

    iput v10, p0, Lcom/android/email/activity/CustomizeDate;->mMonthFromSearch:I

    .line 242
    invoke-virtual {v2}, Ljava/util/Date;->getDate()I

    move-result v10

    iput v10, p0, Lcom/android/email/activity/CustomizeDate;->mDayFromSearch:I

    .line 243
    invoke-direct {p0}, Lcom/android/email/activity/CustomizeDate;->setDefaultValues()V

    .line 244
    invoke-direct {p0}, Lcom/android/email/activity/CustomizeDate;->disableCustomView()V

    goto/16 :goto_0

    .line 246
    .end local v2           #date:Ljava/util/Date;
    :cond_4
    iget-object v10, p0, Lcom/android/email/activity/CustomizeDate;->sixMonthLayout:Landroid/widget/RelativeLayout;

    if-ne p1, v10, :cond_5

    .line 248
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/android/email/activity/CustomizeDate;->mIsCustomize:Z

    .line 249
    invoke-direct {p0}, Lcom/android/email/activity/CustomizeDate;->toggleAllRadioButtons()V

    .line 250
    iget-object v10, p0, Lcom/android/email/activity/CustomizeDate;->sixMonthRadioButton:Landroid/widget/RadioButton;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 251
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    .line 252
    .restart local v2       #date:Ljava/util/Date;
    iget-object v10, p0, Lcom/android/email/activity/CustomizeDate;->mDate:Ljava/util/Date;

    invoke-virtual {v10}, Ljava/util/Date;->getMonth()I

    move-result v10

    const/4 v11, 0x6

    sub-int/2addr v10, v11

    invoke-virtual {v2, v10}, Ljava/util/Date;->setMonth(I)V

    .line 253
    invoke-virtual {v2}, Ljava/util/Date;->getYear()I

    move-result v10

    add-int/lit16 v10, v10, 0x76c

    iput v10, p0, Lcom/android/email/activity/CustomizeDate;->mYearFromSearch:I

    .line 254
    invoke-virtual {v2}, Ljava/util/Date;->getMonth()I

    move-result v10

    iput v10, p0, Lcom/android/email/activity/CustomizeDate;->mMonthFromSearch:I

    .line 255
    invoke-virtual {v2}, Ljava/util/Date;->getDate()I

    move-result v10

    iput v10, p0, Lcom/android/email/activity/CustomizeDate;->mDayFromSearch:I

    .line 256
    invoke-direct {p0}, Lcom/android/email/activity/CustomizeDate;->setDefaultValues()V

    .line 257
    invoke-direct {p0}, Lcom/android/email/activity/CustomizeDate;->disableCustomView()V

    goto/16 :goto_0

    .line 259
    .end local v2           #date:Ljava/util/Date;
    :cond_5
    iget-object v10, p0, Lcom/android/email/activity/CustomizeDate;->oneYearLayout:Landroid/widget/RelativeLayout;

    if-ne p1, v10, :cond_6

    .line 261
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/android/email/activity/CustomizeDate;->mIsCustomize:Z

    .line 262
    invoke-direct {p0}, Lcom/android/email/activity/CustomizeDate;->toggleAllRadioButtons()V

    .line 263
    iget-object v10, p0, Lcom/android/email/activity/CustomizeDate;->oneYearRadioButton:Landroid/widget/RadioButton;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 264
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    .line 265
    .restart local v2       #date:Ljava/util/Date;
    iget-object v10, p0, Lcom/android/email/activity/CustomizeDate;->mDate:Ljava/util/Date;

    invoke-virtual {v10}, Ljava/util/Date;->getYear()I

    move-result v10

    const/4 v11, 0x1

    sub-int/2addr v10, v11

    invoke-virtual {v2, v10}, Ljava/util/Date;->setYear(I)V

    .line 266
    invoke-virtual {v2}, Ljava/util/Date;->getYear()I

    move-result v10

    add-int/lit16 v10, v10, 0x76c

    iput v10, p0, Lcom/android/email/activity/CustomizeDate;->mYearFromSearch:I

    .line 267
    invoke-virtual {v2}, Ljava/util/Date;->getMonth()I

    move-result v10

    iput v10, p0, Lcom/android/email/activity/CustomizeDate;->mMonthFromSearch:I

    .line 268
    invoke-virtual {v2}, Ljava/util/Date;->getDate()I

    move-result v10

    iput v10, p0, Lcom/android/email/activity/CustomizeDate;->mDayFromSearch:I

    .line 269
    invoke-direct {p0}, Lcom/android/email/activity/CustomizeDate;->setDefaultValues()V

    .line 270
    invoke-direct {p0}, Lcom/android/email/activity/CustomizeDate;->disableCustomView()V

    goto/16 :goto_0

    .line 272
    .end local v2           #date:Ljava/util/Date;
    :cond_6
    iget-object v10, p0, Lcom/android/email/activity/CustomizeDate;->customizeLayout:Landroid/widget/RelativeLayout;

    if-ne p1, v10, :cond_7

    .line 274
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    .line 275
    .restart local v2       #date:Ljava/util/Date;
    invoke-virtual {v2}, Ljava/util/Date;->getYear()I

    move-result v10

    add-int/lit16 v10, v10, 0x76c

    iput v10, p0, Lcom/android/email/activity/CustomizeDate;->mYearFromSearch:I

    .line 276
    invoke-virtual {v2}, Ljava/util/Date;->getMonth()I

    move-result v10

    iput v10, p0, Lcom/android/email/activity/CustomizeDate;->mMonthFromSearch:I

    .line 277
    invoke-virtual {v2}, Ljava/util/Date;->getDate()I

    move-result v10

    iput v10, p0, Lcom/android/email/activity/CustomizeDate;->mDayFromSearch:I

    .line 278
    const/4 v10, 0x0

    iput v10, p0, Lcom/android/email/activity/CustomizeDate;->mHourFromSearch:I

    .line 279
    const/4 v10, 0x0

    iput v10, p0, Lcom/android/email/activity/CustomizeDate;->mMinuteFromSearch:I

    .line 280
    invoke-virtual {v2}, Ljava/util/Date;->getYear()I

    move-result v10

    add-int/lit16 v10, v10, 0x76c

    iput v10, p0, Lcom/android/email/activity/CustomizeDate;->mYearToSearch:I

    .line 281
    invoke-virtual {v2}, Ljava/util/Date;->getMonth()I

    move-result v10

    iput v10, p0, Lcom/android/email/activity/CustomizeDate;->mMonthToSearch:I

    .line 282
    invoke-virtual {v2}, Ljava/util/Date;->getDate()I

    move-result v10

    iput v10, p0, Lcom/android/email/activity/CustomizeDate;->mDayToSearch:I

    .line 283
    invoke-virtual {v2}, Ljava/util/Date;->getHours()I

    move-result v10

    iput v10, p0, Lcom/android/email/activity/CustomizeDate;->mHourToSearch:I

    .line 284
    invoke-virtual {v2}, Ljava/util/Date;->getMinutes()I

    move-result v10

    iput v10, p0, Lcom/android/email/activity/CustomizeDate;->mMinuteToSearch:I

    .line 285
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/android/email/activity/CustomizeDate;->mIsCustomize:Z

    .line 287
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 288
    .local v3, defaultBuilder:Ljava/lang/StringBuilder;
    iget-object v10, p0, Lcom/android/email/activity/CustomizeDate;->dateFormatter:Ljava/text/SimpleDateFormat;

    invoke-virtual {v10, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 289
    const-string v10, "~"

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 290
    iget-object v10, p0, Lcom/android/email/activity/CustomizeDate;->dateFormatter:Ljava/text/SimpleDateFormat;

    invoke-virtual {v10, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 292
    invoke-direct {p0}, Lcom/android/email/activity/CustomizeDate;->toggleAllRadioButtons()V

    .line 293
    iget-object v10, p0, Lcom/android/email/activity/CustomizeDate;->customizeRadioButton:Landroid/widget/RadioButton;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 294
    invoke-direct {p0}, Lcom/android/email/activity/CustomizeDate;->enableCustomView()V

    goto/16 :goto_0

    .line 296
    .end local v2           #date:Ljava/util/Date;
    .end local v3           #defaultBuilder:Ljava/lang/StringBuilder;
    :cond_7
    iget-object v10, p0, Lcom/android/email/activity/CustomizeDate;->fromDateButton:Landroid/widget/Button;

    if-ne p1, v10, :cond_8

    .line 297
    const/16 v10, 0x3e8

    invoke-virtual {p0, v10}, Lcom/android/email/activity/CustomizeDate;->showDialog(I)V

    goto/16 :goto_0

    .line 299
    :cond_8
    iget-object v10, p0, Lcom/android/email/activity/CustomizeDate;->toDateButton:Landroid/widget/Button;

    if-ne p1, v10, :cond_9

    .line 300
    const/16 v10, 0x7d0

    invoke-virtual {p0, v10}, Lcom/android/email/activity/CustomizeDate;->showDialog(I)V

    goto/16 :goto_0

    .line 301
    :cond_9
    iget-object v10, p0, Lcom/android/email/activity/CustomizeDate;->searchButton:Landroid/widget/Button;

    if-ne p1, v10, :cond_11

    .line 302
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    .line 303
    .local v5, fromCal:Ljava/util/Calendar;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v8

    .line 304
    .local v8, toCal:Ljava/util/Calendar;
    iget v10, p0, Lcom/android/email/activity/CustomizeDate;->mYearFromSearch:I

    iget v11, p0, Lcom/android/email/activity/CustomizeDate;->mMonthFromSearch:I

    iget v12, p0, Lcom/android/email/activity/CustomizeDate;->mDayFromSearch:I

    invoke-virtual {v5, v10, v11, v12}, Ljava/util/Calendar;->set(III)V

    .line 305
    iget v10, p0, Lcom/android/email/activity/CustomizeDate;->mYearToSearch:I

    iget v11, p0, Lcom/android/email/activity/CustomizeDate;->mMonthToSearch:I

    iget v12, p0, Lcom/android/email/activity/CustomizeDate;->mDayToSearch:I

    invoke-virtual {v8, v10, v11, v12}, Ljava/util/Calendar;->set(III)V

    .line 307
    invoke-virtual {v5, v8}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_a

    .line 309
    invoke-virtual {p0}, Lcom/android/email/activity/CustomizeDate;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    const v11, 0x7f080282

    const/16 v12, 0x7d0

    invoke-static {v10, v11, v12}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 312
    :cond_a
    iget-object v10, p0, Lcom/android/email/activity/CustomizeDate;->mEmailSearchAdapter:Lcom/android/exchange/provider/EmailSearchAdapter;

    iget-object v11, p0, Lcom/android/email/activity/CustomizeDate;->searchText:Ljava/lang/String;

    invoke-virtual {v10, v11}, Lcom/android/exchange/provider/EmailSearchAdapter;->setFreeText(Ljava/lang/String;)V

    .line 313
    sget-object v10, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Text entered is "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/email/activity/CustomizeDate;->searchText:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 314
    sget-object v10, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "from y m d "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Lcom/android/email/activity/CustomizeDate;->mYearFromSearch:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Lcom/android/email/activity/CustomizeDate;->mMonthFromSearch:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Lcom/android/email/activity/CustomizeDate;->mDayFromSearch:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 315
    sget-object v10, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "to y m d "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Lcom/android/email/activity/CustomizeDate;->mYearToSearch:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Lcom/android/email/activity/CustomizeDate;->mMonthToSearch:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Lcom/android/email/activity/CustomizeDate;->mDayToSearch:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 316
    sget-object v10, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "from h m "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Lcom/android/email/activity/CustomizeDate;->mHourFromSearch:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Lcom/android/email/activity/CustomizeDate;->mMinuteFromSearch:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 317
    sget-object v10, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "to h m "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Lcom/android/email/activity/CustomizeDate;->mHourToSearch:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Lcom/android/email/activity/CustomizeDate;->mMinuteToSearch:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 319
    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string v10, "dd/MM/yyyy hh:mm:ss a"

    invoke-direct {v4, v10}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 320
    .local v4, formatter:Ljava/text/SimpleDateFormat;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 321
    .local v0, c:Ljava/util/Calendar;
    const/4 v10, 0x1

    iget v11, p0, Lcom/android/email/activity/CustomizeDate;->mYearFromSearch:I

    invoke-virtual {v0, v10, v11}, Ljava/util/Calendar;->set(II)V

    .line 322
    const/4 v10, 0x2

    iget v11, p0, Lcom/android/email/activity/CustomizeDate;->mMonthFromSearch:I

    invoke-virtual {v0, v10, v11}, Ljava/util/Calendar;->set(II)V

    .line 323
    const/4 v10, 0x5

    iget v11, p0, Lcom/android/email/activity/CustomizeDate;->mDayFromSearch:I

    invoke-virtual {v0, v10, v11}, Ljava/util/Calendar;->set(II)V

    .line 324
    iget v10, p0, Lcom/android/email/activity/CustomizeDate;->mHourFromSearch:I

    const/16 v11, 0xc

    if-lt v10, v11, :cond_b

    .line 325
    const/16 v10, 0xa

    iget v11, p0, Lcom/android/email/activity/CustomizeDate;->mHourFromSearch:I

    const/16 v12, 0xc

    sub-int/2addr v11, v12

    invoke-virtual {v0, v10, v11}, Ljava/util/Calendar;->set(II)V

    .line 328
    :goto_1
    const/16 v10, 0xc

    iget v11, p0, Lcom/android/email/activity/CustomizeDate;->mMinuteFromSearch:I

    invoke-virtual {v0, v10, v11}, Ljava/util/Calendar;->set(II)V

    .line 329
    const/16 v10, 0xd

    const/4 v11, 0x0

    invoke-virtual {v0, v10, v11}, Ljava/util/Calendar;->set(II)V

    .line 330
    iget v10, p0, Lcom/android/email/activity/CustomizeDate;->mHourFromSearch:I

    const/16 v11, 0xc

    if-ge v10, v11, :cond_c

    .line 331
    const/16 v10, 0x9

    const/4 v11, 0x0

    invoke-virtual {v0, v10, v11}, Ljava/util/Calendar;->set(II)V

    .line 334
    :goto_2
    iget-object v10, p0, Lcom/android/email/activity/CustomizeDate;->mEmailSearchAdapter:Lcom/android/exchange/provider/EmailSearchAdapter;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v11

    invoke-virtual {v4, v11}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/android/exchange/provider/EmailSearchAdapter;->setGreaterThanDateStr(Ljava/lang/String;)V

    .line 335
    sget-object v10, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "on click greater + "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v12

    invoke-virtual {v4, v12}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 340
    new-instance v9, Ljava/text/SimpleDateFormat;

    const-string v10, "dd/MM/yyyy hh:mm:ss a"

    invoke-direct {v9, v10}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 341
    .local v9, to_formatter:Ljava/text/SimpleDateFormat;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 342
    .local v1, cTo:Ljava/util/Calendar;
    const/4 v10, 0x1

    iget v11, p0, Lcom/android/email/activity/CustomizeDate;->mYearToSearch:I

    invoke-virtual {v1, v10, v11}, Ljava/util/Calendar;->set(II)V

    .line 343
    const/4 v10, 0x2

    iget v11, p0, Lcom/android/email/activity/CustomizeDate;->mMonthToSearch:I

    invoke-virtual {v1, v10, v11}, Ljava/util/Calendar;->set(II)V

    .line 344
    const/4 v10, 0x5

    iget v11, p0, Lcom/android/email/activity/CustomizeDate;->mDayToSearch:I

    invoke-virtual {v1, v10, v11}, Ljava/util/Calendar;->set(II)V

    .line 345
    iget v10, p0, Lcom/android/email/activity/CustomizeDate;->mHourToSearch:I

    const/16 v11, 0xc

    if-lt v10, v11, :cond_d

    .line 346
    const/16 v10, 0xa

    iget v11, p0, Lcom/android/email/activity/CustomizeDate;->mHourToSearch:I

    const/16 v12, 0xc

    sub-int/2addr v11, v12

    invoke-virtual {v1, v10, v11}, Ljava/util/Calendar;->set(II)V

    .line 349
    :goto_3
    const/16 v10, 0xd

    const/4 v11, 0x0

    invoke-virtual {v1, v10, v11}, Ljava/util/Calendar;->set(II)V

    .line 350
    const/16 v10, 0xc

    iget v11, p0, Lcom/android/email/activity/CustomizeDate;->mMinuteToSearch:I

    invoke-virtual {v1, v10, v11}, Ljava/util/Calendar;->set(II)V

    .line 351
    iget v10, p0, Lcom/android/email/activity/CustomizeDate;->mHourToSearch:I

    const/16 v11, 0xc

    if-ge v10, v11, :cond_e

    .line 352
    const/16 v10, 0x9

    const/4 v11, 0x0

    invoke-virtual {v1, v10, v11}, Ljava/util/Calendar;->set(II)V

    .line 355
    :goto_4
    iget-object v10, p0, Lcom/android/email/activity/CustomizeDate;->mEmailSearchAdapter:Lcom/android/exchange/provider/EmailSearchAdapter;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/android/exchange/provider/EmailSearchAdapter;->setLessThanDateStr(Ljava/lang/String;)V

    .line 356
    sget-object v10, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "on click less + "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v12

    invoke-virtual {v4, v12}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 357
    iget-object v10, p0, Lcom/android/email/activity/CustomizeDate;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    if-eqz v10, :cond_f

    .line 358
    iget-object v10, p0, Lcom/android/email/activity/CustomizeDate;->mEmailSearchAdapter:Lcom/android/exchange/provider/EmailSearchAdapter;

    iget-object v11, p0, Lcom/android/email/activity/CustomizeDate;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    iget-wide v11, v11, Lcom/android/email/provider/EmailContent$Mailbox;->mId:J

    invoke-static {v11, v12}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/android/exchange/provider/EmailSearchAdapter;->setIdStr(Ljava/lang/String;)V

    .line 364
    :goto_5
    iget-object v10, p0, Lcom/android/email/activity/CustomizeDate;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    if-nez v10, :cond_10

    .line 365
    iget-object v10, p0, Lcom/android/email/activity/CustomizeDate;->mEmailSearchAdapter:Lcom/android/exchange/provider/EmailSearchAdapter;

    const-string v11, "True"

    invoke-virtual {v10, v11}, Lcom/android/exchange/provider/EmailSearchAdapter;->setoptionsDeepTraversalStr(Ljava/lang/String;)V

    .line 371
    :goto_6
    iget-object v10, p0, Lcom/android/email/activity/CustomizeDate;->mController:Lcom/android/email/Controller;

    iget-object v11, p0, Lcom/android/email/activity/CustomizeDate;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-wide v11, v11, Lcom/android/email/provider/EmailContent$Account;->mId:J

    const/16 v13, 0x8

    invoke-virtual {v10, v11, v12, v13}, Lcom/android/email/Controller;->findOrCreateMailboxOfType(JI)J

    move-result-wide v6

    .line 373
    .local v6, searchFolderId:J
    iget-object v10, p0, Lcom/android/email/activity/CustomizeDate;->mEmailSearchAdapter:Lcom/android/exchange/provider/EmailSearchAdapter;

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/android/exchange/provider/EmailSearchAdapter;->setFoldIdStr(Ljava/lang/String;)V

    .line 375
    iget-object v10, p0, Lcom/android/email/activity/CustomizeDate;->mEmailSearchAdapter:Lcom/android/exchange/provider/EmailSearchAdapter;

    invoke-virtual {v10}, Lcom/android/exchange/provider/EmailSearchAdapter;->search()I

    .line 376
    const/4 v10, 0x1

    invoke-static {p0, v6, v7, v10}, Lcom/android/email/activity/MessageList;->actionHandleMailbox(Landroid/content/Context;JZ)V

    .line 377
    const/4 v10, -0x1

    invoke-virtual {p0, v10}, Lcom/android/email/activity/CustomizeDate;->setResult(I)V

    .line 378
    invoke-virtual {p0}, Lcom/android/email/activity/CustomizeDate;->finish()V

    goto/16 :goto_0

    .line 327
    .end local v1           #cTo:Ljava/util/Calendar;
    .end local v6           #searchFolderId:J
    .end local v9           #to_formatter:Ljava/text/SimpleDateFormat;
    :cond_b
    const/16 v10, 0xa

    iget v11, p0, Lcom/android/email/activity/CustomizeDate;->mHourFromSearch:I

    invoke-virtual {v0, v10, v11}, Ljava/util/Calendar;->set(II)V

    goto/16 :goto_1

    .line 333
    :cond_c
    const/16 v10, 0x9

    const/4 v11, 0x1

    invoke-virtual {v0, v10, v11}, Ljava/util/Calendar;->set(II)V

    goto/16 :goto_2

    .line 348
    .restart local v1       #cTo:Ljava/util/Calendar;
    .restart local v9       #to_formatter:Ljava/text/SimpleDateFormat;
    :cond_d
    const/16 v10, 0xa

    iget v11, p0, Lcom/android/email/activity/CustomizeDate;->mHourToSearch:I

    invoke-virtual {v1, v10, v11}, Ljava/util/Calendar;->set(II)V

    goto/16 :goto_3

    .line 354
    :cond_e
    const/16 v10, 0x9

    const/4 v11, 0x1

    invoke-virtual {v1, v10, v11}, Ljava/util/Calendar;->set(II)V

    goto/16 :goto_4

    .line 361
    :cond_f
    iget-object v10, p0, Lcom/android/email/activity/CustomizeDate;->mEmailSearchAdapter:Lcom/android/exchange/provider/EmailSearchAdapter;

    const-string v11, "NoneId"

    invoke-virtual {v10, v11}, Lcom/android/exchange/provider/EmailSearchAdapter;->setIdStr(Ljava/lang/String;)V

    goto :goto_5

    .line 367
    :cond_10
    iget-object v10, p0, Lcom/android/email/activity/CustomizeDate;->mEmailSearchAdapter:Lcom/android/exchange/provider/EmailSearchAdapter;

    const-string v11, "False"

    invoke-virtual {v10, v11}, Lcom/android/exchange/provider/EmailSearchAdapter;->setoptionsDeepTraversalStr(Ljava/lang/String;)V

    goto :goto_6

    .line 379
    .end local v0           #c:Ljava/util/Calendar;
    .end local v1           #cTo:Ljava/util/Calendar;
    .end local v4           #formatter:Ljava/text/SimpleDateFormat;
    .end local v5           #fromCal:Ljava/util/Calendar;
    .end local v8           #toCal:Ljava/util/Calendar;
    .end local v9           #to_formatter:Ljava/text/SimpleDateFormat;
    :cond_11
    iget-object v10, p0, Lcom/android/email/activity/CustomizeDate;->cancelButton:Landroid/widget/Button;

    if-ne p1, v10, :cond_0

    .line 380
    invoke-virtual {p0}, Lcom/android/email/activity/CustomizeDate;->finish()V

    goto/16 :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    const v5, 0x7f080253

    const/4 v4, 0x0

    const/4 v2, 0x1

    .line 91
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 92
    const v1, 0x7f030014

    invoke-virtual {p0, v1}, Lcom/android/email/activity/CustomizeDate;->setContentView(I)V

    .line 94
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 95
    .local v0, c:Ljava/util/Calendar;
    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iput v1, p0, Lcom/android/email/activity/CustomizeDate;->mYear:I

    .line 96
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iput v1, p0, Lcom/android/email/activity/CustomizeDate;->mMonth:I

    .line 97
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iput v1, p0, Lcom/android/email/activity/CustomizeDate;->mDay:I

    .line 99
    invoke-direct {p0}, Lcom/android/email/activity/CustomizeDate;->readArgumentsFromIntent()V

    .line 101
    iget-object v1, p0, Lcom/android/email/activity/CustomizeDate;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    if-eqz v1, :cond_0

    .line 102
    invoke-virtual {p0}, Lcom/android/email/activity/CustomizeDate;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/email/activity/CustomizeDate;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    iget-object v3, v3, Lcom/android/email/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-virtual {v1, v5, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/email/activity/CustomizeDate;->setTitle(Ljava/lang/CharSequence;)V

    .line 112
    :goto_0
    invoke-virtual {p0}, Lcom/android/email/activity/CustomizeDate;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Lcom/android/email/Controller;->getInstance(Landroid/content/Context;)Lcom/android/email/Controller;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/activity/CustomizeDate;->mController:Lcom/android/email/Controller;

    .line 113
    new-instance v1, Lcom/android/exchange/provider/EmailSearchAdapter;

    invoke-direct {v1, p0}, Lcom/android/exchange/provider/EmailSearchAdapter;-><init>(Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/android/email/activity/CustomizeDate;->mEmailSearchAdapter:Lcom/android/exchange/provider/EmailSearchAdapter;

    .line 114
    iget-object v1, p0, Lcom/android/email/activity/CustomizeDate;->mEmailSearchAdapter:Lcom/android/exchange/provider/EmailSearchAdapter;

    iget-object v2, p0, Lcom/android/email/activity/CustomizeDate;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    invoke-virtual {v1, v2}, Lcom/android/exchange/provider/EmailSearchAdapter;->setAccount(Lcom/android/email/provider/EmailContent$Account;)V

    .line 116
    invoke-direct {p0}, Lcom/android/email/activity/CustomizeDate;->init()V

    .line 118
    iget-object v1, p0, Lcom/android/email/activity/CustomizeDate;->mDate:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getYear()I

    move-result v1

    add-int/lit16 v1, v1, 0x76c

    iput v1, p0, Lcom/android/email/activity/CustomizeDate;->mYearFromSearch:I

    .line 119
    iget-object v1, p0, Lcom/android/email/activity/CustomizeDate;->mDate:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getMonth()I

    move-result v1

    iput v1, p0, Lcom/android/email/activity/CustomizeDate;->mMonthFromSearch:I

    .line 120
    iget-object v1, p0, Lcom/android/email/activity/CustomizeDate;->mDate:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getDate()I

    move-result v1

    iput v1, p0, Lcom/android/email/activity/CustomizeDate;->mDayFromSearch:I

    .line 121
    invoke-direct {p0}, Lcom/android/email/activity/CustomizeDate;->setDefaultValues()V

    .line 123
    iget-object v1, p0, Lcom/android/email/activity/CustomizeDate;->todayLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 124
    iget-object v1, p0, Lcom/android/email/activity/CustomizeDate;->oneDayLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 125
    iget-object v1, p0, Lcom/android/email/activity/CustomizeDate;->oneWeekLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 126
    iget-object v1, p0, Lcom/android/email/activity/CustomizeDate;->oneMonthLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 127
    iget-object v1, p0, Lcom/android/email/activity/CustomizeDate;->sixMonthLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 128
    iget-object v1, p0, Lcom/android/email/activity/CustomizeDate;->oneYearLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 129
    iget-object v1, p0, Lcom/android/email/activity/CustomizeDate;->customizeLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 130
    iget-object v1, p0, Lcom/android/email/activity/CustomizeDate;->fromDateButton:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 131
    iget-object v1, p0, Lcom/android/email/activity/CustomizeDate;->toDateButton:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 132
    iget-object v1, p0, Lcom/android/email/activity/CustomizeDate;->searchButton:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 133
    iget-object v1, p0, Lcom/android/email/activity/CustomizeDate;->cancelButton:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 134
    return-void

    .line 104
    :cond_0
    iget-object v1, p0, Lcom/android/email/activity/CustomizeDate;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    if-eqz v1, :cond_1

    .line 105
    invoke-virtual {p0}, Lcom/android/email/activity/CustomizeDate;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/email/activity/CustomizeDate;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    invoke-virtual {v3}, Lcom/android/email/provider/EmailContent$Account;->getDisplayName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v1, v5, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/email/activity/CustomizeDate;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 107
    :cond_1
    const-string v1, "CustomizeDate"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not restoreAccountWithId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/email/activity/CustomizeDate;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "com.android.email.AccountId"

    const-wide/16 v5, -0x1

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    invoke-virtual {p0}, Lcom/android/email/activity/CustomizeDate;->finish()V

    goto/16 :goto_0
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 6
    .parameter "id"

    .prologue
    .line 385
    sparse-switch p1, :sswitch_data_0

    .line 395
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 387
    :sswitch_0
    new-instance v0, Landroid/app/DatePickerDialog;

    iget-object v2, p0, Lcom/android/email/activity/CustomizeDate;->mFromDateSetListener:Landroid/app/DatePickerDialog$OnDateSetListener;

    iget v3, p0, Lcom/android/email/activity/CustomizeDate;->mYear:I

    iget v4, p0, Lcom/android/email/activity/CustomizeDate;->mMonth:I

    iget v5, p0, Lcom/android/email/activity/CustomizeDate;->mDay:I

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    goto :goto_0

    .line 391
    :sswitch_1
    new-instance v0, Landroid/app/DatePickerDialog;

    iget-object v2, p0, Lcom/android/email/activity/CustomizeDate;->mToDateSetListener:Landroid/app/DatePickerDialog$OnDateSetListener;

    iget v3, p0, Lcom/android/email/activity/CustomizeDate;->mYear:I

    iget v4, p0, Lcom/android/email/activity/CustomizeDate;->mMonth:I

    iget v5, p0, Lcom/android/email/activity/CustomizeDate;->mDay:I

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    goto :goto_0

    .line 385
    nop

    :sswitch_data_0
    .sparse-switch
        0x3e8 -> :sswitch_0
        0x7d0 -> :sswitch_1
    .end sparse-switch
.end method
