.class public Lcom/android/email/activity/CustomizeDateScreen;
.super Landroid/app/Activity;
.source "CustomizeDateScreen.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final DATE_DIALOG_FROM:I = 0x64

.field private static final DATE_DIALOG_TO:I = 0xc8

.field public static final SEARCH_FROM_DAY:Ljava/lang/String; = "FROM_DAY"

.field public static final SEARCH_FROM_HOUR:Ljava/lang/String; = "FROM_HOUR"

.field public static final SEARCH_FROM_MINUTE:Ljava/lang/String; = "FROM_MINUTE"

.field public static final SEARCH_FROM_MONTH:Ljava/lang/String; = "FROM_MONTH"

.field public static final SEARCH_FROM_YEAR:Ljava/lang/String; = "FROM_YEAR"

.field public static final SEARCH_STRING:Ljava/lang/String; = "SEARCH_STRING"

.field public static final SEARCH_TO_DAY:Ljava/lang/String; = "TO_DAY"

.field public static final SEARCH_TO_HOUR:Ljava/lang/String; = "TO_HOUR"

.field public static final SEARCH_TO_MINUTE:Ljava/lang/String; = "TO_MINUTE"

.field public static final SEARCH_TO_MONTH:Ljava/lang/String; = "TO_MONTH"

.field public static final SEARCH_TO_YEAR:Ljava/lang/String; = "TO_YEAR"

.field private static final TIME_DIALOG_FROM:I = 0x12c

.field private static final TIME_DIALOG_TO:I = 0x190


# instance fields
.field private cancelButton:Landroid/widget/Button;

.field private customizeLayout:Landroid/widget/RelativeLayout;

.field private customizeRadioButton:Landroid/widget/RadioButton;

.field private dateFormatter:Ljava/text/SimpleDateFormat;

.field private fromDateButton:Landroid/widget/Button;

.field private fromTextView:Landroid/widget/TextView;

.field private fromTimeButton:Landroid/widget/Button;

.field private mDate:Ljava/util/Date;

.field private mDay:I

.field private mDayFromSearch:I

.field private mDayOfWeek:I

.field private mDayToSearch:I

.field private mFromDateSetListener:Landroid/app/DatePickerDialog$OnDateSetListener;

.field private mFromDateStringBuffer:Ljava/lang/StringBuilder;

.field private mFromDay:I

.field private mFromDayOfWeek:I

.field private mFromHourOfDay:I

.field private mFromMinute:I

.field private mFromMonth:I

.field private mFromTimeSetListener:Landroid/app/TimePickerDialog$OnTimeSetListener;

.field private mFromTimeStringBuffer:Ljava/lang/StringBuilder;

.field private mFromYear:I

.field private mHourFromSearch:I

.field private mHourOfDay:I

.field private mHourToSearch:I

.field private mIsCustomize:Z

.field private mMinute:I

.field private mMinuteFromSearch:I

.field private mMinuteToSearch:I

.field private mMonth:I

.field private mMonthFromSearch:I

.field private mMonthToSearch:I

.field private mStringToReturn:Ljava/lang/String;

.field private mToDateSetListener:Landroid/app/DatePickerDialog$OnDateSetListener;

.field private mToDateStringBuffer:Ljava/lang/StringBuilder;

.field private mToDay:I

.field private mToDayOfWeek:I

.field private mToHourOfDay:I

.field private mToMinute:I

.field private mToMonth:I

.field private mToTimeSetListener:Landroid/app/TimePickerDialog$OnTimeSetListener;

.field private mToTimeStringBuffer:Ljava/lang/StringBuilder;

.field private mToYear:I

.field private mYear:I

.field private mYearFromSearch:I

.field private mYearToSearch:I

.field private okButton:Landroid/widget/Button;

.field private oneDayLayout:Landroid/widget/RelativeLayout;

.field private oneDayRadioButton:Landroid/widget/RadioButton;

.field private oneMonthLayout:Landroid/widget/RelativeLayout;

.field private oneMonthRadioButton:Landroid/widget/RadioButton;

.field private oneWeekLayout:Landroid/widget/RelativeLayout;

.field private oneWeekRadioButton:Landroid/widget/RadioButton;

.field private oneYearLayout:Landroid/widget/RelativeLayout;

.field private oneYearRadioButton:Landroid/widget/RadioButton;

.field private sixMonthLayout:Landroid/widget/RelativeLayout;

.field private sixMonthRadioButton:Landroid/widget/RadioButton;

.field private timeFormatter:Ljava/text/SimpleDateFormat;

.field private toDateButton:Landroid/widget/Button;

.field private toTextView:Landroid/widget/TextView;

.field private toTimeButton:Landroid/widget/Button;

.field private todayLayout:Landroid/widget/RelativeLayout;

.field private todayRadioButton:Landroid/widget/RadioButton;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 95
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lcom/android/email/activity/CustomizeDateScreen;->mDate:Ljava/util/Date;

    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/android/email/activity/CustomizeDateScreen;->mFromDateStringBuffer:Ljava/lang/StringBuilder;

    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/android/email/activity/CustomizeDateScreen;->mFromTimeStringBuffer:Ljava/lang/StringBuilder;

    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/android/email/activity/CustomizeDateScreen;->mToDateStringBuffer:Ljava/lang/StringBuilder;

    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/android/email/activity/CustomizeDateScreen;->mToTimeStringBuffer:Ljava/lang/StringBuilder;

    .line 343
    new-instance v0, Lcom/android/email/activity/CustomizeDateScreen$1;

    invoke-direct {v0, p0}, Lcom/android/email/activity/CustomizeDateScreen$1;-><init>(Lcom/android/email/activity/CustomizeDateScreen;)V

    iput-object v0, p0, Lcom/android/email/activity/CustomizeDateScreen;->mFromDateSetListener:Landroid/app/DatePickerDialog$OnDateSetListener;

    .line 365
    new-instance v0, Lcom/android/email/activity/CustomizeDateScreen$2;

    invoke-direct {v0, p0}, Lcom/android/email/activity/CustomizeDateScreen$2;-><init>(Lcom/android/email/activity/CustomizeDateScreen;)V

    iput-object v0, p0, Lcom/android/email/activity/CustomizeDateScreen;->mToDateSetListener:Landroid/app/DatePickerDialog$OnDateSetListener;

    .line 386
    new-instance v0, Lcom/android/email/activity/CustomizeDateScreen$3;

    invoke-direct {v0, p0}, Lcom/android/email/activity/CustomizeDateScreen$3;-><init>(Lcom/android/email/activity/CustomizeDateScreen;)V

    iput-object v0, p0, Lcom/android/email/activity/CustomizeDateScreen;->mToTimeSetListener:Landroid/app/TimePickerDialog$OnTimeSetListener;

    .line 394
    new-instance v0, Lcom/android/email/activity/CustomizeDateScreen$4;

    invoke-direct {v0, p0}, Lcom/android/email/activity/CustomizeDateScreen$4;-><init>(Lcom/android/email/activity/CustomizeDateScreen;)V

    iput-object v0, p0, Lcom/android/email/activity/CustomizeDateScreen;->mFromTimeSetListener:Landroid/app/TimePickerDialog$OnTimeSetListener;

    return-void
.end method

.method static synthetic access$002(Lcom/android/email/activity/CustomizeDateScreen;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    iput p1, p0, Lcom/android/email/activity/CustomizeDateScreen;->mFromYear:I

    return p1
.end method

.method static synthetic access$1002(Lcom/android/email/activity/CustomizeDateScreen;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    iput p1, p0, Lcom/android/email/activity/CustomizeDateScreen;->mYearToSearch:I

    return p1
.end method

.method static synthetic access$102(Lcom/android/email/activity/CustomizeDateScreen;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    iput p1, p0, Lcom/android/email/activity/CustomizeDateScreen;->mFromMonth:I

    return p1
.end method

.method static synthetic access$1102(Lcom/android/email/activity/CustomizeDateScreen;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    iput p1, p0, Lcom/android/email/activity/CustomizeDateScreen;->mMonthToSearch:I

    return p1
.end method

.method static synthetic access$1202(Lcom/android/email/activity/CustomizeDateScreen;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    iput p1, p0, Lcom/android/email/activity/CustomizeDateScreen;->mDayToSearch:I

    return p1
.end method

.method static synthetic access$1300(Lcom/android/email/activity/CustomizeDateScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/android/email/activity/CustomizeDateScreen;->updateToDate()V

    return-void
.end method

.method static synthetic access$1402(Lcom/android/email/activity/CustomizeDateScreen;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    iput p1, p0, Lcom/android/email/activity/CustomizeDateScreen;->mHourToSearch:I

    return p1
.end method

.method static synthetic access$1502(Lcom/android/email/activity/CustomizeDateScreen;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    iput p1, p0, Lcom/android/email/activity/CustomizeDateScreen;->mToHourOfDay:I

    return p1
.end method

.method static synthetic access$1602(Lcom/android/email/activity/CustomizeDateScreen;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    iput p1, p0, Lcom/android/email/activity/CustomizeDateScreen;->mMinuteToSearch:I

    return p1
.end method

.method static synthetic access$1702(Lcom/android/email/activity/CustomizeDateScreen;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    iput p1, p0, Lcom/android/email/activity/CustomizeDateScreen;->mToMinute:I

    return p1
.end method

.method static synthetic access$1800(Lcom/android/email/activity/CustomizeDateScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/android/email/activity/CustomizeDateScreen;->updateToTime()V

    return-void
.end method

.method static synthetic access$1902(Lcom/android/email/activity/CustomizeDateScreen;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    iput p1, p0, Lcom/android/email/activity/CustomizeDateScreen;->mHourFromSearch:I

    return p1
.end method

.method static synthetic access$2002(Lcom/android/email/activity/CustomizeDateScreen;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    iput p1, p0, Lcom/android/email/activity/CustomizeDateScreen;->mFromHourOfDay:I

    return p1
.end method

.method static synthetic access$202(Lcom/android/email/activity/CustomizeDateScreen;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    iput p1, p0, Lcom/android/email/activity/CustomizeDateScreen;->mFromDay:I

    return p1
.end method

.method static synthetic access$2102(Lcom/android/email/activity/CustomizeDateScreen;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    iput p1, p0, Lcom/android/email/activity/CustomizeDateScreen;->mMinuteFromSearch:I

    return p1
.end method

.method static synthetic access$2202(Lcom/android/email/activity/CustomizeDateScreen;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    iput p1, p0, Lcom/android/email/activity/CustomizeDateScreen;->mFromMinute:I

    return p1
.end method

.method static synthetic access$2300(Lcom/android/email/activity/CustomizeDateScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/android/email/activity/CustomizeDateScreen;->updateFromTime()V

    return-void
.end method

.method static synthetic access$302(Lcom/android/email/activity/CustomizeDateScreen;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    iput p1, p0, Lcom/android/email/activity/CustomizeDateScreen;->mYearFromSearch:I

    return p1
.end method

.method static synthetic access$402(Lcom/android/email/activity/CustomizeDateScreen;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    iput p1, p0, Lcom/android/email/activity/CustomizeDateScreen;->mMonthFromSearch:I

    return p1
.end method

.method static synthetic access$502(Lcom/android/email/activity/CustomizeDateScreen;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    iput p1, p0, Lcom/android/email/activity/CustomizeDateScreen;->mDayFromSearch:I

    return p1
.end method

.method static synthetic access$600(Lcom/android/email/activity/CustomizeDateScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/android/email/activity/CustomizeDateScreen;->updateFromDate()V

    return-void
.end method

.method static synthetic access$702(Lcom/android/email/activity/CustomizeDateScreen;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    iput p1, p0, Lcom/android/email/activity/CustomizeDateScreen;->mToYear:I

    return p1
.end method

.method static synthetic access$802(Lcom/android/email/activity/CustomizeDateScreen;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    iput p1, p0, Lcom/android/email/activity/CustomizeDateScreen;->mToMonth:I

    return p1
.end method

.method static synthetic access$902(Lcom/android/email/activity/CustomizeDateScreen;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    iput p1, p0, Lcom/android/email/activity/CustomizeDateScreen;->mToDay:I

    return p1
.end method

.method private disableCustomView()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 547
    iget-object v0, p0, Lcom/android/email/activity/CustomizeDateScreen;->fromTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 548
    iget-object v0, p0, Lcom/android/email/activity/CustomizeDateScreen;->toTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 549
    iget-object v0, p0, Lcom/android/email/activity/CustomizeDateScreen;->fromDateButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 550
    iget-object v0, p0, Lcom/android/email/activity/CustomizeDateScreen;->fromTimeButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 551
    iget-object v0, p0, Lcom/android/email/activity/CustomizeDateScreen;->toDateButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 552
    iget-object v0, p0, Lcom/android/email/activity/CustomizeDateScreen;->toTimeButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 553
    return-void
.end method

.method private enableCustomView()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 538
    iget-object v0, p0, Lcom/android/email/activity/CustomizeDateScreen;->fromTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 539
    iget-object v0, p0, Lcom/android/email/activity/CustomizeDateScreen;->toTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 540
    iget-object v0, p0, Lcom/android/email/activity/CustomizeDateScreen;->fromDateButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 541
    iget-object v0, p0, Lcom/android/email/activity/CustomizeDateScreen;->fromTimeButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 542
    iget-object v0, p0, Lcom/android/email/activity/CustomizeDateScreen;->toDateButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 543
    iget-object v0, p0, Lcom/android/email/activity/CustomizeDateScreen;->toTimeButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 544
    return-void
.end method

.method private getDayInString(I)Ljava/lang/String;
    .locals 2
    .parameter "day"

    .prologue
    const-string v1, "Sat"

    .line 598
    packed-switch p1, :pswitch_data_0

    .line 614
    const-string v0, "Sat"

    move-object v0, v1

    :goto_0
    return-object v0

    .line 600
    :pswitch_0
    const-string v0, "Sun"

    goto :goto_0

    .line 602
    :pswitch_1
    const-string v0, "Mon"

    goto :goto_0

    .line 604
    :pswitch_2
    const-string v0, "Tue"

    goto :goto_0

    .line 606
    :pswitch_3
    const-string v0, "Wed"

    goto :goto_0

    .line 608
    :pswitch_4
    const-string v0, "Thu"

    goto :goto_0

    .line 610
    :pswitch_5
    const-string v0, "Fri"

    goto :goto_0

    .line 612
    :pswitch_6
    const-string v0, "Sat"

    move-object v0, v1

    goto :goto_0

    .line 598
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private getMonthInString(I)Ljava/lang/String;
    .locals 1
    .parameter "month"

    .prologue
    .line 566
    packed-switch p1, :pswitch_data_0

    .line 593
    const-string v0, ""

    :goto_0
    return-object v0

    .line 568
    :pswitch_0
    const-string v0, "Jan"

    goto :goto_0

    .line 570
    :pswitch_1
    const-string v0, "Feb"

    goto :goto_0

    .line 572
    :pswitch_2
    const-string v0, "Mar"

    goto :goto_0

    .line 574
    :pswitch_3
    const-string v0, "Apr"

    goto :goto_0

    .line 576
    :pswitch_4
    const-string v0, "May"

    goto :goto_0

    .line 578
    :pswitch_5
    const-string v0, "June"

    goto :goto_0

    .line 580
    :pswitch_6
    const-string v0, "July"

    goto :goto_0

    .line 582
    :pswitch_7
    const-string v0, "Aug"

    goto :goto_0

    .line 584
    :pswitch_8
    const-string v0, "Sep"

    goto :goto_0

    .line 586
    :pswitch_9
    const-string v0, "Oct"

    goto :goto_0

    .line 588
    :pswitch_a
    const-string v0, "Nov"

    goto :goto_0

    .line 590
    :pswitch_b
    const-string v0, "Dec"

    goto :goto_0

    .line 566
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method private init()V
    .locals 6

    .prologue
    const/4 v5, 0x5

    const/4 v4, 0x1

    .line 403
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "EEE, d MMM, yyyy"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v1, p0, Lcom/android/email/activity/CustomizeDateScreen;->dateFormatter:Ljava/text/SimpleDateFormat;

    .line 404
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "h:mm a "

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v1, p0, Lcom/android/email/activity/CustomizeDateScreen;->timeFormatter:Ljava/text/SimpleDateFormat;

    .line 406
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 407
    .local v0, c:Ljava/util/Calendar;
    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iput v1, p0, Lcom/android/email/activity/CustomizeDateScreen;->mYear:I

    .line 408
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iput v1, p0, Lcom/android/email/activity/CustomizeDateScreen;->mMonth:I

    .line 409
    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iput v1, p0, Lcom/android/email/activity/CustomizeDateScreen;->mDay:I

    .line 410
    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iput v1, p0, Lcom/android/email/activity/CustomizeDateScreen;->mDayOfWeek:I

    .line 411
    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iput v1, p0, Lcom/android/email/activity/CustomizeDateScreen;->mHourOfDay:I

    .line 412
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iput v1, p0, Lcom/android/email/activity/CustomizeDateScreen;->mMinute:I

    .line 414
    const v1, 0x7f070049

    invoke-virtual {p0, v1}, Lcom/android/email/activity/CustomizeDateScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/android/email/activity/CustomizeDateScreen;->todayLayout:Landroid/widget/RelativeLayout;

    .line 415
    const v1, 0x7f07004c

    invoke-virtual {p0, v1}, Lcom/android/email/activity/CustomizeDateScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/android/email/activity/CustomizeDateScreen;->oneDayLayout:Landroid/widget/RelativeLayout;

    .line 416
    const v1, 0x7f07004f

    invoke-virtual {p0, v1}, Lcom/android/email/activity/CustomizeDateScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/android/email/activity/CustomizeDateScreen;->oneWeekLayout:Landroid/widget/RelativeLayout;

    .line 417
    const v1, 0x7f070052

    invoke-virtual {p0, v1}, Lcom/android/email/activity/CustomizeDateScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/android/email/activity/CustomizeDateScreen;->oneMonthLayout:Landroid/widget/RelativeLayout;

    .line 418
    const v1, 0x7f070055

    invoke-virtual {p0, v1}, Lcom/android/email/activity/CustomizeDateScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/android/email/activity/CustomizeDateScreen;->sixMonthLayout:Landroid/widget/RelativeLayout;

    .line 419
    const v1, 0x7f070058

    invoke-virtual {p0, v1}, Lcom/android/email/activity/CustomizeDateScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/android/email/activity/CustomizeDateScreen;->oneYearLayout:Landroid/widget/RelativeLayout;

    .line 420
    const v1, 0x7f07005b

    invoke-virtual {p0, v1}, Lcom/android/email/activity/CustomizeDateScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/android/email/activity/CustomizeDateScreen;->customizeLayout:Landroid/widget/RelativeLayout;

    .line 422
    const v1, 0x7f07004b

    invoke-virtual {p0, v1}, Lcom/android/email/activity/CustomizeDateScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p0, Lcom/android/email/activity/CustomizeDateScreen;->todayRadioButton:Landroid/widget/RadioButton;

    .line 423
    iget-object v1, p0, Lcom/android/email/activity/CustomizeDateScreen;->todayRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {v1, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 424
    const v1, 0x7f07004e

    invoke-virtual {p0, v1}, Lcom/android/email/activity/CustomizeDateScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p0, Lcom/android/email/activity/CustomizeDateScreen;->oneDayRadioButton:Landroid/widget/RadioButton;

    .line 425
    const v1, 0x7f070051

    invoke-virtual {p0, v1}, Lcom/android/email/activity/CustomizeDateScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p0, Lcom/android/email/activity/CustomizeDateScreen;->oneWeekRadioButton:Landroid/widget/RadioButton;

    .line 426
    const v1, 0x7f070054

    invoke-virtual {p0, v1}, Lcom/android/email/activity/CustomizeDateScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p0, Lcom/android/email/activity/CustomizeDateScreen;->oneMonthRadioButton:Landroid/widget/RadioButton;

    .line 427
    const v1, 0x7f070057

    invoke-virtual {p0, v1}, Lcom/android/email/activity/CustomizeDateScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p0, Lcom/android/email/activity/CustomizeDateScreen;->sixMonthRadioButton:Landroid/widget/RadioButton;

    .line 428
    const v1, 0x7f07005a

    invoke-virtual {p0, v1}, Lcom/android/email/activity/CustomizeDateScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p0, Lcom/android/email/activity/CustomizeDateScreen;->oneYearRadioButton:Landroid/widget/RadioButton;

    .line 429
    const v1, 0x7f07005d

    invoke-virtual {p0, v1}, Lcom/android/email/activity/CustomizeDateScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p0, Lcom/android/email/activity/CustomizeDateScreen;->customizeRadioButton:Landroid/widget/RadioButton;

    .line 431
    const v1, 0x7f07005e

    invoke-virtual {p0, v1}, Lcom/android/email/activity/CustomizeDateScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/email/activity/CustomizeDateScreen;->fromTextView:Landroid/widget/TextView;

    .line 432
    const v1, 0x7f070062

    invoke-virtual {p0, v1}, Lcom/android/email/activity/CustomizeDateScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/email/activity/CustomizeDateScreen;->toTextView:Landroid/widget/TextView;

    .line 434
    const v1, 0x7f070060

    invoke-virtual {p0, v1}, Lcom/android/email/activity/CustomizeDateScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/email/activity/CustomizeDateScreen;->fromDateButton:Landroid/widget/Button;

    .line 435
    const v1, 0x7f070061

    invoke-virtual {p0, v1}, Lcom/android/email/activity/CustomizeDateScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/email/activity/CustomizeDateScreen;->fromTimeButton:Landroid/widget/Button;

    .line 436
    const v1, 0x7f070064

    invoke-virtual {p0, v1}, Lcom/android/email/activity/CustomizeDateScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/email/activity/CustomizeDateScreen;->toDateButton:Landroid/widget/Button;

    .line 437
    const v1, 0x7f070065

    invoke-virtual {p0, v1}, Lcom/android/email/activity/CustomizeDateScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/email/activity/CustomizeDateScreen;->toTimeButton:Landroid/widget/Button;

    .line 439
    const v1, 0x7f070067

    invoke-virtual {p0, v1}, Lcom/android/email/activity/CustomizeDateScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/email/activity/CustomizeDateScreen;->okButton:Landroid/widget/Button;

    .line 440
    const v1, 0x7f070068

    invoke-virtual {p0, v1}, Lcom/android/email/activity/CustomizeDateScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/email/activity/CustomizeDateScreen;->cancelButton:Landroid/widget/Button;

    .line 442
    invoke-direct {p0}, Lcom/android/email/activity/CustomizeDateScreen;->updateDisplay()V

    .line 444
    iget-object v1, p0, Lcom/android/email/activity/CustomizeDateScreen;->todayLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 445
    iget-object v1, p0, Lcom/android/email/activity/CustomizeDateScreen;->oneDayLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 446
    iget-object v1, p0, Lcom/android/email/activity/CustomizeDateScreen;->oneWeekLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 447
    iget-object v1, p0, Lcom/android/email/activity/CustomizeDateScreen;->oneMonthLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 448
    iget-object v1, p0, Lcom/android/email/activity/CustomizeDateScreen;->sixMonthLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 449
    iget-object v1, p0, Lcom/android/email/activity/CustomizeDateScreen;->oneYearLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 450
    iget-object v1, p0, Lcom/android/email/activity/CustomizeDateScreen;->customizeLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 451
    iget-object v1, p0, Lcom/android/email/activity/CustomizeDateScreen;->fromDateButton:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 452
    iget-object v1, p0, Lcom/android/email/activity/CustomizeDateScreen;->fromTimeButton:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 453
    iget-object v1, p0, Lcom/android/email/activity/CustomizeDateScreen;->toDateButton:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 454
    iget-object v1, p0, Lcom/android/email/activity/CustomizeDateScreen;->toTimeButton:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 455
    iget-object v1, p0, Lcom/android/email/activity/CustomizeDateScreen;->okButton:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 456
    iget-object v1, p0, Lcom/android/email/activity/CustomizeDateScreen;->cancelButton:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 457
    return-void
.end method

.method private setDefaultValues()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 314
    iget-object v0, p0, Lcom/android/email/activity/CustomizeDateScreen;->mDate:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getYear()I

    move-result v0

    add-int/lit16 v0, v0, 0x76c

    iput v0, p0, Lcom/android/email/activity/CustomizeDateScreen;->mYearToSearch:I

    .line 315
    iget-object v0, p0, Lcom/android/email/activity/CustomizeDateScreen;->mDate:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getMonth()I

    move-result v0

    iput v0, p0, Lcom/android/email/activity/CustomizeDateScreen;->mMonthToSearch:I

    .line 316
    iget-object v0, p0, Lcom/android/email/activity/CustomizeDateScreen;->mDate:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getDate()I

    move-result v0

    iput v0, p0, Lcom/android/email/activity/CustomizeDateScreen;->mDayToSearch:I

    .line 318
    iput v1, p0, Lcom/android/email/activity/CustomizeDateScreen;->mHourFromSearch:I

    .line 319
    iput v1, p0, Lcom/android/email/activity/CustomizeDateScreen;->mMinuteFromSearch:I

    .line 321
    iget-object v0, p0, Lcom/android/email/activity/CustomizeDateScreen;->mDate:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getHours()I

    move-result v0

    iput v0, p0, Lcom/android/email/activity/CustomizeDateScreen;->mHourToSearch:I

    .line 322
    iget-object v0, p0, Lcom/android/email/activity/CustomizeDateScreen;->mDate:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getMinutes()I

    move-result v0

    iput v0, p0, Lcom/android/email/activity/CustomizeDateScreen;->mMinuteToSearch:I

    .line 323
    return-void
.end method

.method private toggleAllRadioButtons()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 556
    iget-object v0, p0, Lcom/android/email/activity/CustomizeDateScreen;->todayRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 557
    iget-object v0, p0, Lcom/android/email/activity/CustomizeDateScreen;->oneDayRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 558
    iget-object v0, p0, Lcom/android/email/activity/CustomizeDateScreen;->oneWeekRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 559
    iget-object v0, p0, Lcom/android/email/activity/CustomizeDateScreen;->oneMonthRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 560
    iget-object v0, p0, Lcom/android/email/activity/CustomizeDateScreen;->sixMonthRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 561
    iget-object v0, p0, Lcom/android/email/activity/CustomizeDateScreen;->oneYearRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 562
    iget-object v0, p0, Lcom/android/email/activity/CustomizeDateScreen;->customizeRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 563
    return-void
.end method

.method private updateDisplay()V
    .locals 9

    .prologue
    const/16 v7, 0xa

    const/4 v6, 0x0

    const-string v8, ":"

    .line 460
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    .line 461
    .local v2, todayDate:Ljava/util/Date;
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    .line 462
    .local v3, todayTime:Ljava/util/Date;
    iget-object v4, p0, Lcom/android/email/activity/CustomizeDateScreen;->fromDateButton:Landroid/widget/Button;

    iget-object v5, p0, Lcom/android/email/activity/CustomizeDateScreen;->dateFormatter:Ljava/text/SimpleDateFormat;

    invoke-virtual {v5, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 463
    iget-object v4, p0, Lcom/android/email/activity/CustomizeDateScreen;->toDateButton:Landroid/widget/Button;

    iget-object v5, p0, Lcom/android/email/activity/CustomizeDateScreen;->dateFormatter:Ljava/text/SimpleDateFormat;

    invoke-virtual {v5, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 465
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 466
    .local v0, fromBuffer:Ljava/lang/StringBuilder;
    invoke-virtual {v2}, Ljava/util/Date;->getHours()I

    move-result v4

    if-ge v4, v7, :cond_0

    .line 467
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 468
    :cond_0
    invoke-virtual {v2}, Ljava/util/Date;->getHours()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 469
    const-string v4, ":"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 470
    invoke-virtual {v2}, Ljava/util/Date;->getMinutes()I

    move-result v4

    if-ge v4, v7, :cond_1

    .line 471
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 472
    :cond_1
    invoke-virtual {v2}, Ljava/util/Date;->getMinutes()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 473
    iget-object v4, p0, Lcom/android/email/activity/CustomizeDateScreen;->fromTimeButton:Landroid/widget/Button;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 475
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 476
    .local v1, toBuffer:Ljava/lang/StringBuilder;
    invoke-virtual {v2}, Ljava/util/Date;->getHours()I

    move-result v4

    if-ge v4, v7, :cond_2

    .line 477
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 478
    :cond_2
    invoke-virtual {v2}, Ljava/util/Date;->getHours()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 479
    const-string v4, ":"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 480
    invoke-virtual {v2}, Ljava/util/Date;->getMinutes()I

    move-result v4

    if-ge v4, v7, :cond_3

    .line 481
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 482
    :cond_3
    invoke-virtual {v2}, Ljava/util/Date;->getMinutes()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 483
    iget-object v4, p0, Lcom/android/email/activity/CustomizeDateScreen;->toTimeButton:Landroid/widget/Button;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 484
    return-void
.end method

.method private updateFromDate()V
    .locals 5

    .prologue
    const-string v4, ", "

    .line 487
    new-instance v0, Ljava/util/Date;

    iget v1, p0, Lcom/android/email/activity/CustomizeDateScreen;->mFromYear:I

    iget v2, p0, Lcom/android/email/activity/CustomizeDateScreen;->mFromMonth:I

    iget v3, p0, Lcom/android/email/activity/CustomizeDateScreen;->mFromDay:I

    invoke-direct {v0, v1, v2, v3}, Ljava/util/Date;-><init>(III)V

    .line 488
    .local v0, date:Ljava/util/Date;
    iget-object v1, p0, Lcom/android/email/activity/CustomizeDateScreen;->mFromDateStringBuffer:Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/email/activity/CustomizeDateScreen;->mFromDateStringBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 489
    iget-object v1, p0, Lcom/android/email/activity/CustomizeDateScreen;->mFromDateStringBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/Date;->getDay()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/email/activity/CustomizeDateScreen;->getDayInString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 490
    iget-object v1, p0, Lcom/android/email/activity/CustomizeDateScreen;->mFromDateStringBuffer:Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 491
    iget-object v1, p0, Lcom/android/email/activity/CustomizeDateScreen;->mFromDateStringBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/Date;->getDate()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 492
    iget-object v1, p0, Lcom/android/email/activity/CustomizeDateScreen;->mFromDateStringBuffer:Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 493
    iget-object v1, p0, Lcom/android/email/activity/CustomizeDateScreen;->mFromDateStringBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/Date;->getMonth()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-direct {p0, v2}, Lcom/android/email/activity/CustomizeDateScreen;->getMonthInString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 494
    iget-object v1, p0, Lcom/android/email/activity/CustomizeDateScreen;->mFromDateStringBuffer:Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 495
    iget-object v1, p0, Lcom/android/email/activity/CustomizeDateScreen;->mFromDateStringBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/Date;->getYear()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 496
    iget-object v1, p0, Lcom/android/email/activity/CustomizeDateScreen;->fromDateButton:Landroid/widget/Button;

    iget-object v2, p0, Lcom/android/email/activity/CustomizeDateScreen;->mFromDateStringBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 497
    return-void
.end method

.method private updateFromTime()V
    .locals 4

    .prologue
    const/16 v3, 0xa

    const/4 v2, 0x0

    .line 513
    iget-object v0, p0, Lcom/android/email/activity/CustomizeDateScreen;->mFromTimeStringBuffer:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/email/activity/CustomizeDateScreen;->mFromTimeStringBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 514
    iget v0, p0, Lcom/android/email/activity/CustomizeDateScreen;->mFromHourOfDay:I

    if-ge v0, v3, :cond_0

    .line 515
    iget-object v0, p0, Lcom/android/email/activity/CustomizeDateScreen;->mFromTimeStringBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 516
    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/CustomizeDateScreen;->mFromTimeStringBuffer:Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/email/activity/CustomizeDateScreen;->mFromHourOfDay:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 517
    iget-object v0, p0, Lcom/android/email/activity/CustomizeDateScreen;->mFromTimeStringBuffer:Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 518
    iget v0, p0, Lcom/android/email/activity/CustomizeDateScreen;->mFromMinute:I

    if-ge v0, v3, :cond_1

    .line 519
    iget-object v0, p0, Lcom/android/email/activity/CustomizeDateScreen;->mFromTimeStringBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 520
    :cond_1
    iget-object v0, p0, Lcom/android/email/activity/CustomizeDateScreen;->mFromTimeStringBuffer:Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/email/activity/CustomizeDateScreen;->mFromMinute:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 521
    iget-object v0, p0, Lcom/android/email/activity/CustomizeDateScreen;->fromTimeButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/email/activity/CustomizeDateScreen;->mFromTimeStringBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 522
    return-void
.end method

.method private updateToDate()V
    .locals 5

    .prologue
    const-string v4, ", "

    .line 500
    new-instance v0, Ljava/util/Date;

    iget v1, p0, Lcom/android/email/activity/CustomizeDateScreen;->mToYear:I

    iget v2, p0, Lcom/android/email/activity/CustomizeDateScreen;->mToMonth:I

    iget v3, p0, Lcom/android/email/activity/CustomizeDateScreen;->mToDay:I

    invoke-direct {v0, v1, v2, v3}, Ljava/util/Date;-><init>(III)V

    .line 501
    .local v0, date:Ljava/util/Date;
    iget-object v1, p0, Lcom/android/email/activity/CustomizeDateScreen;->mToDateStringBuffer:Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/email/activity/CustomizeDateScreen;->mToDateStringBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 502
    iget-object v1, p0, Lcom/android/email/activity/CustomizeDateScreen;->mToDateStringBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/Date;->getDay()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/email/activity/CustomizeDateScreen;->getDayInString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 503
    iget-object v1, p0, Lcom/android/email/activity/CustomizeDateScreen;->mToDateStringBuffer:Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 504
    iget-object v1, p0, Lcom/android/email/activity/CustomizeDateScreen;->mToDateStringBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/Date;->getDate()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 505
    iget-object v1, p0, Lcom/android/email/activity/CustomizeDateScreen;->mToDateStringBuffer:Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 506
    iget-object v1, p0, Lcom/android/email/activity/CustomizeDateScreen;->mToDateStringBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/Date;->getMonth()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-direct {p0, v2}, Lcom/android/email/activity/CustomizeDateScreen;->getMonthInString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 507
    iget-object v1, p0, Lcom/android/email/activity/CustomizeDateScreen;->mToDateStringBuffer:Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 508
    iget-object v1, p0, Lcom/android/email/activity/CustomizeDateScreen;->mToDateStringBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/Date;->getYear()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 509
    iget-object v1, p0, Lcom/android/email/activity/CustomizeDateScreen;->toDateButton:Landroid/widget/Button;

    iget-object v2, p0, Lcom/android/email/activity/CustomizeDateScreen;->mToDateStringBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 510
    return-void
.end method

.method private updateToTime()V
    .locals 4

    .prologue
    const/16 v3, 0xa

    const/4 v2, 0x0

    .line 525
    iget-object v0, p0, Lcom/android/email/activity/CustomizeDateScreen;->mToTimeStringBuffer:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/email/activity/CustomizeDateScreen;->mToTimeStringBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 526
    iget v0, p0, Lcom/android/email/activity/CustomizeDateScreen;->mToHourOfDay:I

    if-ge v0, v3, :cond_0

    .line 527
    iget-object v0, p0, Lcom/android/email/activity/CustomizeDateScreen;->mToTimeStringBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 528
    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/CustomizeDateScreen;->mToTimeStringBuffer:Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/email/activity/CustomizeDateScreen;->mToHourOfDay:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 529
    iget-object v0, p0, Lcom/android/email/activity/CustomizeDateScreen;->mToTimeStringBuffer:Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 530
    iget v0, p0, Lcom/android/email/activity/CustomizeDateScreen;->mToMinute:I

    if-ge v0, v3, :cond_1

    .line 531
    iget-object v0, p0, Lcom/android/email/activity/CustomizeDateScreen;->mToTimeStringBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 532
    :cond_1
    iget-object v0, p0, Lcom/android/email/activity/CustomizeDateScreen;->mToTimeStringBuffer:Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/email/activity/CustomizeDateScreen;->mToMinute:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 533
    iget-object v0, p0, Lcom/android/email/activity/CustomizeDateScreen;->toTimeButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/email/activity/CustomizeDateScreen;->mToTimeStringBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 534
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 12
    .parameter "v"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const-string v5, "~"

    const-string v4, " "

    .line 135
    iget-object v1, p0, Lcom/android/email/activity/CustomizeDateScreen;->todayLayout:Landroid/widget/RelativeLayout;

    if-ne p1, v1, :cond_1

    .line 137
    iput-boolean v3, p0, Lcom/android/email/activity/CustomizeDateScreen;->mIsCustomize:Z

    .line 138
    invoke-direct {p0}, Lcom/android/email/activity/CustomizeDateScreen;->toggleAllRadioButtons()V

    .line 139
    iget-object v1, p0, Lcom/android/email/activity/CustomizeDateScreen;->todayRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 140
    iget-object v1, p0, Lcom/android/email/activity/CustomizeDateScreen;->mDate:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getYear()I

    move-result v1

    add-int/lit16 v1, v1, 0x76c

    iput v1, p0, Lcom/android/email/activity/CustomizeDateScreen;->mYearFromSearch:I

    .line 141
    iget-object v1, p0, Lcom/android/email/activity/CustomizeDateScreen;->mDate:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getMonth()I

    move-result v1

    iput v1, p0, Lcom/android/email/activity/CustomizeDateScreen;->mMonthFromSearch:I

    .line 142
    iget-object v1, p0, Lcom/android/email/activity/CustomizeDateScreen;->mDate:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getDate()I

    move-result v1

    iput v1, p0, Lcom/android/email/activity/CustomizeDateScreen;->mDayFromSearch:I

    .line 143
    invoke-direct {p0}, Lcom/android/email/activity/CustomizeDateScreen;->setDefaultValues()V

    .line 144
    const v1, 0x7f080248

    invoke-virtual {p0, v1}, Lcom/android/email/activity/CustomizeDateScreen;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/activity/CustomizeDateScreen;->mStringToReturn:Ljava/lang/String;

    .line 145
    invoke-direct {p0}, Lcom/android/email/activity/CustomizeDateScreen;->disableCustomView()V

    .line 311
    :cond_0
    :goto_0
    return-void

    .line 147
    :cond_1
    iget-object v1, p0, Lcom/android/email/activity/CustomizeDateScreen;->oneDayLayout:Landroid/widget/RelativeLayout;

    if-ne p1, v1, :cond_2

    .line 149
    iput-boolean v3, p0, Lcom/android/email/activity/CustomizeDateScreen;->mIsCustomize:Z

    .line 150
    invoke-direct {p0}, Lcom/android/email/activity/CustomizeDateScreen;->toggleAllRadioButtons()V

    .line 151
    iget-object v1, p0, Lcom/android/email/activity/CustomizeDateScreen;->oneDayRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 152
    new-instance v7, Ljava/util/Date;

    invoke-direct {v7}, Ljava/util/Date;-><init>()V

    .line 153
    .local v7, date:Ljava/util/Date;
    iget-object v1, p0, Lcom/android/email/activity/CustomizeDateScreen;->mDate:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getDate()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-virtual {v7, v1}, Ljava/util/Date;->setDate(I)V

    .line 154
    invoke-virtual {v7}, Ljava/util/Date;->getYear()I

    move-result v1

    add-int/lit16 v1, v1, 0x76c

    iput v1, p0, Lcom/android/email/activity/CustomizeDateScreen;->mYearFromSearch:I

    .line 155
    invoke-virtual {v7}, Ljava/util/Date;->getMonth()I

    move-result v1

    iput v1, p0, Lcom/android/email/activity/CustomizeDateScreen;->mMonthFromSearch:I

    .line 156
    invoke-virtual {v7}, Ljava/util/Date;->getDate()I

    move-result v1

    iput v1, p0, Lcom/android/email/activity/CustomizeDateScreen;->mDayFromSearch:I

    .line 157
    invoke-direct {p0}, Lcom/android/email/activity/CustomizeDateScreen;->setDefaultValues()V

    .line 158
    const v1, 0x7f080249

    invoke-virtual {p0, v1}, Lcom/android/email/activity/CustomizeDateScreen;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/activity/CustomizeDateScreen;->mStringToReturn:Ljava/lang/String;

    .line 159
    invoke-direct {p0}, Lcom/android/email/activity/CustomizeDateScreen;->disableCustomView()V

    goto :goto_0

    .line 161
    .end local v7           #date:Ljava/util/Date;
    :cond_2
    iget-object v1, p0, Lcom/android/email/activity/CustomizeDateScreen;->oneWeekLayout:Landroid/widget/RelativeLayout;

    if-ne p1, v1, :cond_3

    .line 163
    iput-boolean v3, p0, Lcom/android/email/activity/CustomizeDateScreen;->mIsCustomize:Z

    .line 164
    invoke-direct {p0}, Lcom/android/email/activity/CustomizeDateScreen;->toggleAllRadioButtons()V

    .line 165
    iget-object v1, p0, Lcom/android/email/activity/CustomizeDateScreen;->oneWeekRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 166
    new-instance v7, Ljava/util/Date;

    invoke-direct {v7}, Ljava/util/Date;-><init>()V

    .line 167
    .restart local v7       #date:Ljava/util/Date;
    iget-object v1, p0, Lcom/android/email/activity/CustomizeDateScreen;->mDate:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getDate()I

    move-result v1

    const/4 v2, 0x7

    sub-int/2addr v1, v2

    invoke-virtual {v7, v1}, Ljava/util/Date;->setDate(I)V

    .line 168
    invoke-virtual {v7}, Ljava/util/Date;->getYear()I

    move-result v1

    add-int/lit16 v1, v1, 0x76c

    iput v1, p0, Lcom/android/email/activity/CustomizeDateScreen;->mYearFromSearch:I

    .line 169
    invoke-virtual {v7}, Ljava/util/Date;->getMonth()I

    move-result v1

    iput v1, p0, Lcom/android/email/activity/CustomizeDateScreen;->mMonthFromSearch:I

    .line 170
    invoke-virtual {v7}, Ljava/util/Date;->getDate()I

    move-result v1

    iput v1, p0, Lcom/android/email/activity/CustomizeDateScreen;->mDayFromSearch:I

    .line 171
    invoke-direct {p0}, Lcom/android/email/activity/CustomizeDateScreen;->setDefaultValues()V

    .line 172
    const v1, 0x7f08024a

    invoke-virtual {p0, v1}, Lcom/android/email/activity/CustomizeDateScreen;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/activity/CustomizeDateScreen;->mStringToReturn:Ljava/lang/String;

    .line 173
    invoke-direct {p0}, Lcom/android/email/activity/CustomizeDateScreen;->disableCustomView()V

    goto/16 :goto_0

    .line 175
    .end local v7           #date:Ljava/util/Date;
    :cond_3
    iget-object v1, p0, Lcom/android/email/activity/CustomizeDateScreen;->oneMonthLayout:Landroid/widget/RelativeLayout;

    if-ne p1, v1, :cond_4

    .line 177
    iput-boolean v3, p0, Lcom/android/email/activity/CustomizeDateScreen;->mIsCustomize:Z

    .line 178
    invoke-direct {p0}, Lcom/android/email/activity/CustomizeDateScreen;->toggleAllRadioButtons()V

    .line 179
    iget-object v1, p0, Lcom/android/email/activity/CustomizeDateScreen;->oneMonthRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 180
    new-instance v7, Ljava/util/Date;

    invoke-direct {v7}, Ljava/util/Date;-><init>()V

    .line 181
    .restart local v7       #date:Ljava/util/Date;
    iget-object v1, p0, Lcom/android/email/activity/CustomizeDateScreen;->mDate:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getMonth()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-virtual {v7, v1}, Ljava/util/Date;->setMonth(I)V

    .line 182
    invoke-virtual {v7}, Ljava/util/Date;->getYear()I

    move-result v1

    add-int/lit16 v1, v1, 0x76c

    iput v1, p0, Lcom/android/email/activity/CustomizeDateScreen;->mYearFromSearch:I

    .line 183
    invoke-virtual {v7}, Ljava/util/Date;->getMonth()I

    move-result v1

    iput v1, p0, Lcom/android/email/activity/CustomizeDateScreen;->mMonthFromSearch:I

    .line 184
    invoke-virtual {v7}, Ljava/util/Date;->getDate()I

    move-result v1

    iput v1, p0, Lcom/android/email/activity/CustomizeDateScreen;->mDayFromSearch:I

    .line 185
    invoke-direct {p0}, Lcom/android/email/activity/CustomizeDateScreen;->setDefaultValues()V

    .line 186
    const v1, 0x7f08024b

    invoke-virtual {p0, v1}, Lcom/android/email/activity/CustomizeDateScreen;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/activity/CustomizeDateScreen;->mStringToReturn:Ljava/lang/String;

    .line 187
    invoke-direct {p0}, Lcom/android/email/activity/CustomizeDateScreen;->disableCustomView()V

    goto/16 :goto_0

    .line 189
    .end local v7           #date:Ljava/util/Date;
    :cond_4
    iget-object v1, p0, Lcom/android/email/activity/CustomizeDateScreen;->sixMonthLayout:Landroid/widget/RelativeLayout;

    if-ne p1, v1, :cond_5

    .line 191
    iput-boolean v3, p0, Lcom/android/email/activity/CustomizeDateScreen;->mIsCustomize:Z

    .line 192
    invoke-direct {p0}, Lcom/android/email/activity/CustomizeDateScreen;->toggleAllRadioButtons()V

    .line 193
    iget-object v1, p0, Lcom/android/email/activity/CustomizeDateScreen;->sixMonthRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 194
    new-instance v7, Ljava/util/Date;

    invoke-direct {v7}, Ljava/util/Date;-><init>()V

    .line 195
    .restart local v7       #date:Ljava/util/Date;
    iget-object v1, p0, Lcom/android/email/activity/CustomizeDateScreen;->mDate:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getMonth()I

    move-result v1

    const/4 v2, 0x6

    sub-int/2addr v1, v2

    invoke-virtual {v7, v1}, Ljava/util/Date;->setMonth(I)V

    .line 196
    invoke-virtual {v7}, Ljava/util/Date;->getYear()I

    move-result v1

    add-int/lit16 v1, v1, 0x76c

    iput v1, p0, Lcom/android/email/activity/CustomizeDateScreen;->mYearFromSearch:I

    .line 197
    invoke-virtual {v7}, Ljava/util/Date;->getMonth()I

    move-result v1

    iput v1, p0, Lcom/android/email/activity/CustomizeDateScreen;->mMonthFromSearch:I

    .line 198
    invoke-virtual {v7}, Ljava/util/Date;->getDate()I

    move-result v1

    iput v1, p0, Lcom/android/email/activity/CustomizeDateScreen;->mDayFromSearch:I

    .line 199
    invoke-direct {p0}, Lcom/android/email/activity/CustomizeDateScreen;->setDefaultValues()V

    .line 200
    const v1, 0x7f08024c

    invoke-virtual {p0, v1}, Lcom/android/email/activity/CustomizeDateScreen;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/activity/CustomizeDateScreen;->mStringToReturn:Ljava/lang/String;

    .line 201
    invoke-direct {p0}, Lcom/android/email/activity/CustomizeDateScreen;->disableCustomView()V

    goto/16 :goto_0

    .line 203
    .end local v7           #date:Ljava/util/Date;
    :cond_5
    iget-object v1, p0, Lcom/android/email/activity/CustomizeDateScreen;->oneYearLayout:Landroid/widget/RelativeLayout;

    if-ne p1, v1, :cond_6

    .line 205
    iput-boolean v3, p0, Lcom/android/email/activity/CustomizeDateScreen;->mIsCustomize:Z

    .line 206
    invoke-direct {p0}, Lcom/android/email/activity/CustomizeDateScreen;->toggleAllRadioButtons()V

    .line 207
    iget-object v1, p0, Lcom/android/email/activity/CustomizeDateScreen;->oneYearRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 208
    new-instance v7, Ljava/util/Date;

    invoke-direct {v7}, Ljava/util/Date;-><init>()V

    .line 209
    .restart local v7       #date:Ljava/util/Date;
    iget-object v1, p0, Lcom/android/email/activity/CustomizeDateScreen;->mDate:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getYear()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-virtual {v7, v1}, Ljava/util/Date;->setYear(I)V

    .line 210
    invoke-virtual {v7}, Ljava/util/Date;->getYear()I

    move-result v1

    add-int/lit16 v1, v1, 0x76c

    iput v1, p0, Lcom/android/email/activity/CustomizeDateScreen;->mYearFromSearch:I

    .line 211
    invoke-virtual {v7}, Ljava/util/Date;->getMonth()I

    move-result v1

    iput v1, p0, Lcom/android/email/activity/CustomizeDateScreen;->mMonthFromSearch:I

    .line 212
    invoke-virtual {v7}, Ljava/util/Date;->getDate()I

    move-result v1

    iput v1, p0, Lcom/android/email/activity/CustomizeDateScreen;->mDayFromSearch:I

    .line 213
    invoke-direct {p0}, Lcom/android/email/activity/CustomizeDateScreen;->setDefaultValues()V

    .line 214
    const v1, 0x7f08024d

    invoke-virtual {p0, v1}, Lcom/android/email/activity/CustomizeDateScreen;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/activity/CustomizeDateScreen;->mStringToReturn:Ljava/lang/String;

    .line 215
    invoke-direct {p0}, Lcom/android/email/activity/CustomizeDateScreen;->disableCustomView()V

    goto/16 :goto_0

    .line 217
    .end local v7           #date:Ljava/util/Date;
    :cond_6
    iget-object v1, p0, Lcom/android/email/activity/CustomizeDateScreen;->customizeLayout:Landroid/widget/RelativeLayout;

    if-ne p1, v1, :cond_7

    .line 219
    new-instance v7, Ljava/util/Date;

    invoke-direct {v7}, Ljava/util/Date;-><init>()V

    .line 220
    .restart local v7       #date:Ljava/util/Date;
    invoke-virtual {v7}, Ljava/util/Date;->getYear()I

    move-result v1

    add-int/lit16 v1, v1, 0x76c

    iput v1, p0, Lcom/android/email/activity/CustomizeDateScreen;->mYearFromSearch:I

    .line 221
    invoke-virtual {v7}, Ljava/util/Date;->getMonth()I

    move-result v1

    iput v1, p0, Lcom/android/email/activity/CustomizeDateScreen;->mMonthFromSearch:I

    .line 222
    invoke-virtual {v7}, Ljava/util/Date;->getDate()I

    move-result v1

    iput v1, p0, Lcom/android/email/activity/CustomizeDateScreen;->mDayFromSearch:I

    .line 223
    invoke-virtual {v7}, Ljava/util/Date;->getHours()I

    move-result v1

    iput v1, p0, Lcom/android/email/activity/CustomizeDateScreen;->mHourFromSearch:I

    .line 224
    invoke-virtual {v7}, Ljava/util/Date;->getMinutes()I

    move-result v1

    iput v1, p0, Lcom/android/email/activity/CustomizeDateScreen;->mMinuteFromSearch:I

    .line 225
    invoke-virtual {v7}, Ljava/util/Date;->getYear()I

    move-result v1

    add-int/lit16 v1, v1, 0x76c

    iput v1, p0, Lcom/android/email/activity/CustomizeDateScreen;->mYearToSearch:I

    .line 226
    invoke-virtual {v7}, Ljava/util/Date;->getMonth()I

    move-result v1

    iput v1, p0, Lcom/android/email/activity/CustomizeDateScreen;->mMonthToSearch:I

    .line 227
    invoke-virtual {v7}, Ljava/util/Date;->getDate()I

    move-result v1

    iput v1, p0, Lcom/android/email/activity/CustomizeDateScreen;->mDayToSearch:I

    .line 228
    invoke-virtual {v7}, Ljava/util/Date;->getHours()I

    move-result v1

    iput v1, p0, Lcom/android/email/activity/CustomizeDateScreen;->mHourToSearch:I

    .line 229
    invoke-virtual {v7}, Ljava/util/Date;->getMinutes()I

    move-result v1

    iput v1, p0, Lcom/android/email/activity/CustomizeDateScreen;->mMinuteToSearch:I

    .line 230
    iput-boolean v2, p0, Lcom/android/email/activity/CustomizeDateScreen;->mIsCustomize:Z

    .line 232
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 233
    .local v8, defaultBuilder:Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/android/email/activity/CustomizeDateScreen;->dateFormatter:Ljava/text/SimpleDateFormat;

    invoke-virtual {v1, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    const-string v1, "~"

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    iget-object v1, p0, Lcom/android/email/activity/CustomizeDateScreen;->dateFormatter:Ljava/text/SimpleDateFormat;

    invoke-virtual {v1, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/activity/CustomizeDateScreen;->mStringToReturn:Ljava/lang/String;

    .line 238
    invoke-direct {p0}, Lcom/android/email/activity/CustomizeDateScreen;->toggleAllRadioButtons()V

    .line 239
    iget-object v1, p0, Lcom/android/email/activity/CustomizeDateScreen;->customizeRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 240
    invoke-direct {p0}, Lcom/android/email/activity/CustomizeDateScreen;->enableCustomView()V

    goto/16 :goto_0

    .line 242
    .end local v7           #date:Ljava/util/Date;
    .end local v8           #defaultBuilder:Ljava/lang/StringBuilder;
    :cond_7
    iget-object v1, p0, Lcom/android/email/activity/CustomizeDateScreen;->fromDateButton:Landroid/widget/Button;

    if-ne p1, v1, :cond_8

    .line 244
    const/16 v1, 0x64

    invoke-virtual {p0, v1}, Lcom/android/email/activity/CustomizeDateScreen;->showDialog(I)V

    goto/16 :goto_0

    .line 246
    :cond_8
    iget-object v1, p0, Lcom/android/email/activity/CustomizeDateScreen;->fromTimeButton:Landroid/widget/Button;

    if-ne p1, v1, :cond_9

    .line 248
    const/16 v1, 0x12c

    invoke-virtual {p0, v1}, Lcom/android/email/activity/CustomizeDateScreen;->showDialog(I)V

    goto/16 :goto_0

    .line 250
    :cond_9
    iget-object v1, p0, Lcom/android/email/activity/CustomizeDateScreen;->toDateButton:Landroid/widget/Button;

    if-ne p1, v1, :cond_a

    .line 252
    const/16 v1, 0xc8

    invoke-virtual {p0, v1}, Lcom/android/email/activity/CustomizeDateScreen;->showDialog(I)V

    goto/16 :goto_0

    .line 254
    :cond_a
    iget-object v1, p0, Lcom/android/email/activity/CustomizeDateScreen;->toTimeButton:Landroid/widget/Button;

    if-ne p1, v1, :cond_b

    .line 256
    const/16 v1, 0x190

    invoke-virtual {p0, v1}, Lcom/android/email/activity/CustomizeDateScreen;->showDialog(I)V

    goto/16 :goto_0

    .line 258
    :cond_b
    iget-object v1, p0, Lcom/android/email/activity/CustomizeDateScreen;->okButton:Landroid/widget/Button;

    if-ne p1, v1, :cond_e

    .line 260
    iget-boolean v1, p0, Lcom/android/email/activity/CustomizeDateScreen;->mIsCustomize:Z

    if-eqz v1, :cond_c

    .line 262
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 263
    .local v10, sb:Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/android/email/activity/CustomizeDateScreen;->mFromDateStringBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 264
    const-string v1, " "

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 265
    iget-object v1, p0, Lcom/android/email/activity/CustomizeDateScreen;->mFromTimeStringBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 266
    const-string v1, "~"

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    iget-object v1, p0, Lcom/android/email/activity/CustomizeDateScreen;->mToDateStringBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 268
    const-string v1, " "

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    iget-object v1, p0, Lcom/android/email/activity/CustomizeDateScreen;->mToTimeStringBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 270
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/activity/CustomizeDateScreen;->mStringToReturn:Ljava/lang/String;

    .line 274
    .end local v10           #sb:Ljava/lang/StringBuilder;
    :cond_c
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 275
    .local v0, fromCal:Ljava/util/Calendar;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v11

    .line 276
    .local v11, toCal:Ljava/util/Calendar;
    iget v1, p0, Lcom/android/email/activity/CustomizeDateScreen;->mYearFromSearch:I

    iget v2, p0, Lcom/android/email/activity/CustomizeDateScreen;->mMonthFromSearch:I

    iget v3, p0, Lcom/android/email/activity/CustomizeDateScreen;->mDayFromSearch:I

    iget v4, p0, Lcom/android/email/activity/CustomizeDateScreen;->mHourFromSearch:I

    iget v5, p0, Lcom/android/email/activity/CustomizeDateScreen;->mMinuteFromSearch:I

    invoke-virtual/range {v0 .. v5}, Ljava/util/Calendar;->set(IIIII)V

    .line 277
    iget v2, p0, Lcom/android/email/activity/CustomizeDateScreen;->mYearToSearch:I

    iget v3, p0, Lcom/android/email/activity/CustomizeDateScreen;->mMonthToSearch:I

    iget v4, p0, Lcom/android/email/activity/CustomizeDateScreen;->mDayToSearch:I

    iget v5, p0, Lcom/android/email/activity/CustomizeDateScreen;->mHourToSearch:I

    iget v6, p0, Lcom/android/email/activity/CustomizeDateScreen;->mMinuteToSearch:I

    move-object v1, v11

    invoke-virtual/range {v1 .. v6}, Ljava/util/Calendar;->set(IIIII)V

    .line 279
    invoke-virtual {v0, v11}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 281
    invoke-virtual {p0}, Lcom/android/email/activity/CustomizeDateScreen;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f080256

    const/16 v3, 0x7d0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 286
    :cond_d
    new-instance v9, Landroid/content/Intent;

    invoke-direct {v9}, Landroid/content/Intent;-><init>()V

    .line 287
    .local v9, intent:Landroid/content/Intent;
    const-string v1, "FROM_YEAR"

    iget v2, p0, Lcom/android/email/activity/CustomizeDateScreen;->mYearFromSearch:I

    invoke-virtual {v9, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 288
    const-string v1, "FROM_MONTH"

    iget v2, p0, Lcom/android/email/activity/CustomizeDateScreen;->mMonthFromSearch:I

    invoke-virtual {v9, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 289
    const-string v1, "FROM_DAY"

    iget v2, p0, Lcom/android/email/activity/CustomizeDateScreen;->mDayFromSearch:I

    invoke-virtual {v9, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 291
    const-string v1, "TO_YEAR"

    iget v2, p0, Lcom/android/email/activity/CustomizeDateScreen;->mYearToSearch:I

    invoke-virtual {v9, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 292
    const-string v1, "TO_MONTH"

    iget v2, p0, Lcom/android/email/activity/CustomizeDateScreen;->mMonthToSearch:I

    invoke-virtual {v9, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 293
    const-string v1, "TO_DAY"

    iget v2, p0, Lcom/android/email/activity/CustomizeDateScreen;->mDayToSearch:I

    invoke-virtual {v9, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 295
    const-string v1, "FROM_HOUR"

    iget v2, p0, Lcom/android/email/activity/CustomizeDateScreen;->mHourFromSearch:I

    invoke-virtual {v9, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 296
    const-string v1, "FROM_MINUTE"

    iget v2, p0, Lcom/android/email/activity/CustomizeDateScreen;->mMinuteFromSearch:I

    invoke-virtual {v9, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 298
    const-string v1, "TO_HOUR"

    iget v2, p0, Lcom/android/email/activity/CustomizeDateScreen;->mHourToSearch:I

    invoke-virtual {v9, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 299
    const-string v1, "TO_MINUTE"

    iget v2, p0, Lcom/android/email/activity/CustomizeDateScreen;->mMinuteToSearch:I

    invoke-virtual {v9, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 301
    const-string v1, "SEARCH_STRING"

    iget-object v2, p0, Lcom/android/email/activity/CustomizeDateScreen;->mStringToReturn:Ljava/lang/String;

    invoke-virtual {v9, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 302
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v9}, Lcom/android/email/activity/CustomizeDateScreen;->setResult(ILandroid/content/Intent;)V

    .line 303
    invoke-virtual {p0}, Lcom/android/email/activity/CustomizeDateScreen;->finish()V

    goto/16 :goto_0

    .line 305
    .end local v0           #fromCal:Ljava/util/Calendar;
    .end local v9           #intent:Landroid/content/Intent;
    .end local v11           #toCal:Ljava/util/Calendar;
    :cond_e
    iget-object v1, p0, Lcom/android/email/activity/CustomizeDateScreen;->cancelButton:Landroid/widget/Button;

    if-ne p1, v1, :cond_0

    .line 307
    invoke-virtual {p0, v3}, Lcom/android/email/activity/CustomizeDateScreen;->setResult(I)V

    .line 308
    invoke-virtual {p0}, Lcom/android/email/activity/CustomizeDateScreen;->finish()V

    goto/16 :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    const-string v3, ":"

    .line 120
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 121
    const v0, 0x7f030010

    invoke-virtual {p0, v0}, Lcom/android/email/activity/CustomizeDateScreen;->setContentView(I)V

    .line 123
    invoke-direct {p0}, Lcom/android/email/activity/CustomizeDateScreen;->init()V

    .line 124
    iget-object v0, p0, Lcom/android/email/activity/CustomizeDateScreen;->mFromDateStringBuffer:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/email/activity/CustomizeDateScreen;->dateFormatter:Ljava/text/SimpleDateFormat;

    iget-object v2, p0, Lcom/android/email/activity/CustomizeDateScreen;->mDate:Ljava/util/Date;

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    iget-object v0, p0, Lcom/android/email/activity/CustomizeDateScreen;->mFromTimeStringBuffer:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/email/activity/CustomizeDateScreen;->mDate:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getHours()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 126
    iget-object v0, p0, Lcom/android/email/activity/CustomizeDateScreen;->mFromTimeStringBuffer:Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    iget-object v0, p0, Lcom/android/email/activity/CustomizeDateScreen;->mFromTimeStringBuffer:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/email/activity/CustomizeDateScreen;->mDate:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getMinutes()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 128
    iget-object v0, p0, Lcom/android/email/activity/CustomizeDateScreen;->mToDateStringBuffer:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/email/activity/CustomizeDateScreen;->dateFormatter:Ljava/text/SimpleDateFormat;

    iget-object v2, p0, Lcom/android/email/activity/CustomizeDateScreen;->mDate:Ljava/util/Date;

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    iget-object v0, p0, Lcom/android/email/activity/CustomizeDateScreen;->mToTimeStringBuffer:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/email/activity/CustomizeDateScreen;->mDate:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getHours()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 130
    iget-object v0, p0, Lcom/android/email/activity/CustomizeDateScreen;->mToTimeStringBuffer:Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    iget-object v0, p0, Lcom/android/email/activity/CustomizeDateScreen;->mToTimeStringBuffer:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/email/activity/CustomizeDateScreen;->mDate:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getMinutes()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 132
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 6
    .parameter "id"

    .prologue
    const/4 v5, 0x1

    .line 326
    sparse-switch p1, :sswitch_data_0

    .line 340
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 328
    :sswitch_0
    new-instance v0, Landroid/app/DatePickerDialog;

    iget-object v2, p0, Lcom/android/email/activity/CustomizeDateScreen;->mFromDateSetListener:Landroid/app/DatePickerDialog$OnDateSetListener;

    iget v3, p0, Lcom/android/email/activity/CustomizeDateScreen;->mYear:I

    iget v4, p0, Lcom/android/email/activity/CustomizeDateScreen;->mMonth:I

    iget v5, p0, Lcom/android/email/activity/CustomizeDateScreen;->mDay:I

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    goto :goto_0

    .line 332
    :sswitch_1
    new-instance v0, Landroid/app/DatePickerDialog;

    iget-object v2, p0, Lcom/android/email/activity/CustomizeDateScreen;->mToDateSetListener:Landroid/app/DatePickerDialog$OnDateSetListener;

    iget v3, p0, Lcom/android/email/activity/CustomizeDateScreen;->mYear:I

    iget v4, p0, Lcom/android/email/activity/CustomizeDateScreen;->mMonth:I

    iget v5, p0, Lcom/android/email/activity/CustomizeDateScreen;->mDay:I

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    goto :goto_0

    .line 336
    :sswitch_2
    new-instance v0, Landroid/app/TimePickerDialog;

    iget-object v2, p0, Lcom/android/email/activity/CustomizeDateScreen;->mFromTimeSetListener:Landroid/app/TimePickerDialog$OnTimeSetListener;

    iget v3, p0, Lcom/android/email/activity/CustomizeDateScreen;->mHourOfDay:I

    iget v4, p0, Lcom/android/email/activity/CustomizeDateScreen;->mMinute:I

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/app/TimePickerDialog;-><init>(Landroid/content/Context;Landroid/app/TimePickerDialog$OnTimeSetListener;IIZ)V

    goto :goto_0

    .line 338
    :sswitch_3
    new-instance v0, Landroid/app/TimePickerDialog;

    iget-object v2, p0, Lcom/android/email/activity/CustomizeDateScreen;->mToTimeSetListener:Landroid/app/TimePickerDialog$OnTimeSetListener;

    iget v3, p0, Lcom/android/email/activity/CustomizeDateScreen;->mHourOfDay:I

    iget v4, p0, Lcom/android/email/activity/CustomizeDateScreen;->mMinute:I

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/app/TimePickerDialog;-><init>(Landroid/content/Context;Landroid/app/TimePickerDialog$OnTimeSetListener;IIZ)V

    goto :goto_0

    .line 326
    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0xc8 -> :sswitch_1
        0x12c -> :sswitch_2
        0x190 -> :sswitch_3
    .end sparse-switch
.end method
