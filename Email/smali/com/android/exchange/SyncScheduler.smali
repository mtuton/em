.class public Lcom/android/exchange/SyncScheduler;
.super Ljava/lang/Object;
.source "SyncScheduler.java"


# static fields
.field private static final sCalendar:Ljava/util/Calendar;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    sput-object v0, Lcom/android/exchange/SyncScheduler;->sCalendar:Ljava/util/Calendar;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 150
    return-void
.end method

.method public static getIsPeakAndNextAlarm(Lcom/android/exchange/SyncScheduleData;)Landroid/util/Pair;
    .locals 9
    .parameter "syncScheduleData"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/exchange/SyncScheduleData;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 15
    const/4 v1, 0x0

    .line 17
    .local v1, isPeak:Z
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 18
    .local v0, date:Ljava/util/Date;
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    .line 20
    .local v4, now:J
    const-wide/16 v2, 0x0

    .line 21
    .local v2, nextAlarm:J
    invoke-virtual {p0}, Lcom/android/exchange/SyncScheduleData;->getStartMinute()I

    move-result v3

    .line 22
    .end local v2           #nextAlarm:J
    .local v3, peakStartMinute:I
    invoke-virtual {p0}, Lcom/android/exchange/SyncScheduleData;->getEndMinute()I

    move-result v2

    .line 24
    .local v2, offPeakStartMinute:I
    invoke-static {v0, v3}, Lcom/android/exchange/SyncScheduler;->getMinuteInMillis(Ljava/util/Date;I)J

    move-result-wide v6

    .line 26
    .local v6, peakTime:J
    invoke-static {v0, v2}, Lcom/android/exchange/SyncScheduler;->getMinuteInMillis(Ljava/util/Date;I)J

    move-result-wide v2

    .line 29
    .end local v3           #peakStartMinute:I
    .local v2, offPeakTime:J
    sub-long/2addr v6, v4

    .line 30
    .local v6, millisToPeakTimeStart:J
    sub-long v4, v2, v4

    .line 31
    .local v4, millisToPeakTimeEnd:J
    const-wide/16 v2, 0x0

    .line 36
    .local v2, millisToNextAlarm:J
    invoke-static {p0}, Lcom/android/exchange/SyncScheduler;->getPeakDays(Lcom/android/exchange/SyncScheduleData;)Ljava/util/ArrayList;

    move-result-object v2

    .line 38
    .local v2, peakDaysArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    sget-object p0, Lcom/android/exchange/SyncScheduler;->sCalendar:Ljava/util/Calendar;

    .end local p0
    invoke-virtual {p0, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 39
    const/4 p0, 0x1

    .line 40
    .local p0, isPeakDay:Z
    invoke-virtual {v2}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v0

    .end local v0           #date:Ljava/util/Date;
    sget-object v3, Lcom/android/exchange/SyncScheduler;->sCalendar:Ljava/util/Calendar;

    const/4 v8, 0x7

    invoke-virtual {v3, v8}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0, v3}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_0

    .line 41
    const/4 p0, 0x0

    .line 44
    :cond_0
    sget-object v0, Lcom/android/exchange/SyncScheduler;->sCalendar:Ljava/util/Calendar;

    const/4 v3, 0x5

    const/4 v8, -0x1

    invoke-virtual {v0, v3, v8}, Ljava/util/Calendar;->add(II)V

    .line 45
    const/4 v0, 0x1

    .line 46
    .local v0, isYesterdayPeakDay:Z
    invoke-virtual {v2}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v2

    .end local v2           #peakDaysArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    sget-object v3, Lcom/android/exchange/SyncScheduler;->sCalendar:Ljava/util/Calendar;

    const/4 v8, 0x7

    invoke-virtual {v3, v8}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    if-gez v2, :cond_1

    .line 47
    const/4 v0, 0x0

    .line 51
    :cond_1
    cmp-long v2, v6, v4

    if-nez v2, :cond_3

    .line 53
    const-wide/16 v2, 0x0

    cmp-long v2, v4, v2

    if-lez v2, :cond_2

    .line 55
    if-eqz v0, :cond_b

    .line 56
    const/4 p0, 0x1

    .line 60
    .end local v1           #isPeak:Z
    .local p0, isPeak:Z
    :goto_0
    move-wide v0, v4

    .local v0, millisToNextAlarm:J
    move-wide v2, v4

    .line 107
    .end local v4           #millisToPeakTimeEnd:J
    .local v2, millisToPeakTimeEnd:J
    :goto_1
    move-wide v0, v0

    .line 109
    .local v0, nextAlarm:J
    new-instance v2, Landroid/util/Pair;

    .end local v2           #millisToPeakTimeEnd:J
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    .end local p0           #isPeak:Z
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .end local v0           #nextAlarm:J
    invoke-direct {v2, p0, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v2

    .line 63
    .local v0, isYesterdayPeakDay:Z
    .restart local v1       #isPeak:Z
    .restart local v4       #millisToPeakTimeEnd:J
    .local p0, isPeakDay:Z
    :cond_2
    if-eqz p0, :cond_a

    .line 64
    const/4 p0, 0x1

    .line 68
    .end local v1           #isPeak:Z
    .local p0, isPeak:Z
    :goto_2
    const-wide/32 v0, 0x5265c00

    add-long/2addr v0, v6

    .local v0, millisToNextAlarm:J
    move-wide v2, v4

    .end local v4           #millisToPeakTimeEnd:J
    .restart local v2       #millisToPeakTimeEnd:J
    goto :goto_1

    .line 70
    .end local v2           #millisToPeakTimeEnd:J
    .local v0, isYesterdayPeakDay:Z
    .restart local v1       #isPeak:Z
    .restart local v4       #millisToPeakTimeEnd:J
    .local p0, isPeakDay:Z
    :cond_3
    const-wide/16 v2, 0x0

    cmp-long v2, v6, v2

    if-gtz v2, :cond_6

    .line 74
    cmp-long v0, v4, v6

    if-gez v0, :cond_4

    .line 75
    .end local v0           #isYesterdayPeakDay:Z
    const-wide/32 v2, 0x5265c00

    add-long/2addr v2, v4

    .end local v4           #millisToPeakTimeEnd:J
    .restart local v2       #millisToPeakTimeEnd:J
    move-wide v4, v2

    .line 78
    .end local v2           #millisToPeakTimeEnd:J
    .restart local v4       #millisToPeakTimeEnd:J
    :cond_4
    const-wide/16 v2, 0x0

    cmp-long v0, v4, v2

    if-lez v0, :cond_5

    .line 80
    if-eqz p0, :cond_9

    .line 81
    const/4 p0, 0x1

    .line 85
    .end local v1           #isPeak:Z
    .local p0, isPeak:Z
    :goto_3
    move-wide v0, v4

    .local v0, millisToNextAlarm:J
    move-wide v2, v4

    .end local v4           #millisToPeakTimeEnd:J
    .restart local v2       #millisToPeakTimeEnd:J
    goto :goto_1

    .line 88
    .end local v0           #millisToNextAlarm:J
    .end local v2           #millisToPeakTimeEnd:J
    .restart local v1       #isPeak:Z
    .restart local v4       #millisToPeakTimeEnd:J
    .local p0, isPeakDay:Z
    :cond_5
    const-wide/32 v2, 0x5265c00

    add-long/2addr v2, v6

    .local v2, millisToNextAlarm:J
    move p0, v1

    .end local v1           #isPeak:Z
    .local p0, isPeak:Z
    move-wide v0, v2

    .end local v2           #millisToNextAlarm:J
    .restart local v0       #millisToNextAlarm:J
    move-wide v2, v4

    .end local v4           #millisToPeakTimeEnd:J
    .local v2, millisToPeakTimeEnd:J
    goto :goto_1

    .line 90
    .end local v2           #millisToPeakTimeEnd:J
    .local v0, isYesterdayPeakDay:Z
    .restart local v1       #isPeak:Z
    .restart local v4       #millisToPeakTimeEnd:J
    .local p0, isPeakDay:Z
    :cond_6
    const-wide/16 v2, 0x0

    cmp-long p0, v4, v2

    if-lez p0, :cond_7

    .end local p0           #isPeakDay:Z
    cmp-long p0, v4, v6

    if-gez p0, :cond_7

    .line 94
    if-eqz v0, :cond_8

    .line 95
    const/4 p0, 0x1

    .line 99
    .end local v1           #isPeak:Z
    .local p0, isPeak:Z
    :goto_4
    move-wide v0, v4

    .local v0, millisToNextAlarm:J
    move-wide v2, v4

    .end local v4           #millisToPeakTimeEnd:J
    .restart local v2       #millisToPeakTimeEnd:J
    goto :goto_1

    .line 104
    .end local v2           #millisToPeakTimeEnd:J
    .end local p0           #isPeak:Z
    .local v0, isYesterdayPeakDay:Z
    .restart local v1       #isPeak:Z
    .restart local v4       #millisToPeakTimeEnd:J
    :cond_7
    move-wide v2, v6

    .local v2, millisToNextAlarm:J
    move p0, v1

    .end local v1           #isPeak:Z
    .restart local p0       #isPeak:Z
    move-wide v0, v2

    .end local v2           #millisToNextAlarm:J
    .local v0, millisToNextAlarm:J
    move-wide v2, v4

    .end local v4           #millisToPeakTimeEnd:J
    .local v2, millisToPeakTimeEnd:J
    goto :goto_1

    .end local v2           #millisToPeakTimeEnd:J
    .end local p0           #isPeak:Z
    .local v0, isYesterdayPeakDay:Z
    .restart local v1       #isPeak:Z
    .restart local v4       #millisToPeakTimeEnd:J
    :cond_8
    move p0, v1

    .end local v1           #isPeak:Z
    .restart local p0       #isPeak:Z
    goto :goto_4

    .end local v0           #isYesterdayPeakDay:Z
    .restart local v1       #isPeak:Z
    .local p0, isPeakDay:Z
    :cond_9
    move p0, v1

    .end local v1           #isPeak:Z
    .local p0, isPeak:Z
    goto :goto_3

    .restart local v0       #isYesterdayPeakDay:Z
    .restart local v1       #isPeak:Z
    .local p0, isPeakDay:Z
    :cond_a
    move p0, v1

    .end local v1           #isPeak:Z
    .local p0, isPeak:Z
    goto :goto_2

    .restart local v1       #isPeak:Z
    .local p0, isPeakDay:Z
    :cond_b
    move p0, v1

    .end local v1           #isPeak:Z
    .local p0, isPeak:Z
    goto :goto_0
.end method

.method private static getMinuteInMillis(Ljava/util/Date;I)J
    .locals 5
    .parameter "date"
    .parameter "minute"

    .prologue
    const/4 v4, 0x0

    .line 138
    sget-object v2, Lcom/android/exchange/SyncScheduler;->sCalendar:Ljava/util/Calendar;

    invoke-virtual {v2, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 139
    div-int/lit8 v0, p1, 0x3c

    .line 140
    .local v0, hr:I
    rem-int/lit8 v1, p1, 0x3c

    .line 141
    .local v1, min:I
    sget-object v2, Lcom/android/exchange/SyncScheduler;->sCalendar:Ljava/util/Calendar;

    const/16 v3, 0xb

    invoke-virtual {v2, v3, v0}, Ljava/util/Calendar;->set(II)V

    .line 142
    sget-object v2, Lcom/android/exchange/SyncScheduler;->sCalendar:Ljava/util/Calendar;

    const/16 v3, 0xc

    invoke-virtual {v2, v3, v1}, Ljava/util/Calendar;->set(II)V

    .line 143
    sget-object v2, Lcom/android/exchange/SyncScheduler;->sCalendar:Ljava/util/Calendar;

    const/16 v3, 0xd

    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->set(II)V

    .line 144
    sget-object v2, Lcom/android/exchange/SyncScheduler;->sCalendar:Ljava/util/Calendar;

    const/16 v3, 0xe

    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->set(II)V

    .line 145
    sget-object v2, Lcom/android/exchange/SyncScheduler;->sCalendar:Ljava/util/Calendar;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    return-wide v2
.end method

.method private static getPeakDays(Lcom/android/exchange/SyncScheduleData;)Ljava/util/ArrayList;
    .locals 9
    .parameter "syncSchedulerData"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/exchange/SyncScheduleData;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x7

    .line 114
    invoke-virtual {p0}, Lcom/android/exchange/SyncScheduleData;->getPeakDay()I

    move-result v5

    .line 115
    .local v5, peakDays:I
    const/4 v3, 0x1

    .line 116
    .local v3, mask:I
    const/4 v4, 0x0

    .line 117
    .local v4, numberOfPeakDays:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v8, :cond_1

    .line 118
    and-int v7, v5, v3

    if-eqz v7, :cond_0

    .line 119
    add-int/lit8 v4, v4, 0x1

    .line 121
    :cond_0
    shl-int/lit8 v3, v3, 0x1

    .line 117
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 125
    :cond_1
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 126
    .local v6, peakDaysArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v3, 0x1

    .line 127
    const/4 v1, 0x0

    .line 128
    .local v1, j:I
    const/4 v0, 0x0

    move v2, v1

    .end local v1           #j:I
    .local v2, j:I
    :goto_1
    if-ge v0, v8, :cond_2

    .line 129
    and-int v7, v5, v3

    if-eqz v7, :cond_3

    .line 130
    add-int/lit8 v1, v2, 0x1

    .end local v2           #j:I
    .restart local v1       #j:I
    add-int/lit8 v7, v0, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v2, v7}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 132
    :goto_2
    shl-int/lit8 v3, v3, 0x1

    .line 128
    add-int/lit8 v0, v0, 0x1

    move v2, v1

    .end local v1           #j:I
    .restart local v2       #j:I
    goto :goto_1

    .line 134
    :cond_2
    return-object v6

    :cond_3
    move v1, v2

    .end local v2           #j:I
    .restart local v1       #j:I
    goto :goto_2
.end method
