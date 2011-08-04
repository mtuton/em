.class public Lcom/android/email/activity/setup/SyncScheduleSettings;
.super Landroid/app/Activity;
.source "SyncScheduleSettings.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mCalendar:Ljava/util/Calendar;

.field private mDayStrings:[Ljava/lang/String;

.field private mEndHour:I

.field private mEndMinute:I

.field private mOffPeakSchedule:I

.field private mPeakDaysArray:[Z

.field private mPeakSchedule:I

.field private mPeakStrings:[Ljava/lang/String;

.field private mRoamingSchedule:I

.field private mStartHour:I

.field private mStartMinute:I

.field private mSyncEndTime:I

.field private mSyncScheduleData:Lcom/android/exchange/SyncScheduleData;

.field private mSyncStartTime:I

.field private mThreeCharDayStrings:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-class v0, Lcom/android/email/activity/setup/SyncScheduleSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/email/activity/setup/SyncScheduleSettings;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 66
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/email/activity/setup/SyncScheduleSettings;->mRoamingSchedule:I

    .line 67
    const/4 v0, 0x7

    new-array v0, v0, [Z

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/email/activity/setup/SyncScheduleSettings;->mPeakDaysArray:[Z

    .line 69
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/setup/SyncScheduleSettings;->mCalendar:Ljava/util/Calendar;

    return-void

    .line 67
    nop

    :array_0
    .array-data 0x1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/email/activity/setup/SyncScheduleSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/android/email/activity/setup/SyncScheduleSettings;->onSave()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/email/activity/setup/SyncScheduleSettings;Ljava/lang/String;ILandroid/widget/Button;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 29
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/email/activity/setup/SyncScheduleSettings;->showPeakScheduleDialog(Ljava/lang/String;ILandroid/widget/Button;Z)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/email/activity/setup/SyncScheduleSettings;Landroid/widget/Button;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/android/email/activity/setup/SyncScheduleSettings;->setPeakDaysButtonText(Landroid/widget/Button;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/email/activity/setup/SyncScheduleSettings;I)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/android/email/activity/setup/SyncScheduleSettings;->pad(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1202(Lcom/android/email/activity/setup/SyncScheduleSettings;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29
    iput p1, p0, Lcom/android/email/activity/setup/SyncScheduleSettings;->mSyncStartTime:I

    return p1
.end method

.method static synthetic access$1300(Lcom/android/email/activity/setup/SyncScheduleSettings;II)I
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Lcom/android/email/activity/setup/SyncScheduleSettings;->getMinuteOfDay(II)I

    move-result v0

    return v0
.end method

.method static synthetic access$1402(Lcom/android/email/activity/setup/SyncScheduleSettings;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29
    iput p1, p0, Lcom/android/email/activity/setup/SyncScheduleSettings;->mSyncEndTime:I

    return p1
.end method

.method static synthetic access$200(Lcom/android/email/activity/setup/SyncScheduleSettings;Landroid/widget/Button;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/android/email/activity/setup/SyncScheduleSettings;->showPeakDaysDialog(Landroid/widget/Button;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/email/activity/setup/SyncScheduleSettings;Landroid/widget/Button;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Lcom/android/email/activity/setup/SyncScheduleSettings;->showTimePickerDialog(Landroid/widget/Button;Z)V

    return-void
.end method

.method static synthetic access$402(Lcom/android/email/activity/setup/SyncScheduleSettings;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29
    iput p1, p0, Lcom/android/email/activity/setup/SyncScheduleSettings;->mRoamingSchedule:I

    return p1
.end method

.method static synthetic access$500(Lcom/android/email/activity/setup/SyncScheduleSettings;)[Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/android/email/activity/setup/SyncScheduleSettings;->mPeakStrings:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/email/activity/setup/SyncScheduleSettings;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29
    iput p1, p0, Lcom/android/email/activity/setup/SyncScheduleSettings;->mPeakSchedule:I

    return p1
.end method

.method static synthetic access$700(Lcom/android/email/activity/setup/SyncScheduleSettings;II)I
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Lcom/android/email/activity/setup/SyncScheduleSettings;->getScheduleValue(II)I

    move-result v0

    return v0
.end method

.method static synthetic access$802(Lcom/android/email/activity/setup/SyncScheduleSettings;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29
    iput p1, p0, Lcom/android/email/activity/setup/SyncScheduleSettings;->mOffPeakSchedule:I

    return p1
.end method

.method static synthetic access$900(Lcom/android/email/activity/setup/SyncScheduleSettings;)[Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/android/email/activity/setup/SyncScheduleSettings;->mPeakDaysArray:[Z

    return-object v0
.end method

.method public static actionSyncSchedule(Landroid/app/Activity;Lcom/android/exchange/SyncScheduleData;I)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 73
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/email/activity/setup/SyncScheduleSettings;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 74
    const-string v1, "com.android.email.SyncScheduleExtra"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 75
    invoke-virtual {p0, v0, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 76
    return-void
.end method

.method private getMinuteOfDay(II)I
    .locals 1
    .parameter "hour"
    .parameter "minute"

    .prologue
    .line 388
    mul-int/lit8 v0, p1, 0x3c

    add-int/2addr v0, p2

    return v0
.end method

.method private getPeakDays()B
    .locals 3

    .prologue
    .line 350
    const/4 v1, 0x0

    .line 351
    .local v1, peakDays:B
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v2, 0x7

    if-ge v0, v2, :cond_1

    .line 352
    iget-object v2, p0, Lcom/android/email/activity/setup/SyncScheduleSettings;->mPeakDaysArray:[Z

    aget-boolean v2, v2, v0

    if-eqz v2, :cond_0

    .line 353
    const/4 v2, 0x1

    shl-int/2addr v2, v0

    or-int/2addr v2, v1

    int-to-byte v1, v2

    .line 351
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 356
    :cond_1
    return v1
.end method

.method private getSchedulePosition(II)I
    .locals 1
    .parameter "schedule"
    .parameter "defaultPos"

    .prologue
    .line 413
    sparse-switch p1, :sswitch_data_0

    move v0, p2

    .line 429
    :goto_0
    return v0

    .line 415
    :sswitch_0
    const/4 v0, 0x0

    goto :goto_0

    .line 417
    :sswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 419
    :sswitch_2
    const/4 v0, 0x2

    goto :goto_0

    .line 421
    :sswitch_3
    const/4 v0, 0x3

    goto :goto_0

    .line 423
    :sswitch_4
    const/4 v0, 0x4

    goto :goto_0

    .line 425
    :sswitch_5
    const/4 v0, 0x5

    goto :goto_0

    .line 427
    :sswitch_6
    const/4 v0, 0x6

    goto :goto_0

    .line 413
    nop

    :sswitch_data_0
    .sparse-switch
        -0x2 -> :sswitch_6
        -0x1 -> :sswitch_5
        0x5 -> :sswitch_0
        0xf -> :sswitch_1
        0x3c -> :sswitch_2
        0xf0 -> :sswitch_3
        0x2d0 -> :sswitch_4
    .end sparse-switch
.end method

.method private getScheduleValue(II)I
    .locals 1
    .parameter "position"
    .parameter "defaultValue"

    .prologue
    .line 392
    packed-switch p1, :pswitch_data_0

    move v0, p2

    .line 408
    :goto_0
    return v0

    .line 394
    :pswitch_0
    const/4 v0, 0x5

    goto :goto_0

    .line 396
    :pswitch_1
    const/16 v0, 0xf

    goto :goto_0

    .line 398
    :pswitch_2
    const/16 v0, 0x3c

    goto :goto_0

    .line 400
    :pswitch_3
    const/16 v0, 0xf0

    goto :goto_0

    .line 402
    :pswitch_4
    const/16 v0, 0x2d0

    goto :goto_0

    .line 404
    :pswitch_5
    const/4 v0, -0x1

    goto :goto_0

    .line 406
    :pswitch_6
    const/4 v0, -0x2

    goto :goto_0

    .line 392
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private onSave()V
    .locals 9

    .prologue
    const/4 v8, -0x1

    .line 321
    new-instance v0, Lcom/android/exchange/SyncScheduleData;

    iget v1, p0, Lcom/android/email/activity/setup/SyncScheduleSettings;->mSyncStartTime:I

    iget v2, p0, Lcom/android/email/activity/setup/SyncScheduleSettings;->mSyncEndTime:I

    invoke-direct {p0}, Lcom/android/email/activity/setup/SyncScheduleSettings;->getPeakDays()B

    move-result v3

    iget v4, p0, Lcom/android/email/activity/setup/SyncScheduleSettings;->mPeakSchedule:I

    iget v5, p0, Lcom/android/email/activity/setup/SyncScheduleSettings;->mOffPeakSchedule:I

    iget v6, p0, Lcom/android/email/activity/setup/SyncScheduleSettings;->mRoamingSchedule:I

    invoke-direct/range {v0 .. v6}, Lcom/android/exchange/SyncScheduleData;-><init>(IIIIII)V

    .line 327
    .local v0, saveSyncScheduleData:Lcom/android/exchange/SyncScheduleData;
    invoke-virtual {p0, v8}, Lcom/android/email/activity/setup/SyncScheduleSettings;->setResult(I)V

    .line 328
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    .line 329
    .local v7, resultIntent:Landroid/content/Intent;
    const-string v1, "com.android.email.SyncScheduleExtra"

    invoke-virtual {v7, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 330
    invoke-virtual {p0, v8, v7}, Lcom/android/email/activity/setup/SyncScheduleSettings;->setResult(ILandroid/content/Intent;)V

    .line 331
    invoke-virtual {p0}, Lcom/android/email/activity/setup/SyncScheduleSettings;->finish()V

    .line 332
    return-void
.end method

.method private pad(I)Ljava/lang/String;
    .locals 2
    .parameter "c"

    .prologue
    .line 335
    const/16 v0, 0xa

    if-lt p1, v0, :cond_0

    .line 336
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 338
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private readDataFromIntent()V
    .locals 3

    .prologue
    const-string v2, "com.android.email.SyncScheduleExtra"

    .line 288
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/email/activity/setup/SyncScheduleSettings;->mSyncScheduleData:Lcom/android/exchange/SyncScheduleData;

    .line 289
    invoke-virtual {p0}, Lcom/android/email/activity/setup/SyncScheduleSettings;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.android.email.SyncScheduleExtra"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 290
    invoke-virtual {p0}, Lcom/android/email/activity/setup/SyncScheduleSettings;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.android.email.SyncScheduleExtra"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/exchange/SyncScheduleData;

    iput-object v0, p0, Lcom/android/email/activity/setup/SyncScheduleSettings;->mSyncScheduleData:Lcom/android/exchange/SyncScheduleData;

    .line 295
    :goto_0
    return-void

    .line 292
    :cond_0
    sget-object v0, Lcom/android/email/activity/setup/SyncScheduleSettings;->TAG:Ljava/lang/String;

    const-string v1, "Expecting SyncScheduleData in parcelable extra EXTRA_SCHEDULE"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    invoke-virtual {p0}, Lcom/android/email/activity/setup/SyncScheduleSettings;->finish()V

    goto :goto_0
.end method

.method private restorePeakDaysArray()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 343
    iget-object v2, p0, Lcom/android/email/activity/setup/SyncScheduleSettings;->mSyncScheduleData:Lcom/android/exchange/SyncScheduleData;

    invoke-virtual {v2}, Lcom/android/exchange/SyncScheduleData;->getPeakDay()I

    move-result v1

    .line 344
    .local v1, peakDays:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v2, 0x7

    if-ge v0, v2, :cond_1

    .line 345
    iget-object v2, p0, Lcom/android/email/activity/setup/SyncScheduleSettings;->mPeakDaysArray:[Z

    shl-int v3, v4, v0

    and-int/2addr v3, v1

    if-eqz v3, :cond_0

    move v3, v4

    :goto_1
    aput-boolean v3, v2, v0

    .line 344
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 345
    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    .line 347
    :cond_1
    return-void
.end method

.method private restoreSettings()V
    .locals 2

    .prologue
    .line 300
    iget-object v0, p0, Lcom/android/email/activity/setup/SyncScheduleSettings;->mSyncScheduleData:Lcom/android/exchange/SyncScheduleData;

    if-eqz v0, :cond_0

    .line 304
    iget-object v0, p0, Lcom/android/email/activity/setup/SyncScheduleSettings;->mSyncScheduleData:Lcom/android/exchange/SyncScheduleData;

    invoke-virtual {v0}, Lcom/android/exchange/SyncScheduleData;->getPeakSchedule()I

    move-result v0

    iput v0, p0, Lcom/android/email/activity/setup/SyncScheduleSettings;->mPeakSchedule:I

    .line 305
    iget-object v0, p0, Lcom/android/email/activity/setup/SyncScheduleSettings;->mSyncScheduleData:Lcom/android/exchange/SyncScheduleData;

    invoke-virtual {v0}, Lcom/android/exchange/SyncScheduleData;->getOffPeakSchedule()I

    move-result v0

    iput v0, p0, Lcom/android/email/activity/setup/SyncScheduleSettings;->mOffPeakSchedule:I

    .line 306
    iget-object v0, p0, Lcom/android/email/activity/setup/SyncScheduleSettings;->mSyncScheduleData:Lcom/android/exchange/SyncScheduleData;

    invoke-virtual {v0}, Lcom/android/exchange/SyncScheduleData;->getRoamingSchedule()I

    move-result v0

    iput v0, p0, Lcom/android/email/activity/setup/SyncScheduleSettings;->mRoamingSchedule:I

    .line 307
    invoke-direct {p0}, Lcom/android/email/activity/setup/SyncScheduleSettings;->restorePeakDaysArray()V

    .line 308
    iget-object v0, p0, Lcom/android/email/activity/setup/SyncScheduleSettings;->mSyncScheduleData:Lcom/android/exchange/SyncScheduleData;

    invoke-virtual {v0}, Lcom/android/exchange/SyncScheduleData;->getStartMinute()I

    move-result v0

    iput v0, p0, Lcom/android/email/activity/setup/SyncScheduleSettings;->mSyncStartTime:I

    .line 309
    iget-object v0, p0, Lcom/android/email/activity/setup/SyncScheduleSettings;->mSyncScheduleData:Lcom/android/exchange/SyncScheduleData;

    invoke-virtual {v0}, Lcom/android/exchange/SyncScheduleData;->getEndMinute()I

    move-result v0

    iput v0, p0, Lcom/android/email/activity/setup/SyncScheduleSettings;->mSyncEndTime:I

    .line 318
    :goto_0
    return-void

    .line 315
    :cond_0
    sget-object v0, Lcom/android/email/activity/setup/SyncScheduleSettings;->TAG:Ljava/lang/String;

    const-string v1, "Expecting mSyncScheduleData != null in restoreSettings()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setHoursAndMinutes(I)Landroid/util/Pair;
    .locals 5
    .parameter "syncTime"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 375
    const/4 v0, 0x0

    .line 376
    .local v0, hour:I
    const/4 v1, 0x0

    .line 377
    .local v1, minute:I
    if-nez p1, :cond_0

    .line 378
    iget-object v2, p0, Lcom/android/email/activity/setup/SyncScheduleSettings;->mCalendar:Ljava/util/Calendar;

    const/16 v3, 0xb

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 379
    iget-object v2, p0, Lcom/android/email/activity/setup/SyncScheduleSettings;->mCalendar:Ljava/util/Calendar;

    const/16 v3, 0xc

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 384
    :goto_0
    new-instance v2, Landroid/util/Pair;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v2

    .line 381
    :cond_0
    div-int/lit8 v0, p1, 0x3c

    .line 382
    rem-int/lit8 v1, p1, 0x3c

    goto :goto_0
.end method

.method private setPeakDaysButtonText(Landroid/widget/Button;)V
    .locals 6
    .parameter "peakDaysButton"

    .prologue
    .line 360
    const-string v0, ""

    .line 361
    .local v0, buttonText:Ljava/lang/String;
    const-string v2, ", "

    .line 362
    .local v2, separator:Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    const/4 v4, 0x7

    if-ge v1, v4, :cond_1

    .line 363
    iget-object v4, p0, Lcom/android/email/activity/setup/SyncScheduleSettings;->mPeakDaysArray:[Z

    aget-boolean v4, v4, v1

    if-eqz v4, :cond_0

    .line 364
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/email/activity/setup/SyncScheduleSettings;->mThreeCharDayStrings:[Ljava/lang/String;

    aget-object v5, v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 362
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 367
    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 368
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    .line 369
    .local v3, separatorLength:I
    const/4 v4, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v5, v3

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 371
    .end local v3           #separatorLength:I
    :cond_2
    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 372
    return-void
.end method

.method private setupOffPeakSchedule()V
    .locals 4

    .prologue
    .line 134
    const v2, 0x7f07016d

    invoke-virtual {p0, v2}, Lcom/android/email/activity/setup/SyncScheduleSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 135
    .local v0, offPeakButton:Landroid/widget/Button;
    iget v2, p0, Lcom/android/email/activity/setup/SyncScheduleSettings;->mOffPeakSchedule:I

    const/4 v3, 0x6

    invoke-direct {p0, v2, v3}, Lcom/android/email/activity/setup/SyncScheduleSettings;->getSchedulePosition(II)I

    move-result v1

    .line 136
    .local v1, schedulePos:I
    iget-object v2, p0, Lcom/android/email/activity/setup/SyncScheduleSettings;->mPeakStrings:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 137
    new-instance v2, Lcom/android/email/activity/setup/SyncScheduleSettings$4;

    invoke-direct {v2, p0, v1, v0}, Lcom/android/email/activity/setup/SyncScheduleSettings$4;-><init>(Lcom/android/email/activity/setup/SyncScheduleSettings;ILandroid/widget/Button;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 147
    return-void
.end method

.method private setupPeakDays()V
    .locals 2

    .prologue
    .line 150
    const v1, 0x7f07016e

    invoke-virtual {p0, v1}, Lcom/android/email/activity/setup/SyncScheduleSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 151
    .local v0, peakDaysButton:Landroid/widget/Button;
    invoke-direct {p0, v0}, Lcom/android/email/activity/setup/SyncScheduleSettings;->setPeakDaysButtonText(Landroid/widget/Button;)V

    .line 152
    new-instance v1, Lcom/android/email/activity/setup/SyncScheduleSettings$5;

    invoke-direct {v1, p0, v0}, Lcom/android/email/activity/setup/SyncScheduleSettings$5;-><init>(Lcom/android/email/activity/setup/SyncScheduleSettings;Landroid/widget/Button;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 159
    return-void
.end method

.method private setupPeakEndTime()V
    .locals 4

    .prologue
    .line 178
    iget v2, p0, Lcom/android/email/activity/setup/SyncScheduleSettings;->mSyncEndTime:I

    invoke-direct {p0, v2}, Lcom/android/email/activity/setup/SyncScheduleSettings;->setHoursAndMinutes(I)Landroid/util/Pair;

    move-result-object v0

    .line 179
    .local v0, hourMinute:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lcom/android/email/activity/setup/SyncScheduleSettings;->mEndHour:I

    .line 180
    iget-object v2, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lcom/android/email/activity/setup/SyncScheduleSettings;->mEndMinute:I

    .line 182
    const v2, 0x7f070170

    invoke-virtual {p0, v2}, Lcom/android/email/activity/setup/SyncScheduleSettings;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 183
    .local v1, peakStartTimeButton:Landroid/widget/Button;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/android/email/activity/setup/SyncScheduleSettings;->mEndHour:I

    invoke-direct {p0, v3}, Lcom/android/email/activity/setup/SyncScheduleSettings;->pad(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/email/activity/setup/SyncScheduleSettings;->mEndMinute:I

    invoke-direct {p0, v3}, Lcom/android/email/activity/setup/SyncScheduleSettings;->pad(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 185
    new-instance v2, Lcom/android/email/activity/setup/SyncScheduleSettings$7;

    invoke-direct {v2, p0, v1}, Lcom/android/email/activity/setup/SyncScheduleSettings$7;-><init>(Lcom/android/email/activity/setup/SyncScheduleSettings;Landroid/widget/Button;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 191
    return-void
.end method

.method private setupPeakSchedule()V
    .locals 4

    .prologue
    .line 118
    const v2, 0x7f07016c

    invoke-virtual {p0, v2}, Lcom/android/email/activity/setup/SyncScheduleSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 119
    .local v0, peakButton:Landroid/widget/Button;
    iget v2, p0, Lcom/android/email/activity/setup/SyncScheduleSettings;->mPeakSchedule:I

    const/4 v3, 0x5

    invoke-direct {p0, v2, v3}, Lcom/android/email/activity/setup/SyncScheduleSettings;->getSchedulePosition(II)I

    move-result v1

    .line 120
    .local v1, schedulePos:I
    iget-object v2, p0, Lcom/android/email/activity/setup/SyncScheduleSettings;->mPeakStrings:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 121
    new-instance v2, Lcom/android/email/activity/setup/SyncScheduleSettings$3;

    invoke-direct {v2, p0, v1, v0}, Lcom/android/email/activity/setup/SyncScheduleSettings$3;-><init>(Lcom/android/email/activity/setup/SyncScheduleSettings;ILandroid/widget/Button;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 131
    return-void
.end method

.method private setupPeakStartTime()V
    .locals 4

    .prologue
    .line 162
    iget v2, p0, Lcom/android/email/activity/setup/SyncScheduleSettings;->mSyncStartTime:I

    invoke-direct {p0, v2}, Lcom/android/email/activity/setup/SyncScheduleSettings;->setHoursAndMinutes(I)Landroid/util/Pair;

    move-result-object v0

    .line 163
    .local v0, hourMinute:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lcom/android/email/activity/setup/SyncScheduleSettings;->mStartHour:I

    .line 164
    iget-object v2, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lcom/android/email/activity/setup/SyncScheduleSettings;->mStartMinute:I

    .line 166
    const v2, 0x7f07016f

    invoke-virtual {p0, v2}, Lcom/android/email/activity/setup/SyncScheduleSettings;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 167
    .local v1, peakStartTimeButton:Landroid/widget/Button;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/android/email/activity/setup/SyncScheduleSettings;->mStartHour:I

    invoke-direct {p0, v3}, Lcom/android/email/activity/setup/SyncScheduleSettings;->pad(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/email/activity/setup/SyncScheduleSettings;->mStartMinute:I

    invoke-direct {p0, v3}, Lcom/android/email/activity/setup/SyncScheduleSettings;->pad(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 169
    new-instance v2, Lcom/android/email/activity/setup/SyncScheduleSettings$6;

    invoke-direct {v2, p0, v1}, Lcom/android/email/activity/setup/SyncScheduleSettings$6;-><init>(Lcom/android/email/activity/setup/SyncScheduleSettings;Landroid/widget/Button;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 175
    return-void
.end method

.method private setupRoaming()V
    .locals 5

    .prologue
    .line 194
    const v3, 0x7f070171

    invoke-virtual {p0, v3}, Lcom/android/email/activity/setup/SyncScheduleSettings;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    .line 195
    .local v2, roaming:Landroid/widget/Spinner;
    const v3, 0x7f060013

    const v4, 0x7f03004e

    invoke-static {p0, v3, v4}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v0

    .line 197
    .local v0, adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    const v3, 0x1090009

    invoke-virtual {v0, v3}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 198
    invoke-virtual {v2, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 199
    const/4 v1, 0x0

    .line 200
    .local v1, position:I
    iget v3, p0, Lcom/android/email/activity/setup/SyncScheduleSettings;->mRoamingSchedule:I

    packed-switch v3, :pswitch_data_0

    .line 205
    :goto_0
    invoke-virtual {v2, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 207
    new-instance v3, Lcom/android/email/activity/setup/SyncScheduleSettings$8;

    invoke-direct {v3, p0}, Lcom/android/email/activity/setup/SyncScheduleSettings$8;-><init>(Lcom/android/email/activity/setup/SyncScheduleSettings;)V

    invoke-virtual {v2, v3}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 223
    return-void

    .line 202
    :pswitch_0
    const/4 v1, 0x1

    goto :goto_0

    .line 200
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private showPeakDaysDialog(Landroid/widget/Button;)V
    .locals 4
    .parameter "button"

    .prologue
    .line 245
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 246
    .local v0, peakScheduleDialog:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f080201

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 247
    iget-object v1, p0, Lcom/android/email/activity/setup/SyncScheduleSettings;->mDayStrings:[Ljava/lang/String;

    iget-object v2, p0, Lcom/android/email/activity/setup/SyncScheduleSettings;->mPeakDaysArray:[Z

    new-instance v3, Lcom/android/email/activity/setup/SyncScheduleSettings$10;

    invoke-direct {v3, p0}, Lcom/android/email/activity/setup/SyncScheduleSettings$10;-><init>(Lcom/android/email/activity/setup/SyncScheduleSettings;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Landroid/app/AlertDialog$Builder;

    .line 254
    const v1, 0x7f080206

    new-instance v2, Lcom/android/email/activity/setup/SyncScheduleSettings$11;

    invoke-direct {v2, p0, p1}, Lcom/android/email/activity/setup/SyncScheduleSettings$11;-><init>(Lcom/android/email/activity/setup/SyncScheduleSettings;Landroid/widget/Button;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 260
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 261
    return-void
.end method

.method private showPeakScheduleDialog(Ljava/lang/String;ILandroid/widget/Button;Z)V
    .locals 3
    .parameter "title"
    .parameter "index"
    .parameter "button"
    .parameter "peakOn"

    .prologue
    .line 226
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 227
    .local v0, peakScheduleDialog:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 228
    const v1, 0x7f060011

    new-instance v2, Lcom/android/email/activity/setup/SyncScheduleSettings$9;

    invoke-direct {v2, p0, p3, p4}, Lcom/android/email/activity/setup/SyncScheduleSettings$9;-><init>(Lcom/android/email/activity/setup/SyncScheduleSettings;Landroid/widget/Button;Z)V

    invoke-virtual {v0, v1, p2, v2}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 241
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 242
    return-void
.end method

.method private showTimePickerDialog(Landroid/widget/Button;Z)V
    .locals 6
    .parameter "button"
    .parameter "isStartTime"

    .prologue
    .line 265
    iget v3, p0, Lcom/android/email/activity/setup/SyncScheduleSettings;->mEndHour:I

    .line 266
    .local v3, hour:I
    iget v4, p0, Lcom/android/email/activity/setup/SyncScheduleSettings;->mEndMinute:I

    .line 267
    .local v4, minute:I
    if-eqz p2, :cond_0

    .line 268
    iget v3, p0, Lcom/android/email/activity/setup/SyncScheduleSettings;->mStartHour:I

    .line 269
    iget v4, p0, Lcom/android/email/activity/setup/SyncScheduleSettings;->mStartMinute:I

    .line 272
    :cond_0
    new-instance v0, Landroid/app/TimePickerDialog;

    new-instance v2, Lcom/android/email/activity/setup/SyncScheduleSettings$12;

    invoke-direct {v2, p0, p1, p2}, Lcom/android/email/activity/setup/SyncScheduleSettings$12;-><init>(Lcom/android/email/activity/setup/SyncScheduleSettings;Landroid/widget/Button;Z)V

    const/4 v5, 0x1

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/app/TimePickerDialog;-><init>(Landroid/content/Context;Landroid/app/TimePickerDialog$OnTimeSetListener;IIZ)V

    .line 284
    .local v0, timePicker:Landroid/app/TimePickerDialog;
    invoke-virtual {v0}, Landroid/app/TimePickerDialog;->show()V

    .line 285
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 80
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 81
    const v0, 0x7f03004d

    invoke-virtual {p0, v0}, Lcom/android/email/activity/setup/SyncScheduleSettings;->setContentView(I)V

    .line 83
    invoke-virtual {p0}, Lcom/android/email/activity/setup/SyncScheduleSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060011

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/setup/SyncScheduleSettings;->mPeakStrings:[Ljava/lang/String;

    .line 84
    invoke-virtual {p0}, Lcom/android/email/activity/setup/SyncScheduleSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06000e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/setup/SyncScheduleSettings;->mDayStrings:[Ljava/lang/String;

    .line 85
    invoke-virtual {p0}, Lcom/android/email/activity/setup/SyncScheduleSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060010

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/setup/SyncScheduleSettings;->mThreeCharDayStrings:[Ljava/lang/String;

    .line 87
    invoke-direct {p0}, Lcom/android/email/activity/setup/SyncScheduleSettings;->readDataFromIntent()V

    .line 89
    invoke-direct {p0}, Lcom/android/email/activity/setup/SyncScheduleSettings;->restoreSettings()V

    .line 91
    invoke-direct {p0}, Lcom/android/email/activity/setup/SyncScheduleSettings;->setupPeakSchedule()V

    .line 92
    invoke-direct {p0}, Lcom/android/email/activity/setup/SyncScheduleSettings;->setupOffPeakSchedule()V

    .line 93
    invoke-direct {p0}, Lcom/android/email/activity/setup/SyncScheduleSettings;->setupPeakDays()V

    .line 94
    invoke-direct {p0}, Lcom/android/email/activity/setup/SyncScheduleSettings;->setupPeakStartTime()V

    .line 95
    invoke-direct {p0}, Lcom/android/email/activity/setup/SyncScheduleSettings;->setupPeakEndTime()V

    .line 96
    invoke-direct {p0}, Lcom/android/email/activity/setup/SyncScheduleSettings;->setupRoaming()V

    .line 98
    const v0, 0x7f070172

    invoke-virtual {p0, v0}, Lcom/android/email/activity/setup/SyncScheduleSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/android/email/activity/setup/SyncScheduleSettings$1;

    invoke-direct {v1, p0}, Lcom/android/email/activity/setup/SyncScheduleSettings$1;-><init>(Lcom/android/email/activity/setup/SyncScheduleSettings;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 107
    const v0, 0x7f070173

    invoke-virtual {p0, v0}, Lcom/android/email/activity/setup/SyncScheduleSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/android/email/activity/setup/SyncScheduleSettings$2;

    invoke-direct {v1, p0}, Lcom/android/email/activity/setup/SyncScheduleSettings$2;-><init>(Lcom/android/email/activity/setup/SyncScheduleSettings;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    return-void
.end method
