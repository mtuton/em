.class public Lcom/android/exchange/utility/CalendarUtilities;
.super Ljava/lang/Object;
.source "CalendarUtilities.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/exchange/utility/CalendarUtilities$RRule;,
        Lcom/android/exchange/utility/CalendarUtilities$TimeZoneDate;
    }
.end annotation


# static fields
.field public static final BUSY_STATUS_BUSY:I = 0x2

.field public static final BUSY_STATUS_FREE:I = 0x0

.field public static final BUSY_STATUS_OUT_OF_OFFICE:I = 0x3

.field public static final BUSY_STATUS_TENTATIVE:I = 0x1

.field static final DAYS:J = 0x5265c00L

.field static final HOURS:I = 0x36ee80

.field private static final ICALENDAR_ATTENDEE:Ljava/lang/String; = "ATTENDEE;ROLE=REQ-PARTICIPANT"

.field static final ICALENDAR_ATTENDEE_ACCEPT:Ljava/lang/String; = "ATTENDEE;ROLE=REQ-PARTICIPANT;PARTSTAT=ACCEPTED"

.field static final ICALENDAR_ATTENDEE_CANCEL:Ljava/lang/String; = "ATTENDEE;ROLE=REQ-PARTICIPANT"

.field static final ICALENDAR_ATTENDEE_DECLINE:Ljava/lang/String; = "ATTENDEE;ROLE=REQ-PARTICIPANT;PARTSTAT=DECLINED"

.field static final ICALENDAR_ATTENDEE_INVITE:Ljava/lang/String; = "ATTENDEE;ROLE=REQ-PARTICIPANT;PARTSTAT=NEEDS-ACTION;RSVP=TRUE"

.field static final ICALENDAR_ATTENDEE_TENTATIVE:Ljava/lang/String; = "ATTENDEE;ROLE=REQ-PARTICIPANT;PARTSTAT=TENTATIVE"

.field static final MINUTES:I = 0xea60

.field static final MSFT_LONG_SIZE:I = 0x4

.field static final MSFT_SYSTEMTIME_DAY:I = 0x6

.field static final MSFT_SYSTEMTIME_DAY_OF_WEEK:I = 0x4

.field static final MSFT_SYSTEMTIME_HOUR:I = 0x8

.field static final MSFT_SYSTEMTIME_MINUTE:I = 0xa

.field static final MSFT_SYSTEMTIME_MONTH:I = 0x2

.field static final MSFT_SYSTEMTIME_SIZE:I = 0x10

.field static final MSFT_SYSTEMTIME_YEAR:I = 0x0

.field static final MSFT_TIME_ZONE_BIAS_OFFSET:I = 0x0

.field static final MSFT_TIME_ZONE_DAYLIGHT_BIAS_OFFSET:I = 0xa8

.field static final MSFT_TIME_ZONE_DAYLIGHT_DATE_OFFSET:I = 0x98

.field static final MSFT_TIME_ZONE_DAYLIGHT_NAME_OFFSET:I = 0x58

.field static final MSFT_TIME_ZONE_SIZE:I = 0xac

.field static final MSFT_TIME_ZONE_STANDARD_BIAS_OFFSET:I = 0x54

.field static final MSFT_TIME_ZONE_STANDARD_DATE_OFFSET:I = 0x44

.field static final MSFT_TIME_ZONE_STANDARD_NAME_OFFSET:I = 0x4

.field static final MSFT_WCHAR_SIZE:I = 0x2

.field static final MSFT_WORD_SIZE:I = 0x2

.field static final SECONDS:I = 0x3e8

.field private static final TAG:Ljava/lang/String; = "CalendarUtility"

.field private static final UTC_TIMEZONE:Ljava/util/TimeZone;

.field private static mMinutes:I

.field static final sCurrentYear:I

.field static final sDayTokens:[Ljava/lang/String;

.field static final sGmtTimeZone:Ljava/util/TimeZone;

.field private static sTimeZoneCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/TimeZone;",
            ">;"
        }
    .end annotation
.end field

.field static final sTwoCharacterNumbers:[Ljava/lang/String;

.field static final sTypeToFreq:[Ljava/lang/String;

.field private static sTziStringCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/util/TimeZone;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 117
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/exchange/utility/CalendarUtilities;->sTimeZoneCache:Ljava/util/HashMap;

    .line 119
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/exchange/utility/CalendarUtilities;->sTziStringCache:Ljava/util/HashMap;

    .line 121
    const-string v0, "UTC"

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    sput-object v0, Lcom/android/exchange/utility/CalendarUtilities;->UTC_TIMEZONE:Ljava/util/TimeZone;

    .line 124
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "DAILY"

    aput-object v1, v0, v3

    const-string v1, "WEEKLY"

    aput-object v1, v0, v4

    const-string v1, "MONTHLY"

    aput-object v1, v0, v5

    const-string v1, "MONTHLY"

    aput-object v1, v0, v6

    const-string v1, ""

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "YEARLY"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "YEARLY"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/exchange/utility/CalendarUtilities;->sTypeToFreq:[Ljava/lang/String;

    .line 127
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "SU"

    aput-object v1, v0, v3

    const-string v1, "MO"

    aput-object v1, v0, v4

    const-string v1, "TU"

    aput-object v1, v0, v5

    const-string v1, "WE"

    aput-object v1, v0, v6

    const-string v1, "TH"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "FR"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "SA"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/exchange/utility/CalendarUtilities;->sDayTokens:[Ljava/lang/String;

    .line 130
    const/16 v0, 0xd

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "00"

    aput-object v1, v0, v3

    const-string v1, "01"

    aput-object v1, v0, v4

    const-string v1, "02"

    aput-object v1, v0, v5

    const-string v1, "03"

    aput-object v1, v0, v6

    const-string v1, "04"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "05"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "06"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "07"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "08"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "09"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "10"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "11"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "12"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/exchange/utility/CalendarUtilities;->sTwoCharacterNumbers:[Ljava/lang/String;

    .line 133
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    invoke-virtual {v0, v4}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v0

    sput v0, Lcom/android/exchange/utility/CalendarUtilities;->sCurrentYear:I

    .line 134
    const-string v0, "GMT"

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    sput-object v0, Lcom/android/exchange/utility/CalendarUtilities;->sGmtTimeZone:Ljava/util/TimeZone;

    .line 158
    sput v3, Lcom/android/exchange/utility/CalendarUtilities;->mMinutes:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 349
    return-void
.end method

.method private static addAttendeeToMessage(Lcom/android/exchange/utility/SimpleIcsWriter;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;ILcom/android/email/provider/EmailContent$Account;)V
    .locals 5
    .parameter "ics"
    .parameter
    .parameter "attendeeName"
    .parameter "attendeeEmail"
    .parameter "messageFlag"
    .parameter "account"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/exchange/utility/SimpleIcsWriter;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/email/mail/Address;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Lcom/android/email/provider/EmailContent$Account;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, toList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/email/mail/Address;>;"
    const-string v4, "MAILTO:"

    const-string v2, ";CN="

    .line 1355
    and-int/lit8 v1, p4, 0x30

    if-eqz v1, :cond_4

    .line 1356
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "ATTENDEE;ROLE=REQ-PARTICIPANT;PARTSTAT=NEEDS-ACTION;RSVP=TRUE"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 1357
    .local v0, icalTag:Ljava/lang/StringBuffer;
    and-int/lit8 v1, p4, 0x20

    if-eqz v1, :cond_0

    .line 1358
    new-instance v0, Ljava/lang/StringBuffer;

    .end local v0           #icalTag:Ljava/lang/StringBuffer;
    const-string v1, "ATTENDEE;ROLE=REQ-PARTICIPANT"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 1360
    .restart local v0       #icalTag:Ljava/lang/StringBuffer;
    :cond_0
    if-eqz p2, :cond_1

    .line 1361
    const-string v1, ";CN="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-static {p2}, Lcom/android/exchange/utility/SimpleIcsWriter;->quoteParamValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1363
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MAILTO:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/android/exchange/utility/SimpleIcsWriter;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 1364
    if-nez p2, :cond_3

    new-instance v1, Lcom/android/email/mail/Address;

    invoke-direct {v1, p3}, Lcom/android/email/mail/Address;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1386
    .end local v0           #icalTag:Ljava/lang/StringBuffer;
    :cond_2
    :goto_1
    return-void

    .line 1364
    .restart local v0       #icalTag:Ljava/lang/StringBuffer;
    :cond_3
    new-instance v1, Lcom/android/email/mail/Address;

    invoke-direct {v1, p3, p2}, Lcom/android/email/mail/Address;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1366
    .end local v0           #icalTag:Ljava/lang/StringBuffer;
    :cond_4
    iget-object v1, p5, Lcom/android/email/provider/EmailContent$Account;->mEmailAddress:Ljava/lang/String;

    invoke-virtual {p3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1367
    const/4 v0, 0x0

    .line 1368
    .restart local v0       #icalTag:Ljava/lang/StringBuffer;
    sparse-switch p4, :sswitch_data_0

    .line 1379
    :goto_2
    if-eqz v0, :cond_2

    .line 1380
    if-eqz p2, :cond_5

    .line 1381
    const-string v1, ";CN="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-static {p2}, Lcom/android/exchange/utility/SimpleIcsWriter;->quoteParamValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1383
    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MAILTO:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/android/exchange/utility/SimpleIcsWriter;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1370
    :sswitch_0
    new-instance v0, Ljava/lang/StringBuffer;

    .end local v0           #icalTag:Ljava/lang/StringBuffer;
    const-string v1, "ATTENDEE;ROLE=REQ-PARTICIPANT;PARTSTAT=ACCEPTED"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 1371
    .restart local v0       #icalTag:Ljava/lang/StringBuffer;
    goto :goto_2

    .line 1373
    :sswitch_1
    new-instance v0, Ljava/lang/StringBuffer;

    .end local v0           #icalTag:Ljava/lang/StringBuffer;
    const-string v1, "ATTENDEE;ROLE=REQ-PARTICIPANT;PARTSTAT=DECLINED"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 1374
    .restart local v0       #icalTag:Ljava/lang/StringBuffer;
    goto :goto_2

    .line 1376
    :sswitch_2
    new-instance v0, Ljava/lang/StringBuffer;

    .end local v0           #icalTag:Ljava/lang/StringBuffer;
    const-string v1, "ATTENDEE;ROLE=REQ-PARTICIPANT;PARTSTAT=TENTATIVE"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .restart local v0       #icalTag:Ljava/lang/StringBuffer;
    goto :goto_2

    .line 1368
    :sswitch_data_0
    .sparse-switch
        0x40 -> :sswitch_0
        0x80 -> :sswitch_1
        0x100 -> :sswitch_2
    .end sparse-switch
.end method

.method static addByDay(Ljava/lang/StringBuilder;II)V
    .locals 4
    .parameter "rrule"
    .parameter "dow"
    .parameter "wom"

    .prologue
    .line 944
    const-string v2, ";BYDAY="

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 945
    const/4 v0, 0x0

    .line 946
    .local v0, addComma:Z
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    const/4 v2, 0x7

    if-ge v1, v2, :cond_4

    .line 947
    and-int/lit8 v2, p1, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 948
    if-eqz v0, :cond_0

    .line 949
    const/16 v2, 0x2c

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 951
    :cond_0
    if-lez p2, :cond_1

    .line 954
    const/4 v2, 0x5

    if-ne p2, v2, :cond_3

    const/4 v2, -0x1

    :goto_1
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 956
    :cond_1
    sget-object v2, Lcom/android/exchange/utility/CalendarUtilities;->sDayTokens:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 957
    const/4 v0, 0x1

    .line 959
    :cond_2
    shr-int/lit8 p1, p1, 0x1

    .line 946
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    move v2, p2

    .line 954
    goto :goto_1

    .line 961
    :cond_4
    return-void
.end method

.method static addByMonthDay(Ljava/lang/StringBuilder;I)V
    .locals 2
    .parameter "rrule"
    .parameter "dom"

    .prologue
    .line 965
    const/16 v0, 0x7f

    if-ne p1, v0, :cond_0

    .line 966
    const/4 p1, -0x1

    .line 968
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ";BYMONTHDAY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 969
    return-void
.end method

.method static addUntil(Ljava/lang/String;Lcom/android/exchange/adapter/Serializer;)V
    .locals 3
    .parameter "rrule"
    .parameter "s"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1027
    const-string v1, "UNTIL="

    invoke-static {p0, v1}, Lcom/android/exchange/utility/CalendarUtilities;->tokenFromRrule(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1028
    .local v0, until:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 1029
    const/16 v1, 0x11d

    invoke-static {v0}, Lcom/android/exchange/utility/CalendarUtilities;->recurrenceUntilToEasUntil(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 1031
    :cond_0
    return-void
.end method

.method public static attendeeStatusFromBusyStatus(I)I
    .locals 1
    .parameter "busyStatus"

    .prologue
    .line 1268
    packed-switch p0, :pswitch_data_0

    .line 1278
    const/4 v0, 0x0

    .line 1280
    .local v0, attendeeStatus:I
    :goto_0
    return v0

    .line 1270
    .end local v0           #attendeeStatus:I
    :pswitch_0
    const/4 v0, 0x1

    .line 1271
    .restart local v0       #attendeeStatus:I
    goto :goto_0

    .line 1273
    .end local v0           #attendeeStatus:I
    :pswitch_1
    const/4 v0, 0x4

    .line 1274
    .restart local v0       #attendeeStatus:I
    goto :goto_0

    .line 1268
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static buildMessageTextFromEntityValues(Landroid/content/Context;Landroid/content/ContentValues;Ljava/lang/StringBuilder;)Ljava/lang/String;
    .locals 10
    .parameter "context"
    .parameter "entityValues"
    .parameter "sb"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const-string v9, "eventLocation"

    .line 1309
    if-nez p2, :cond_0

    .line 1310
    new-instance p2, Ljava/lang/StringBuilder;

    .end local p2
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1312
    .restart local p2
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 1313
    .local v4, resources:Landroid/content/res/Resources;
    new-instance v0, Ljava/util/Date;

    const-string v5, "dtstart"

    invoke-virtual {p1, v5}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-direct {v0, v5, v6}, Ljava/util/Date;-><init>(J)V

    .line 1314
    .local v0, date:Ljava/util/Date;
    invoke-static {}, Ljava/text/DateFormat;->getDateTimeInstance()Ljava/text/DateFormat;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 1321
    .local v1, dateTimeString:Ljava/lang/String;
    const-string v5, "originalEvent"

    invoke-virtual {p1, v5}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string v5, "rrule"

    invoke-virtual {p1, v5}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1323
    const v5, 0x7f08017a

    new-array v6, v8, [Ljava/lang/Object;

    aput-object v1, v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1327
    :goto_0
    const/4 v3, 0x0

    .line 1328
    .local v3, location:Ljava/lang/String;
    const-string v5, "eventLocation"

    invoke-virtual {p1, v9}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1329
    const-string v5, "eventLocation"

    invoke-virtual {p1, v9}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1330
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 1331
    const-string v5, "\n"

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1332
    const v5, 0x7f080179

    new-array v6, v8, [Ljava/lang/Object;

    aput-object v3, v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1336
    :cond_1
    const-string v5, "description"

    invoke-virtual {p1, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1337
    .local v2, desc:Ljava/lang/String;
    if-eqz v2, :cond_2

    .line 1338
    const-string v5, "\n--\n"

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1339
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1341
    :cond_2
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 1325
    .end local v2           #desc:Ljava/lang/String;
    .end local v3           #location:Ljava/lang/String;
    :cond_3
    const v5, 0x7f080178

    new-array v6, v8, [Ljava/lang/Object;

    aput-object v1, v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public static busyStatusFromAttendeeStatus(I)I
    .locals 1
    .parameter "selfAttendeeStatus"

    .prologue
    .line 1290
    packed-switch p0, :pswitch_data_0

    .line 1301
    :pswitch_0
    const/4 v0, 0x2

    .line 1304
    .local v0, busyStatus:I
    :goto_0
    return v0

    .line 1294
    .end local v0           #busyStatus:I
    :pswitch_1
    const/4 v0, 0x0

    .line 1295
    .restart local v0       #busyStatus:I
    goto :goto_0

    .line 1297
    .end local v0           #busyStatus:I
    :pswitch_2
    const/4 v0, 0x1

    .line 1298
    .restart local v0       #busyStatus:I
    goto :goto_0

    .line 1290
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static convertEmailDateTimeToCalendarDateTime(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "date"

    .prologue
    .line 813
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x5

    const/4 v2, 0x7

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x8

    const/16 v2, 0xd

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0xe

    const/16 v2, 0x10

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x11

    const/16 v2, 0x13

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x5a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static createCalendar(Lcom/android/exchange/EasSyncService;Lcom/android/email/provider/EmailContent$Account;Lcom/android/email/provider/EmailContent$Mailbox;)J
    .locals 8
    .parameter "service"
    .parameter "account"
    .parameter "mailbox"

    .prologue
    const/4 v5, 0x0

    const/4 v7, 0x1

    .line 1196
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1198
    .local v0, cv:Landroid/content/ContentValues;
    const-string v3, "displayName"

    iget-object v4, p1, Lcom/android/email/provider/EmailContent$Account;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1199
    const-string v3, "_sync_account"

    iget-object v4, p1, Lcom/android/email/provider/EmailContent$Account;->mEmailAddress:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1200
    const-string v3, "_sync_account_type"

    const-string v4, "com.android.exchange"

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1201
    const-string v3, "sync_events"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1202
    const-string v3, "selected"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1203
    const-string v3, "hidden"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1205
    const-string v3, "organizerCanRespond"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1209
    const-string v3, "color"

    const/high16 v4, -0x100

    iget-wide v5, p1, Lcom/android/email/provider/EmailContent$Account;->mId:J

    invoke-static {v5, v6}, Lcom/android/email/Email;->getAccountColor(J)I

    move-result v5

    or-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1210
    const-string v3, "timezone"

    invoke-static {}, Landroid/text/format/Time;->getCurrentTimezone()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1211
    const-string v3, "access_level"

    const/16 v4, 0x2bc

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1212
    const-string v3, "ownerAccount"

    iget-object v4, p1, Lcom/android/email/provider/EmailContent$Account;->mEmailAddress:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1214
    iget-object v3, p0, Lcom/android/exchange/EasSyncService;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v4, Landroid/provider/Calendar$Calendars;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v2

    .line 1216
    .local v2, uri:Landroid/net/Uri;
    if-eqz v2, :cond_0

    .line 1217
    invoke-virtual {v2}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1218
    .local v1, stringId:Ljava/lang/String;
    iput-object v1, p2, Lcom/android/email/provider/EmailContent$Mailbox;->mSyncStatus:Ljava/lang/String;

    .line 1219
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 1221
    .end local v1           #stringId:Ljava/lang/String;
    :goto_0
    return-wide v3

    :cond_0
    const-wide/16 v3, -0x1

    goto :goto_0
.end method

.method public static createMessageForEntity(Landroid/content/Context;Landroid/content/Entity;ILjava/lang/String;Lcom/android/email/provider/EmailContent$Account;)Lcom/android/email/provider/EmailContent$Message;
    .locals 6
    .parameter "context"
    .parameter "entity"
    .parameter "messageFlag"
    .parameter "uid"
    .parameter "account"

    .prologue
    .line 1398
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Lcom/android/exchange/utility/CalendarUtilities;->createMessageForEntity(Landroid/content/Context;Landroid/content/Entity;ILjava/lang/String;Lcom/android/email/provider/EmailContent$Account;Ljava/lang/String;)Lcom/android/email/provider/EmailContent$Message;

    move-result-object v0

    return-object v0
.end method

.method public static createMessageForEntity(Landroid/content/Context;Landroid/content/Entity;ILjava/lang/String;Lcom/android/email/provider/EmailContent$Account;Ljava/lang/String;)Lcom/android/email/provider/EmailContent$Message;
    .locals 20
    .parameter "context"
    .parameter "entity"
    .parameter "messageFlag"
    .parameter "uid"
    .parameter "account"
    .parameter "specifiedAttendee"

    .prologue
    .line 1404
    invoke-virtual/range {p1 .. p1}, Landroid/content/Entity;->getEntityValues()Landroid/content/ContentValues;

    move-result-object v8

    .line 1405
    .local v8, entityValues:Landroid/content/ContentValues;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Entity;->getSubValues()Ljava/util/ArrayList;

    move-result-object v12

    .line 1406
    .local v12, subValues:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/Entity$NamedContentValues;>;"
    const-string p1, "originalEvent"

    .end local p1
    move-object v0, v8

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v9

    .line 1407
    .local v9, isException:Z
    const/16 p1, 0x0

    .line 1409
    .local p1, isReply:Z
    new-instance v16, Lcom/android/email/provider/EmailContent$Message;

    invoke-direct/range {v16 .. v16}, Lcom/android/email/provider/EmailContent$Message;-><init>()V

    .line 1410
    .local v16, msg:Lcom/android/email/provider/EmailContent$Message;
    move/from16 v0, p2

    move-object/from16 v1, v16

    iput v0, v1, Lcom/android/email/provider/EmailContent$Message;->mFlags:I

    .line 1411
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move-wide v0, v4

    move-object/from16 v2, v16

    iput-wide v0, v2, Lcom/android/email/provider/EmailContent$Message;->mTimeStamp:J

    .line 1414
    and-int/lit8 v4, p2, 0x10

    if-eqz v4, :cond_f

    .line 1415
    const-string v4, "REQUEST"

    .local v4, method:Ljava/lang/String;
    move-object v15, v4

    .end local v4           #method:Ljava/lang/String;
    .local v15, method:Ljava/lang/String;
    move/from16 v14, p1

    .line 1425
    .end local p1           #isReply:Z
    .local v14, isReply:Z
    :goto_0
    :try_start_0
    new-instance v4, Lcom/android/exchange/utility/SimpleIcsWriter;

    invoke-direct {v4}, Lcom/android/exchange/utility/SimpleIcsWriter;-><init>()V

    .line 1426
    .local v4, ics:Lcom/android/exchange/utility/SimpleIcsWriter;
    const-string p1, "BEGIN"

    const-string v5, "VCALENDAR"

    move-object v0, v4

    move-object/from16 v1, p1

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/utility/SimpleIcsWriter;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 1427
    const-string p1, "METHOD"

    move-object v0, v4

    move-object/from16 v1, p1

    move-object v2, v15

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/utility/SimpleIcsWriter;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 1428
    const-string p1, "PRODID"

    const-string v5, "AndroidEmail"

    move-object v0, v4

    move-object/from16 v1, p1

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/utility/SimpleIcsWriter;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 1429
    const-string p1, "VERSION"

    const-string v5, "2.0"

    move-object v0, v4

    move-object/from16 v1, p1

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/utility/SimpleIcsWriter;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 1433
    sget-object v6, Lcom/android/exchange/utility/CalendarUtilities;->sGmtTimeZone:Ljava/util/TimeZone;

    .line 1434
    .local v6, vCalendarTimeZone:Ljava/util/TimeZone;
    const-string v5, ""

    .line 1437
    .local v5, vCalendarDateSuffix:Ljava/lang/String;
    const/16 p1, 0x0

    .line 1438
    .local p1, allDayEvent:Z
    const-string v7, "allDay"

    invoke-virtual {v8, v7}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1439
    const-string p1, "allDay"

    .end local p1           #allDayEvent:Z
    move-object v0, v8

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    .line 1440
    .local p1, ade:Ljava/lang/Integer;
    if-eqz p1, :cond_11

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .end local p1           #ade:Ljava/lang/Integer;
    const/4 v7, 0x1

    move/from16 v0, p1

    move v1, v7

    if-ne v0, v1, :cond_11

    const/16 p1, 0x1

    .line 1441
    .local p1, allDayEvent:Z
    :goto_1
    if-eqz p1, :cond_0

    .line 1443
    const-string v5, ";VALUE=DATE"

    .line 1451
    :cond_0
    if-nez v14, :cond_27

    if-nez p1, :cond_27

    const-string v7, "rrule"

    invoke-virtual {v8, v7}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    const-string v7, "originalEvent"

    invoke-virtual {v8, v7}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_27

    .line 1454
    :cond_1
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v6

    .line 1456
    invoke-static {v6, v4}, Lcom/android/exchange/utility/CalendarUtilities;->timeZoneToVTimezone(Ljava/util/TimeZone;Lcom/android/exchange/utility/SimpleIcsWriter;)V

    .line 1458
    new-instance v5, Ljava/lang/StringBuilder;

    .end local v5           #vCalendarDateSuffix:Ljava/lang/String;
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ";TZID="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v6}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .restart local v5       #vCalendarDateSuffix:Ljava/lang/String;
    move-object v13, v5

    .end local v5           #vCalendarDateSuffix:Ljava/lang/String;
    .local v13, vCalendarDateSuffix:Ljava/lang/String;
    move-object/from16 v17, v6

    .line 1461
    .end local v6           #vCalendarTimeZone:Ljava/util/TimeZone;
    .local v17, vCalendarTimeZone:Ljava/util/TimeZone;
    :goto_2
    const-string v5, "BEGIN"

    const-string v6, "VEVENT"

    invoke-virtual {v4, v5, v6}, Lcom/android/exchange/utility/SimpleIcsWriter;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 1462
    if-nez p3, :cond_2

    .line 1463
    const-string v5, "_sync_local_id"

    invoke-virtual {v8, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 1465
    :cond_2
    if-eqz p3, :cond_3

    .line 1466
    const-string v5, "UID"

    move-object v0, v4

    move-object v1, v5

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/utility/SimpleIcsWriter;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 1469
    :cond_3
    const-string v5, "DTSTAMP"

    invoke-virtual {v8, v5}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_12

    .line 1470
    const-string v5, "DTSTAMP"

    const-string v6, "DTSTAMP"

    invoke-virtual {v8, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/android/exchange/utility/SimpleIcsWriter;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 1475
    :goto_3
    const-string v5, "dtstart"

    invoke-virtual {v8, v5}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    .line 1476
    .local v10, startTime:J
    const-wide/16 v5, 0x0

    cmp-long v5, v10, v5

    if-eqz v5, :cond_4

    .line 1477
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DTSTART"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    if-nez p1, :cond_13

    const/4 v6, 0x1

    :goto_4
    move-wide v0, v10

    move-object/from16 v2, v17

    move v3, v6

    invoke-static {v0, v1, v2, v3}, Lcom/android/exchange/utility/CalendarUtilities;->millisToEasDateTime(JLjava/util/TimeZone;Z)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/android/exchange/utility/SimpleIcsWriter;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 1483
    :cond_4
    if-eqz v9, :cond_5

    .line 1484
    const-string v5, "originalInstanceTime"

    invoke-virtual {v8, v5}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    .line 1485
    .local v5, originalTime:J
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "RECURRENCE-ID"

    move-object v0, v7

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    if-nez p1, :cond_14

    const/16 v18, 0x1

    :goto_5
    move-wide v0, v5

    move-object/from16 v2, v17

    move/from16 v3, v18

    invoke-static {v0, v1, v2, v3}, Lcom/android/exchange/utility/CalendarUtilities;->millisToEasDateTime(JLjava/util/TimeZone;Z)Ljava/lang/String;

    move-result-object v5

    .end local v5           #originalTime:J
    invoke-virtual {v4, v7, v5}, Lcom/android/exchange/utility/SimpleIcsWriter;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 1489
    :cond_5
    const-string v5, "duration"

    invoke-virtual {v8, v5}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_16

    .line 1490
    const-string v5, "dtend"

    invoke-virtual {v8, v5}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 1491
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DTEND"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "dtend"

    invoke-virtual {v8, v6}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    if-nez p1, :cond_15

    const/16 p1, 0x1

    .end local p1           #allDayEvent:Z
    :goto_6
    move-wide v0, v6

    move-object/from16 v2, v17

    move/from16 v3, p1

    invoke-static {v0, v1, v2, v3}, Lcom/android/exchange/utility/CalendarUtilities;->millisToEasDateTime(JLjava/util/TimeZone;Z)Ljava/lang/String;

    move-result-object p1

    move-object v0, v4

    move-object v1, v5

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/utility/SimpleIcsWriter;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 1511
    :cond_6
    :goto_7
    const/16 p1, 0x0

    .line 1512
    .local p1, location:Ljava/lang/String;
    const-string v5, "eventLocation"

    invoke-virtual {v8, v5}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 1513
    const-string p1, "eventLocation"

    .end local p1           #location:Ljava/lang/String;
    move-object v0, v8

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1514
    .restart local p1       #location:Ljava/lang/String;
    const-string v5, "LOCATION"

    move-object v0, v4

    move-object v1, v5

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/utility/SimpleIcsWriter;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 1517
    :cond_7
    const-string p1, "_sync_version"

    .end local p1           #location:Ljava/lang/String;
    move-object v0, v8

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1518
    .local p1, sequence:Ljava/lang/String;
    if-nez p1, :cond_26

    .line 1519
    const-string p1, "0"

    move-object/from16 v19, p1

    .line 1523
    .end local p1           #sequence:Ljava/lang/String;
    .local v19, sequence:Ljava/lang/String;
    :goto_8
    const/16 p1, 0x0

    .line 1524
    .local p1, titleId:I
    sparse-switch p2, :sswitch_data_0

    :cond_8
    move/from16 v7, p1

    .line 1543
    .end local p1           #titleId:I
    .local v7, titleId:I
    :goto_9
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 1544
    .local v5, resources:Landroid/content/res/Resources;
    const-string p1, "title"

    move-object v0, v8

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1545
    .local p1, title:Ljava/lang/String;
    if-nez p1, :cond_9

    .line 1546
    const-string p1, ""

    .line 1548
    :cond_9
    const-string v6, "SUMMARY"

    move-object v0, v4

    move-object v1, v6

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/utility/SimpleIcsWriter;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 1550
    if-nez v7, :cond_18

    .line 1551
    move-object/from16 v0, p1

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/android/email/provider/EmailContent$Message;->mSubject:Ljava/lang/String;

    .line 1559
    .end local v10           #startTime:J
    .end local p1           #title:Ljava/lang/String;
    :goto_a
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 1560
    .local v6, sb:Ljava/lang/StringBuilder;
    if-eqz v9, :cond_a

    if-nez v14, :cond_a

    .line 1562
    new-instance p1, Ljava/util/Date;

    const-string v9, "originalInstanceTime"

    .end local v9           #isException:Z
    invoke-virtual {v8, v9}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    move-object/from16 v0, p1

    move-wide v1, v9

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    .line 1563
    .local p1, date:Ljava/util/Date;
    invoke-static {}, Ljava/text/DateFormat;->getDateInstance()Ljava/text/DateFormat;

    move-result-object v9

    move-object v0, v9

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    .line 1564
    .local p1, dateString:Ljava/lang/String;
    const v9, 0x7f080176

    if-ne v7, v9, :cond_19

    .line 1565
    const v7, 0x7f08017b

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    .end local v7           #titleId:I
    const/4 v10, 0x0

    aput-object p1, v9, v10

    invoke-virtual {v5, v7, v9}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .end local p1           #dateString:Ljava/lang/String;
    move-object v0, v6

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1569
    :goto_b
    const-string p1, "\n\n"

    move-object v0, v6

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1571
    :cond_a
    move-object/from16 v0, p0

    move-object v1, v8

    move-object v2, v6

    invoke-static {v0, v1, v2}, Lcom/android/exchange/utility/CalendarUtilities;->buildMessageTextFromEntityValues(Landroid/content/Context;Landroid/content/ContentValues;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    .line 1574
    .local p0, text:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_b

    .line 1575
    const-string p1, "DESCRIPTION"

    move-object v0, v4

    move-object/from16 v1, p1

    move-object/from16 v2, p0

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/utility/SimpleIcsWriter;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 1578
    :cond_b
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/android/email/provider/EmailContent$Message;->mText:Ljava/lang/String;

    .line 1579
    if-nez v14, :cond_d

    .line 1580
    const-string p0, "allDay"

    .end local p0           #text:Ljava/lang/String;
    move-object v0, v8

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_c

    .line 1581
    const-string p0, "allDay"

    move-object v0, v8

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    .line 1582
    .local p0, ade:Ljava/lang/Integer;
    const-string p1, "X-MICROSOFT-CDO-ALLDAYEVENT"

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    .end local p0           #ade:Ljava/lang/Integer;
    if-nez p0, :cond_1a

    const-string p0, "FALSE"

    :goto_c
    move-object v0, v4

    move-object/from16 v1, p1

    move-object/from16 v2, p0

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/utility/SimpleIcsWriter;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 1585
    :cond_c
    const-string p0, "rrule"

    move-object v0, v8

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1586
    .local p0, rrule:Ljava/lang/String;
    if-eqz p0, :cond_d

    .line 1587
    const-string p1, "RRULE"

    move-object v0, v4

    move-object/from16 v1, p1

    move-object/from16 v2, p0

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/utility/SimpleIcsWriter;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 1595
    .end local p0           #rrule:Ljava/lang/String;
    :cond_d
    const/4 v6, 0x0

    .line 1596
    .local v6, organizerName:Ljava/lang/String;
    const/16 p1, 0x0

    .line 1597
    .local p1, organizerEmail:Ljava/lang/String;
    new-instance v5, Ljava/util/ArrayList;

    .end local v5           #resources:Landroid/content/res/Resources;
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1598
    .local v5, toList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/email/mail/Address;>;"
    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .local p0, i$:Ljava/util/Iterator;
    move-object/from16 v17, p1

    .end local p1           #organizerEmail:Ljava/lang/String;
    .local v17, organizerEmail:Ljava/lang/String;
    move-object/from16 v18, v6

    .end local v6           #organizerName:Ljava/lang/String;
    .end local v8           #entityValues:Landroid/content/ContentValues;
    .local v18, organizerName:Ljava/lang/String;
    :cond_e
    :goto_d
    invoke-interface/range {p0 .. p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1d

    invoke-interface/range {p0 .. p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Entity$NamedContentValues;

    .line 1599
    .local p1, ncv:Landroid/content/Entity$NamedContentValues;
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/Entity$NamedContentValues;->uri:Landroid/net/Uri;

    move-object v6, v0

    .line 1600
    .local v6, ncvUri:Landroid/net/Uri;
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/Entity$NamedContentValues;->values:Landroid/content/ContentValues;

    move-object/from16 p1, v0

    .line 1601
    .local p1, ncvValues:Landroid/content/ContentValues;
    sget-object v7, Landroid/provider/Calendar$Attendees;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v6, v7}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v6

    .end local v6           #ncvUri:Landroid/net/Uri;
    if-eqz v6, :cond_e

    .line 1602
    const-string v6, "attendeeRelationship"

    move-object/from16 v0, p1

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    .line 1606
    .local v6, relationship:Ljava/lang/Integer;
    if-eqz v6, :cond_e

    const-string v7, "attendeeEmail"

    move-object/from16 v0, p1

    move-object v1, v7

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_e

    .line 1609
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .end local v6           #relationship:Ljava/lang/Integer;
    const/4 v7, 0x2

    if-ne v6, v7, :cond_1b

    .line 1610
    const-string v6, "attendeeName"

    move-object/from16 v0, p1

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1611
    .end local v18           #organizerName:Ljava/lang/String;
    .local v6, organizerName:Ljava/lang/String;
    const-string v7, "attendeeEmail"

    move-object/from16 v0, p1

    move-object v1, v7

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    .end local v17           #organizerEmail:Ljava/lang/String;
    .local p1, organizerEmail:Ljava/lang/String;
    move-object/from16 v17, p1

    .end local p1           #organizerEmail:Ljava/lang/String;
    .restart local v17       #organizerEmail:Ljava/lang/String;
    move-object/from16 v18, v6

    .line 1612
    .end local v6           #organizerName:Ljava/lang/String;
    .restart local v18       #organizerName:Ljava/lang/String;
    goto :goto_d

    .line 1416
    .end local v4           #ics:Lcom/android/exchange/utility/SimpleIcsWriter;
    .end local v5           #toList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/email/mail/Address;>;"
    .end local v13           #vCalendarDateSuffix:Ljava/lang/String;
    .end local v14           #isReply:Z
    .end local v15           #method:Ljava/lang/String;
    .end local v17           #organizerEmail:Ljava/lang/String;
    .end local v18           #organizerName:Ljava/lang/String;
    .end local v19           #sequence:Ljava/lang/String;
    .restart local v8       #entityValues:Landroid/content/ContentValues;
    .restart local v9       #isException:Z
    .local p0, context:Landroid/content/Context;
    .local p1, isReply:Z
    :cond_f
    and-int/lit8 v4, p2, 0x20

    if-eqz v4, :cond_10

    .line 1417
    const-string v4, "CANCEL"

    .local v4, method:Ljava/lang/String;
    move-object v15, v4

    .end local v4           #method:Ljava/lang/String;
    .restart local v15       #method:Ljava/lang/String;
    move/from16 v14, p1

    .end local p1           #isReply:Z
    .restart local v14       #isReply:Z
    goto/16 :goto_0

    .line 1419
    .end local v14           #isReply:Z
    .end local v15           #method:Ljava/lang/String;
    .restart local p1       #isReply:Z
    :cond_10
    const-string v4, "REPLY"

    .line 1420
    .restart local v4       #method:Ljava/lang/String;
    const/16 p1, 0x1

    move-object v15, v4

    .end local v4           #method:Ljava/lang/String;
    .restart local v15       #method:Ljava/lang/String;
    move/from16 v14, p1

    .end local p1           #isReply:Z
    .restart local v14       #isReply:Z
    goto/16 :goto_0

    .line 1440
    .local v4, ics:Lcom/android/exchange/utility/SimpleIcsWriter;
    .local v5, vCalendarDateSuffix:Ljava/lang/String;
    .local v6, vCalendarTimeZone:Ljava/util/TimeZone;
    :cond_11
    const/16 p1, 0x0

    goto/16 :goto_1

    .line 1472
    .end local v5           #vCalendarDateSuffix:Ljava/lang/String;
    .end local v6           #vCalendarTimeZone:Ljava/util/TimeZone;
    .restart local v13       #vCalendarDateSuffix:Ljava/lang/String;
    .local v17, vCalendarTimeZone:Ljava/util/TimeZone;
    .local p1, allDayEvent:Z
    :cond_12
    :try_start_1
    const-string v5, "DTSTAMP"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/android/exchange/utility/CalendarUtilities;->millisToEasDateTime(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/android/exchange/utility/SimpleIcsWriter;->writeTag(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_3

    .line 1697
    .end local v4           #ics:Lcom/android/exchange/utility/SimpleIcsWriter;
    .end local v8           #entityValues:Landroid/content/ContentValues;
    .end local v9           #isException:Z
    .end local v12           #subValues:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/Entity$NamedContentValues;>;"
    .end local v13           #vCalendarDateSuffix:Ljava/lang/String;
    .end local v17           #vCalendarTimeZone:Ljava/util/TimeZone;
    .end local p0           #context:Landroid/content/Context;
    .end local p1           #allDayEvent:Z
    .end local p2
    .end local p4
    .end local p5
    :catch_0
    move-exception p0

    .line 1698
    .local p0, e:Ljava/io/IOException;
    const-string p0, "CalendarUtility"

    .end local p0           #e:Ljava/io/IOException;
    const-string p1, "IOException in createMessageForEntity"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1699
    const/16 p0, 0x0

    .line 1703
    :goto_e
    return-object p0

    .line 1477
    .restart local v4       #ics:Lcom/android/exchange/utility/SimpleIcsWriter;
    .restart local v8       #entityValues:Landroid/content/ContentValues;
    .restart local v9       #isException:Z
    .restart local v10       #startTime:J
    .restart local v12       #subValues:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/Entity$NamedContentValues;>;"
    .restart local v13       #vCalendarDateSuffix:Ljava/lang/String;
    .restart local v17       #vCalendarTimeZone:Ljava/util/TimeZone;
    .local p0, context:Landroid/content/Context;
    .restart local p1       #allDayEvent:Z
    .restart local p2
    .restart local p4
    .restart local p5
    :cond_13
    const/4 v6, 0x0

    goto/16 :goto_4

    .line 1485
    .local v5, originalTime:J
    :cond_14
    const/16 v18, 0x0

    goto/16 :goto_5

    .line 1491
    .end local v5           #originalTime:J
    :cond_15
    const/16 p1, 0x0

    goto/16 :goto_6

    .line 1499
    :cond_16
    const-wide/32 v6, 0x36ee80

    .line 1500
    .local v6, durationMillis:J
    :try_start_2
    new-instance v5, Lcom/android/exchange/utility/Duration;

    invoke-direct {v5}, Lcom/android/exchange/utility/Duration;-><init>()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1502
    .local v5, duration:Lcom/android/exchange/utility/Duration;
    :try_start_3
    const-string v18, "duration"

    move-object v0, v8

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object v0, v5

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/exchange/utility/Duration;->parse(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/text/ParseException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 1506
    .end local v5           #duration:Lcom/android/exchange/utility/Duration;
    :goto_f
    :try_start_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "DTEND"

    move-object v0, v5

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    add-long/2addr v6, v10

    if-nez p1, :cond_17

    .end local v6           #durationMillis:J
    const/16 p1, 0x1

    .end local p1           #allDayEvent:Z
    :goto_10
    move-wide v0, v6

    move-object/from16 v2, v17

    move/from16 v3, p1

    invoke-static {v0, v1, v2, v3}, Lcom/android/exchange/utility/CalendarUtilities;->millisToEasDateTime(JLjava/util/TimeZone;Z)Ljava/lang/String;

    move-result-object p1

    move-object v0, v4

    move-object v1, v5

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/utility/SimpleIcsWriter;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7

    .restart local p1       #allDayEvent:Z
    :cond_17
    const/16 p1, 0x0

    goto :goto_10

    .line 1526
    .restart local v19       #sequence:Ljava/lang/String;
    .local p1, titleId:I
    :sswitch_0
    const-string v5, "0"

    move-object v0, v5

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8

    .line 1527
    const p1, 0x7f080177

    move/from16 v7, p1

    .end local p1           #titleId:I
    .restart local v7       #titleId:I
    goto/16 :goto_9

    .line 1531
    .end local v7           #titleId:I
    .restart local p1       #titleId:I
    :sswitch_1
    const p1, 0x7f080173

    move/from16 v7, p1

    .line 1532
    .end local p1           #titleId:I
    .restart local v7       #titleId:I
    goto/16 :goto_9

    .line 1534
    .end local v7           #titleId:I
    .restart local p1       #titleId:I
    :sswitch_2
    const p1, 0x7f080174

    move/from16 v7, p1

    .line 1535
    .end local p1           #titleId:I
    .restart local v7       #titleId:I
    goto/16 :goto_9

    .line 1537
    .end local v7           #titleId:I
    .restart local p1       #titleId:I
    :sswitch_3
    const p1, 0x7f080175

    move/from16 v7, p1

    .line 1538
    .end local p1           #titleId:I
    .restart local v7       #titleId:I
    goto/16 :goto_9

    .line 1540
    .end local v7           #titleId:I
    .restart local p1       #titleId:I
    :sswitch_4
    const p1, 0x7f080176

    move/from16 v7, p1

    .end local p1           #titleId:I
    .restart local v7       #titleId:I
    goto/16 :goto_9

    .line 1554
    .local v5, resources:Landroid/content/res/Resources;
    .local p1, title:Ljava/lang/String;
    :cond_18
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object p1, v6, v10

    .end local v10           #startTime:J
    invoke-virtual {v5, v7, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .end local p1           #title:Ljava/lang/String;
    move-object/from16 v0, p1

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/android/email/provider/EmailContent$Message;->mSubject:Ljava/lang/String;

    goto/16 :goto_a

    .line 1567
    .end local v9           #isException:Z
    .local v6, sb:Ljava/lang/StringBuilder;
    .local p1, dateString:Ljava/lang/String;
    :cond_19
    const v7, 0x7f08017c

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    .end local v7           #titleId:I
    const/4 v10, 0x0

    aput-object p1, v9, v10

    invoke-virtual {v5, v7, v9}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .end local p1           #dateString:Ljava/lang/String;
    move-object v0, v6

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_b

    .line 1582
    .end local p0           #context:Landroid/content/Context;
    :cond_1a
    const-string p0, "TRUE"

    goto/16 :goto_c

    .line 1614
    .end local v6           #sb:Ljava/lang/StringBuilder;
    .end local v8           #entityValues:Landroid/content/ContentValues;
    .local v5, toList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/email/mail/Address;>;"
    .local v17, organizerEmail:Ljava/lang/String;
    .restart local v18       #organizerName:Ljava/lang/String;
    .local p0, i$:Ljava/util/Iterator;
    .local p1, ncvValues:Landroid/content/ContentValues;
    :cond_1b
    const-string v6, "attendeeEmail"

    move-object/from16 v0, p1

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1615
    .local v7, attendeeEmail:Ljava/lang/String;
    const-string v6, "attendeeName"

    move-object/from16 v0, p1

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1618
    .local v6, attendeeName:Ljava/lang/String;
    if-eqz v7, :cond_e

    .line 1620
    if-eqz p5, :cond_1c

    move-object v0, v7

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    .end local p1           #ncvValues:Landroid/content/ContentValues;
    if-eqz p1, :cond_e

    :cond_1c
    move/from16 v8, p2

    move-object/from16 v9, p4

    .line 1625
    invoke-static/range {v4 .. v9}, Lcom/android/exchange/utility/CalendarUtilities;->addAttendeeToMessage(Lcom/android/exchange/utility/SimpleIcsWriter;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;ILcom/android/email/provider/EmailContent$Account;)V

    goto/16 :goto_d

    .line 1632
    .end local v6           #attendeeName:Ljava/lang/String;
    .end local v7           #attendeeEmail:Ljava/lang/String;
    :cond_1d
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    .end local p0           #i$:Ljava/util/Iterator;
    if-eqz p0, :cond_1e

    if-eqz p5, :cond_1e

    .line 1633
    const/4 v10, 0x0

    move-object v8, v4

    move-object v9, v5

    move-object/from16 v11, p5

    move/from16 v12, p2

    move-object/from16 v13, p4

    invoke-static/range {v8 .. v13}, Lcom/android/exchange/utility/CalendarUtilities;->addAttendeeToMessage(Lcom/android/exchange/utility/SimpleIcsWriter;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;ILcom/android/email/provider/EmailContent$Account;)V

    .line 1637
    .end local v12           #subValues:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/Entity$NamedContentValues;>;"
    .end local v13           #vCalendarDateSuffix:Ljava/lang/String;
    :cond_1e
    if-eqz v17, :cond_20

    .line 1638
    new-instance p0, Ljava/lang/StringBuffer;

    const-string p1, "ORGANIZER"

    invoke-direct/range {p0 .. p1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 1641
    .local p0, icalTag:Ljava/lang/StringBuffer;
    if-eqz v18, :cond_1f

    .line 1642
    const-string p1, ";CN="

    invoke-virtual/range {p0 .. p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-static/range {v18 .. v18}, Lcom/android/exchange/utility/SimpleIcsWriter;->quoteParamValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    .end local p4
    move-object/from16 v0, p1

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1644
    :cond_1f
    invoke-virtual/range {p0 .. p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    .end local p0           #icalTag:Ljava/lang/StringBuffer;
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct/range {p1 .. p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "MAILTO:"

    move-object/from16 v0, p1

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    move-object v0, v4

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/utility/SimpleIcsWriter;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 1645
    if-eqz v14, :cond_20

    .line 1646
    if-nez v18, :cond_21

    new-instance p0, Lcom/android/email/mail/Address;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/email/mail/Address;-><init>(Ljava/lang/String;)V

    :goto_11
    move-object v0, v5

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1652
    :cond_20
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_22

    const/16 p0, 0x0

    goto/16 :goto_e

    .line 1646
    :cond_21
    new-instance p0, Lcom/android/email/mail/Address;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/android/email/mail/Address;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_11

    .line 1655
    :cond_22
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result p0

    move/from16 v0, p0

    new-array v0, v0, [Lcom/android/email/mail/Address;

    move-object v6, v0

    .line 1656
    .local v6, toArray:[Lcom/android/email/mail/Address;
    const/16 p0, 0x0

    .line 1657
    .local p0, i:I
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p5

    .local p5, i$:Ljava/util/Iterator;
    move/from16 p4, p0

    .end local p0           #i:I
    .local p4, i:I
    :goto_12
    invoke-interface/range {p5 .. p5}, Ljava/util/Iterator;->hasNext()Z

    move-result p0

    if-eqz p0, :cond_23

    invoke-interface/range {p5 .. p5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/email/mail/Address;

    .line 1658
    .local p0, address:Lcom/android/email/mail/Address;
    add-int/lit8 p1, p4, 0x1

    .end local p4           #i:I
    .local p1, i:I
    aput-object p0, v6, p4

    move/from16 p4, p1

    .end local p1           #i:I
    .restart local p4       #i:I
    goto :goto_12

    .line 1660
    .end local p0           #address:Lcom/android/email/mail/Address;
    :cond_23
    invoke-static {v6}, Lcom/android/email/mail/Address;->pack([Lcom/android/email/mail/Address;)Ljava/lang/String;

    move-result-object p0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/android/email/provider/EmailContent$Message;->mTo:Ljava/lang/String;

    .line 1667
    const-string p0, "STATUS"

    const/16 p1, 0x20

    move/from16 v0, p2

    move/from16 v1, p1

    if-ne v0, v1, :cond_24

    const-string p1, "CANCELLED"

    :goto_13
    move-object v0, v4

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/utility/SimpleIcsWriter;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 1669
    const-string p0, "TRANSP"

    const-string p1, "OPAQUE"

    move-object v0, v4

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/utility/SimpleIcsWriter;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 1670
    const-string p0, "PRIORITY"

    const-string p1, "5"

    move-object v0, v4

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/utility/SimpleIcsWriter;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 1671
    const-string p0, "SEQUENCE"

    move-object v0, v4

    move-object/from16 v1, p0

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/utility/SimpleIcsWriter;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 1673
    sget p0, Lcom/android/exchange/utility/CalendarUtilities;->mMinutes:I

    const/16 p1, -0x1

    move/from16 v0, p0

    move/from16 v1, p1

    if-eq v0, v1, :cond_25

    .line 1674
    invoke-static {v4}, Lcom/android/exchange/utility/CalendarUtilities;->writeVAlarm(Lcom/android/exchange/utility/SimpleIcsWriter;)V

    .line 1678
    :goto_14
    const-string p0, "END"

    const-string p1, "VEVENT"

    move-object v0, v4

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/utility/SimpleIcsWriter;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 1679
    const-string p0, "END"

    const-string p1, "VCALENDAR"

    move-object v0, v4

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/utility/SimpleIcsWriter;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 1682
    const-string p0, "CalendarUtility"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct/range {p1 .. p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Encoded iCalendar follows below. \n "

    .end local p2
    invoke-virtual/range {p1 .. p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {v4}, Lcom/android/exchange/utility/SimpleIcsWriter;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual/range {p1 .. p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static/range {p0 .. p1}, Lcom/android/exchange/SyncManager;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 1686
    new-instance p0, Lcom/android/email/provider/EmailContent$Attachment;

    invoke-direct/range {p0 .. p0}, Lcom/android/email/provider/EmailContent$Attachment;-><init>()V

    .line 1687
    .local p0, att:Lcom/android/email/provider/EmailContent$Attachment;
    invoke-virtual {v4}, Lcom/android/exchange/utility/SimpleIcsWriter;->getBytes()[B

    move-result-object p1

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/email/provider/EmailContent$Attachment;->mContentBytes:[B

    .line 1688
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct/range {p1 .. p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "text/calendar; method="

    invoke-virtual/range {p1 .. p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    move-object/from16 v0, p1

    move-object v1, v15

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/email/provider/EmailContent$Attachment;->mMimeType:Ljava/lang/String;

    .line 1689
    const-string p1, "invite.ics"

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/email/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    .line 1690
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/provider/EmailContent$Attachment;->mContentBytes:[B

    move-object/from16 p1, v0

    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 p1, v0

    move/from16 v0, p1

    int-to-long v0, v0

    move-wide/from16 p1, v0

    move-wide/from16 v0, p1

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/email/provider/EmailContent$Attachment;->mSize:J

    .line 1692
    const/16 p1, 0x1

    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/email/provider/EmailContent$Attachment;->mFlags:I

    .line 1695
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct/range {p1 .. p1}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/android/email/provider/EmailContent$Message;->mAttachments:Ljava/util/ArrayList;

    .line 1696
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/email/provider/EmailContent$Message;->mAttachments:Ljava/util/ArrayList;

    move-object/from16 p1, v0

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 p0, v16

    .line 1703
    goto/16 :goto_e

    .line 1667
    .end local p0           #att:Lcom/android/email/provider/EmailContent$Attachment;
    .restart local p2
    :cond_24
    const-string p1, "CONFIRMED"

    goto/16 :goto_13

    .line 1676
    :cond_25
    const-string p0, "CalendarUtility"

    const-string p1, "None selected for Alarm"

    invoke-static/range {p0 .. p1}, Lcom/android/exchange/SyncManager;->log(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_14

    .line 1503
    .end local v18           #organizerName:Ljava/lang/String;
    .end local v19           #sequence:Ljava/lang/String;
    .local v5, duration:Lcom/android/exchange/utility/Duration;
    .local v6, durationMillis:J
    .restart local v8       #entityValues:Landroid/content/ContentValues;
    .restart local v9       #isException:Z
    .restart local v10       #startTime:J
    .restart local v12       #subValues:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/Entity$NamedContentValues;>;"
    .restart local v13       #vCalendarDateSuffix:Ljava/lang/String;
    .local v17, vCalendarTimeZone:Ljava/util/TimeZone;
    .local p0, context:Landroid/content/Context;
    .local p1, allDayEvent:Z
    .local p4, account:Lcom/android/email/provider/EmailContent$Account;
    .local p5, specifiedAttendee:Ljava/lang/String;
    :catch_1
    move-exception v5

    goto/16 :goto_f

    .end local v5           #duration:Lcom/android/exchange/utility/Duration;
    .end local v6           #durationMillis:J
    .local p1, sequence:Ljava/lang/String;
    :cond_26
    move-object/from16 v19, p1

    .end local p1           #sequence:Ljava/lang/String;
    .restart local v19       #sequence:Ljava/lang/String;
    goto/16 :goto_8

    .end local v10           #startTime:J
    .end local v13           #vCalendarDateSuffix:Ljava/lang/String;
    .end local v17           #vCalendarTimeZone:Ljava/util/TimeZone;
    .end local v19           #sequence:Ljava/lang/String;
    .local v5, vCalendarDateSuffix:Ljava/lang/String;
    .local v6, vCalendarTimeZone:Ljava/util/TimeZone;
    .local p1, allDayEvent:Z
    :cond_27
    move-object v13, v5

    .end local v5           #vCalendarDateSuffix:Ljava/lang/String;
    .restart local v13       #vCalendarDateSuffix:Ljava/lang/String;
    move-object/from16 v17, v6

    .end local v6           #vCalendarTimeZone:Ljava/util/TimeZone;
    .restart local v17       #vCalendarTimeZone:Ljava/util/TimeZone;
    goto/16 :goto_2

    .line 1524
    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_0
        0x20 -> :sswitch_4
        0x40 -> :sswitch_1
        0x80 -> :sswitch_2
        0x100 -> :sswitch_3
    .end sparse-switch
.end method

.method public static createMessageForEventId(Landroid/content/Context;JILjava/lang/String;Lcom/android/email/provider/EmailContent$Account;)Lcom/android/email/provider/EmailContent$Message;
    .locals 7
    .parameter "context"
    .parameter "eventId"
    .parameter "messageFlag"
    .parameter "uid"
    .parameter "account"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1755
    const/4 v6, 0x0

    move-object v0, p0

    move-wide v1, p1

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v6}, Lcom/android/exchange/utility/CalendarUtilities;->createMessageForEventId(Landroid/content/Context;JILjava/lang/String;Lcom/android/email/provider/EmailContent$Account;Ljava/lang/String;)Lcom/android/email/provider/EmailContent$Message;

    move-result-object v0

    return-object v0
.end method

.method public static createMessageForEventId(Landroid/content/Context;JILjava/lang/String;Lcom/android/email/provider/EmailContent$Account;Ljava/lang/String;)Lcom/android/email/provider/EmailContent$Message;
    .locals 8
    .parameter "context"
    .parameter "eventId"
    .parameter "messageFlag"
    .parameter "uid"
    .parameter "account"
    .parameter "specifiedAttendee"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1762
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1764
    .local v0, cr:Landroid/content/ContentResolver;
    invoke-static {p1, p2, v0}, Lcom/android/exchange/utility/CalendarUtilities;->getReminder(JLandroid/content/ContentResolver;)V

    .line 1766
    sget-object v1, Landroid/provider/Calendar$Events;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v3, "caller_is_syncadapter"

    const-string v4, "true"

    invoke-virtual {v1, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/provider/Calendar$EventsEntity;->newEntityIterator(Landroid/database/Cursor;Landroid/content/ContentResolver;)Landroid/content/EntityIterator;

    move-result-object v7

    .line 1772
    .local v7, eventIterator:Landroid/content/EntityIterator;
    :try_start_0
    invoke-interface {v7}, Landroid/content/EntityIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1773
    invoke-interface {v7}, Landroid/content/EntityIterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Entity;

    .local v2, entity:Landroid/content/Entity;
    move-object v1, p0

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    .line 1774
    invoke-static/range {v1 .. v6}, Lcom/android/exchange/utility/CalendarUtilities;->createMessageForEntity(Landroid/content/Context;Landroid/content/Entity;ILjava/lang/String;Lcom/android/email/provider/EmailContent$Account;Ljava/lang/String;)Lcom/android/email/provider/EmailContent$Message;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 1778
    invoke-interface {v7}, Landroid/content/EntityIterator;->close()V

    .line 1780
    .end local v2           #entity:Landroid/content/Entity;
    :goto_0
    return-object v1

    .line 1778
    :catchall_0
    move-exception v1

    invoke-interface {v7}, Landroid/content/EntityIterator;->close()V

    throw v1

    :cond_0
    invoke-interface {v7}, Landroid/content/EntityIterator;->close()V

    move-object v1, v2

    .line 1780
    goto :goto_0
.end method

.method static findNextTransition(J[Ljava/util/GregorianCalendar;)J
    .locals 8
    .parameter "startingMillis"
    .parameter "transitions"

    .prologue
    .line 632
    move-object v0, p2

    .local v0, arr$:[Ljava/util/GregorianCalendar;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 633
    .local v3, transition:Ljava/util/GregorianCalendar;
    invoke-virtual {v3}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v4

    .line 634
    .local v4, transitionMillis:J
    cmp-long v6, v4, p0

    if-lez v6, :cond_0

    move-wide v6, v4

    .line 638
    .end local v3           #transition:Ljava/util/GregorianCalendar;
    .end local v4           #transitionMillis:J
    :goto_1
    return-wide v6

    .line 632
    .restart local v3       #transition:Ljava/util/GregorianCalendar;
    .restart local v4       #transitionMillis:J
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 638
    .end local v3           #transition:Ljava/util/GregorianCalendar;
    .end local v4           #transitionMillis:J
    :cond_1
    const-wide/16 v6, 0x0

    goto :goto_1
.end method

.method static findTransitionDate(Ljava/util/TimeZone;JJZ)Ljava/util/GregorianCalendar;
    .locals 6
    .parameter "tz"
    .parameter "startTime"
    .parameter "endTime"
    .parameter "startInDaylightTime"

    .prologue
    .line 300
    move-wide v4, p3

    .line 301
    .local v4, startingEndTime:J
    const/4 v0, 0x0

    .line 304
    .local v0, date:Ljava/util/Date;
    :goto_0
    sub-long v0, p3, p1

    const-wide/32 v2, 0xea60

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 305
    .end local v0           #date:Ljava/util/Date;
    add-long v0, p1, p3

    const-wide/16 v2, 0x2

    div-long/2addr v0, v2

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    .line 306
    .local v0, checkTime:J
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 307
    .local v2, date:Ljava/util/Date;
    invoke-virtual {p0, v2}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result v3

    .line 308
    .local v3, inDaylightTime:Z
    if-eq v3, p5, :cond_0

    .line 309
    move-wide p3, v0

    :goto_1
    move-object v0, v2

    .line 313
    .end local v2           #date:Ljava/util/Date;
    .local v0, date:Ljava/util/Date;
    goto :goto_0

    .line 311
    .local v0, checkTime:J
    .restart local v2       #date:Ljava/util/Date;
    :cond_0
    move-wide p1, v0

    goto :goto_1

    .line 316
    .end local v0           #checkTime:J
    .end local v2           #date:Ljava/util/Date;
    .end local v3           #inDaylightTime:Z
    :cond_1
    cmp-long p3, p3, v4

    if-nez p3, :cond_2

    .line 317
    .end local p3
    const/4 p0, 0x0

    .line 323
    .end local p0
    :goto_2
    return-object p0

    .line 321
    .restart local p0
    :cond_2
    new-instance p3, Ljava/util/GregorianCalendar;

    invoke-direct {p3, p0}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    .line 322
    .local p3, calendar:Ljava/util/GregorianCalendar;
    invoke-virtual {p3, p1, p2}, Ljava/util/GregorianCalendar;->setTimeInMillis(J)V

    move-object p0, p3

    .line 323
    goto :goto_2
.end method

.method static formatTwo(I)Ljava/lang/String;
    .locals 1
    .parameter "num"

    .prologue
    .line 818
    const/16 v0, 0xc

    if-gt p0, v0, :cond_0

    .line 819
    sget-object v0, Lcom/android/exchange/utility/CalendarUtilities;->sTwoCharacterNumbers:[Ljava/lang/String;

    aget-object v0, v0, p0

    .line 821
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static generateEasDayOfWeek(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "dow"

    .prologue
    .line 977
    const/4 v2, 0x0

    .line 978
    .local v2, bits:I
    const/4 v1, 0x1

    .line 979
    .local v1, bit:I
    sget-object v0, Lcom/android/exchange/utility/CalendarUtilities;->sDayTokens:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v5, v0, v3

    .line 981
    .local v5, token:Ljava/lang/String;
    invoke-virtual {p0, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    if-ltz v6, :cond_0

    .line 982
    or-int/2addr v2, v1

    .line 984
    :cond_0
    shl-int/lit8 v1, v1, 0x1

    .line 979
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 986
    .end local v5           #token:Ljava/lang/String;
    :cond_1
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method static getDSTCalendars(Ljava/util/TimeZone;[Ljava/util/GregorianCalendar;[Ljava/util/GregorianCalendar;)Z
    .locals 17
    .parameter "tz"
    .parameter "toDaylightCalendars"
    .parameter "toStandardCalendars"

    .prologue
    .line 499
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v16, v0

    .line 500
    .local v16, maxYears:I
    move-object/from16 v0, p2

    array-length v0, v0

    move v2, v0

    move v0, v2

    move/from16 v1, v16

    if-eq v0, v1, :cond_0

    .line 501
    const/16 p0, 0x0

    .line 531
    .end local p0
    :goto_0
    return p0

    .line 504
    .restart local p0
    :cond_0
    const/4 v2, 0x0

    .local v2, i:I
    move v15, v2

    .end local v2           #i:I
    .local v15, i:I
    :goto_1
    move v0, v15

    move/from16 v1, v16

    if-ge v0, v1, :cond_6

    .line 505
    new-instance v2, Ljava/util/GregorianCalendar;

    move-object v0, v2

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    .line 506
    .local v2, cal:Ljava/util/GregorianCalendar;
    sget v3, Lcom/android/exchange/utility/CalendarUtilities;->sCurrentYear:I

    add-int/2addr v3, v15

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v2 .. v8}, Ljava/util/GregorianCalendar;->set(IIIIII)V

    .line 507
    invoke-virtual {v2}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v4

    .line 509
    .local v4, startTime:J
    const-wide v2, 0x757b12c00L

    add-long/2addr v2, v4

    const-wide/32 v6, 0x1499700

    add-long/2addr v6, v2

    .line 510
    .local v6, endOfYearTime:J
    new-instance v2, Ljava/util/Date;

    .end local v2           #cal:Ljava/util/GregorianCalendar;
    invoke-direct {v2, v4, v5}, Ljava/util/Date;-><init>(J)V

    .line 511
    .local v2, date:Ljava/util/Date;
    move-object/from16 v0, p0

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result v8

    .local v8, startInDaylightTime:Z
    move-object/from16 v3, p0

    .line 513
    invoke-static/range {v3 .. v8}, Lcom/android/exchange/utility/CalendarUtilities;->findTransitionDate(Ljava/util/TimeZone;JJZ)Ljava/util/GregorianCalendar;

    move-result-object v2

    .line 514
    .local v2, cal:Ljava/util/GregorianCalendar;
    if-nez v2, :cond_1

    .line 515
    const/16 p0, 0x0

    goto :goto_0

    .line 516
    :cond_1
    if-eqz v8, :cond_2

    .line 517
    aput-object v2, p2, v15

    .line 522
    :goto_2
    if-nez v8, :cond_3

    const/4 v2, 0x1

    move v14, v2

    .end local v2           #cal:Ljava/util/GregorianCalendar;
    :goto_3
    move-object/from16 v9, p0

    move-wide v10, v4

    move-wide v12, v6

    invoke-static/range {v9 .. v14}, Lcom/android/exchange/utility/CalendarUtilities;->findTransitionDate(Ljava/util/TimeZone;JJZ)Ljava/util/GregorianCalendar;

    move-result-object v2

    .line 523
    .restart local v2       #cal:Ljava/util/GregorianCalendar;
    if-nez v2, :cond_4

    .line 524
    const/16 p0, 0x0

    goto :goto_0

    .line 519
    :cond_2
    aput-object v2, p1, v15

    goto :goto_2

    .line 522
    :cond_3
    const/4 v2, 0x0

    move v14, v2

    goto :goto_3

    .line 525
    :cond_4
    if-eqz v8, :cond_5

    .line 526
    aput-object v2, p1, v15

    .line 504
    :goto_4
    add-int/lit8 v2, v15, 0x1

    .end local v15           #i:I
    .local v2, i:I
    move v15, v2

    .end local v2           #i:I
    .restart local v15       #i:I
    goto :goto_1

    .line 528
    .local v2, cal:Ljava/util/GregorianCalendar;
    :cond_5
    aput-object v2, p2, v15

    goto :goto_4

    .line 531
    .end local v2           #cal:Ljava/util/GregorianCalendar;
    .end local v4           #startTime:J
    .end local v6           #endOfYearTime:J
    .end local v8           #startInDaylightTime:Z
    :cond_6
    const/16 p0, 0x1

    goto :goto_0
.end method

.method public static getLocalAllDayCalendarTime(JLjava/util/TimeZone;)J
    .locals 2
    .parameter "time"
    .parameter "localTimeZone"

    .prologue
    .line 928
    sget-object v0, Lcom/android/exchange/utility/CalendarUtilities;->UTC_TIMEZONE:Ljava/util/TimeZone;

    invoke-static {p0, p1, v0, p2}, Lcom/android/exchange/utility/CalendarUtilities;->transposeAllDayTime(JLjava/util/TimeZone;Ljava/util/TimeZone;)J

    move-result-wide v0

    return-wide v0
.end method

.method static getLong([BI)I
    .locals 3
    .parameter "bytes"
    .parameter "offset"

    .prologue
    .line 163
    add-int/lit8 v0, p1, 0x1

    .end local p1
    .local v0, offset:I
    aget-byte v1, p0, p1

    and-int/lit16 v1, v1, 0xff

    add-int/lit8 p1, v0, 0x1

    .end local v0           #offset:I
    .restart local p1
    aget-byte v2, p0, v0

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    add-int/lit8 v0, p1, 0x1

    .end local p1
    .restart local v0       #offset:I
    aget-byte v2, p0, p1

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    aget-byte v2, p0, v0

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x18

    or-int/2addr v1, v2

    return v1
.end method

.method static getMillisAtTimeZoneDateTransition(Ljava/util/TimeZone;Lcom/android/exchange/utility/CalendarUtilities$TimeZoneDate;)J
    .locals 3
    .parameter "timeZone"
    .parameter "tzd"

    .prologue
    .line 278
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0, p0}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    .line 279
    .local v0, testCalendar:Ljava/util/GregorianCalendar;
    const/4 v1, 0x1

    sget v2, Lcom/android/exchange/utility/CalendarUtilities;->sCurrentYear:I

    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->set(II)V

    .line 280
    const/4 v1, 0x2

    iget v2, p1, Lcom/android/exchange/utility/CalendarUtilities$TimeZoneDate;->month:I

    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->set(II)V

    .line 281
    const/4 v1, 0x7

    iget v2, p1, Lcom/android/exchange/utility/CalendarUtilities$TimeZoneDate;->dayOfWeek:I

    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->set(II)V

    .line 282
    const/16 v1, 0x8

    iget v2, p1, Lcom/android/exchange/utility/CalendarUtilities$TimeZoneDate;->day:I

    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->set(II)V

    .line 283
    const/16 v1, 0xb

    iget v2, p1, Lcom/android/exchange/utility/CalendarUtilities$TimeZoneDate;->hour:I

    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->set(II)V

    .line 284
    const/16 v1, 0xc

    iget v2, p1, Lcom/android/exchange/utility/CalendarUtilities$TimeZoneDate;->minute:I

    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->set(II)V

    .line 285
    const/16 v1, 0xd

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->set(II)V

    .line 286
    invoke-virtual {v0}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v1

    return-wide v1
.end method

.method private static getReminder(JLandroid/content/ContentResolver;)V
    .locals 10
    .parameter "eventId"
    .parameter "mContentResolver"

    .prologue
    const/4 v4, 0x1

    const/4 v7, 0x0

    const-string v9, "minutes"

    const-string v8, "CalendarUtility"

    .line 1718
    sget-object v1, Landroid/provider/Calendar$Reminders;->CONTENT_URI:Landroid/net/Uri;

    new-array v2, v4, [Ljava/lang/String;

    const-string v0, "minutes"

    aput-object v9, v2, v7

    const-string v3, "event_id=?"

    new-array v4, v4, [Ljava/lang/String;

    invoke-static {p0, p1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v7

    const/4 v5, 0x0

    move-object v0, p2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1721
    .local v6, mRemindersCursor:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 1723
    sput v7, Lcom/android/exchange/utility/CalendarUtilities;->mMinutes:I

    .line 1724
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1726
    const-string v0, "minutes"

    invoke-interface {v6, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    sput v0, Lcom/android/exchange/utility/CalendarUtilities;->mMinutes:I

    .line 1738
    :goto_0
    return-void

    .line 1730
    :cond_0
    const-string v0, "CalendarUtility"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mRemindersCursor is empty for eventId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1731
    const/4 v0, -0x1

    sput v0, Lcom/android/exchange/utility/CalendarUtilities;->mMinutes:I

    goto :goto_0

    .line 1736
    :cond_1
    const-string v0, "CalendarUtility"

    const-string v0, "mRemindersCursor is null"

    invoke-static {v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static getTimeZoneDateFromSystemTime([BI)Lcom/android/exchange/utility/CalendarUtilities$TimeZoneDate;
    .locals 6
    .parameter "bytes"
    .parameter "offset"

    .prologue
    .line 234
    new-instance v3, Lcom/android/exchange/utility/CalendarUtilities$TimeZoneDate;

    invoke-direct {v3}, Lcom/android/exchange/utility/CalendarUtilities$TimeZoneDate;-><init>()V

    .line 237
    .local v3, tzd:Lcom/android/exchange/utility/CalendarUtilities$TimeZoneDate;
    add-int/lit8 v4, p1, 0x0

    invoke-static {p0, v4}, Lcom/android/exchange/utility/CalendarUtilities;->getWord([BI)I

    move-result v2

    .line 238
    .local v2, num:I
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/android/exchange/utility/CalendarUtilities$TimeZoneDate;->year:Ljava/lang/String;

    .line 242
    add-int/lit8 v4, p1, 0x2

    invoke-static {p0, v4}, Lcom/android/exchange/utility/CalendarUtilities;->getWord([BI)I

    move-result v2

    .line 243
    if-nez v2, :cond_0

    .line 244
    const/4 v4, 0x0

    .line 268
    :goto_0
    return-object v4

    .line 246
    :cond_0
    const/4 v4, 0x1

    sub-int v4, v2, v4

    iput v4, v3, Lcom/android/exchange/utility/CalendarUtilities$TimeZoneDate;->month:I

    .line 250
    add-int/lit8 v4, p1, 0x4

    invoke-static {p0, v4}, Lcom/android/exchange/utility/CalendarUtilities;->getWord([BI)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Lcom/android/exchange/utility/CalendarUtilities$TimeZoneDate;->dayOfWeek:I

    .line 253
    add-int/lit8 v4, p1, 0x6

    invoke-static {p0, v4}, Lcom/android/exchange/utility/CalendarUtilities;->getWord([BI)I

    move-result v2

    .line 255
    const/4 v4, 0x5

    if-ne v2, v4, :cond_1

    .line 256
    const/4 v4, -0x1

    iput v4, v3, Lcom/android/exchange/utility/CalendarUtilities$TimeZoneDate;->day:I

    .line 262
    :goto_1
    add-int/lit8 v4, p1, 0x8

    invoke-static {p0, v4}, Lcom/android/exchange/utility/CalendarUtilities;->getWord([BI)I

    move-result v0

    .line 263
    .local v0, hour:I
    iput v0, v3, Lcom/android/exchange/utility/CalendarUtilities$TimeZoneDate;->hour:I

    .line 264
    add-int/lit8 v4, p1, 0xa

    invoke-static {p0, v4}, Lcom/android/exchange/utility/CalendarUtilities;->getWord([BI)I

    move-result v1

    .line 265
    .local v1, minute:I
    iput v1, v3, Lcom/android/exchange/utility/CalendarUtilities$TimeZoneDate;->minute:I

    .line 266
    const v4, 0x36ee80

    mul-int/2addr v4, v0

    const v5, 0xea60

    mul-int/2addr v5, v1

    add-int/2addr v4, v5

    iput v4, v3, Lcom/android/exchange/utility/CalendarUtilities$TimeZoneDate;->time:I

    move-object v4, v3

    .line 268
    goto :goto_0

    .line 258
    .end local v0           #hour:I
    .end local v1           #minute:I
    :cond_1
    iput v2, v3, Lcom/android/exchange/utility/CalendarUtilities$TimeZoneDate;->day:I

    goto :goto_1
.end method

.method static getTrueTransitionHour(Ljava/util/GregorianCalendar;)I
    .locals 2
    .parameter "calendar"

    .prologue
    .line 884
    const/16 v1, 0xb

    invoke-virtual {p0, v1}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v0

    .line 885
    .local v0, hour:I
    add-int/lit8 v0, v0, 0x1

    .line 886
    const/16 v1, 0x18

    if-ne v0, v1, :cond_0

    .line 887
    const/4 v0, 0x0

    .line 889
    :cond_0
    return v0
.end method

.method static getTrueTransitionMinute(Ljava/util/GregorianCalendar;)I
    .locals 2
    .parameter "calendar"

    .prologue
    .line 870
    const/16 v1, 0xc

    invoke-virtual {p0, v1}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v0

    .line 871
    .local v0, minute:I
    const/16 v1, 0x3b

    if-ne v0, v1, :cond_0

    .line 872
    const/4 v0, 0x0

    .line 874
    :cond_0
    return v0
.end method

.method public static getUidFromGlobalObjId(Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .parameter "globalObjId"

    .prologue
    .line 1230
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 1233
    .local v8, sb:Ljava/lang/StringBuilder;
    const/4 v9, 0x0

    :try_start_0
    invoke-static {p0, v9}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v4

    .line 1234
    .local v4, idBytes:[B
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v4}, Ljava/lang/String;-><init>([B)V

    .line 1238
    .local v5, idString:Ljava/lang/String;
    const-string v9, "vCal-Uid"

    invoke-virtual {v5, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    .line 1239
    .local v6, index:I
    if-lez v6, :cond_0

    .line 1242
    add-int/lit8 v9, v6, 0xc

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v10

    const/4 v11, 0x1

    sub-int/2addr v10, v11

    invoke-virtual {v5, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 1254
    .end local v4           #idBytes:[B
    .end local v5           #idString:Ljava/lang/String;
    .end local v6           #index:I
    :goto_0
    return-object v9

    .line 1247
    .restart local v4       #idBytes:[B
    .restart local v5       #idString:Ljava/lang/String;
    .restart local v6       #index:I
    :cond_0
    move-object v0, v4

    .local v0, arr$:[B
    array-length v7, v0

    .local v7, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_1
    if-ge v3, v7, :cond_1

    aget-byte v1, v0, v3

    .line 1248
    .local v1, b:B
    invoke-static {v8, v1}, Lcom/android/email/Utility;->byteToHex(Ljava/lang/StringBuilder;I)Ljava/lang/StringBuilder;

    .line 1247
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1250
    .end local v1           #b:B
    :cond_1
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    goto :goto_0

    .line 1252
    .end local v0           #arr$:[B
    .end local v3           #i$:I
    .end local v4           #idBytes:[B
    .end local v5           #idString:Ljava/lang/String;
    .end local v6           #index:I
    .end local v7           #len$:I
    :catch_0
    move-exception v9

    move-object v2, v9

    .local v2, e:Ljava/lang/RuntimeException;
    move-object v9, p0

    .line 1254
    goto :goto_0
.end method

.method public static getUtcAllDayCalendarTime(JLjava/util/TimeZone;)J
    .locals 2
    .parameter "time"
    .parameter "localTimeZone"

    .prologue
    .line 919
    sget-object v0, Lcom/android/exchange/utility/CalendarUtilities;->UTC_TIMEZONE:Ljava/util/TimeZone;

    invoke-static {p0, p1, p2, v0}, Lcom/android/exchange/utility/CalendarUtilities;->transposeAllDayTime(JLjava/util/TimeZone;Ljava/util/TimeZone;)J

    move-result-wide v0

    return-wide v0
.end method

.method static getWord([BI)I
    .locals 3
    .parameter "bytes"
    .parameter "offset"

    .prologue
    .line 177
    add-int/lit8 v0, p1, 0x1

    .end local p1
    .local v0, offset:I
    aget-byte v1, p0, p1

    and-int/lit16 v1, v1, 0xff

    aget-byte v2, p0, v0

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    return v1
.end method

.method static inferRRuleFromCalendars([Ljava/util/GregorianCalendar;)Lcom/android/exchange/utility/CalendarUtilities$RRule;
    .locals 10
    .parameter "calendars"

    .prologue
    .line 406
    const/4 v0, 0x0

    aget-object v0, p0, v0

    .line 407
    .local v0, calendar:Ljava/util/GregorianCalendar;
    if-nez v0, :cond_0

    const/4 p0, 0x0

    .line 456
    .end local v0           #calendar:Ljava/util/GregorianCalendar;
    .end local p0
    :goto_0
    return-object p0

    .line 408
    .restart local v0       #calendar:Ljava/util/GregorianCalendar;
    .restart local p0
    :cond_0
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v7

    .line 409
    .local v7, month:I
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v1

    .line 410
    .local v1, date:I
    const/4 v2, 0x7

    invoke-virtual {v0, v2}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v3

    .line 411
    .local v3, dayOfWeek:I
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v5

    .line 412
    .local v5, week:I
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Ljava/util/GregorianCalendar;->getActualMaximum(I)I

    move-result v6

    .line 413
    .local v6, maxWeek:I
    const/4 v0, 0x0

    .line 414
    .local v0, dateRule:Z
    const/4 v2, 0x0

    .line 415
    .local v2, dayOfWeekRule:Z
    const/4 v4, 0x1

    .local v4, i:I
    move v9, v5

    .end local v5           #week:I
    .local v9, week:I
    move v5, v4

    .end local v4           #i:I
    .local v5, i:I
    move v4, v2

    .end local v2           #dayOfWeekRule:Z
    .local v4, dayOfWeekRule:Z
    move v2, v0

    .end local v0           #dateRule:Z
    .local v2, dateRule:Z
    :goto_1
    array-length v0, p0

    if-ge v5, v0, :cond_a

    .line 416
    aget-object v0, p0, v5

    .line 417
    .local v0, cal:Ljava/util/GregorianCalendar;
    if-nez v0, :cond_1

    const/4 p0, 0x0

    goto :goto_0

    .line 419
    :cond_1
    const/4 v8, 0x2

    invoke-virtual {v0, v8}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v8

    if-eq v8, v7, :cond_2

    .line 420
    const/4 p0, 0x0

    goto :goto_0

    .line 421
    :cond_2
    const/4 v8, 0x7

    invoke-virtual {v0, v8}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v8

    if-ne v3, v8, :cond_7

    .line 423
    if-eqz v2, :cond_3

    .line 424
    const/4 p0, 0x0

    goto :goto_0

    .line 426
    :cond_3
    const/4 v4, 0x1

    .line 427
    const/16 v8, 0x8

    invoke-virtual {v0, v8}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v8

    .line 428
    .local v8, thisWeek:I
    if-eq v9, v8, :cond_6

    .line 429
    if-ltz v9, :cond_4

    if-ne v9, v6, :cond_5

    .line 430
    :cond_4
    const/16 v9, 0x8

    invoke-virtual {v0, v9}, Ljava/util/GregorianCalendar;->getActualMaximum(I)I

    .end local v9           #week:I
    move-result v0

    .line 431
    .local v0, thisMaxWeek:I
    if-ne v8, v0, :cond_5

    .line 433
    const/4 v0, -0x1

    .local v0, week:I
    move v8, v0

    .end local v0           #week:I
    .local v8, week:I
    move v0, v2

    .end local v2           #dateRule:Z
    .local v0, dateRule:Z
    move v2, v4

    .line 415
    .end local v4           #dayOfWeekRule:Z
    .local v2, dayOfWeekRule:Z
    :goto_2
    add-int/lit8 v4, v5, 0x1

    .end local v5           #i:I
    .local v4, i:I
    move v5, v4

    .end local v4           #i:I
    .restart local v5       #i:I
    move v9, v8

    .end local v8           #week:I
    .restart local v9       #week:I
    move v4, v2

    .end local v2           #dayOfWeekRule:Z
    .local v4, dayOfWeekRule:Z
    move v2, v0

    .end local v0           #dateRule:Z
    .local v2, dateRule:Z
    goto :goto_1

    .line 437
    .end local v9           #week:I
    .local v8, thisWeek:I
    :cond_5
    const/4 p0, 0x0

    goto :goto_0

    .local v0, cal:Ljava/util/GregorianCalendar;
    .restart local v9       #week:I
    :cond_6
    move v0, v2

    .end local v2           #dateRule:Z
    .local v0, dateRule:Z
    move v8, v9

    .end local v9           #week:I
    .local v8, week:I
    move v2, v4

    .line 439
    .end local v4           #dayOfWeekRule:Z
    .local v2, dayOfWeekRule:Z
    goto :goto_2

    .end local v8           #week:I
    .local v0, cal:Ljava/util/GregorianCalendar;
    .local v2, dateRule:Z
    .restart local v4       #dayOfWeekRule:Z
    .restart local v9       #week:I
    :cond_7
    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Ljava/util/GregorianCalendar;->get(I)I

    .end local v2           #dateRule:Z
    move-result v0

    .end local v0           #cal:Ljava/util/GregorianCalendar;
    if-ne v1, v0, :cond_9

    .line 441
    if-eqz v4, :cond_8

    .line 442
    const/4 p0, 0x0

    goto :goto_0

    .line 444
    :cond_8
    const/4 v0, 0x1

    .local v0, dateRule:Z
    move v2, v4

    .end local v4           #dayOfWeekRule:Z
    .local v2, dayOfWeekRule:Z
    move v8, v9

    .end local v9           #week:I
    .restart local v8       #week:I
    goto :goto_2

    .line 446
    .end local v0           #dateRule:Z
    .end local v2           #dayOfWeekRule:Z
    .end local v8           #week:I
    .restart local v4       #dayOfWeekRule:Z
    .restart local v9       #week:I
    :cond_9
    const/4 p0, 0x0

    goto :goto_0

    .line 450
    .local v2, dateRule:Z
    :cond_a
    if-eqz v2, :cond_b

    .line 451
    new-instance p0, Lcom/android/exchange/utility/CalendarUtilities$RRule;

    .end local p0
    add-int/lit8 v0, v7, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/exchange/utility/CalendarUtilities$RRule;-><init>(II)V

    goto :goto_0

    .line 456
    .restart local p0
    :cond_b
    new-instance p0, Lcom/android/exchange/utility/CalendarUtilities$RRule;

    .end local p0
    add-int/lit8 v0, v7, 0x1

    invoke-direct {p0, v0, v3, v9}, Lcom/android/exchange/utility/CalendarUtilities$RRule;-><init>(III)V

    goto/16 :goto_0
.end method

.method public static millisToEasDateTime(J)Ljava/lang/String;
    .locals 2
    .parameter "millis"

    .prologue
    .line 828
    sget-object v0, Lcom/android/exchange/utility/CalendarUtilities;->sGmtTimeZone:Ljava/util/TimeZone;

    const/4 v1, 0x1

    invoke-static {p0, p1, v0, v1}, Lcom/android/exchange/utility/CalendarUtilities;->millisToEasDateTime(JLjava/util/TimeZone;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static millisToEasDateTime(JLjava/util/TimeZone;Z)Ljava/lang/String;
    .locals 3
    .parameter "millis"
    .parameter "tz"
    .parameter "withTime"

    .prologue
    .line 840
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 841
    .local v1, sb:Ljava/lang/StringBuilder;
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0, p2}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    .line 842
    .local v0, cal:Ljava/util/GregorianCalendar;
    invoke-virtual {v0, p0, p1}, Ljava/util/GregorianCalendar;->setTimeInMillis(J)V

    .line 843
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 844
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Lcom/android/exchange/utility/CalendarUtilities;->formatTwo(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 845
    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v2

    invoke-static {v2}, Lcom/android/exchange/utility/CalendarUtilities;->formatTwo(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 846
    if-eqz p3, :cond_0

    .line 847
    const/16 v2, 0x54

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 848
    const/16 v2, 0xb

    invoke-virtual {v0, v2}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v2

    invoke-static {v2}, Lcom/android/exchange/utility/CalendarUtilities;->formatTwo(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 849
    const/16 v2, 0xc

    invoke-virtual {v0, v2}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v2

    invoke-static {v2}, Lcom/android/exchange/utility/CalendarUtilities;->formatTwo(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 850
    const/16 v2, 0xd

    invoke-virtual {v0, v2}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v2

    invoke-static {v2}, Lcom/android/exchange/utility/CalendarUtilities;->formatTwo(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 851
    sget-object v2, Lcom/android/exchange/utility/CalendarUtilities;->sGmtTimeZone:Ljava/util/TimeZone;

    invoke-virtual {p2, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 852
    const/16 v2, 0x5a

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 855
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method static putRuleIntoTimeZoneInformation([BILcom/android/exchange/utility/CalendarUtilities$RRule;II)V
    .locals 3
    .parameter "bytes"
    .parameter "offset"
    .parameter "rrule"
    .parameter "hour"
    .parameter "minute"

    .prologue
    .line 201
    add-int/lit8 v0, p1, 0x2

    iget v1, p2, Lcom/android/exchange/utility/CalendarUtilities$RRule;->month:I

    invoke-static {p0, v0, v1}, Lcom/android/exchange/utility/CalendarUtilities;->setWord([BII)V

    .line 203
    add-int/lit8 v0, p1, 0x4

    iget v1, p2, Lcom/android/exchange/utility/CalendarUtilities$RRule;->dayOfWeek:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-static {p0, v0, v1}, Lcom/android/exchange/utility/CalendarUtilities;->setWord([BII)V

    .line 205
    add-int/lit8 v0, p1, 0x6

    iget v1, p2, Lcom/android/exchange/utility/CalendarUtilities$RRule;->week:I

    if-gez v1, :cond_0

    const/4 v1, 0x5

    :goto_0
    invoke-static {p0, v0, v1}, Lcom/android/exchange/utility/CalendarUtilities;->setWord([BII)V

    .line 207
    add-int/lit8 v0, p1, 0x8

    invoke-static {p0, v0, p3}, Lcom/android/exchange/utility/CalendarUtilities;->setWord([BII)V

    .line 208
    add-int/lit8 v0, p1, 0xa

    invoke-static {p0, v0, p4}, Lcom/android/exchange/utility/CalendarUtilities;->setWord([BII)V

    .line 209
    return-void

    .line 205
    :cond_0
    iget v1, p2, Lcom/android/exchange/utility/CalendarUtilities$RRule;->week:I

    goto :goto_0
.end method

.method static putTransitionMillisIntoSystemTime([BIJ)V
    .locals 5
    .parameter "bytes"
    .parameter "offset"
    .parameter "millis"

    .prologue
    .line 213
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    .line 215
    .local v0, cal:Ljava/util/GregorianCalendar;
    const-wide/16 v2, 0x7530

    add-long/2addr v2, p2

    invoke-virtual {v0, v2, v3}, Ljava/util/GregorianCalendar;->setTimeInMillis(J)V

    .line 218
    add-int/lit8 v2, p1, 0x2

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {p0, v2, v3}, Lcom/android/exchange/utility/CalendarUtilities;->setWord([BII)V

    .line 220
    add-int/lit8 v2, p1, 0x4

    const/4 v3, 0x7

    invoke-virtual {v0, v3}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    invoke-static {p0, v2, v3}, Lcom/android/exchange/utility/CalendarUtilities;->setWord([BII)V

    .line 223
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v1

    .line 225
    .local v1, wom:I
    add-int/lit8 v2, p1, 0x6

    if-gez v1, :cond_0

    const/4 v3, 0x5

    :goto_0
    invoke-static {p0, v2, v3}, Lcom/android/exchange/utility/CalendarUtilities;->setWord([BII)V

    .line 228
    add-int/lit8 v2, p1, 0x8

    invoke-static {v0}, Lcom/android/exchange/utility/CalendarUtilities;->getTrueTransitionHour(Ljava/util/GregorianCalendar;)I

    move-result v3

    invoke-static {p0, v2, v3}, Lcom/android/exchange/utility/CalendarUtilities;->setWord([BII)V

    .line 229
    add-int/lit8 v2, p1, 0xa

    invoke-static {v0}, Lcom/android/exchange/utility/CalendarUtilities;->getTrueTransitionMinute(Ljava/util/GregorianCalendar;)I

    move-result v3

    invoke-static {p0, v2, v3}, Lcom/android/exchange/utility/CalendarUtilities;->setWord([BII)V

    .line 230
    return-void

    :cond_0
    move v3, v1

    .line 225
    goto :goto_0
.end method

.method public static recurrenceFromRrule(Ljava/lang/String;JLcom/android/exchange/adapter/Serializer;)V
    .locals 3
    .parameter "rrule"
    .parameter "startTime"
    .parameter "s"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1045
    sget-boolean v0, Lcom/android/exchange/Eas;->USER_LOG:Z

    if-eqz v0, :cond_0

    .line 1046
    const-string v0, "CalendarUtility"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RRULE: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/exchange/SyncManager;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 1048
    :cond_0
    const-string v0, "FREQ="

    invoke-static {p0, v0}, Lcom/android/exchange/utility/CalendarUtilities;->tokenFromRrule(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1052
    .local v0, freq:Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 1053
    const-string v1, "DAILY"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1054
    const/16 p1, 0x11b

    invoke-virtual {p3, p1}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    .line 1055
    .end local p1
    const/16 p1, 0x11c

    const-string p2, "0"

    invoke-virtual {p3, p1, p2}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 1056
    const/16 p1, 0x11f

    const-string p2, "1"

    invoke-virtual {p3, p1, p2}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 1057
    invoke-static {p0, p3}, Lcom/android/exchange/utility/CalendarUtilities;->addUntil(Ljava/lang/String;Lcom/android/exchange/adapter/Serializer;)V

    .line 1058
    invoke-virtual {p3}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    .line 1124
    .end local v0           #freq:Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 1059
    .restart local v0       #freq:Ljava/lang/String;
    .restart local p1
    :cond_2
    const-string v1, "WEEKLY"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1060
    const/16 p1, 0x11b

    invoke-virtual {p3, p1}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    .line 1061
    .end local p1
    const/16 p1, 0x11c

    const-string p2, "1"

    invoke-virtual {p3, p1, p2}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 1064
    const-string p1, "INTERVAL="

    invoke-static {p0, p1}, Lcom/android/exchange/utility/CalendarUtilities;->tokenFromRrule(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1065
    .local p1, interv:Ljava/lang/String;
    const/16 p2, 0x11f

    invoke-virtual {p3, p2, p1}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 1068
    const-string p1, "BYDAY="

    .end local p1           #interv:Ljava/lang/String;
    invoke-static {p0, p1}, Lcom/android/exchange/utility/CalendarUtilities;->tokenFromRrule(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1069
    .local p1, byDay:Ljava/lang/String;
    if-eqz p1, :cond_3

    .line 1070
    const/16 p2, 0x120

    invoke-static {p1}, Lcom/android/exchange/utility/CalendarUtilities;->generateEasDayOfWeek(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .end local p1           #byDay:Ljava/lang/String;
    invoke-virtual {p3, p2, p1}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 1072
    :cond_3
    invoke-static {p0, p3}, Lcom/android/exchange/utility/CalendarUtilities;->addUntil(Ljava/lang/String;Lcom/android/exchange/adapter/Serializer;)V

    .line 1073
    invoke-virtual {p3}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    goto :goto_0

    .line 1074
    .local p1, startTime:J
    :cond_4
    const-string v1, "MONTHLY"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1075
    const-string p1, "BYMONTHDAY="

    .end local p1           #startTime:J
    invoke-static {p0, p1}, Lcom/android/exchange/utility/CalendarUtilities;->tokenFromRrule(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1076
    .local p1, byMonthDay:Ljava/lang/String;
    if-eqz p1, :cond_5

    .line 1078
    const/16 p2, 0x11b

    invoke-virtual {p3, p2}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    .line 1079
    const/16 p2, 0x11c

    const-string v0, "2"

    .end local v0           #freq:Ljava/lang/String;
    invoke-virtual {p3, p2, v0}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 1080
    const/16 p2, 0x121

    invoke-virtual {p3, p2, p1}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 1081
    invoke-static {p0, p3}, Lcom/android/exchange/utility/CalendarUtilities;->addUntil(Ljava/lang/String;Lcom/android/exchange/adapter/Serializer;)V

    .line 1082
    invoke-virtual {p3}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    goto :goto_0

    .line 1084
    .restart local v0       #freq:Ljava/lang/String;
    :cond_5
    const-string p1, "BYDAY="

    .end local p1           #byMonthDay:Ljava/lang/String;
    invoke-static {p0, p1}, Lcom/android/exchange/utility/CalendarUtilities;->tokenFromRrule(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1086
    .local p1, byDay:Ljava/lang/String;
    if-eqz p1, :cond_1

    .line 1088
    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result p2

    .line 1089
    .local p2, wom:I
    const/16 v0, 0x2d

    if-ne p2, v0, :cond_6

    .line 1091
    .end local v0           #freq:Ljava/lang/String;
    const/4 p2, 0x5

    .line 1092
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 1097
    .local p1, bareByDay:Ljava/lang/String;
    :goto_1
    const/16 v0, 0x11b

    invoke-virtual {p3, v0}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    .line 1098
    const/16 v0, 0x11c

    const-string v1, "3"

    invoke-virtual {p3, v0, v1}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 1099
    const/16 v0, 0x122

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    .end local p2           #wom:I
    invoke-virtual {p3, v0, p2}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 1100
    const/16 p2, 0x120

    invoke-static {p1}, Lcom/android/exchange/utility/CalendarUtilities;->generateEasDayOfWeek(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .end local p1           #bareByDay:Ljava/lang/String;
    invoke-virtual {p3, p2, p1}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 1101
    invoke-static {p0, p3}, Lcom/android/exchange/utility/CalendarUtilities;->addUntil(Ljava/lang/String;Lcom/android/exchange/adapter/Serializer;)V

    .line 1102
    invoke-virtual {p3}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    goto/16 :goto_0

    .line 1094
    .local p1, byDay:Ljava/lang/String;
    .restart local p2       #wom:I
    :cond_6
    const/16 v0, 0x30

    sub-int/2addr p2, v0

    .line 1095
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .local p1, bareByDay:Ljava/lang/String;
    goto :goto_1

    .line 1105
    .end local p2           #wom:I
    .restart local v0       #freq:Ljava/lang/String;
    .local p1, startTime:J
    :cond_7
    const-string v1, "YEARLY"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .end local v0           #freq:Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 1106
    const-string v0, "BYMONTH="

    invoke-static {p0, v0}, Lcom/android/exchange/utility/CalendarUtilities;->tokenFromRrule(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1107
    .local v0, byMonth:Ljava/lang/String;
    const-string v1, "BYMONTHDAY="

    invoke-static {p0, v1}, Lcom/android/exchange/utility/CalendarUtilities;->tokenFromRrule(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1108
    .local v1, byMonthDay:Ljava/lang/String;
    if-eqz v0, :cond_8

    if-nez v1, :cond_9

    .line 1110
    :cond_8
    new-instance v0, Ljava/util/GregorianCalendar;

    .end local v0           #byMonth:Ljava/lang/String;
    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    .line 1111
    .local v0, cal:Ljava/util/GregorianCalendar;
    invoke-virtual {v0, p1, p2}, Ljava/util/GregorianCalendar;->setTimeInMillis(J)V

    .line 1112
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object p1

    .end local p1           #startTime:J
    invoke-virtual {v0, p1}, Ljava/util/GregorianCalendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 1113
    const/4 p1, 0x2

    invoke-virtual {v0, p1}, Ljava/util/GregorianCalendar;->get(I)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    .line 1114
    .local p1, byMonth:Ljava/lang/String;
    const/4 p2, 0x5

    invoke-virtual {v0, p2}, Ljava/util/GregorianCalendar;->get(I)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    .line 1116
    .end local v0           #cal:Ljava/util/GregorianCalendar;
    .end local v1           #byMonthDay:Ljava/lang/String;
    .local p2, byMonthDay:Ljava/lang/String;
    :goto_2
    const/16 v0, 0x11b

    invoke-virtual {p3, v0}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    .line 1117
    const/16 v0, 0x11c

    const-string v1, "5"

    invoke-virtual {p3, v0, v1}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 1118
    const/16 v0, 0x121

    invoke-virtual {p3, v0, p2}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 1119
    const/16 p2, 0x123

    invoke-virtual {p3, p2, p1}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 1120
    .end local p2           #byMonthDay:Ljava/lang/String;
    invoke-static {p0, p3}, Lcom/android/exchange/utility/CalendarUtilities;->addUntil(Ljava/lang/String;Lcom/android/exchange/adapter/Serializer;)V

    .line 1121
    invoke-virtual {p3}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    goto/16 :goto_0

    .local v0, byMonth:Ljava/lang/String;
    .restart local v1       #byMonthDay:Ljava/lang/String;
    .local p1, startTime:J
    :cond_9
    move-object p2, v1

    .end local v1           #byMonthDay:Ljava/lang/String;
    .end local p1           #startTime:J
    .restart local p2       #byMonthDay:Ljava/lang/String;
    move-object p1, v0

    .end local v0           #byMonth:Ljava/lang/String;
    .local p1, byMonth:Ljava/lang/String;
    goto :goto_2
.end method

.method static recurrenceUntilToEasUntil(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "until"

    .prologue
    const/4 v3, 0x6

    const/4 v2, 0x4

    .line 1015
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1016
    .local v0, sb:Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1017
    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1018
    const/16 v1, 0x8

    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1019
    const-string v1, "T000000Z"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1020
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static rruleFromRecurrence(IIIIIIILjava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "type"
    .parameter "occurrences"
    .parameter "interval"
    .parameter "dow"
    .parameter "dom"
    .parameter "wom"
    .parameter "moy"
    .parameter "until"

    .prologue
    const-string v3, ";BYMONTH="

    .line 1140
    new-instance v0, Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FREQ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/exchange/utility/CalendarUtilities;->sTypeToFreq:[Ljava/lang/String;

    aget-object v2, v2, p0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1143
    .local v0, rrule:Ljava/lang/StringBuilder;
    if-lez p2, :cond_0

    .line 1144
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ";INTERVAL="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1146
    :cond_0
    if-lez p1, :cond_1

    .line 1147
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ";COUNT="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1151
    :cond_1
    packed-switch p0, :pswitch_data_0

    .line 1180
    :cond_2
    :goto_0
    :pswitch_0
    if-eqz p7, :cond_3

    .line 1181
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ";UNTIL="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1184
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1154
    :pswitch_1
    if-lez p3, :cond_2

    const/4 v1, -0x1

    invoke-static {v0, p3, v1}, Lcom/android/exchange/utility/CalendarUtilities;->addByDay(Ljava/lang/StringBuilder;II)V

    goto :goto_0

    .line 1157
    :pswitch_2
    if-lez p4, :cond_2

    invoke-static {v0, p4}, Lcom/android/exchange/utility/CalendarUtilities;->addByMonthDay(Ljava/lang/StringBuilder;I)V

    goto :goto_0

    .line 1160
    :pswitch_3
    if-lez p3, :cond_2

    invoke-static {v0, p3, p5}, Lcom/android/exchange/utility/CalendarUtilities;->addByDay(Ljava/lang/StringBuilder;II)V

    goto :goto_0

    .line 1163
    :pswitch_4
    if-lez p4, :cond_4

    invoke-static {v0, p4}, Lcom/android/exchange/utility/CalendarUtilities;->addByMonthDay(Ljava/lang/StringBuilder;I)V

    .line 1164
    :cond_4
    if-lez p6, :cond_2

    .line 1165
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ";BYMONTH="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1169
    :pswitch_5
    if-lez p3, :cond_5

    invoke-static {v0, p3, p5}, Lcom/android/exchange/utility/CalendarUtilities;->addByDay(Ljava/lang/StringBuilder;II)V

    .line 1170
    :cond_5
    if-lez p4, :cond_6

    invoke-static {v0, p4}, Lcom/android/exchange/utility/CalendarUtilities;->addByMonthDay(Ljava/lang/StringBuilder;I)V

    .line 1171
    :cond_6
    if-lez p6, :cond_2

    .line 1172
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ";BYMONTH="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1151
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method static setLong([BII)V
    .locals 2
    .parameter "bytes"
    .parameter "offset"
    .parameter "value"

    .prologue
    .line 169
    add-int/lit8 v0, p1, 0x1

    .end local p1
    .local v0, offset:I
    and-int/lit16 v1, p2, 0xff

    int-to-byte v1, v1

    aput-byte v1, p0, p1

    .line 170
    add-int/lit8 p1, v0, 0x1

    .end local v0           #offset:I
    .restart local p1
    shr-int/lit8 v1, p2, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 171
    add-int/lit8 v0, p1, 0x1

    .end local p1
    .restart local v0       #offset:I
    shr-int/lit8 v1, p2, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p0, p1

    .line 172
    shr-int/lit8 v1, p2, 0x18

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 173
    return-void
.end method

.method static setWord([BII)V
    .locals 2
    .parameter "bytes"
    .parameter "offset"
    .parameter "value"

    .prologue
    .line 182
    add-int/lit8 v0, p1, 0x1

    .end local p1
    .local v0, offset:I
    and-int/lit16 v1, p2, 0xff

    int-to-byte v1, v1

    aput-byte v1, p0, p1

    .line 183
    shr-int/lit8 v1, p2, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 184
    return-void
.end method

.method public static timeZoneToTziString(Ljava/util/TimeZone;)Ljava/lang/String;
    .locals 5
    .parameter "tz"

    .prologue
    .line 333
    sget-object v2, Lcom/android/exchange/utility/CalendarUtilities;->sTziStringCache:Ljava/util/HashMap;

    invoke-virtual {v2, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 334
    .local v0, tziString:Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 335
    sget-boolean v2, Lcom/android/exchange/Eas;->USER_LOG:Z

    if-eqz v2, :cond_0

    .line 336
    const-string v2, "CalendarUtility"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "TZI string for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Ljava/util/TimeZone;->getDisplayName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " found in cache."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/exchange/SyncManager;->log(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    move-object v1, v0

    .line 342
    .end local v0           #tziString:Ljava/lang/String;
    .local v1, tziString:Ljava/lang/String;
    :goto_0
    return-object v1

    .line 340
    .end local v1           #tziString:Ljava/lang/String;
    .restart local v0       #tziString:Ljava/lang/String;
    :cond_1
    invoke-static {p0}, Lcom/android/exchange/utility/CalendarUtilities;->timeZoneToTziStringImpl(Ljava/util/TimeZone;)Ljava/lang/String;

    move-result-object v0

    .line 341
    sget-object v2, Lcom/android/exchange/utility/CalendarUtilities;->sTziStringCache:Ljava/util/HashMap;

    invoke-virtual {v2, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    .line 342
    .end local v0           #tziString:Ljava/lang/String;
    .restart local v1       #tziString:Ljava/lang/String;
    goto :goto_0
.end method

.method static timeZoneToTziStringImpl(Ljava/util/TimeZone;)Ljava/lang/String;
    .locals 8
    .parameter "tz"

    .prologue
    .line 650
    const/16 v0, 0xac

    new-array v5, v0, [B

    .line 651
    .local v5, tziBytes:[B
    invoke-virtual {p0}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v0

    neg-int v0, v0

    .line 652
    .local v0, standardBias:I
    const v1, 0xea60

    div-int/2addr v0, v1

    .line 653
    const/4 v1, 0x0

    invoke-static {v5, v1, v0}, Lcom/android/exchange/utility/CalendarUtilities;->setLong([BII)V

    .line 655
    invoke-virtual {p0}, Ljava/util/TimeZone;->useDaylightTime()Z

    move-result v0

    .end local v0           #standardBias:I
    if-eqz v0, :cond_1

    .line 656
    const/4 v0, 0x3

    new-array v4, v0, [Ljava/util/GregorianCalendar;

    .line 657
    .local v4, toDaylightCalendars:[Ljava/util/GregorianCalendar;
    const/4 v0, 0x3

    new-array v2, v0, [Ljava/util/GregorianCalendar;

    .line 660
    .local v2, toStandardCalendars:[Ljava/util/GregorianCalendar;
    invoke-static {p0, v4, v2}, Lcom/android/exchange/utility/CalendarUtilities;->getDSTCalendars(Ljava/util/TimeZone;[Ljava/util/GregorianCalendar;[Ljava/util/GregorianCalendar;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 662
    invoke-static {v4}, Lcom/android/exchange/utility/CalendarUtilities;->inferRRuleFromCalendars([Ljava/util/GregorianCalendar;)Lcom/android/exchange/utility/CalendarUtilities$RRule;

    move-result-object v0

    .line 663
    .local v0, daylightRule:Lcom/android/exchange/utility/CalendarUtilities$RRule;
    invoke-static {v2}, Lcom/android/exchange/utility/CalendarUtilities;->inferRRuleFromCalendars([Ljava/util/GregorianCalendar;)Lcom/android/exchange/utility/CalendarUtilities$RRule;

    move-result-object v1

    .line 664
    .local v1, standardRule:Lcom/android/exchange/utility/CalendarUtilities$RRule;
    if-eqz v0, :cond_2

    iget v3, v0, Lcom/android/exchange/utility/CalendarUtilities$RRule;->type:I

    const/4 v6, 0x1

    if-ne v3, v6, :cond_2

    if-eqz v1, :cond_2

    iget v3, v1, Lcom/android/exchange/utility/CalendarUtilities$RRule;->type:I

    const/4 v6, 0x1

    if-ne v3, v6, :cond_2

    .line 668
    const/16 v3, 0x44

    const/4 v6, 0x0

    aget-object v6, v2, v6

    invoke-static {v6}, Lcom/android/exchange/utility/CalendarUtilities;->getTrueTransitionHour(Ljava/util/GregorianCalendar;)I

    move-result v6

    const/4 v7, 0x0

    aget-object v2, v2, v7

    .end local v2           #toStandardCalendars:[Ljava/util/GregorianCalendar;
    invoke-static {v2}, Lcom/android/exchange/utility/CalendarUtilities;->getTrueTransitionMinute(Ljava/util/GregorianCalendar;)I

    move-result v2

    invoke-static {v5, v3, v1, v6, v2}, Lcom/android/exchange/utility/CalendarUtilities;->putRuleIntoTimeZoneInformation([BILcom/android/exchange/utility/CalendarUtilities$RRule;II)V

    .line 672
    const/16 v1, 0x98

    const/4 v2, 0x0

    aget-object v2, v4, v2

    .end local v1           #standardRule:Lcom/android/exchange/utility/CalendarUtilities$RRule;
    invoke-static {v2}, Lcom/android/exchange/utility/CalendarUtilities;->getTrueTransitionHour(Ljava/util/GregorianCalendar;)I

    move-result v2

    const/4 v3, 0x0

    aget-object v3, v4, v3

    invoke-static {v3}, Lcom/android/exchange/utility/CalendarUtilities;->getTrueTransitionMinute(Ljava/util/GregorianCalendar;)I

    move-result v3

    invoke-static {v5, v1, v0, v2, v3}, Lcom/android/exchange/utility/CalendarUtilities;->putRuleIntoTimeZoneInformation([BILcom/android/exchange/utility/CalendarUtilities$RRule;II)V

    .line 691
    .end local v0           #daylightRule:Lcom/android/exchange/utility/CalendarUtilities$RRule;
    .end local v4           #toDaylightCalendars:[Ljava/util/GregorianCalendar;
    :cond_0
    :goto_0
    invoke-virtual {p0}, Ljava/util/TimeZone;->getDSTSavings()I

    move-result p0

    .line 692
    .local p0, dstOffset:I
    const/16 v0, 0xa8

    neg-int p0, p0

    const v1, 0xea60

    div-int/2addr p0, v1

    .end local p0           #dstOffset:I
    invoke-static {v5, v0, p0}, Lcom/android/exchange/utility/CalendarUtilities;->setLong([BII)V

    .line 694
    :cond_1
    const/4 p0, 0x2

    invoke-static {v5, p0}, Landroid/util/Base64;->encode([BI)[B

    move-result-object p0

    .line 695
    .local p0, tziEncodedBytes:[B
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    .line 696
    .local v0, tziString:Ljava/lang/String;
    return-object v0

    .line 679
    .local v0, daylightRule:Lcom/android/exchange/utility/CalendarUtilities$RRule;
    .restart local v1       #standardRule:Lcom/android/exchange/utility/CalendarUtilities$RRule;
    .restart local v2       #toStandardCalendars:[Ljava/util/GregorianCalendar;
    .restart local v4       #toDaylightCalendars:[Ljava/util/GregorianCalendar;
    .local p0, tz:Ljava/util/TimeZone;
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 680
    .end local v1           #standardRule:Lcom/android/exchange/utility/CalendarUtilities$RRule;
    .local v0, now:J
    invoke-static {v0, v1, v2}, Lcom/android/exchange/utility/CalendarUtilities;->findNextTransition(J[Ljava/util/GregorianCalendar;)J

    move-result-wide v2

    .line 681
    .local v2, standardTransition:J
    invoke-static {v0, v1, v4}, Lcom/android/exchange/utility/CalendarUtilities;->findNextTransition(J[Ljava/util/GregorianCalendar;)J

    move-result-wide v0

    .line 683
    .local v0, daylightTransition:J
    const-wide/16 v6, 0x0

    cmp-long v4, v2, v6

    if-eqz v4, :cond_0

    .end local v4           #toDaylightCalendars:[Ljava/util/GregorianCalendar;
    const-wide/16 v6, 0x0

    cmp-long v4, v0, v6

    if-eqz v4, :cond_0

    .line 684
    const/16 v4, 0x44

    invoke-static {v5, v4, v2, v3}, Lcom/android/exchange/utility/CalendarUtilities;->putTransitionMillisIntoSystemTime([BIJ)V

    .line 686
    const/16 v2, 0x98

    invoke-static {v5, v2, v0, v1}, Lcom/android/exchange/utility/CalendarUtilities;->putTransitionMillisIntoSystemTime([BIJ)V

    goto :goto_0
.end method

.method static timeZoneToVTimezone(Ljava/util/TimeZone;Lcom/android/exchange/utility/SimpleIcsWriter;)V
    .locals 12
    .parameter "tz"
    .parameter "writer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 560
    invoke-virtual {p0}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v0

    const v1, 0xea60

    div-int/2addr v0, v1

    .line 561
    .local v0, rawOffsetMinutes:I
    invoke-static {v0}, Lcom/android/exchange/utility/CalendarUtilities;->utcOffsetString(I)Ljava/lang/String;

    move-result-object v4

    .line 564
    .local v4, standardOffsetString:Ljava/lang/String;
    const-string v1, "BEGIN"

    const-string v2, "VTIMEZONE"

    invoke-virtual {p1, v1, v2}, Lcom/android/exchange/utility/SimpleIcsWriter;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 565
    const-string v1, "TZID"

    invoke-virtual {p0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/android/exchange/utility/SimpleIcsWriter;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 566
    const-string v1, "X-LIC-LOCATION"

    invoke-virtual {p0}, Ljava/util/TimeZone;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/android/exchange/utility/SimpleIcsWriter;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 569
    invoke-virtual {p0}, Ljava/util/TimeZone;->useDaylightTime()Z

    move-result v1

    if-nez v1, :cond_0

    .line 570
    invoke-static {p1, p0, v4}, Lcom/android/exchange/utility/CalendarUtilities;->writeNoDST(Lcom/android/exchange/utility/SimpleIcsWriter;Ljava/util/TimeZone;Ljava/lang/String;)V

    .line 624
    .end local v0           #rawOffsetMinutes:I
    .end local v4           #standardOffsetString:Ljava/lang/String;
    .end local p0
    :goto_0
    return-void

    .line 574
    .restart local v0       #rawOffsetMinutes:I
    .restart local v4       #standardOffsetString:Ljava/lang/String;
    .restart local p0
    :cond_0
    const/4 v3, 0x3

    .line 575
    .local v3, maxYears:I
    new-array v6, v3, [Ljava/util/GregorianCalendar;

    .line 576
    .local v6, toDaylightCalendars:[Ljava/util/GregorianCalendar;
    new-array v7, v3, [Ljava/util/GregorianCalendar;

    .line 577
    .local v7, toStandardCalendars:[Ljava/util/GregorianCalendar;
    invoke-static {p0, v6, v7}, Lcom/android/exchange/utility/CalendarUtilities;->getDSTCalendars(Ljava/util/TimeZone;[Ljava/util/GregorianCalendar;[Ljava/util/GregorianCalendar;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 578
    invoke-static {p1, p0, v4}, Lcom/android/exchange/utility/CalendarUtilities;->writeNoDST(Lcom/android/exchange/utility/SimpleIcsWriter;Ljava/util/TimeZone;Ljava/lang/String;)V

    goto :goto_0

    .line 582
    :cond_1
    invoke-static {v6}, Lcom/android/exchange/utility/CalendarUtilities;->inferRRuleFromCalendars([Ljava/util/GregorianCalendar;)Lcom/android/exchange/utility/CalendarUtilities$RRule;

    move-result-object v1

    .line 583
    .local v1, daylightRule:Lcom/android/exchange/utility/CalendarUtilities$RRule;
    invoke-static {v7}, Lcom/android/exchange/utility/CalendarUtilities;->inferRRuleFromCalendars([Ljava/util/GregorianCalendar;)Lcom/android/exchange/utility/CalendarUtilities$RRule;

    move-result-object v5

    .line 584
    .local v5, standardRule:Lcom/android/exchange/utility/CalendarUtilities$RRule;
    invoke-virtual {p0}, Ljava/util/TimeZone;->getDSTSavings()I

    move-result v2

    const v8, 0xea60

    div-int/2addr v2, v8

    add-int/2addr v0, v2

    invoke-static {v0}, Lcom/android/exchange/utility/CalendarUtilities;->utcOffsetString(I)Ljava/lang/String;

    .end local v0           #rawOffsetMinutes:I
    move-result-object v0

    .line 588
    .local v0, daylightOffsetString:Ljava/lang/String;
    if-eqz v1, :cond_4

    if-eqz v5, :cond_4

    const/4 v2, 0x1

    .line 591
    .local v2, hasRule:Z
    :goto_1
    const-string v8, "BEGIN"

    const-string v9, "DAYLIGHT"

    invoke-virtual {p1, v8, v9}, Lcom/android/exchange/utility/SimpleIcsWriter;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 592
    const-string v8, "TZOFFSETFROM"

    invoke-virtual {p1, v8, v4}, Lcom/android/exchange/utility/SimpleIcsWriter;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 593
    const-string v8, "TZOFFSETTO"

    invoke-virtual {p1, v8, v0}, Lcom/android/exchange/utility/SimpleIcsWriter;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 594
    const-string v8, "DTSTART"

    const/4 v9, 0x0

    aget-object v9, v6, v9

    invoke-virtual {v9}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v9

    const/4 v11, 0x1

    invoke-static {v9, v10, p0, v11}, Lcom/android/exchange/utility/CalendarUtilities;->transitionMillisToVCalendarTime(JLjava/util/TimeZone;Z)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v8, v9}, Lcom/android/exchange/utility/SimpleIcsWriter;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 597
    if-eqz v2, :cond_5

    .line 598
    const-string v6, "RRULE"

    .end local v6           #toDaylightCalendars:[Ljava/util/GregorianCalendar;
    invoke-virtual {v1}, Lcom/android/exchange/utility/CalendarUtilities$RRule;->toString()Ljava/lang/String;

    move-result-object v1

    .end local v1           #daylightRule:Lcom/android/exchange/utility/CalendarUtilities$RRule;
    invoke-virtual {p1, v6, v1}, Lcom/android/exchange/utility/SimpleIcsWriter;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 605
    :cond_2
    const-string v1, "END"

    const-string v6, "DAYLIGHT"

    invoke-virtual {p1, v1, v6}, Lcom/android/exchange/utility/SimpleIcsWriter;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 607
    const-string v1, "BEGIN"

    const-string v6, "STANDARD"

    invoke-virtual {p1, v1, v6}, Lcom/android/exchange/utility/SimpleIcsWriter;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 608
    const-string v1, "TZOFFSETFROM"

    invoke-virtual {p1, v1, v0}, Lcom/android/exchange/utility/SimpleIcsWriter;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 609
    const-string v0, "TZOFFSETTO"

    .end local v0           #daylightOffsetString:Ljava/lang/String;
    invoke-virtual {p1, v0, v4}, Lcom/android/exchange/utility/SimpleIcsWriter;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 610
    const-string v0, "DTSTART"

    const/4 v1, 0x0

    aget-object v1, v7, v1

    invoke-virtual {v1}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v8

    const/4 v1, 0x0

    invoke-static {v8, v9, p0, v1}, Lcom/android/exchange/utility/CalendarUtilities;->transitionMillisToVCalendarTime(JLjava/util/TimeZone;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/exchange/utility/SimpleIcsWriter;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 613
    if-eqz v2, :cond_6

    .line 614
    const-string p0, "RRULE"

    .end local p0
    invoke-virtual {v5}, Lcom/android/exchange/utility/CalendarUtilities$RRule;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Lcom/android/exchange/utility/SimpleIcsWriter;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 621
    .end local v2           #hasRule:Z
    .end local v4           #standardOffsetString:Ljava/lang/String;
    :cond_3
    const-string p0, "END"

    const-string v0, "STANDARD"

    invoke-virtual {p1, p0, v0}, Lcom/android/exchange/utility/SimpleIcsWriter;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 623
    const-string p0, "END"

    const-string v0, "VTIMEZONE"

    invoke-virtual {p1, p0, v0}, Lcom/android/exchange/utility/SimpleIcsWriter;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 588
    .restart local v0       #daylightOffsetString:Ljava/lang/String;
    .restart local v1       #daylightRule:Lcom/android/exchange/utility/CalendarUtilities$RRule;
    .restart local v4       #standardOffsetString:Ljava/lang/String;
    .restart local v6       #toDaylightCalendars:[Ljava/util/GregorianCalendar;
    .restart local p0
    :cond_4
    const/4 v2, 0x0

    goto :goto_1

    .line 600
    .restart local v2       #hasRule:Z
    :cond_5
    const/4 v1, 0x1

    .local v1, i:I
    :goto_2
    if-ge v1, v3, :cond_2

    .line 601
    const-string v8, "RDATE"

    aget-object v9, v6, v1

    invoke-virtual {v9}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v9

    const/4 v11, 0x1

    invoke-static {v9, v10, p0, v11}, Lcom/android/exchange/utility/CalendarUtilities;->transitionMillisToVCalendarTime(JLjava/util/TimeZone;Z)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v8, v9}, Lcom/android/exchange/utility/SimpleIcsWriter;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 600
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 616
    .end local v0           #daylightOffsetString:Ljava/lang/String;
    .end local v1           #i:I
    .end local v6           #toDaylightCalendars:[Ljava/util/GregorianCalendar;
    :cond_6
    const/4 v0, 0x1

    .end local v2           #hasRule:Z
    .end local v4           #standardOffsetString:Ljava/lang/String;
    .local v0, i:I
    :goto_3
    if-ge v0, v3, :cond_3

    .line 617
    const-string v1, "RDATE"

    aget-object v2, v7, v0

    invoke-virtual {v2}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v4

    const/4 v2, 0x1

    invoke-static {v4, v5, p0, v2}, Lcom/android/exchange/utility/CalendarUtilities;->transitionMillisToVCalendarTime(JLjava/util/TimeZone;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/android/exchange/utility/SimpleIcsWriter;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 616
    add-int/lit8 v0, v0, 0x1

    goto :goto_3
.end method

.method static tokenFromRrule(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "rrule"
    .parameter "token"

    .prologue
    .line 996
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 997
    .local v4, start:I
    if-gez v4, :cond_0

    const/4 v5, 0x0

    .line 1006
    :goto_0
    return-object v5

    .line 998
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 999
    .local v3, len:I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    .line 1000
    move v1, v4

    .line 1003
    .local v1, end:I
    :goto_1
    add-int/lit8 v2, v1, 0x1

    .end local v1           #end:I
    .local v2, end:I
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1004
    .local v0, c:C
    const/16 v5, 0x3b

    if-eq v0, v5, :cond_1

    if-ne v2, v3, :cond_3

    .line 1005
    :cond_1
    if-ne v2, v3, :cond_2

    add-int/lit8 v1, v2, 0x1

    .line 1006
    .end local v2           #end:I
    .restart local v1       #end:I
    :goto_2
    const/4 v5, 0x1

    sub-int v5, v1, v5

    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .end local v1           #end:I
    .restart local v2       #end:I
    :cond_2
    move v1, v2

    .end local v2           #end:I
    .restart local v1       #end:I
    goto :goto_2

    .end local v1           #end:I
    .restart local v2       #end:I
    :cond_3
    move v1, v2

    .end local v2           #end:I
    .restart local v1       #end:I
    goto :goto_1
.end method

.method static transitionMillisToVCalendarTime(JLjava/util/TimeZone;Z)Ljava/lang/String;
    .locals 3
    .parameter "millis"
    .parameter "tz"
    .parameter "dst"

    .prologue
    .line 900
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 901
    .local v1, sb:Ljava/lang/StringBuilder;
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0, p2}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    .line 902
    .local v0, cal:Ljava/util/GregorianCalendar;
    invoke-virtual {v0, p0, p1}, Ljava/util/GregorianCalendar;->setTimeInMillis(J)V

    .line 903
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 904
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Lcom/android/exchange/utility/CalendarUtilities;->formatTwo(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 905
    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v2

    invoke-static {v2}, Lcom/android/exchange/utility/CalendarUtilities;->formatTwo(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 906
    const/16 v2, 0x54

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 907
    invoke-static {v0}, Lcom/android/exchange/utility/CalendarUtilities;->getTrueTransitionHour(Ljava/util/GregorianCalendar;)I

    move-result v2

    invoke-static {v2}, Lcom/android/exchange/utility/CalendarUtilities;->formatTwo(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 908
    invoke-static {v0}, Lcom/android/exchange/utility/CalendarUtilities;->getTrueTransitionMinute(Ljava/util/GregorianCalendar;)I

    move-result v2

    invoke-static {v2}, Lcom/android/exchange/utility/CalendarUtilities;->formatTwo(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 909
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/android/exchange/utility/CalendarUtilities;->formatTwo(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 910
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static transposeAllDayTime(JLjava/util/TimeZone;Ljava/util/TimeZone;)J
    .locals 8
    .parameter "time"
    .parameter "fromTimeZone"
    .parameter "toTimeZone"

    .prologue
    const/4 v4, 0x0

    .line 933
    new-instance v7, Ljava/util/GregorianCalendar;

    invoke-direct {v7, p2}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    .line 934
    .local v7, fromCalendar:Ljava/util/GregorianCalendar;
    invoke-virtual {v7, p0, p1}, Ljava/util/GregorianCalendar;->setTimeInMillis(J)V

    .line 935
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0, p3}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    .line 937
    .local v0, toCalendar:Ljava/util/GregorianCalendar;
    const/4 v1, 0x1

    invoke-virtual {v7, v1}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v1

    const/4 v2, 0x2

    invoke-virtual {v7, v2}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v2

    const/4 v3, 0x5

    invoke-virtual {v7, v3}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v3

    move v5, v4

    move v6, v4

    invoke-virtual/range {v0 .. v6}, Ljava/util/GregorianCalendar;->set(IIIIII)V

    .line 940
    invoke-virtual {v0}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v1

    return-wide v1
.end method

.method public static tziStringToTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;
    .locals 4
    .parameter "timeZoneString"

    .prologue
    .line 706
    sget-object v1, Lcom/android/exchange/utility/CalendarUtilities;->sTimeZoneCache:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/TimeZone;

    .line 707
    .local v0, timeZone:Ljava/util/TimeZone;
    if-eqz v0, :cond_1

    .line 708
    sget-boolean v1, Lcom/android/exchange/Eas;->USER_LOG:Z

    if-eqz v1, :cond_0

    .line 709
    const-string v1, "CalendarUtility"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " Using cached TimeZone "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/util/TimeZone;->getDisplayName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/exchange/SyncManager;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 721
    :cond_0
    :goto_0
    return-object v0

    .line 712
    :cond_1
    invoke-static {p0}, Lcom/android/exchange/utility/CalendarUtilities;->tziStringToTimeZoneImpl(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    .line 713
    if-nez v0, :cond_2

    .line 716
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TimeZone not found using default: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/exchange/SyncManager;->alwaysLog(Ljava/lang/String;)V

    .line 717
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    .line 719
    :cond_2
    sget-object v1, Lcom/android/exchange/utility/CalendarUtilities;->sTimeZoneCache:Ljava/util/HashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method static tziStringToTimeZoneImpl(Ljava/lang/String;)Ljava/util/TimeZone;
    .locals 14
    .parameter "timeZoneString"

    .prologue
    .line 731
    const/4 v1, 0x0

    .line 733
    .local v1, timeZone:Ljava/util/TimeZone;
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    .line 739
    .local v0, timeZoneBytes:[B
    const/4 p0, 0x0

    invoke-static {v0, p0}, Lcom/android/exchange/utility/CalendarUtilities;->getLong([BI)I

    .end local p0
    move-result p0

    mul-int/lit8 p0, p0, -0x1

    const v2, 0xea60

    mul-int/2addr p0, v2

    .line 743
    .local p0, bias:I
    invoke-static {p0}, Ljava/util/TimeZone;->getAvailableIDs(I)[Ljava/lang/String;

    move-result-object v11

    .line 744
    .local v11, zoneIds:[Ljava/lang/String;
    array-length p0, v11

    .end local p0           #bias:I
    if-lez p0, :cond_6

    .line 747
    const/16 p0, 0x44

    invoke-static {v0, p0}, Lcom/android/exchange/utility/CalendarUtilities;->getTimeZoneDateFromSystemTime([BI)Lcom/android/exchange/utility/CalendarUtilities$TimeZoneDate;

    move-result-object v2

    .line 749
    .local v2, dstEnd:Lcom/android/exchange/utility/CalendarUtilities$TimeZoneDate;
    if-nez v2, :cond_1

    .line 752
    const/4 p0, 0x0

    aget-object p0, v11, p0

    invoke-static {p0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object p0

    .line 753
    .end local v1           #timeZone:Ljava/util/TimeZone;
    .local p0, timeZone:Ljava/util/TimeZone;
    sget-boolean v0, Lcom/android/exchange/Eas;->USER_LOG:Z

    .end local v0           #timeZoneBytes:[B
    if-eqz v0, :cond_0

    .line 754
    const-string v0, "CalendarUtility"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TimeZone without DST found by offset: "

    .end local v2           #dstEnd:Lcom/android/exchange/utility/CalendarUtilities$TimeZoneDate;
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/util/TimeZone;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/exchange/SyncManager;->log(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    move-object v0, p0

    .line 807
    :goto_0
    return-object v0

    .line 759
    .end local p0           #timeZone:Ljava/util/TimeZone;
    .restart local v0       #timeZoneBytes:[B
    .restart local v1       #timeZone:Ljava/util/TimeZone;
    .restart local v2       #dstEnd:Lcom/android/exchange/utility/CalendarUtilities$TimeZoneDate;
    :cond_1
    const/16 p0, 0x98

    invoke-static {v0, p0}, Lcom/android/exchange/utility/CalendarUtilities;->getTimeZoneDateFromSystemTime([BI)Lcom/android/exchange/utility/CalendarUtilities$TimeZoneDate;

    move-result-object v5

    .line 762
    .local v5, dstStart:Lcom/android/exchange/utility/CalendarUtilities$TimeZoneDate;
    const/16 p0, 0xa8

    invoke-static {v0, p0}, Lcom/android/exchange/utility/CalendarUtilities;->getLong([BI)I

    move-result p0

    mul-int/lit8 p0, p0, -0x1

    const v0, 0xea60

    mul-int/2addr p0, v0

    int-to-long v3, p0

    .line 767
    .local v3, dstSavings:J
    move-object v0, v11

    .local v0, arr$:[Ljava/lang/String;
    array-length v7, v0

    .local v7, len$:I
    const/4 p0, 0x0

    .local p0, i$:I
    move v6, p0

    .end local p0           #i$:I
    .local v6, i$:I
    move-object p0, v1

    .end local v1           #timeZone:Ljava/util/TimeZone;
    .local p0, timeZone:Ljava/util/TimeZone;
    :goto_1
    if-ge v6, v7, :cond_4

    aget-object p0, v0, v6

    .line 769
    .local p0, zoneId:Ljava/lang/String;
    invoke-static {p0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v10

    .line 778
    .local v10, timeZone:Ljava/util/TimeZone;
    invoke-static {v10, v5}, Lcom/android/exchange/utility/CalendarUtilities;->getMillisAtTimeZoneDateTransition(Ljava/util/TimeZone;Lcom/android/exchange/utility/CalendarUtilities$TimeZoneDate;)J

    move-result-wide v8

    .line 779
    .local v8, millisAtTransition:J
    new-instance v1, Ljava/util/Date;

    const-wide/32 v12, 0xea60

    sub-long v12, v8, v12

    invoke-direct {v1, v12, v13}, Ljava/util/Date;-><init>(J)V

    .line 780
    .local v1, before:Ljava/util/Date;
    new-instance p0, Ljava/util/Date;

    .end local p0           #zoneId:Ljava/lang/String;
    const-wide/32 v12, 0xea60

    add-long/2addr v12, v8

    invoke-direct {p0, v12, v13}, Ljava/util/Date;-><init>(J)V

    .line 781
    .local p0, after:Ljava/util/Date;
    invoke-virtual {v10, v1}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 767
    :cond_2
    add-int/lit8 p0, v6, 0x1

    .end local v6           #i$:I
    .local p0, i$:I
    move v6, p0

    .end local p0           #i$:I
    .restart local v6       #i$:I
    move-object p0, v10

    .end local v10           #timeZone:Ljava/util/TimeZone;
    .local p0, timeZone:Ljava/util/TimeZone;
    goto :goto_1

    .line 782
    .restart local v10       #timeZone:Ljava/util/TimeZone;
    .local p0, after:Ljava/util/Date;
    :cond_3
    invoke-virtual {v10, p0}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 785
    invoke-static {v10, v2}, Lcom/android/exchange/utility/CalendarUtilities;->getMillisAtTimeZoneDateTransition(Ljava/util/TimeZone;Lcom/android/exchange/utility/CalendarUtilities$TimeZoneDate;)J

    move-result-wide v8

    .line 788
    new-instance v1, Ljava/util/Date;

    .end local v1           #before:Ljava/util/Date;
    const-wide/32 v12, 0xea60

    add-long/2addr v12, v3

    sub-long v12, v8, v12

    invoke-direct {v1, v12, v13}, Ljava/util/Date;-><init>(J)V

    .line 789
    .restart local v1       #before:Ljava/util/Date;
    new-instance p0, Ljava/util/Date;

    .end local p0           #after:Ljava/util/Date;
    const-wide/32 v12, 0xea60

    add-long/2addr v12, v8

    invoke-direct {p0, v12, v13}, Ljava/util/Date;-><init>(J)V

    .line 790
    .restart local p0       #after:Ljava/util/Date;
    invoke-virtual {v10, v1}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 791
    invoke-virtual {v10, p0}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result v12

    if-nez v12, :cond_2

    .line 794
    invoke-virtual {v10}, Ljava/util/TimeZone;->getDSTSavings()I

    move-result v12

    int-to-long v12, v12

    cmp-long v12, v3, v12

    if-nez v12, :cond_2

    move-object p0, v10

    .end local v10           #timeZone:Ljava/util/TimeZone;
    .local p0, timeZone:Ljava/util/TimeZone;
    move-object v0, v10

    .line 795
    goto :goto_0

    .line 799
    .end local v1           #before:Ljava/util/Date;
    .end local v8           #millisAtTransition:J
    :cond_4
    const/4 p0, 0x0

    aget-object p0, v11, p0

    .end local p0           #timeZone:Ljava/util/TimeZone;
    invoke-static {p0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object p0

    .line 800
    .restart local p0       #timeZone:Ljava/util/TimeZone;
    sget-boolean v0, Lcom/android/exchange/Eas;->USER_LOG:Z

    .end local v0           #arr$:[Ljava/lang/String;
    if-eqz v0, :cond_5

    .line 801
    const-string v0, "CalendarUtility"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No TimeZone with correct DST settings; using first: "

    .end local v2           #dstEnd:Lcom/android/exchange/utility/CalendarUtilities$TimeZoneDate;
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/util/TimeZone;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/exchange/SyncManager;->log(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    move-object v0, p0

    .line 804
    goto/16 :goto_0

    .line 807
    .end local v3           #dstSavings:J
    .end local v5           #dstStart:Lcom/android/exchange/utility/CalendarUtilities$TimeZoneDate;
    .end local v6           #i$:I
    .end local v7           #len$:I
    .end local p0           #timeZone:Ljava/util/TimeZone;
    .local v0, timeZoneBytes:[B
    .local v1, timeZone:Ljava/util/TimeZone;
    :cond_6
    const/4 p0, 0x0

    move-object v0, p0

    move-object p0, v1

    .end local v1           #timeZone:Ljava/util/TimeZone;
    .restart local p0       #timeZone:Ljava/util/TimeZone;
    goto/16 :goto_0
.end method

.method static utcOffsetString(I)Ljava/lang/String;
    .locals 6
    .parameter "offsetMinutes"

    .prologue
    const/16 v5, 0x30

    const/16 v4, 0xa

    .line 466
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 467
    .local v2, sb:Ljava/lang/StringBuilder;
    div-int/lit8 v0, p0, 0x3c

    .line 468
    .local v0, hours:I
    if-gez v0, :cond_2

    .line 469
    const/16 v3, 0x2d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 470
    const/4 v3, 0x0

    sub-int v0, v3, v0

    .line 474
    :goto_0
    rem-int/lit8 v1, p0, 0x3c

    .line 475
    .local v1, minutes:I
    if-ge v0, v4, :cond_0

    .line 476
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 478
    :cond_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 479
    if-ge v1, v4, :cond_1

    .line 480
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 482
    :cond_1
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 483
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 472
    .end local v1           #minutes:I
    :cond_2
    const/16 v3, 0x2b

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private static writeNoDST(Lcom/android/exchange/utility/SimpleIcsWriter;Ljava/util/TimeZone;Ljava/lang/String;)V
    .locals 5
    .parameter "writer"
    .parameter "tz"
    .parameter "offsetString"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-string v4, "STANDARD"

    const-string v3, "END"

    .line 543
    const-string v0, "BEGIN"

    const-string v1, "STANDARD"

    invoke-virtual {p0, v0, v4}, Lcom/android/exchange/utility/SimpleIcsWriter;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 544
    const-string v0, "TZOFFSETFROM"

    invoke-virtual {p0, v0, p2}, Lcom/android/exchange/utility/SimpleIcsWriter;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 545
    const-string v0, "TZOFFSETTO"

    invoke-virtual {p0, v0, p2}, Lcom/android/exchange/utility/SimpleIcsWriter;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 547
    const-string v0, "DTSTART"

    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Lcom/android/exchange/utility/CalendarUtilities;->millisToEasDateTime(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/exchange/utility/SimpleIcsWriter;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 548
    const-string v0, "END"

    const-string v0, "STANDARD"

    invoke-virtual {p0, v3, v4}, Lcom/android/exchange/utility/SimpleIcsWriter;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 549
    const-string v0, "END"

    const-string v0, "VTIMEZONE"

    invoke-virtual {p0, v3, v0}, Lcom/android/exchange/utility/SimpleIcsWriter;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 550
    return-void
.end method

.method private static writeVAlarm(Lcom/android/exchange/utility/SimpleIcsWriter;)V
    .locals 4
    .parameter "writer"

    .prologue
    const-string v3, "VALARM"

    .line 1709
    const-string v0, "BEGIN"

    const-string v1, "VALARM"

    invoke-virtual {p0, v0, v3}, Lcom/android/exchange/utility/SimpleIcsWriter;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 1710
    const-string v0, "ACTION"

    const-string v1, "DISPLAY"

    invoke-virtual {p0, v0, v1}, Lcom/android/exchange/utility/SimpleIcsWriter;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 1711
    const-string v0, "DESCRIPTION"

    const-string v1, "REMINDER"

    invoke-virtual {p0, v0, v1}, Lcom/android/exchange/utility/SimpleIcsWriter;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 1712
    const-string v0, "TRIGGER"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-PT"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/exchange/utility/CalendarUtilities;->mMinutes:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "M"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/exchange/utility/SimpleIcsWriter;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 1713
    const-string v0, "END"

    const-string v1, "VALARM"

    invoke-virtual {p0, v0, v3}, Lcom/android/exchange/utility/SimpleIcsWriter;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 1714
    return-void
.end method
