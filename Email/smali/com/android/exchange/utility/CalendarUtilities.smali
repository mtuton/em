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

    .line 120
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/exchange/utility/CalendarUtilities;->sTimeZoneCache:Ljava/util/HashMap;

    .line 122
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/exchange/utility/CalendarUtilities;->sTziStringCache:Ljava/util/HashMap;

    .line 124
    const-string v0, "UTC"

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    sput-object v0, Lcom/android/exchange/utility/CalendarUtilities;->UTC_TIMEZONE:Ljava/util/TimeZone;

    .line 127
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

    .line 130
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

    .line 133
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

    .line 136
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    invoke-virtual {v0, v4}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v0

    sput v0, Lcom/android/exchange/utility/CalendarUtilities;->sCurrentYear:I

    .line 137
    const-string v0, "GMT"

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    sput-object v0, Lcom/android/exchange/utility/CalendarUtilities;->sGmtTimeZone:Ljava/util/TimeZone;

    .line 161
    sput v3, Lcom/android/exchange/utility/CalendarUtilities;->mMinutes:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 352
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

    .line 1403
    and-int/lit8 v1, p4, 0x30

    if-eqz v1, :cond_4

    .line 1404
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "ATTENDEE;ROLE=REQ-PARTICIPANT;PARTSTAT=NEEDS-ACTION;RSVP=TRUE"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 1405
    .local v0, icalTag:Ljava/lang/StringBuffer;
    and-int/lit8 v1, p4, 0x20

    if-eqz v1, :cond_0

    .line 1406
    new-instance v0, Ljava/lang/StringBuffer;

    .end local v0           #icalTag:Ljava/lang/StringBuffer;
    const-string v1, "ATTENDEE;ROLE=REQ-PARTICIPANT"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 1408
    .restart local v0       #icalTag:Ljava/lang/StringBuffer;
    :cond_0
    if-eqz p2, :cond_1

    .line 1409
    const-string v1, ";CN="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-static {p2}, Lcom/android/exchange/utility/SimpleIcsWriter;->quoteParamValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1411
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

    .line 1412
    if-nez p2, :cond_3

    new-instance v1, Lcom/android/email/mail/Address;

    invoke-direct {v1, p3}, Lcom/android/email/mail/Address;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1434
    .end local v0           #icalTag:Ljava/lang/StringBuffer;
    :cond_2
    :goto_1
    return-void

    .line 1412
    .restart local v0       #icalTag:Ljava/lang/StringBuffer;
    :cond_3
    new-instance v1, Lcom/android/email/mail/Address;

    invoke-direct {v1, p3, p2}, Lcom/android/email/mail/Address;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1414
    .end local v0           #icalTag:Ljava/lang/StringBuffer;
    :cond_4
    iget-object v1, p5, Lcom/android/email/provider/EmailContent$Account;->mEmailAddress:Ljava/lang/String;

    invoke-virtual {p3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1415
    const/4 v0, 0x0

    .line 1416
    .restart local v0       #icalTag:Ljava/lang/StringBuffer;
    sparse-switch p4, :sswitch_data_0

    .line 1427
    :goto_2
    if-eqz v0, :cond_2

    .line 1428
    if-eqz p2, :cond_5

    .line 1429
    const-string v1, ";CN="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-static {p2}, Lcom/android/exchange/utility/SimpleIcsWriter;->quoteParamValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1431
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

    .line 1418
    :sswitch_0
    new-instance v0, Ljava/lang/StringBuffer;

    .end local v0           #icalTag:Ljava/lang/StringBuffer;
    const-string v1, "ATTENDEE;ROLE=REQ-PARTICIPANT;PARTSTAT=ACCEPTED"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 1419
    .restart local v0       #icalTag:Ljava/lang/StringBuffer;
    goto :goto_2

    .line 1421
    :sswitch_1
    new-instance v0, Ljava/lang/StringBuffer;

    .end local v0           #icalTag:Ljava/lang/StringBuffer;
    const-string v1, "ATTENDEE;ROLE=REQ-PARTICIPANT;PARTSTAT=DECLINED"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 1422
    .restart local v0       #icalTag:Ljava/lang/StringBuffer;
    goto :goto_2

    .line 1424
    :sswitch_2
    new-instance v0, Ljava/lang/StringBuffer;

    .end local v0           #icalTag:Ljava/lang/StringBuffer;
    const-string v1, "ATTENDEE;ROLE=REQ-PARTICIPANT;PARTSTAT=TENTATIVE"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .restart local v0       #icalTag:Ljava/lang/StringBuffer;
    goto :goto_2

    .line 1416
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
    .line 961
    const-string v2, ";BYDAY="

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 962
    const/4 v0, 0x0

    .line 963
    .local v0, addComma:Z
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    const/4 v2, 0x7

    if-ge v1, v2, :cond_4

    .line 964
    and-int/lit8 v2, p1, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 965
    if-eqz v0, :cond_0

    .line 966
    const/16 v2, 0x2c

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 968
    :cond_0
    if-lez p2, :cond_1

    .line 971
    const/4 v2, 0x5

    if-ne p2, v2, :cond_3

    const/4 v2, -0x1

    :goto_1
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 973
    :cond_1
    sget-object v2, Lcom/android/exchange/utility/CalendarUtilities;->sDayTokens:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 974
    const/4 v0, 0x1

    .line 976
    :cond_2
    shr-int/lit8 p1, p1, 0x1

    .line 963
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    move v2, p2

    .line 971
    goto :goto_1

    .line 978
    :cond_4
    return-void
.end method

.method static addByMonthDay(Ljava/lang/StringBuilder;I)V
    .locals 2
    .parameter "rrule"
    .parameter "dom"

    .prologue
    .line 982
    const/16 v0, 0x7f

    if-ne p1, v0, :cond_0

    .line 983
    const/4 p1, -0x1

    .line 985
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

    .line 986
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
    .line 1046
    const-string v1, "UNTIL="

    invoke-static {p0, v1}, Lcom/android/exchange/utility/CalendarUtilities;->tokenFromRrule(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1047
    .local v0, until:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 1048
    const/16 v1, 0x11d

    invoke-static {v0}, Lcom/android/exchange/utility/CalendarUtilities;->recurrenceUntilToEasUntil(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 1050
    :cond_0
    return-void
.end method

.method public static attendeeStatusFromBusyStatus(I)I
    .locals 1
    .parameter "busyStatus"

    .prologue
    .line 1287
    packed-switch p0, :pswitch_data_0

    .line 1297
    const/4 v0, 0x0

    .line 1299
    .local v0, attendeeStatus:I
    :goto_0
    return v0

    .line 1289
    .end local v0           #attendeeStatus:I
    :pswitch_0
    const/4 v0, 0x1

    .line 1290
    .restart local v0       #attendeeStatus:I
    goto :goto_0

    .line 1292
    .end local v0           #attendeeStatus:I
    :pswitch_1
    const/4 v0, 0x4

    .line 1293
    .restart local v0       #attendeeStatus:I
    goto :goto_0

    .line 1287
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

    .line 1351
    if-nez p2, :cond_0

    .line 1352
    new-instance p2, Ljava/lang/StringBuilder;

    .end local p2
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1354
    .restart local p2
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 1355
    .local v4, resources:Landroid/content/res/Resources;
    new-instance v0, Ljava/util/Date;

    const-string v5, "dtstart"

    invoke-virtual {p1, v5}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-direct {v0, v5, v6}, Ljava/util/Date;-><init>(J)V

    .line 1357
    .local v0, date:Ljava/util/Date;
    invoke-static {}, Ljava/text/DateFormat;->getDateTimeInstance()Ljava/text/DateFormat;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 1365
    .local v1, dateTimeString:Ljava/lang/String;
    const-string v5, "originalEvent"

    invoke-virtual {p1, v5}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string v5, "rrule"

    invoke-virtual {p1, v5}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1367
    const v5, 0x7f080195

    new-array v6, v8, [Ljava/lang/Object;

    aput-object v1, v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1375
    :goto_0
    const/4 v3, 0x0

    .line 1376
    .local v3, location:Ljava/lang/String;
    const-string v5, "eventLocation"

    invoke-virtual {p1, v9}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1377
    const-string v5, "eventLocation"

    invoke-virtual {p1, v9}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1378
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 1379
    const-string v5, "\n"

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1380
    const v5, 0x7f080194

    new-array v6, v8, [Ljava/lang/Object;

    aput-object v3, v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1384
    :cond_1
    const-string v5, "description"

    invoke-virtual {p1, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1385
    .local v2, desc:Ljava/lang/String;
    if-eqz v2, :cond_2

    .line 1386
    const-string v5, "\n*~*~*~*~*~*~*~*~*~*\n"

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1387
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1389
    :cond_2
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 1371
    .end local v2           #desc:Ljava/lang/String;
    .end local v3           #location:Ljava/lang/String;
    :cond_3
    const v5, 0x7f080193

    new-array v6, v8, [Ljava/lang/Object;

    aput-object v1, v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public static busyStatusFromAvailabilityStatus(I)I
    .locals 1
    .parameter "availabilityStatus"

    .prologue
    .line 1328
    packed-switch p0, :pswitch_data_0

    .line 1342
    const/4 v0, 0x2

    .line 1345
    .local v0, busyStatus:I
    :goto_0
    return v0

    .line 1330
    .end local v0           #busyStatus:I
    :pswitch_0
    const/4 v0, 0x0

    .line 1331
    .restart local v0       #busyStatus:I
    goto :goto_0

    .line 1333
    .end local v0           #busyStatus:I
    :pswitch_1
    const/4 v0, 0x1

    .line 1334
    .restart local v0       #busyStatus:I
    goto :goto_0

    .line 1336
    .end local v0           #busyStatus:I
    :pswitch_2
    const/4 v0, 0x2

    .line 1337
    .restart local v0       #busyStatus:I
    goto :goto_0

    .line 1339
    .end local v0           #busyStatus:I
    :pswitch_3
    const/4 v0, 0x3

    .line 1340
    .restart local v0       #busyStatus:I
    goto :goto_0

    .line 1328
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static convertEmailDateTimeToCalendarDateTime(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "date"

    .prologue
    .line 830
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

    .line 1215
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1217
    .local v0, cv:Landroid/content/ContentValues;
    const-string v3, "displayName"

    iget-object v4, p1, Lcom/android/email/provider/EmailContent$Account;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1218
    const-string v3, "_sync_account"

    iget-object v4, p1, Lcom/android/email/provider/EmailContent$Account;->mEmailAddress:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1219
    const-string v3, "_sync_account_type"

    const-string v4, "com.android.exchange"

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1220
    const-string v3, "sync_events"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1221
    const-string v3, "selected"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1222
    const-string v3, "hidden"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1224
    const-string v3, "organizerCanRespond"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1228
    const-string v3, "color"

    const/high16 v4, -0x100

    iget-wide v5, p1, Lcom/android/email/provider/EmailContent$Account;->mId:J

    invoke-static {v5, v6}, Lcom/android/email/Email;->getAccountColor(J)I

    move-result v5

    or-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1229
    const-string v3, "timezone"

    invoke-static {}, Landroid/text/format/Time;->getCurrentTimezone()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1230
    const-string v3, "access_level"

    const/16 v4, 0x2bc

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1231
    const-string v3, "ownerAccount"

    iget-object v4, p1, Lcom/android/email/provider/EmailContent$Account;->mEmailAddress:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1233
    iget-object v3, p0, Lcom/android/exchange/EasSyncService;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v4, Landroid/provider/Calendar$Calendars;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v2

    .line 1235
    .local v2, uri:Landroid/net/Uri;
    if-eqz v2, :cond_0

    .line 1236
    invoke-virtual {v2}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1237
    .local v1, stringId:Ljava/lang/String;
    iput-object v1, p2, Lcom/android/email/provider/EmailContent$Mailbox;->mSyncStatus:Ljava/lang/String;

    .line 1238
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 1240
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
    .line 1446
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
    .locals 19
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1452
    invoke-virtual/range {p1 .. p1}, Landroid/content/Entity;->getEntityValues()Landroid/content/ContentValues;

    move-result-object v5

    .line 1453
    invoke-virtual/range {p1 .. p1}, Landroid/content/Entity;->getSubValues()Ljava/util/ArrayList;

    move-result-object p1

    .line 1454
    const-string v4, "originalEvent"

    invoke-virtual {v5, v4}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v6

    .line 1455
    const/4 v4, 0x0

    .line 1457
    new-instance v10, Lcom/android/email/provider/EmailContent$Message;

    invoke-direct {v10}, Lcom/android/email/provider/EmailContent$Message;-><init>()V

    .line 1458
    move/from16 v0, p2

    move-object v1, v10

    iput v0, v1, Lcom/android/email/provider/EmailContent$Message;->mFlags:I

    .line 1459
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    iput-wide v7, v10, Lcom/android/email/provider/EmailContent$Message;->mTimeStamp:J

    .line 1462
    and-int/lit8 v7, p2, 0x10

    if-eqz v7, :cond_f

    .line 1463
    const-string v7, "REQUEST"

    move-object v11, v7

    move v12, v4

    .line 1473
    :goto_0
    :try_start_0
    new-instance v4, Lcom/android/exchange/utility/SimpleIcsWriter;

    invoke-direct {v4}, Lcom/android/exchange/utility/SimpleIcsWriter;-><init>()V

    .line 1474
    const-string v7, "BEGIN"

    const-string v8, "VCALENDAR"

    invoke-virtual {v4, v7, v8}, Lcom/android/exchange/utility/SimpleIcsWriter;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 1475
    const-string v7, "METHOD"

    invoke-virtual {v4, v7, v11}, Lcom/android/exchange/utility/SimpleIcsWriter;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 1476
    const-string v7, "PRODID"

    const-string v8, "AndroidEmail"

    invoke-virtual {v4, v7, v8}, Lcom/android/exchange/utility/SimpleIcsWriter;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 1477
    const-string v7, "VERSION"

    const-string v8, "2.0"

    invoke-virtual {v4, v7, v8}, Lcom/android/exchange/utility/SimpleIcsWriter;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 1481
    sget-object v7, Lcom/android/exchange/utility/CalendarUtilities;->sGmtTimeZone:Ljava/util/TimeZone;

    .line 1482
    const-string v8, ""

    .line 1485
    const/4 v9, 0x0

    .line 1486
    const-string v13, "allDay"

    invoke-virtual {v5, v13}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_27

    .line 1487
    const-string v9, "allDay"

    invoke-virtual {v5, v9}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    .line 1488
    if-eqz v9, :cond_11

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    const/4 v13, 0x1

    if-ne v9, v13, :cond_11

    const/4 v9, 0x1

    .line 1489
    :goto_1
    if-eqz v9, :cond_27

    .line 1491
    const-string v8, ";VALUE=DATE"

    move/from16 v18, v9

    move-object v9, v8

    move/from16 v8, v18

    .line 1499
    :goto_2
    if-nez v12, :cond_26

    if-nez v8, :cond_26

    const-string v13, "rrule"

    invoke-virtual {v5, v13}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_0

    const-string v13, "originalEvent"

    invoke-virtual {v5, v13}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_26

    .line 1502
    :cond_0
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v7

    .line 1504
    invoke-static {v7, v4}, Lcom/android/exchange/utility/CalendarUtilities;->timeZoneToVTimezone(Ljava/util/TimeZone;Lcom/android/exchange/utility/SimpleIcsWriter;)V

    .line 1506
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, ";TZID="

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v7}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v18, v9

    move-object v9, v7

    move-object/from16 v7, v18

    .line 1509
    :goto_3
    const-string v13, "BEGIN"

    const-string v14, "VEVENT"

    invoke-virtual {v4, v13, v14}, Lcom/android/exchange/utility/SimpleIcsWriter;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 1510
    if-nez p3, :cond_1

    .line 1511
    const-string p3, "_sync_local_id"

    move-object v0, v5

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 1513
    :cond_1
    if-eqz p3, :cond_2

    .line 1514
    const-string v13, "UID"

    move-object v0, v4

    move-object v1, v13

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/utility/SimpleIcsWriter;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 1517
    :cond_2
    const-string p3, "DTSTAMP"

    move-object v0, v5

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_12

    .line 1518
    const-string p3, "DTSTAMP"

    const-string v13, "DTSTAMP"

    invoke-virtual {v5, v13}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    move-object v0, v4

    move-object/from16 v1, p3

    move-object v2, v13

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/utility/SimpleIcsWriter;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 1523
    :goto_4
    const-string p3, "dtstart"

    move-object v0, v5

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    .line 1524
    const-wide/16 v15, 0x0

    cmp-long p3, v13, v15

    if-eqz p3, :cond_3

    .line 1525
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct/range {p3 .. p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "DTSTART"

    move-object/from16 v0, p3

    move-object v1, v15

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    move-object/from16 v0, p3

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual/range {p3 .. p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    if-nez v8, :cond_13

    const/4 v15, 0x1

    :goto_5
    invoke-static {v13, v14, v9, v15}, Lcom/android/exchange/utility/CalendarUtilities;->millisToEasDateTime(JLjava/util/TimeZone;Z)Ljava/lang/String;

    move-result-object v15

    move-object v0, v4

    move-object/from16 v1, p3

    move-object v2, v15

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/utility/SimpleIcsWriter;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 1531
    :cond_3
    if-eqz v6, :cond_4

    .line 1532
    const-string p3, "originalInstanceTime"

    move-object v0, v5

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v15

    .line 1533
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct/range {p3 .. p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "RECURRENCE-ID"

    move-object/from16 v0, p3

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    move-object/from16 v0, p3

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual/range {p3 .. p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    if-nez v8, :cond_14

    const/16 v17, 0x1

    :goto_6
    move-wide v0, v15

    move-object v2, v9

    move/from16 v3, v17

    invoke-static {v0, v1, v2, v3}, Lcom/android/exchange/utility/CalendarUtilities;->millisToEasDateTime(JLjava/util/TimeZone;Z)Ljava/lang/String;

    move-result-object v15

    move-object v0, v4

    move-object/from16 v1, p3

    move-object v2, v15

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/utility/SimpleIcsWriter;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 1537
    :cond_4
    const-string p3, "duration"

    move-object v0, v5

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_16

    .line 1538
    const-string p3, "dtend"

    move-object v0, v5

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_5

    .line 1539
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct/range {p3 .. p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "DTEND"

    move-object/from16 v0, p3

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    move-object/from16 v0, p3

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual/range {p3 .. p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v7, "dtend"

    invoke-virtual {v5, v7}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    if-nez v8, :cond_15

    const/4 v7, 0x1

    :goto_7
    invoke-static {v13, v14, v9, v7}, Lcom/android/exchange/utility/CalendarUtilities;->millisToEasDateTime(JLjava/util/TimeZone;Z)Ljava/lang/String;

    move-result-object v7

    move-object v0, v4

    move-object/from16 v1, p3

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/utility/SimpleIcsWriter;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 1560
    :cond_5
    :goto_8
    const-string p3, "eventLocation"

    move-object v0, v5

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_6

    .line 1561
    const-string p3, "eventLocation"

    move-object v0, v5

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 1562
    const-string v7, "LOCATION"

    move-object v0, v4

    move-object v1, v7

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/utility/SimpleIcsWriter;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 1565
    :cond_6
    const-string p3, "_sync_version"

    move-object v0, v5

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 1566
    if-nez p3, :cond_7

    .line 1567
    const-string p3, "0"

    .line 1571
    :cond_7
    const/4 v7, 0x0

    .line 1572
    sparse-switch p2, :sswitch_data_0

    .line 1591
    :cond_8
    :goto_9
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 1592
    const-string v9, "title"

    invoke-virtual {v5, v9}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1593
    if-nez v9, :cond_9

    .line 1594
    const-string v9, ""

    .line 1596
    :cond_9
    const-string v13, "SUMMARY"

    invoke-virtual {v4, v13, v9}, Lcom/android/exchange/utility/SimpleIcsWriter;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 1598
    if-nez v7, :cond_18

    .line 1599
    iput-object v9, v10, Lcom/android/email/provider/EmailContent$Message;->mSubject:Ljava/lang/String;

    .line 1607
    :goto_a
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 1608
    if-eqz v6, :cond_a

    if-nez v12, :cond_a

    .line 1610
    new-instance v6, Ljava/util/Date;

    const-string v13, "originalInstanceTime"

    invoke-virtual {v5, v13}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    invoke-direct {v6, v13, v14}, Ljava/util/Date;-><init>(J)V

    .line 1611
    invoke-static {}, Ljava/text/DateFormat;->getDateInstance()Ljava/text/DateFormat;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    .line 1612
    const v13, 0x7f080191

    if-ne v7, v13, :cond_19

    .line 1613
    const v7, 0x7f080198

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object v6, v13, v14

    invoke-virtual {v8, v7, v13}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1617
    :goto_b
    const-string v6, "\n\n"

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1619
    :cond_a
    move-object/from16 v0, p0

    move-object v1, v5

    move-object v2, v9

    invoke-static {v0, v1, v2}, Lcom/android/exchange/utility/CalendarUtilities;->buildMessageTextFromEntityValues(Landroid/content/Context;Landroid/content/ContentValues;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    .line 1622
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_b

    .line 1623
    const-string v6, "DESCRIPTION"

    move-object v0, v4

    move-object v1, v6

    move-object/from16 v2, p0

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/utility/SimpleIcsWriter;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 1626
    :cond_b
    move-object/from16 v0, p0

    move-object v1, v10

    iput-object v0, v1, Lcom/android/email/provider/EmailContent$Message;->mText:Ljava/lang/String;

    .line 1627
    if-nez v12, :cond_d

    .line 1628
    const-string p0, "allDay"

    move-object v0, v5

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_c

    .line 1629
    const-string p0, "allDay"

    move-object v0, v5

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    .line 1630
    const-string v6, "X-MICROSOFT-CDO-ALLDAYEVENT"

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-nez p0, :cond_1a

    const-string p0, "FALSE"

    :goto_c
    move-object v0, v4

    move-object v1, v6

    move-object/from16 v2, p0

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/utility/SimpleIcsWriter;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 1633
    :cond_c
    const-string p0, "rrule"

    move-object v0, v5

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1634
    if-eqz p0, :cond_d

    .line 1635
    const-string v5, "RRULE"

    move-object v0, v4

    move-object v1, v5

    move-object/from16 v2, p0

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/utility/SimpleIcsWriter;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 1643
    :cond_d
    const/16 p0, 0x0

    .line 1644
    const/4 v6, 0x0

    .line 1645
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1646
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move-object v13, v6

    move-object/from16 v14, p0

    :cond_e
    :goto_d
    invoke-interface/range {p1 .. p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p0

    if-eqz p0, :cond_1d

    invoke-interface/range {p1 .. p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Entity$NamedContentValues;

    .line 1647
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/Entity$NamedContentValues;->uri:Landroid/net/Uri;

    move-object v6, v0

    .line 1648
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/Entity$NamedContentValues;->values:Landroid/content/ContentValues;

    move-object/from16 p0, v0

    .line 1649
    sget-object v7, Landroid/provider/Calendar$Attendees;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v6, v7}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e

    .line 1650
    const-string v6, "attendeeRelationship"

    move-object/from16 v0, p0

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    .line 1654
    if-eqz v6, :cond_e

    const-string v7, "attendeeEmail"

    move-object/from16 v0, p0

    move-object v1, v7

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_e

    .line 1657
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_1b

    .line 1658
    const-string v6, "attendeeName"

    move-object/from16 v0, p0

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1659
    const-string v7, "attendeeEmail"

    move-object/from16 v0, p0

    move-object v1, v7

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    move-object/from16 v13, p0

    move-object v14, v6

    .line 1660
    goto :goto_d

    .line 1464
    :cond_f
    and-int/lit8 v7, p2, 0x20

    if-eqz v7, :cond_10

    .line 1465
    const-string v7, "CANCEL"

    move-object v11, v7

    move v12, v4

    goto/16 :goto_0

    .line 1467
    :cond_10
    const-string v4, "REPLY"

    .line 1468
    const/4 v7, 0x1

    move-object v11, v4

    move v12, v7

    goto/16 :goto_0

    .line 1488
    :cond_11
    const/4 v9, 0x0

    goto/16 :goto_1

    .line 1520
    :cond_12
    :try_start_1
    const-string p3, "DTSTAMP"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    invoke-static {v13, v14}, Lcom/android/exchange/utility/CalendarUtilities;->millisToEasDateTime(J)Ljava/lang/String;

    move-result-object v13

    move-object v0, v4

    move-object/from16 v1, p3

    move-object v2, v13

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/utility/SimpleIcsWriter;->writeTag(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_4

    .line 1746
    :catch_0
    move-exception p0

    .line 1747
    const-string p0, "CalendarUtility"

    const-string p1, "IOException in createMessageForEntity"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1748
    const/16 p0, 0x0

    .line 1752
    :goto_e
    return-object p0

    .line 1525
    :cond_13
    const/4 v15, 0x0

    goto/16 :goto_5

    .line 1533
    :cond_14
    const/16 v17, 0x0

    goto/16 :goto_6

    .line 1539
    :cond_15
    const/4 v7, 0x0

    goto/16 :goto_7

    .line 1547
    :cond_16
    const-wide/32 v15, 0x36ee80

    .line 1548
    :try_start_2
    new-instance p3, Lcom/android/exchange/utility/Duration;

    invoke-direct/range {p3 .. p3}, Lcom/android/exchange/utility/Duration;-><init>()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1550
    :try_start_3
    const-string v17, "duration"

    move-object v0, v5

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p3

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/exchange/utility/Duration;->parse(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/text/ParseException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 1554
    :goto_f
    :try_start_4
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct/range {p3 .. p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "DTEND"

    move-object/from16 v0, p3

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    move-object/from16 v0, p3

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual/range {p3 .. p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    add-long/2addr v13, v15

    if-nez v8, :cond_17

    const/4 v7, 0x1

    :goto_10
    invoke-static {v13, v14, v9, v7}, Lcom/android/exchange/utility/CalendarUtilities;->millisToEasDateTime(JLjava/util/TimeZone;Z)Ljava/lang/String;

    move-result-object v7

    move-object v0, v4

    move-object/from16 v1, p3

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/utility/SimpleIcsWriter;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_8

    :cond_17
    const/4 v7, 0x0

    goto :goto_10

    .line 1574
    :sswitch_0
    const-string v8, "0"

    move-object v0, v8

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_8

    .line 1575
    const v7, 0x7f080192

    goto/16 :goto_9

    .line 1579
    :sswitch_1
    const v7, 0x7f08018e

    .line 1580
    goto/16 :goto_9

    .line 1582
    :sswitch_2
    const v7, 0x7f08018f

    .line 1583
    goto/16 :goto_9

    .line 1585
    :sswitch_3
    const v7, 0x7f080190

    .line 1586
    goto/16 :goto_9

    .line 1588
    :sswitch_4
    const v7, 0x7f080191

    goto/16 :goto_9

    .line 1602
    :cond_18
    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object v9, v13, v14

    invoke-virtual {v8, v7, v13}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v10, Lcom/android/email/provider/EmailContent$Message;->mSubject:Ljava/lang/String;

    goto/16 :goto_a

    .line 1615
    :cond_19
    const v7, 0x7f080199

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object v6, v13, v14

    invoke-virtual {v8, v7, v13}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_b

    .line 1630
    :cond_1a
    const-string p0, "TRUE"

    goto/16 :goto_c

    .line 1662
    :cond_1b
    const-string v6, "attendeeEmail"

    move-object/from16 v0, p0

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1663
    const-string v6, "attendeeName"

    move-object/from16 v0, p0

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1666
    if-eqz v7, :cond_e

    .line 1668
    if-eqz p5, :cond_1c

    move-object v0, v7

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_e

    :cond_1c
    move/from16 v8, p2

    move-object/from16 v9, p4

    .line 1673
    invoke-static/range {v4 .. v9}, Lcom/android/exchange/utility/CalendarUtilities;->addAttendeeToMessage(Lcom/android/exchange/utility/SimpleIcsWriter;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;ILcom/android/email/provider/EmailContent$Account;)V

    goto/16 :goto_d

    .line 1680
    :cond_1d
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_1e

    if-eqz p5, :cond_1e

    .line 1681
    const/4 v6, 0x0

    move-object/from16 v7, p5

    move/from16 v8, p2

    move-object/from16 v9, p4

    invoke-static/range {v4 .. v9}, Lcom/android/exchange/utility/CalendarUtilities;->addAttendeeToMessage(Lcom/android/exchange/utility/SimpleIcsWriter;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;ILcom/android/email/provider/EmailContent$Account;)V

    .line 1685
    :cond_1e
    if-eqz v13, :cond_20

    .line 1686
    new-instance p0, Ljava/lang/StringBuffer;

    const-string p1, "ORGANIZER"

    invoke-direct/range {p0 .. p1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 1689
    if-eqz v14, :cond_1f

    .line 1690
    const-string p1, ";CN="

    invoke-virtual/range {p0 .. p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-static {v14}, Lcom/android/exchange/utility/SimpleIcsWriter;->quoteParamValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    move-object/from16 v0, p1

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1692
    :cond_1f
    invoke-virtual/range {p0 .. p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct/range {p1 .. p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "MAILTO:"

    move-object/from16 v0, p1

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    move-object/from16 v0, p1

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    move-object v0, v4

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/utility/SimpleIcsWriter;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 1693
    if-eqz v12, :cond_20

    .line 1694
    if-nez v14, :cond_21

    new-instance p0, Lcom/android/email/mail/Address;

    move-object/from16 v0, p0

    move-object v1, v13

    invoke-direct {v0, v1}, Lcom/android/email/mail/Address;-><init>(Ljava/lang/String;)V

    :goto_11
    move-object v0, v5

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1700
    :cond_20
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_22

    const/16 p0, 0x0

    goto/16 :goto_e

    .line 1694
    :cond_21
    new-instance p0, Lcom/android/email/mail/Address;

    move-object/from16 v0, p0

    move-object v1, v13

    move-object v2, v14

    invoke-direct {v0, v1, v2}, Lcom/android/email/mail/Address;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_11

    .line 1703
    :cond_22
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result p0

    move/from16 v0, p0

    new-array v0, v0, [Lcom/android/email/mail/Address;

    move-object/from16 p1, v0

    .line 1704
    const/16 p0, 0x0

    .line 1705
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p4

    move/from16 p5, p0

    :goto_12
    invoke-interface/range {p4 .. p4}, Ljava/util/Iterator;->hasNext()Z

    move-result p0

    if-eqz p0, :cond_23

    invoke-interface/range {p4 .. p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/email/mail/Address;

    .line 1706
    add-int/lit8 v5, p5, 0x1

    aput-object p0, p1, p5

    move/from16 p5, v5

    goto :goto_12

    .line 1708
    :cond_23
    invoke-static/range {p1 .. p1}, Lcom/android/email/mail/Address;->pack([Lcom/android/email/mail/Address;)Ljava/lang/String;

    move-result-object p0

    move-object/from16 v0, p0

    move-object v1, v10

    iput-object v0, v1, Lcom/android/email/provider/EmailContent$Message;->mTo:Ljava/lang/String;

    .line 1715
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

    .line 1717
    const-string p0, "TRANSP"

    const-string p1, "OPAQUE"

    move-object v0, v4

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/utility/SimpleIcsWriter;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 1718
    const-string p0, "PRIORITY"

    const-string p1, "5"

    move-object v0, v4

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/utility/SimpleIcsWriter;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 1719
    const-string p0, "SEQUENCE"

    move-object v0, v4

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/utility/SimpleIcsWriter;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 1721
    sget p0, Lcom/android/exchange/utility/CalendarUtilities;->mMinutes:I

    const/16 p1, -0x1

    move/from16 v0, p0

    move/from16 v1, p1

    if-eq v0, v1, :cond_25

    .line 1722
    invoke-static {v4}, Lcom/android/exchange/utility/CalendarUtilities;->writeVAlarm(Lcom/android/exchange/utility/SimpleIcsWriter;)V

    .line 1726
    :goto_14
    const-string p0, "END"

    const-string p1, "VEVENT"

    move-object v0, v4

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/utility/SimpleIcsWriter;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 1727
    const-string p0, "END"

    const-string p1, "VCALENDAR"

    move-object v0, v4

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/utility/SimpleIcsWriter;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 1730
    const-string p0, "CalendarUtility"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct/range {p1 .. p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Encoded iCalendar follows below. \n "

    invoke-virtual/range {p1 .. p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {v4}, Lcom/android/exchange/utility/SimpleIcsWriter;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual/range {p1 .. p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static/range {p0 .. p1}, Lcom/android/exchange/SyncManager;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 1734
    new-instance p0, Lcom/android/email/provider/EmailContent$Attachment;

    invoke-direct/range {p0 .. p0}, Lcom/android/email/provider/EmailContent$Attachment;-><init>()V

    .line 1735
    invoke-virtual {v4}, Lcom/android/exchange/utility/SimpleIcsWriter;->getBytes()[B

    move-result-object p1

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/email/provider/EmailContent$Attachment;->mContentBytes:[B

    .line 1736
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct/range {p1 .. p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "text/calendar; method="

    invoke-virtual/range {p1 .. p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    move-object/from16 v0, p1

    move-object v1, v11

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/email/provider/EmailContent$Attachment;->mMimeType:Ljava/lang/String;

    .line 1737
    const-string p1, "invite.ics"

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/email/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    .line 1738
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

    .line 1740
    const/16 p1, 0x1

    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/email/provider/EmailContent$Attachment;->mFlags:I

    .line 1743
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct/range {p1 .. p1}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p1

    move-object v1, v10

    iput-object v0, v1, Lcom/android/email/provider/EmailContent$Message;->mAttachments:Ljava/util/ArrayList;

    .line 1744
    move-object v0, v10

    iget-object v0, v0, Lcom/android/email/provider/EmailContent$Message;->mAttachments:Ljava/util/ArrayList;

    move-object/from16 p1, v0

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1745
    const/16 p0, 0x1

    move/from16 v0, p0

    move-object v1, v10

    iput-boolean v0, v1, Lcom/android/email/provider/EmailContent$Message;->mFlagAttachment:Z

    move-object/from16 p0, v10

    .line 1752
    goto/16 :goto_e

    .line 1715
    :cond_24
    const-string p1, "CONFIRMED"

    goto/16 :goto_13

    .line 1724
    :cond_25
    const-string p0, "CalendarUtility"

    const-string p1, "None selected for Alarm"

    invoke-static/range {p0 .. p1}, Lcom/android/exchange/SyncManager;->log(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_14

    .line 1551
    :catch_1
    move-exception p3

    goto/16 :goto_f

    :cond_26
    move-object/from16 v18, v9

    move-object v9, v7

    move-object/from16 v7, v18

    goto/16 :goto_3

    :cond_27
    move/from16 v18, v9

    move-object v9, v8

    move/from16 v8, v18

    goto/16 :goto_2

    .line 1572
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
    .line 1804
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
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1811
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1813
    invoke-static {p1, p2, v0}, Lcom/android/exchange/utility/CalendarUtilities;->getReminder(JLandroid/content/ContentResolver;)V

    .line 1815
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

    move-result-object v6

    .line 1821
    :try_start_0
    invoke-interface {v6}, Landroid/content/EntityIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1822
    invoke-interface {v6}, Landroid/content/EntityIterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Entity;

    move-object v0, p0

    move v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    .line 1823
    invoke-static/range {v0 .. v5}, Lcom/android/exchange/utility/CalendarUtilities;->createMessageForEntity(Landroid/content/Context;Landroid/content/Entity;ILjava/lang/String;Lcom/android/email/provider/EmailContent$Account;Ljava/lang/String;)Lcom/android/email/provider/EmailContent$Message;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 1827
    invoke-interface {v6}, Landroid/content/EntityIterator;->close()V

    .line 1829
    :goto_0
    return-object v0

    .line 1827
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/content/EntityIterator;->close()V

    throw v0

    :cond_0
    invoke-interface {v6}, Landroid/content/EntityIterator;->close()V

    move-object v0, v2

    .line 1829
    goto :goto_0
.end method

.method static findNextTransition(J[Ljava/util/GregorianCalendar;)J
    .locals 8
    .parameter "startingMillis"
    .parameter "transitions"

    .prologue
    .line 635
    move-object v0, p2

    .local v0, arr$:[Ljava/util/GregorianCalendar;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 636
    .local v3, transition:Ljava/util/GregorianCalendar;
    invoke-virtual {v3}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v4

    .line 637
    .local v4, transitionMillis:J
    cmp-long v6, v4, p0

    if-lez v6, :cond_0

    move-wide v6, v4

    .line 641
    .end local v3           #transition:Ljava/util/GregorianCalendar;
    .end local v4           #transitionMillis:J
    :goto_1
    return-wide v6

    .line 635
    .restart local v3       #transition:Ljava/util/GregorianCalendar;
    .restart local v4       #transitionMillis:J
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 641
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
    .line 303
    move-wide v4, p3

    .line 304
    .local v4, startingEndTime:J
    const/4 v0, 0x0

    .line 307
    .local v0, date:Ljava/util/Date;
    :goto_0
    sub-long v0, p3, p1

    const-wide/32 v2, 0xea60

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 308
    .end local v0           #date:Ljava/util/Date;
    add-long v0, p1, p3

    const-wide/16 v2, 0x2

    div-long/2addr v0, v2

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    .line 309
    .local v0, checkTime:J
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 310
    .local v2, date:Ljava/util/Date;
    invoke-virtual {p0, v2}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result v3

    .line 311
    .local v3, inDaylightTime:Z
    if-eq v3, p5, :cond_0

    .line 312
    move-wide p3, v0

    :goto_1
    move-object v0, v2

    .line 316
    .end local v2           #date:Ljava/util/Date;
    .local v0, date:Ljava/util/Date;
    goto :goto_0

    .line 314
    .local v0, checkTime:J
    .restart local v2       #date:Ljava/util/Date;
    :cond_0
    move-wide p1, v0

    goto :goto_1

    .line 319
    .end local v0           #checkTime:J
    .end local v2           #date:Ljava/util/Date;
    .end local v3           #inDaylightTime:Z
    :cond_1
    cmp-long p3, p3, v4

    if-nez p3, :cond_2

    .line 320
    .end local p3
    const/4 p0, 0x0

    .line 326
    .end local p0
    :goto_2
    return-object p0

    .line 324
    .restart local p0
    :cond_2
    new-instance p3, Ljava/util/GregorianCalendar;

    invoke-direct {p3, p0}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    .line 325
    .local p3, calendar:Ljava/util/GregorianCalendar;
    invoke-virtual {p3, p1, p2}, Ljava/util/GregorianCalendar;->setTimeInMillis(J)V

    move-object p0, p3

    .line 326
    goto :goto_2
.end method

.method static formatTwo(I)Ljava/lang/String;
    .locals 1
    .parameter "num"

    .prologue
    .line 835
    const/16 v0, 0xc

    if-gt p0, v0, :cond_0

    .line 836
    sget-object v0, Lcom/android/exchange/utility/CalendarUtilities;->sTwoCharacterNumbers:[Ljava/lang/String;

    aget-object v0, v0, p0

    .line 838
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
    .line 994
    const/4 v2, 0x0

    .line 995
    .local v2, bits:I
    const/4 v1, 0x1

    .line 996
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

    .line 998
    .local v5, token:Ljava/lang/String;
    invoke-virtual {p0, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    if-ltz v6, :cond_0

    .line 999
    or-int/2addr v2, v1

    .line 1001
    :cond_0
    shl-int/lit8 v1, v1, 0x1

    .line 996
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1003
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
    .line 502
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v16, v0

    .line 503
    .local v16, maxYears:I
    move-object/from16 v0, p2

    array-length v0, v0

    move v2, v0

    move v0, v2

    move/from16 v1, v16

    if-eq v0, v1, :cond_0

    .line 504
    const/16 p0, 0x0

    .line 534
    .end local p0
    :goto_0
    return p0

    .line 507
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

    .line 508
    new-instance v2, Ljava/util/GregorianCalendar;

    move-object v0, v2

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    .line 509
    .local v2, cal:Ljava/util/GregorianCalendar;
    sget v3, Lcom/android/exchange/utility/CalendarUtilities;->sCurrentYear:I

    add-int/2addr v3, v15

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v2 .. v8}, Ljava/util/GregorianCalendar;->set(IIIIII)V

    .line 510
    invoke-virtual {v2}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v4

    .line 512
    .local v4, startTime:J
    const-wide v2, 0x757b12c00L

    add-long/2addr v2, v4

    const-wide/32 v6, 0x1499700

    add-long/2addr v6, v2

    .line 513
    .local v6, endOfYearTime:J
    new-instance v2, Ljava/util/Date;

    .end local v2           #cal:Ljava/util/GregorianCalendar;
    invoke-direct {v2, v4, v5}, Ljava/util/Date;-><init>(J)V

    .line 514
    .local v2, date:Ljava/util/Date;
    move-object/from16 v0, p0

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result v8

    .local v8, startInDaylightTime:Z
    move-object/from16 v3, p0

    .line 516
    invoke-static/range {v3 .. v8}, Lcom/android/exchange/utility/CalendarUtilities;->findTransitionDate(Ljava/util/TimeZone;JJZ)Ljava/util/GregorianCalendar;

    move-result-object v2

    .line 517
    .local v2, cal:Ljava/util/GregorianCalendar;
    if-nez v2, :cond_1

    .line 518
    const/16 p0, 0x0

    goto :goto_0

    .line 519
    :cond_1
    if-eqz v8, :cond_2

    .line 520
    aput-object v2, p2, v15

    .line 525
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

    .line 526
    .restart local v2       #cal:Ljava/util/GregorianCalendar;
    if-nez v2, :cond_4

    .line 527
    const/16 p0, 0x0

    goto :goto_0

    .line 522
    :cond_2
    aput-object v2, p1, v15

    goto :goto_2

    .line 525
    :cond_3
    const/4 v2, 0x0

    move v14, v2

    goto :goto_3

    .line 528
    :cond_4
    if-eqz v8, :cond_5

    .line 529
    aput-object v2, p1, v15

    .line 507
    :goto_4
    add-int/lit8 v2, v15, 0x1

    .end local v15           #i:I
    .local v2, i:I
    move v15, v2

    .end local v2           #i:I
    .restart local v15       #i:I
    goto :goto_1

    .line 531
    .local v2, cal:Ljava/util/GregorianCalendar;
    :cond_5
    aput-object v2, p2, v15

    goto :goto_4

    .line 534
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
    .line 945
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
    .line 166
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
    .line 281
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0, p0}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    .line 282
    .local v0, testCalendar:Ljava/util/GregorianCalendar;
    const/4 v1, 0x1

    sget v2, Lcom/android/exchange/utility/CalendarUtilities;->sCurrentYear:I

    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->set(II)V

    .line 283
    const/4 v1, 0x2

    iget v2, p1, Lcom/android/exchange/utility/CalendarUtilities$TimeZoneDate;->month:I

    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->set(II)V

    .line 284
    const/4 v1, 0x7

    iget v2, p1, Lcom/android/exchange/utility/CalendarUtilities$TimeZoneDate;->dayOfWeek:I

    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->set(II)V

    .line 285
    const/16 v1, 0x8

    iget v2, p1, Lcom/android/exchange/utility/CalendarUtilities$TimeZoneDate;->day:I

    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->set(II)V

    .line 286
    const/16 v1, 0xb

    iget v2, p1, Lcom/android/exchange/utility/CalendarUtilities$TimeZoneDate;->hour:I

    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->set(II)V

    .line 287
    const/16 v1, 0xc

    iget v2, p1, Lcom/android/exchange/utility/CalendarUtilities$TimeZoneDate;->minute:I

    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->set(II)V

    .line 288
    const/16 v1, 0xd

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->set(II)V

    .line 289
    invoke-virtual {v0}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v1

    return-wide v1
.end method

.method private static getReminder(JLandroid/content/ContentResolver;)V
    .locals 9
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x0

    const-string v8, "minutes"

    const-string v7, "CalendarUtility"

    .line 1767
    sget-object v1, Landroid/provider/Calendar$Reminders;->CONTENT_URI:Landroid/net/Uri;

    new-array v2, v4, [Ljava/lang/String;

    const-string v0, "minutes"

    aput-object v8, v2, v6

    const-string v3, "event_id=?"

    new-array v4, v4, [Ljava/lang/String;

    invoke-static {p0, p1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v6

    const/4 v5, 0x0

    move-object v0, p2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1770
    if-eqz v0, :cond_1

    .line 1772
    sput v6, Lcom/android/exchange/utility/CalendarUtilities;->mMinutes:I

    .line 1773
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1775
    const-string v1, "minutes"

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    sput v0, Lcom/android/exchange/utility/CalendarUtilities;->mMinutes:I

    .line 1787
    :goto_0
    return-void

    .line 1779
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

    invoke-static {v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1780
    const/4 v0, -0x1

    sput v0, Lcom/android/exchange/utility/CalendarUtilities;->mMinutes:I

    goto :goto_0

    .line 1785
    :cond_1
    const-string v0, "CalendarUtility"

    const-string v0, "mRemindersCursor is null"

    invoke-static {v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static getTimeZoneDateFromSystemTime([BI)Lcom/android/exchange/utility/CalendarUtilities$TimeZoneDate;
    .locals 6
    .parameter "bytes"
    .parameter "offset"

    .prologue
    .line 237
    new-instance v3, Lcom/android/exchange/utility/CalendarUtilities$TimeZoneDate;

    invoke-direct {v3}, Lcom/android/exchange/utility/CalendarUtilities$TimeZoneDate;-><init>()V

    .line 240
    .local v3, tzd:Lcom/android/exchange/utility/CalendarUtilities$TimeZoneDate;
    add-int/lit8 v4, p1, 0x0

    invoke-static {p0, v4}, Lcom/android/exchange/utility/CalendarUtilities;->getWord([BI)I

    move-result v2

    .line 241
    .local v2, num:I
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/android/exchange/utility/CalendarUtilities$TimeZoneDate;->year:Ljava/lang/String;

    .line 245
    add-int/lit8 v4, p1, 0x2

    invoke-static {p0, v4}, Lcom/android/exchange/utility/CalendarUtilities;->getWord([BI)I

    move-result v2

    .line 246
    if-nez v2, :cond_0

    .line 247
    const/4 v4, 0x0

    .line 271
    :goto_0
    return-object v4

    .line 249
    :cond_0
    const/4 v4, 0x1

    sub-int v4, v2, v4

    iput v4, v3, Lcom/android/exchange/utility/CalendarUtilities$TimeZoneDate;->month:I

    .line 253
    add-int/lit8 v4, p1, 0x4

    invoke-static {p0, v4}, Lcom/android/exchange/utility/CalendarUtilities;->getWord([BI)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Lcom/android/exchange/utility/CalendarUtilities$TimeZoneDate;->dayOfWeek:I

    .line 256
    add-int/lit8 v4, p1, 0x6

    invoke-static {p0, v4}, Lcom/android/exchange/utility/CalendarUtilities;->getWord([BI)I

    move-result v2

    .line 258
    const/4 v4, 0x5

    if-ne v2, v4, :cond_1

    .line 259
    const/4 v4, -0x1

    iput v4, v3, Lcom/android/exchange/utility/CalendarUtilities$TimeZoneDate;->day:I

    .line 265
    :goto_1
    add-int/lit8 v4, p1, 0x8

    invoke-static {p0, v4}, Lcom/android/exchange/utility/CalendarUtilities;->getWord([BI)I

    move-result v0

    .line 266
    .local v0, hour:I
    iput v0, v3, Lcom/android/exchange/utility/CalendarUtilities$TimeZoneDate;->hour:I

    .line 267
    add-int/lit8 v4, p1, 0xa

    invoke-static {p0, v4}, Lcom/android/exchange/utility/CalendarUtilities;->getWord([BI)I

    move-result v1

    .line 268
    .local v1, minute:I
    iput v1, v3, Lcom/android/exchange/utility/CalendarUtilities$TimeZoneDate;->minute:I

    .line 269
    const v4, 0x36ee80

    mul-int/2addr v4, v0

    const v5, 0xea60

    mul-int/2addr v5, v1

    add-int/2addr v4, v5

    iput v4, v3, Lcom/android/exchange/utility/CalendarUtilities$TimeZoneDate;->time:I

    move-object v4, v3

    .line 271
    goto :goto_0

    .line 261
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
    .line 901
    const/16 v1, 0xb

    invoke-virtual {p0, v1}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v0

    .line 902
    .local v0, hour:I
    add-int/lit8 v0, v0, 0x1

    .line 903
    const/16 v1, 0x18

    if-ne v0, v1, :cond_0

    .line 904
    const/4 v0, 0x0

    .line 906
    :cond_0
    return v0
.end method

.method static getTrueTransitionMinute(Ljava/util/GregorianCalendar;)I
    .locals 2
    .parameter "calendar"

    .prologue
    .line 887
    const/16 v1, 0xc

    invoke-virtual {p0, v1}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v0

    .line 888
    .local v0, minute:I
    const/16 v1, 0x3b

    if-ne v0, v1, :cond_0

    .line 889
    const/4 v0, 0x0

    .line 891
    :cond_0
    return v0
.end method

.method public static getUidFromGlobalObjId(Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .parameter "globalObjId"

    .prologue
    .line 1249
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 1252
    .local v8, sb:Ljava/lang/StringBuilder;
    const/4 v9, 0x0

    :try_start_0
    invoke-static {p0, v9}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v4

    .line 1253
    .local v4, idBytes:[B
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v4}, Ljava/lang/String;-><init>([B)V

    .line 1257
    .local v5, idString:Ljava/lang/String;
    const-string v9, "vCal-Uid"

    invoke-virtual {v5, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    .line 1258
    .local v6, index:I
    if-lez v6, :cond_0

    .line 1261
    add-int/lit8 v9, v6, 0xc

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v10

    const/4 v11, 0x1

    sub-int/2addr v10, v11

    invoke-virtual {v5, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 1273
    .end local v4           #idBytes:[B
    .end local v5           #idString:Ljava/lang/String;
    .end local v6           #index:I
    :goto_0
    return-object v9

    .line 1266
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

    .line 1267
    .local v1, b:B
    invoke-static {v8, v1}, Lcom/android/email/Utility;->byteToHex(Ljava/lang/StringBuilder;I)Ljava/lang/StringBuilder;

    .line 1266
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1269
    .end local v1           #b:B
    :cond_1
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    goto :goto_0

    .line 1271
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

    .line 1273
    goto :goto_0
.end method

.method public static getUtcAllDayCalendarTime(JLjava/util/TimeZone;)J
    .locals 2
    .parameter "time"
    .parameter "localTimeZone"

    .prologue
    .line 936
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
    .line 180
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
    .line 409
    const/4 v0, 0x0

    aget-object v0, p0, v0

    .line 410
    .local v0, calendar:Ljava/util/GregorianCalendar;
    if-nez v0, :cond_0

    const/4 p0, 0x0

    .line 459
    .end local v0           #calendar:Ljava/util/GregorianCalendar;
    .end local p0
    :goto_0
    return-object p0

    .line 411
    .restart local v0       #calendar:Ljava/util/GregorianCalendar;
    .restart local p0
    :cond_0
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v7

    .line 412
    .local v7, month:I
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v1

    .line 413
    .local v1, date:I
    const/4 v2, 0x7

    invoke-virtual {v0, v2}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v3

    .line 414
    .local v3, dayOfWeek:I
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v5

    .line 415
    .local v5, week:I
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Ljava/util/GregorianCalendar;->getActualMaximum(I)I

    move-result v6

    .line 416
    .local v6, maxWeek:I
    const/4 v0, 0x0

    .line 417
    .local v0, dateRule:Z
    const/4 v2, 0x0

    .line 418
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

    .line 419
    aget-object v0, p0, v5

    .line 420
    .local v0, cal:Ljava/util/GregorianCalendar;
    if-nez v0, :cond_1

    const/4 p0, 0x0

    goto :goto_0

    .line 422
    :cond_1
    const/4 v8, 0x2

    invoke-virtual {v0, v8}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v8

    if-eq v8, v7, :cond_2

    .line 423
    const/4 p0, 0x0

    goto :goto_0

    .line 424
    :cond_2
    const/4 v8, 0x7

    invoke-virtual {v0, v8}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v8

    if-ne v3, v8, :cond_7

    .line 426
    if-eqz v2, :cond_3

    .line 427
    const/4 p0, 0x0

    goto :goto_0

    .line 429
    :cond_3
    const/4 v4, 0x1

    .line 430
    const/16 v8, 0x8

    invoke-virtual {v0, v8}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v8

    .line 431
    .local v8, thisWeek:I
    if-eq v9, v8, :cond_6

    .line 432
    if-ltz v9, :cond_4

    if-ne v9, v6, :cond_5

    .line 433
    :cond_4
    const/16 v9, 0x8

    invoke-virtual {v0, v9}, Ljava/util/GregorianCalendar;->getActualMaximum(I)I

    .end local v9           #week:I
    move-result v0

    .line 434
    .local v0, thisMaxWeek:I
    if-ne v8, v0, :cond_5

    .line 436
    const/4 v0, -0x1

    .local v0, week:I
    move v8, v0

    .end local v0           #week:I
    .local v8, week:I
    move v0, v2

    .end local v2           #dateRule:Z
    .local v0, dateRule:Z
    move v2, v4

    .line 418
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

    .line 440
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

    .line 442
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

    .line 444
    if-eqz v4, :cond_8

    .line 445
    const/4 p0, 0x0

    goto :goto_0

    .line 447
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

    .line 449
    .end local v0           #dateRule:Z
    .end local v2           #dayOfWeekRule:Z
    .end local v8           #week:I
    .restart local v4       #dayOfWeekRule:Z
    .restart local v9       #week:I
    :cond_9
    const/4 p0, 0x0

    goto :goto_0

    .line 453
    .local v2, dateRule:Z
    :cond_a
    if-eqz v2, :cond_b

    .line 454
    new-instance p0, Lcom/android/exchange/utility/CalendarUtilities$RRule;

    .end local p0
    add-int/lit8 v0, v7, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/exchange/utility/CalendarUtilities$RRule;-><init>(II)V

    goto :goto_0

    .line 459
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
    .line 845
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
    .line 857
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 858
    .local v1, sb:Ljava/lang/StringBuilder;
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0, p2}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    .line 859
    .local v0, cal:Ljava/util/GregorianCalendar;
    invoke-virtual {v0, p0, p1}, Ljava/util/GregorianCalendar;->setTimeInMillis(J)V

    .line 860
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 861
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Lcom/android/exchange/utility/CalendarUtilities;->formatTwo(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 862
    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v2

    invoke-static {v2}, Lcom/android/exchange/utility/CalendarUtilities;->formatTwo(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 863
    if-eqz p3, :cond_0

    .line 864
    const/16 v2, 0x54

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 865
    const/16 v2, 0xb

    invoke-virtual {v0, v2}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v2

    invoke-static {v2}, Lcom/android/exchange/utility/CalendarUtilities;->formatTwo(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 866
    const/16 v2, 0xc

    invoke-virtual {v0, v2}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v2

    invoke-static {v2}, Lcom/android/exchange/utility/CalendarUtilities;->formatTwo(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 867
    const/16 v2, 0xd

    invoke-virtual {v0, v2}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v2

    invoke-static {v2}, Lcom/android/exchange/utility/CalendarUtilities;->formatTwo(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 868
    sget-object v2, Lcom/android/exchange/utility/CalendarUtilities;->sGmtTimeZone:Ljava/util/TimeZone;

    invoke-virtual {p2, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 869
    const/16 v2, 0x5a

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 872
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
    .line 204
    add-int/lit8 v0, p1, 0x2

    iget v1, p2, Lcom/android/exchange/utility/CalendarUtilities$RRule;->month:I

    invoke-static {p0, v0, v1}, Lcom/android/exchange/utility/CalendarUtilities;->setWord([BII)V

    .line 206
    add-int/lit8 v0, p1, 0x4

    iget v1, p2, Lcom/android/exchange/utility/CalendarUtilities$RRule;->dayOfWeek:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-static {p0, v0, v1}, Lcom/android/exchange/utility/CalendarUtilities;->setWord([BII)V

    .line 208
    add-int/lit8 v0, p1, 0x6

    iget v1, p2, Lcom/android/exchange/utility/CalendarUtilities$RRule;->week:I

    if-gez v1, :cond_0

    const/4 v1, 0x5

    :goto_0
    invoke-static {p0, v0, v1}, Lcom/android/exchange/utility/CalendarUtilities;->setWord([BII)V

    .line 210
    add-int/lit8 v0, p1, 0x8

    invoke-static {p0, v0, p3}, Lcom/android/exchange/utility/CalendarUtilities;->setWord([BII)V

    .line 211
    add-int/lit8 v0, p1, 0xa

    invoke-static {p0, v0, p4}, Lcom/android/exchange/utility/CalendarUtilities;->setWord([BII)V

    .line 212
    return-void

    .line 208
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
    .line 216
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    .line 218
    .local v0, cal:Ljava/util/GregorianCalendar;
    const-wide/16 v2, 0x7530

    add-long/2addr v2, p2

    invoke-virtual {v0, v2, v3}, Ljava/util/GregorianCalendar;->setTimeInMillis(J)V

    .line 221
    add-int/lit8 v2, p1, 0x2

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {p0, v2, v3}, Lcom/android/exchange/utility/CalendarUtilities;->setWord([BII)V

    .line 223
    add-int/lit8 v2, p1, 0x4

    const/4 v3, 0x7

    invoke-virtual {v0, v3}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    invoke-static {p0, v2, v3}, Lcom/android/exchange/utility/CalendarUtilities;->setWord([BII)V

    .line 226
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v1

    .line 228
    .local v1, wom:I
    add-int/lit8 v2, p1, 0x6

    if-gez v1, :cond_0

    const/4 v3, 0x5

    :goto_0
    invoke-static {p0, v2, v3}, Lcom/android/exchange/utility/CalendarUtilities;->setWord([BII)V

    .line 231
    add-int/lit8 v2, p1, 0x8

    invoke-static {v0}, Lcom/android/exchange/utility/CalendarUtilities;->getTrueTransitionHour(Ljava/util/GregorianCalendar;)I

    move-result v3

    invoke-static {p0, v2, v3}, Lcom/android/exchange/utility/CalendarUtilities;->setWord([BII)V

    .line 232
    add-int/lit8 v2, p1, 0xa

    invoke-static {v0}, Lcom/android/exchange/utility/CalendarUtilities;->getTrueTransitionMinute(Ljava/util/GregorianCalendar;)I

    move-result v3

    invoke-static {p0, v2, v3}, Lcom/android/exchange/utility/CalendarUtilities;->setWord([BII)V

    .line 233
    return-void

    :cond_0
    move v3, v1

    .line 228
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
    .line 1064
    sget-boolean v0, Lcom/android/exchange/Eas;->USER_LOG:Z

    if-eqz v0, :cond_0

    .line 1065
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

    .line 1067
    :cond_0
    const-string v0, "FREQ="

    invoke-static {p0, v0}, Lcom/android/exchange/utility/CalendarUtilities;->tokenFromRrule(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1071
    .local v0, freq:Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 1072
    const-string v1, "DAILY"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1073
    const/16 p1, 0x11b

    invoke-virtual {p3, p1}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    .line 1074
    .end local p1
    const/16 p1, 0x11c

    const-string p2, "0"

    invoke-virtual {p3, p1, p2}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 1075
    const/16 p1, 0x11f

    const-string p2, "1"

    invoke-virtual {p3, p1, p2}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 1076
    invoke-static {p0, p3}, Lcom/android/exchange/utility/CalendarUtilities;->addUntil(Ljava/lang/String;Lcom/android/exchange/adapter/Serializer;)V

    .line 1077
    invoke-virtual {p3}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    .line 1143
    .end local v0           #freq:Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 1078
    .restart local v0       #freq:Ljava/lang/String;
    .restart local p1
    :cond_2
    const-string v1, "WEEKLY"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1079
    const/16 p1, 0x11b

    invoke-virtual {p3, p1}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    .line 1080
    .end local p1
    const/16 p1, 0x11c

    const-string p2, "1"

    invoke-virtual {p3, p1, p2}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 1083
    const-string p1, "INTERVAL="

    invoke-static {p0, p1}, Lcom/android/exchange/utility/CalendarUtilities;->tokenFromRrule(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1084
    .local p1, interv:Ljava/lang/String;
    const/16 p2, 0x11f

    invoke-virtual {p3, p2, p1}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 1087
    const-string p1, "BYDAY="

    .end local p1           #interv:Ljava/lang/String;
    invoke-static {p0, p1}, Lcom/android/exchange/utility/CalendarUtilities;->tokenFromRrule(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1088
    .local p1, byDay:Ljava/lang/String;
    if-eqz p1, :cond_3

    .line 1089
    const/16 p2, 0x120

    invoke-static {p1}, Lcom/android/exchange/utility/CalendarUtilities;->generateEasDayOfWeek(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .end local p1           #byDay:Ljava/lang/String;
    invoke-virtual {p3, p2, p1}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 1091
    :cond_3
    invoke-static {p0, p3}, Lcom/android/exchange/utility/CalendarUtilities;->addUntil(Ljava/lang/String;Lcom/android/exchange/adapter/Serializer;)V

    .line 1092
    invoke-virtual {p3}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    goto :goto_0

    .line 1093
    .local p1, startTime:J
    :cond_4
    const-string v1, "MONTHLY"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1094
    const-string p1, "BYMONTHDAY="

    .end local p1           #startTime:J
    invoke-static {p0, p1}, Lcom/android/exchange/utility/CalendarUtilities;->tokenFromRrule(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1095
    .local p1, byMonthDay:Ljava/lang/String;
    if-eqz p1, :cond_5

    .line 1097
    const/16 p2, 0x11b

    invoke-virtual {p3, p2}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    .line 1098
    const/16 p2, 0x11c

    const-string v0, "2"

    .end local v0           #freq:Ljava/lang/String;
    invoke-virtual {p3, p2, v0}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 1099
    const/16 p2, 0x121

    invoke-virtual {p3, p2, p1}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 1100
    invoke-static {p0, p3}, Lcom/android/exchange/utility/CalendarUtilities;->addUntil(Ljava/lang/String;Lcom/android/exchange/adapter/Serializer;)V

    .line 1101
    invoke-virtual {p3}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    goto :goto_0

    .line 1103
    .restart local v0       #freq:Ljava/lang/String;
    :cond_5
    const-string p1, "BYDAY="

    .end local p1           #byMonthDay:Ljava/lang/String;
    invoke-static {p0, p1}, Lcom/android/exchange/utility/CalendarUtilities;->tokenFromRrule(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1105
    .local p1, byDay:Ljava/lang/String;
    if-eqz p1, :cond_1

    .line 1107
    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result p2

    .line 1108
    .local p2, wom:I
    const/16 v0, 0x2d

    if-ne p2, v0, :cond_6

    .line 1110
    .end local v0           #freq:Ljava/lang/String;
    const/4 p2, 0x5

    .line 1111
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 1116
    .local p1, bareByDay:Ljava/lang/String;
    :goto_1
    const/16 v0, 0x11b

    invoke-virtual {p3, v0}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    .line 1117
    const/16 v0, 0x11c

    const-string v1, "3"

    invoke-virtual {p3, v0, v1}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 1118
    const/16 v0, 0x122

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    .end local p2           #wom:I
    invoke-virtual {p3, v0, p2}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 1119
    const/16 p2, 0x120

    invoke-static {p1}, Lcom/android/exchange/utility/CalendarUtilities;->generateEasDayOfWeek(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .end local p1           #bareByDay:Ljava/lang/String;
    invoke-virtual {p3, p2, p1}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 1120
    invoke-static {p0, p3}, Lcom/android/exchange/utility/CalendarUtilities;->addUntil(Ljava/lang/String;Lcom/android/exchange/adapter/Serializer;)V

    .line 1121
    invoke-virtual {p3}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    goto/16 :goto_0

    .line 1113
    .local p1, byDay:Ljava/lang/String;
    .restart local p2       #wom:I
    :cond_6
    const/16 v0, 0x30

    sub-int/2addr p2, v0

    .line 1114
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .local p1, bareByDay:Ljava/lang/String;
    goto :goto_1

    .line 1124
    .end local p2           #wom:I
    .restart local v0       #freq:Ljava/lang/String;
    .local p1, startTime:J
    :cond_7
    const-string v1, "YEARLY"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .end local v0           #freq:Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 1125
    const-string v0, "BYMONTH="

    invoke-static {p0, v0}, Lcom/android/exchange/utility/CalendarUtilities;->tokenFromRrule(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1126
    .local v0, byMonth:Ljava/lang/String;
    const-string v1, "BYMONTHDAY="

    invoke-static {p0, v1}, Lcom/android/exchange/utility/CalendarUtilities;->tokenFromRrule(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1127
    .local v1, byMonthDay:Ljava/lang/String;
    if-eqz v0, :cond_8

    if-nez v1, :cond_9

    .line 1129
    :cond_8
    new-instance v0, Ljava/util/GregorianCalendar;

    .end local v0           #byMonth:Ljava/lang/String;
    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    .line 1130
    .local v0, cal:Ljava/util/GregorianCalendar;
    invoke-virtual {v0, p1, p2}, Ljava/util/GregorianCalendar;->setTimeInMillis(J)V

    .line 1131
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object p1

    .end local p1           #startTime:J
    invoke-virtual {v0, p1}, Ljava/util/GregorianCalendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 1132
    const/4 p1, 0x2

    invoke-virtual {v0, p1}, Ljava/util/GregorianCalendar;->get(I)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    .line 1133
    .local p1, byMonth:Ljava/lang/String;
    const/4 p2, 0x5

    invoke-virtual {v0, p2}, Ljava/util/GregorianCalendar;->get(I)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    .line 1135
    .end local v0           #cal:Ljava/util/GregorianCalendar;
    .end local v1           #byMonthDay:Ljava/lang/String;
    .local p2, byMonthDay:Ljava/lang/String;
    :goto_2
    const/16 v0, 0x11b

    invoke-virtual {p3, v0}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    .line 1136
    const/16 v0, 0x11c

    const-string v1, "5"

    invoke-virtual {p3, v0, v1}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 1137
    const/16 v0, 0x121

    invoke-virtual {p3, v0, p2}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 1138
    const/16 p2, 0x123

    invoke-virtual {p3, p2, p1}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 1139
    .end local p2           #byMonthDay:Ljava/lang/String;
    invoke-static {p0, p3}, Lcom/android/exchange/utility/CalendarUtilities;->addUntil(Ljava/lang/String;Lcom/android/exchange/adapter/Serializer;)V

    .line 1140
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
    .locals 5
    .parameter "until"

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x6

    const/4 v2, 0x4

    .line 1032
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1033
    .local v0, sb:Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1034
    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1035
    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1037
    const/16 v1, 0xd

    invoke-virtual {p0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1038
    const-string v1, "00Z"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1039
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

    .line 1159
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

    .line 1162
    .local v0, rrule:Ljava/lang/StringBuilder;
    if-lez p2, :cond_0

    .line 1163
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

    .line 1165
    :cond_0
    if-lez p1, :cond_1

    .line 1166
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

    .line 1170
    :cond_1
    packed-switch p0, :pswitch_data_0

    .line 1199
    :cond_2
    :goto_0
    :pswitch_0
    if-eqz p7, :cond_3

    .line 1200
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

    .line 1203
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1173
    :pswitch_1
    if-lez p3, :cond_2

    const/4 v1, -0x1

    invoke-static {v0, p3, v1}, Lcom/android/exchange/utility/CalendarUtilities;->addByDay(Ljava/lang/StringBuilder;II)V

    goto :goto_0

    .line 1176
    :pswitch_2
    if-lez p4, :cond_2

    invoke-static {v0, p4}, Lcom/android/exchange/utility/CalendarUtilities;->addByMonthDay(Ljava/lang/StringBuilder;I)V

    goto :goto_0

    .line 1179
    :pswitch_3
    if-lez p3, :cond_2

    invoke-static {v0, p3, p5}, Lcom/android/exchange/utility/CalendarUtilities;->addByDay(Ljava/lang/StringBuilder;II)V

    goto :goto_0

    .line 1182
    :pswitch_4
    if-lez p4, :cond_4

    invoke-static {v0, p4}, Lcom/android/exchange/utility/CalendarUtilities;->addByMonthDay(Ljava/lang/StringBuilder;I)V

    .line 1183
    :cond_4
    if-lez p6, :cond_2

    .line 1184
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

    .line 1188
    :pswitch_5
    if-lez p3, :cond_5

    invoke-static {v0, p3, p5}, Lcom/android/exchange/utility/CalendarUtilities;->addByDay(Ljava/lang/StringBuilder;II)V

    .line 1189
    :cond_5
    if-lez p4, :cond_6

    invoke-static {v0, p4}, Lcom/android/exchange/utility/CalendarUtilities;->addByMonthDay(Ljava/lang/StringBuilder;I)V

    .line 1190
    :cond_6
    if-lez p6, :cond_2

    .line 1191
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

    .line 1170
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
    .line 172
    add-int/lit8 v0, p1, 0x1

    .end local p1
    .local v0, offset:I
    and-int/lit16 v1, p2, 0xff

    int-to-byte v1, v1

    aput-byte v1, p0, p1

    .line 173
    add-int/lit8 p1, v0, 0x1

    .end local v0           #offset:I
    .restart local p1
    shr-int/lit8 v1, p2, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 174
    add-int/lit8 v0, p1, 0x1

    .end local p1
    .restart local v0       #offset:I
    shr-int/lit8 v1, p2, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p0, p1

    .line 175
    shr-int/lit8 v1, p2, 0x18

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 176
    return-void
.end method

.method static setWord([BII)V
    .locals 2
    .parameter "bytes"
    .parameter "offset"
    .parameter "value"

    .prologue
    .line 185
    add-int/lit8 v0, p1, 0x1

    .end local p1
    .local v0, offset:I
    and-int/lit16 v1, p2, 0xff

    int-to-byte v1, v1

    aput-byte v1, p0, p1

    .line 186
    shr-int/lit8 v1, p2, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 187
    return-void
.end method

.method public static timeZoneToTziString(Ljava/util/TimeZone;)Ljava/lang/String;
    .locals 5
    .parameter "tz"

    .prologue
    .line 336
    sget-object v2, Lcom/android/exchange/utility/CalendarUtilities;->sTziStringCache:Ljava/util/HashMap;

    invoke-virtual {v2, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 337
    .local v0, tziString:Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 338
    sget-boolean v2, Lcom/android/exchange/Eas;->USER_LOG:Z

    if-eqz v2, :cond_0

    .line 339
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

    .line 345
    .end local v0           #tziString:Ljava/lang/String;
    .local v1, tziString:Ljava/lang/String;
    :goto_0
    return-object v1

    .line 343
    .end local v1           #tziString:Ljava/lang/String;
    .restart local v0       #tziString:Ljava/lang/String;
    :cond_1
    invoke-static {p0}, Lcom/android/exchange/utility/CalendarUtilities;->timeZoneToTziStringImpl(Ljava/util/TimeZone;)Ljava/lang/String;

    move-result-object v0

    .line 344
    sget-object v2, Lcom/android/exchange/utility/CalendarUtilities;->sTziStringCache:Ljava/util/HashMap;

    invoke-virtual {v2, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    .line 345
    .end local v0           #tziString:Ljava/lang/String;
    .restart local v1       #tziString:Ljava/lang/String;
    goto :goto_0
.end method

.method static timeZoneToTziStringImpl(Ljava/util/TimeZone;)Ljava/lang/String;
    .locals 8
    .parameter "tz"

    .prologue
    .line 653
    const/16 v0, 0xac

    new-array v5, v0, [B

    .line 654
    .local v5, tziBytes:[B
    invoke-virtual {p0}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v0

    neg-int v0, v0

    .line 655
    .local v0, standardBias:I
    const v1, 0xea60

    div-int/2addr v0, v1

    .line 656
    const/4 v1, 0x0

    invoke-static {v5, v1, v0}, Lcom/android/exchange/utility/CalendarUtilities;->setLong([BII)V

    .line 658
    invoke-virtual {p0}, Ljava/util/TimeZone;->useDaylightTime()Z

    move-result v0

    .end local v0           #standardBias:I
    if-eqz v0, :cond_1

    .line 659
    const/4 v0, 0x3

    new-array v4, v0, [Ljava/util/GregorianCalendar;

    .line 660
    .local v4, toDaylightCalendars:[Ljava/util/GregorianCalendar;
    const/4 v0, 0x3

    new-array v2, v0, [Ljava/util/GregorianCalendar;

    .line 663
    .local v2, toStandardCalendars:[Ljava/util/GregorianCalendar;
    invoke-static {p0, v4, v2}, Lcom/android/exchange/utility/CalendarUtilities;->getDSTCalendars(Ljava/util/TimeZone;[Ljava/util/GregorianCalendar;[Ljava/util/GregorianCalendar;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 665
    invoke-static {v4}, Lcom/android/exchange/utility/CalendarUtilities;->inferRRuleFromCalendars([Ljava/util/GregorianCalendar;)Lcom/android/exchange/utility/CalendarUtilities$RRule;

    move-result-object v0

    .line 666
    .local v0, daylightRule:Lcom/android/exchange/utility/CalendarUtilities$RRule;
    invoke-static {v2}, Lcom/android/exchange/utility/CalendarUtilities;->inferRRuleFromCalendars([Ljava/util/GregorianCalendar;)Lcom/android/exchange/utility/CalendarUtilities$RRule;

    move-result-object v1

    .line 667
    .local v1, standardRule:Lcom/android/exchange/utility/CalendarUtilities$RRule;
    if-eqz v0, :cond_2

    iget v3, v0, Lcom/android/exchange/utility/CalendarUtilities$RRule;->type:I

    const/4 v6, 0x1

    if-ne v3, v6, :cond_2

    if-eqz v1, :cond_2

    iget v3, v1, Lcom/android/exchange/utility/CalendarUtilities$RRule;->type:I

    const/4 v6, 0x1

    if-ne v3, v6, :cond_2

    .line 671
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

    .line 675
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

    .line 694
    .end local v0           #daylightRule:Lcom/android/exchange/utility/CalendarUtilities$RRule;
    .end local v4           #toDaylightCalendars:[Ljava/util/GregorianCalendar;
    :cond_0
    :goto_0
    invoke-virtual {p0}, Ljava/util/TimeZone;->getDSTSavings()I

    move-result p0

    .line 695
    .local p0, dstOffset:I
    const/16 v0, 0xa8

    neg-int p0, p0

    const v1, 0xea60

    div-int/2addr p0, v1

    .end local p0           #dstOffset:I
    invoke-static {v5, v0, p0}, Lcom/android/exchange/utility/CalendarUtilities;->setLong([BII)V

    .line 697
    :cond_1
    const/4 p0, 0x2

    invoke-static {v5, p0}, Landroid/util/Base64;->encode([BI)[B

    move-result-object p0

    .line 698
    .local p0, tziEncodedBytes:[B
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    .line 699
    .local v0, tziString:Ljava/lang/String;
    return-object v0

    .line 682
    .local v0, daylightRule:Lcom/android/exchange/utility/CalendarUtilities$RRule;
    .restart local v1       #standardRule:Lcom/android/exchange/utility/CalendarUtilities$RRule;
    .restart local v2       #toStandardCalendars:[Ljava/util/GregorianCalendar;
    .restart local v4       #toDaylightCalendars:[Ljava/util/GregorianCalendar;
    .local p0, tz:Ljava/util/TimeZone;
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 683
    .end local v1           #standardRule:Lcom/android/exchange/utility/CalendarUtilities$RRule;
    .local v0, now:J
    invoke-static {v0, v1, v2}, Lcom/android/exchange/utility/CalendarUtilities;->findNextTransition(J[Ljava/util/GregorianCalendar;)J

    move-result-wide v2

    .line 684
    .local v2, standardTransition:J
    invoke-static {v0, v1, v4}, Lcom/android/exchange/utility/CalendarUtilities;->findNextTransition(J[Ljava/util/GregorianCalendar;)J

    move-result-wide v0

    .line 686
    .local v0, daylightTransition:J
    const-wide/16 v6, 0x0

    cmp-long v4, v2, v6

    if-eqz v4, :cond_0

    .end local v4           #toDaylightCalendars:[Ljava/util/GregorianCalendar;
    const-wide/16 v6, 0x0

    cmp-long v4, v0, v6

    if-eqz v4, :cond_0

    .line 687
    const/16 v4, 0x44

    invoke-static {v5, v4, v2, v3}, Lcom/android/exchange/utility/CalendarUtilities;->putTransitionMillisIntoSystemTime([BIJ)V

    .line 689
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
    .line 563
    invoke-virtual {p0}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v0

    const v1, 0xea60

    div-int/2addr v0, v1

    .line 564
    .local v0, rawOffsetMinutes:I
    invoke-static {v0}, Lcom/android/exchange/utility/CalendarUtilities;->utcOffsetString(I)Ljava/lang/String;

    move-result-object v4

    .line 567
    .local v4, standardOffsetString:Ljava/lang/String;
    const-string v1, "BEGIN"

    const-string v2, "VTIMEZONE"

    invoke-virtual {p1, v1, v2}, Lcom/android/exchange/utility/SimpleIcsWriter;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 568
    const-string v1, "TZID"

    invoke-virtual {p0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/android/exchange/utility/SimpleIcsWriter;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 569
    const-string v1, "X-LIC-LOCATION"

    invoke-virtual {p0}, Ljava/util/TimeZone;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/android/exchange/utility/SimpleIcsWriter;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 572
    invoke-virtual {p0}, Ljava/util/TimeZone;->useDaylightTime()Z

    move-result v1

    if-nez v1, :cond_0

    .line 573
    invoke-static {p1, p0, v4}, Lcom/android/exchange/utility/CalendarUtilities;->writeNoDST(Lcom/android/exchange/utility/SimpleIcsWriter;Ljava/util/TimeZone;Ljava/lang/String;)V

    .line 627
    .end local v0           #rawOffsetMinutes:I
    .end local v4           #standardOffsetString:Ljava/lang/String;
    .end local p0
    :goto_0
    return-void

    .line 577
    .restart local v0       #rawOffsetMinutes:I
    .restart local v4       #standardOffsetString:Ljava/lang/String;
    .restart local p0
    :cond_0
    const/4 v3, 0x3

    .line 578
    .local v3, maxYears:I
    new-array v6, v3, [Ljava/util/GregorianCalendar;

    .line 579
    .local v6, toDaylightCalendars:[Ljava/util/GregorianCalendar;
    new-array v7, v3, [Ljava/util/GregorianCalendar;

    .line 580
    .local v7, toStandardCalendars:[Ljava/util/GregorianCalendar;
    invoke-static {p0, v6, v7}, Lcom/android/exchange/utility/CalendarUtilities;->getDSTCalendars(Ljava/util/TimeZone;[Ljava/util/GregorianCalendar;[Ljava/util/GregorianCalendar;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 581
    invoke-static {p1, p0, v4}, Lcom/android/exchange/utility/CalendarUtilities;->writeNoDST(Lcom/android/exchange/utility/SimpleIcsWriter;Ljava/util/TimeZone;Ljava/lang/String;)V

    goto :goto_0

    .line 585
    :cond_1
    invoke-static {v6}, Lcom/android/exchange/utility/CalendarUtilities;->inferRRuleFromCalendars([Ljava/util/GregorianCalendar;)Lcom/android/exchange/utility/CalendarUtilities$RRule;

    move-result-object v1

    .line 586
    .local v1, daylightRule:Lcom/android/exchange/utility/CalendarUtilities$RRule;
    invoke-static {v7}, Lcom/android/exchange/utility/CalendarUtilities;->inferRRuleFromCalendars([Ljava/util/GregorianCalendar;)Lcom/android/exchange/utility/CalendarUtilities$RRule;

    move-result-object v5

    .line 587
    .local v5, standardRule:Lcom/android/exchange/utility/CalendarUtilities$RRule;
    invoke-virtual {p0}, Ljava/util/TimeZone;->getDSTSavings()I

    move-result v2

    const v8, 0xea60

    div-int/2addr v2, v8

    add-int/2addr v0, v2

    invoke-static {v0}, Lcom/android/exchange/utility/CalendarUtilities;->utcOffsetString(I)Ljava/lang/String;

    .end local v0           #rawOffsetMinutes:I
    move-result-object v0

    .line 591
    .local v0, daylightOffsetString:Ljava/lang/String;
    if-eqz v1, :cond_4

    if-eqz v5, :cond_4

    const/4 v2, 0x1

    .line 594
    .local v2, hasRule:Z
    :goto_1
    const-string v8, "BEGIN"

    const-string v9, "DAYLIGHT"

    invoke-virtual {p1, v8, v9}, Lcom/android/exchange/utility/SimpleIcsWriter;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 595
    const-string v8, "TZOFFSETFROM"

    invoke-virtual {p1, v8, v4}, Lcom/android/exchange/utility/SimpleIcsWriter;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 596
    const-string v8, "TZOFFSETTO"

    invoke-virtual {p1, v8, v0}, Lcom/android/exchange/utility/SimpleIcsWriter;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 597
    const-string v8, "DTSTART"

    const/4 v9, 0x0

    aget-object v9, v6, v9

    invoke-virtual {v9}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v9

    const/4 v11, 0x1

    invoke-static {v9, v10, p0, v11}, Lcom/android/exchange/utility/CalendarUtilities;->transitionMillisToVCalendarTime(JLjava/util/TimeZone;Z)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v8, v9}, Lcom/android/exchange/utility/SimpleIcsWriter;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 600
    if-eqz v2, :cond_5

    .line 601
    const-string v6, "RRULE"

    .end local v6           #toDaylightCalendars:[Ljava/util/GregorianCalendar;
    invoke-virtual {v1}, Lcom/android/exchange/utility/CalendarUtilities$RRule;->toString()Ljava/lang/String;

    move-result-object v1

    .end local v1           #daylightRule:Lcom/android/exchange/utility/CalendarUtilities$RRule;
    invoke-virtual {p1, v6, v1}, Lcom/android/exchange/utility/SimpleIcsWriter;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 608
    :cond_2
    const-string v1, "END"

    const-string v6, "DAYLIGHT"

    invoke-virtual {p1, v1, v6}, Lcom/android/exchange/utility/SimpleIcsWriter;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 610
    const-string v1, "BEGIN"

    const-string v6, "STANDARD"

    invoke-virtual {p1, v1, v6}, Lcom/android/exchange/utility/SimpleIcsWriter;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 611
    const-string v1, "TZOFFSETFROM"

    invoke-virtual {p1, v1, v0}, Lcom/android/exchange/utility/SimpleIcsWriter;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 612
    const-string v0, "TZOFFSETTO"

    .end local v0           #daylightOffsetString:Ljava/lang/String;
    invoke-virtual {p1, v0, v4}, Lcom/android/exchange/utility/SimpleIcsWriter;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 613
    const-string v0, "DTSTART"

    const/4 v1, 0x0

    aget-object v1, v7, v1

    invoke-virtual {v1}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v8

    const/4 v1, 0x0

    invoke-static {v8, v9, p0, v1}, Lcom/android/exchange/utility/CalendarUtilities;->transitionMillisToVCalendarTime(JLjava/util/TimeZone;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/exchange/utility/SimpleIcsWriter;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 616
    if-eqz v2, :cond_6

    .line 617
    const-string p0, "RRULE"

    .end local p0
    invoke-virtual {v5}, Lcom/android/exchange/utility/CalendarUtilities$RRule;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Lcom/android/exchange/utility/SimpleIcsWriter;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 624
    .end local v2           #hasRule:Z
    .end local v4           #standardOffsetString:Ljava/lang/String;
    :cond_3
    const-string p0, "END"

    const-string v0, "STANDARD"

    invoke-virtual {p1, p0, v0}, Lcom/android/exchange/utility/SimpleIcsWriter;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 626
    const-string p0, "END"

    const-string v0, "VTIMEZONE"

    invoke-virtual {p1, p0, v0}, Lcom/android/exchange/utility/SimpleIcsWriter;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 591
    .restart local v0       #daylightOffsetString:Ljava/lang/String;
    .restart local v1       #daylightRule:Lcom/android/exchange/utility/CalendarUtilities$RRule;
    .restart local v4       #standardOffsetString:Ljava/lang/String;
    .restart local v6       #toDaylightCalendars:[Ljava/util/GregorianCalendar;
    .restart local p0
    :cond_4
    const/4 v2, 0x0

    goto :goto_1

    .line 603
    .restart local v2       #hasRule:Z
    :cond_5
    const/4 v1, 0x1

    .local v1, i:I
    :goto_2
    if-ge v1, v3, :cond_2

    .line 604
    const-string v8, "RDATE"

    aget-object v9, v6, v1

    invoke-virtual {v9}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v9

    const/4 v11, 0x1

    invoke-static {v9, v10, p0, v11}, Lcom/android/exchange/utility/CalendarUtilities;->transitionMillisToVCalendarTime(JLjava/util/TimeZone;Z)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v8, v9}, Lcom/android/exchange/utility/SimpleIcsWriter;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 603
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 619
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

    .line 620
    const-string v1, "RDATE"

    aget-object v2, v7, v0

    invoke-virtual {v2}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v4

    const/4 v2, 0x1

    invoke-static {v4, v5, p0, v2}, Lcom/android/exchange/utility/CalendarUtilities;->transitionMillisToVCalendarTime(JLjava/util/TimeZone;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/android/exchange/utility/SimpleIcsWriter;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 619
    add-int/lit8 v0, v0, 0x1

    goto :goto_3
.end method

.method static tokenFromRrule(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "rrule"
    .parameter "token"

    .prologue
    .line 1013
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 1014
    .local v4, start:I
    if-gez v4, :cond_0

    const/4 v5, 0x0

    .line 1023
    :goto_0
    return-object v5

    .line 1015
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 1016
    .local v3, len:I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    .line 1017
    move v1, v4

    .line 1020
    .local v1, end:I
    :goto_1
    add-int/lit8 v2, v1, 0x1

    .end local v1           #end:I
    .local v2, end:I
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1021
    .local v0, c:C
    const/16 v5, 0x3b

    if-eq v0, v5, :cond_1

    if-ne v2, v3, :cond_3

    .line 1022
    :cond_1
    if-ne v2, v3, :cond_2

    add-int/lit8 v1, v2, 0x1

    .line 1023
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
    .line 917
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 918
    .local v1, sb:Ljava/lang/StringBuilder;
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0, p2}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    .line 919
    .local v0, cal:Ljava/util/GregorianCalendar;
    invoke-virtual {v0, p0, p1}, Ljava/util/GregorianCalendar;->setTimeInMillis(J)V

    .line 920
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 921
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Lcom/android/exchange/utility/CalendarUtilities;->formatTwo(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 922
    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v2

    invoke-static {v2}, Lcom/android/exchange/utility/CalendarUtilities;->formatTwo(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 923
    const/16 v2, 0x54

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 924
    invoke-static {v0}, Lcom/android/exchange/utility/CalendarUtilities;->getTrueTransitionHour(Ljava/util/GregorianCalendar;)I

    move-result v2

    invoke-static {v2}, Lcom/android/exchange/utility/CalendarUtilities;->formatTwo(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 925
    invoke-static {v0}, Lcom/android/exchange/utility/CalendarUtilities;->getTrueTransitionMinute(Ljava/util/GregorianCalendar;)I

    move-result v2

    invoke-static {v2}, Lcom/android/exchange/utility/CalendarUtilities;->formatTwo(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 926
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/android/exchange/utility/CalendarUtilities;->formatTwo(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 927
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

    .line 950
    new-instance v7, Ljava/util/GregorianCalendar;

    invoke-direct {v7, p2}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    .line 951
    .local v7, fromCalendar:Ljava/util/GregorianCalendar;
    invoke-virtual {v7, p0, p1}, Ljava/util/GregorianCalendar;->setTimeInMillis(J)V

    .line 952
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0, p3}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    .line 954
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

    .line 957
    invoke-virtual {v0}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v1

    return-wide v1
.end method

.method public static tziStringToTimeZone(Landroid/content/Context;Ljava/lang/String;)Ljava/util/TimeZone;
    .locals 4
    .parameter "context"
    .parameter "timeZoneString"

    .prologue
    .line 709
    sget-object v1, Lcom/android/exchange/utility/CalendarUtilities;->sTimeZoneCache:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/TimeZone;

    .line 710
    .local v0, timeZone:Ljava/util/TimeZone;
    if-eqz v0, :cond_1

    .line 711
    sget-boolean v1, Lcom/android/exchange/Eas;->USER_LOG:Z

    if-eqz v1, :cond_0

    .line 712
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

    .line 724
    :cond_0
    :goto_0
    return-object v0

    .line 715
    :cond_1
    invoke-static {p0, p1}, Lcom/android/exchange/utility/CalendarUtilities;->tziStringToTimeZoneImpl(Landroid/content/Context;Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    .line 716
    if-nez v0, :cond_2

    .line 719
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TimeZone not found using default: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/exchange/SyncManager;->alwaysLog(Ljava/lang/String;)V

    .line 720
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    .line 722
    :cond_2
    sget-object v1, Lcom/android/exchange/utility/CalendarUtilities;->sTimeZoneCache:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method static tziStringToTimeZoneImpl(Landroid/content/Context;Ljava/lang/String;)Ljava/util/TimeZone;
    .locals 23
    .parameter "context"
    .parameter "timeZoneString"

    .prologue
    .line 734
    const/4 v3, 0x0

    .line 736
    .local v3, timeZone:Ljava/util/TimeZone;
    const/4 v4, 0x0

    move-object/from16 v0, p1

    move v1, v4

    invoke-static {v0, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p1

    .line 737
    .local p1, timeZoneBytes:[B
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    .end local p0
    const v4, 0x7f06001f

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v17

    .line 743
    .local v17, timeZoneIds:[Ljava/lang/String;
    const/16 p0, 0x0

    move-object/from16 v0, p1

    move/from16 v1, p0

    invoke-static {v0, v1}, Lcom/android/exchange/utility/CalendarUtilities;->getLong([BI)I

    move-result p0

    mul-int/lit8 p0, p0, -0x1

    const v4, 0xea60

    mul-int p0, p0, v4

    .line 747
    .local p0, bias:I
    invoke-static/range {p0 .. p0}, Ljava/util/TimeZone;->getAvailableIDs(I)[Ljava/lang/String;

    move-result-object v18

    .line 748
    .local v18, zoneIds:[Ljava/lang/String;
    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 p0, v0

    .end local p0           #bias:I
    if-lez p0, :cond_d

    .line 751
    const/16 p0, 0x44

    move-object/from16 v0, p1

    move/from16 v1, p0

    invoke-static {v0, v1}, Lcom/android/exchange/utility/CalendarUtilities;->getTimeZoneDateFromSystemTime([BI)Lcom/android/exchange/utility/CalendarUtilities$TimeZoneDate;

    move-result-object v5

    .line 753
    .local v5, dstEnd:Lcom/android/exchange/utility/CalendarUtilities$TimeZoneDate;
    if-nez v5, :cond_4

    .line 757
    move-object/from16 p0, v18

    .local p0, arr$:[Ljava/lang/String;
    move-object/from16 v0, p0

    array-length v0, v0

    move v5, v0

    .local v5, len$:I
    const/16 p1, 0x0

    .local p1, i$:I
    move/from16 v4, p1

    .end local p1           #i$:I
    .local v4, i$:I
    move-object/from16 p1, v3

    .end local v3           #timeZone:Ljava/util/TimeZone;
    .end local v5           #len$:I
    .end local p0           #arr$:[Ljava/lang/String;
    .local p1, timeZone:Ljava/util/TimeZone;
    :goto_0
    if-ge v4, v5, :cond_2

    aget-object p1, p0, v4

    .line 758
    .local p1, zoneId:Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v7

    .line 759
    .local v7, timeZone:Ljava/util/TimeZone;
    invoke-virtual {v7}, Ljava/util/TimeZone;->useDaylightTime()Z

    move-result p1

    .end local p1           #zoneId:Ljava/lang/String;
    if-nez p1, :cond_1

    .line 760
    move-object/from16 p1, v17

    .local p1, arr$:[Ljava/lang/String;
    move-object/from16 v0, p1

    array-length v0, v0

    move v6, v0

    .local v6, len$:I
    const/4 v3, 0x0

    .end local v4           #i$:I
    .local v3, i$:I
    :goto_1
    if-ge v3, v6, :cond_1

    aget-object v8, p1, v3

    .line 761
    .local v8, timeZoneId:Ljava/lang/String;
    if-eqz v8, :cond_0

    invoke-virtual {v7}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    .end local v8           #timeZoneId:Ljava/lang/String;
    if-eqz v8, :cond_0

    move-object/from16 p0, v7

    .end local v7           #timeZone:Ljava/util/TimeZone;
    .local p0, timeZone:Ljava/util/TimeZone;
    move-object/from16 p1, v7

    .line 824
    .end local v3           #i$:I
    .end local v6           #len$:I
    .end local p1           #arr$:[Ljava/lang/String;
    :goto_2
    return-object p1

    .line 760
    .end local p0           #timeZone:Ljava/util/TimeZone;
    .restart local v3       #i$:I
    .restart local v6       #len$:I
    .restart local v7       #timeZone:Ljava/util/TimeZone;
    .restart local p1       #arr$:[Ljava/lang/String;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 757
    .end local v3           #i$:I
    .end local v6           #len$:I
    .end local p1           #arr$:[Ljava/lang/String;
    :cond_1
    add-int/lit8 p1, v4, 0x1

    .local p1, i$:I
    move/from16 v4, p1

    .end local p1           #i$:I
    .restart local v4       #i$:I
    move-object/from16 p1, v7

    .end local v7           #timeZone:Ljava/util/TimeZone;
    .local p1, timeZone:Ljava/util/TimeZone;
    goto :goto_0

    .line 766
    :cond_2
    sget-boolean p0, Lcom/android/exchange/Eas;->USER_LOG:Z

    if-eqz p0, :cond_3

    .line 767
    const-string p0, "CalendarUtility"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "TimeZone without DST found by offset: "

    .end local v4           #i$:I
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Ljava/util/TimeZone;->getDisplayName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-static {v0, v1}, Lcom/android/exchange/SyncManager;->log(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    move-object/from16 p0, p1

    .line 770
    .end local p1           #timeZone:Ljava/util/TimeZone;
    .restart local p0       #timeZone:Ljava/util/TimeZone;
    goto :goto_2

    .line 772
    .end local p0           #timeZone:Ljava/util/TimeZone;
    .local v3, timeZone:Ljava/util/TimeZone;
    .local v5, dstEnd:Lcom/android/exchange/utility/CalendarUtilities$TimeZoneDate;
    .local p1, timeZoneBytes:[B
    :cond_4
    const/16 p0, 0x98

    move-object/from16 v0, p1

    move/from16 v1, p0

    invoke-static {v0, v1}, Lcom/android/exchange/utility/CalendarUtilities;->getTimeZoneDateFromSystemTime([BI)Lcom/android/exchange/utility/CalendarUtilities$TimeZoneDate;

    move-result-object v8

    .line 775
    .local v8, dstStart:Lcom/android/exchange/utility/CalendarUtilities$TimeZoneDate;
    const/16 p0, 0xa8

    move-object/from16 v0, p1

    move/from16 v1, p0

    invoke-static {v0, v1}, Lcom/android/exchange/utility/CalendarUtilities;->getLong([BI)I

    move-result p0

    mul-int/lit8 p0, p0, -0x1

    const p1, 0xea60

    mul-int p0, p0, p1

    move/from16 v0, p0

    int-to-long v0, v0

    move-wide v6, v0

    .line 780
    .local v6, dstSavings:J
    move-object/from16 p1, v18

    .local p1, arr$:[Ljava/lang/String;
    move-object/from16 v0, p1

    array-length v0, v0

    move v11, v0

    .local v11, len$:I
    const/16 p0, 0x0

    .local p0, i$:I
    move/from16 v10, p0

    .end local p0           #i$:I
    .local v10, i$:I
    move-object/from16 p0, v3

    .end local v3           #timeZone:Ljava/util/TimeZone;
    .end local v11           #len$:I
    .end local p1           #arr$:[Ljava/lang/String;
    .local p0, timeZone:Ljava/util/TimeZone;
    :goto_3
    if-ge v10, v11, :cond_b

    aget-object p0, p1, v10

    .line 782
    .local p0, zoneId:Ljava/lang/String;
    invoke-static/range {p0 .. p0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v15

    .line 791
    .local v15, timeZone:Ljava/util/TimeZone;
    invoke-static {v15, v8}, Lcom/android/exchange/utility/CalendarUtilities;->getMillisAtTimeZoneDateTransition(Ljava/util/TimeZone;Lcom/android/exchange/utility/CalendarUtilities$TimeZoneDate;)J

    move-result-wide v12

    .line 792
    .local v12, millisAtTransition:J
    new-instance v3, Ljava/util/Date;

    const-wide/32 v19, 0xea60

    sub-long v19, v12, v19

    move-object v0, v3

    move-wide/from16 v1, v19

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    .line 793
    .local v3, before:Ljava/util/Date;
    new-instance p0, Ljava/util/Date;

    .end local p0           #zoneId:Ljava/lang/String;
    const-wide/32 v19, 0xea60

    add-long v19, v19, v12

    move-object/from16 v0, p0

    move-wide/from16 v1, v19

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    .line 794
    .local p0, after:Ljava/util/Date;
    invoke-virtual {v15, v3}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 780
    .end local v10           #i$:I
    :cond_5
    :goto_4
    add-int/lit8 p0, v10, 0x1

    .local p0, i$:I
    move/from16 v10, p0

    .end local p0           #i$:I
    .restart local v10       #i$:I
    move-object/from16 p0, v15

    .end local v15           #timeZone:Ljava/util/TimeZone;
    .local p0, timeZone:Ljava/util/TimeZone;
    goto :goto_3

    .line 795
    .restart local v15       #timeZone:Ljava/util/TimeZone;
    .local p0, after:Ljava/util/Date;
    :cond_6
    move-object v0, v15

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 798
    invoke-static {v15, v5}, Lcom/android/exchange/utility/CalendarUtilities;->getMillisAtTimeZoneDateTransition(Ljava/util/TimeZone;Lcom/android/exchange/utility/CalendarUtilities$TimeZoneDate;)J

    move-result-wide v13

    .line 801
    .end local v12           #millisAtTransition:J
    .local v13, millisAtTransition:J
    new-instance v4, Ljava/util/Date;

    const-wide/32 v19, 0xea60

    add-long v19, v19, v6

    sub-long v19, v13, v19

    move-object v0, v4

    move-wide/from16 v1, v19

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    .line 802
    .end local v3           #before:Ljava/util/Date;
    .local v4, before:Ljava/util/Date;
    new-instance p0, Ljava/util/Date;

    .end local p0           #after:Ljava/util/Date;
    const-wide/32 v19, 0xea60

    add-long v19, v19, v13

    move-object/from16 v0, p0

    move-wide/from16 v1, v19

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    .line 803
    .restart local p0       #after:Ljava/util/Date;
    invoke-virtual {v15, v4}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result v3

    if-nez v3, :cond_7

    move-object v3, v4

    .end local v4           #before:Ljava/util/Date;
    .restart local v3       #before:Ljava/util/Date;
    move-wide/from16 v21, v13

    .end local v13           #millisAtTransition:J
    .local v21, millisAtTransition:J
    move-wide/from16 v12, v21

    .end local v21           #millisAtTransition:J
    .restart local v12       #millisAtTransition:J
    goto :goto_4

    .line 804
    .end local v3           #before:Ljava/util/Date;
    .end local v12           #millisAtTransition:J
    .restart local v4       #before:Ljava/util/Date;
    .restart local v13       #millisAtTransition:J
    :cond_7
    move-object v0, v15

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result v3

    if-eqz v3, :cond_8

    move-object v3, v4

    .end local v4           #before:Ljava/util/Date;
    .restart local v3       #before:Ljava/util/Date;
    move-wide/from16 v21, v13

    .end local v13           #millisAtTransition:J
    .restart local v21       #millisAtTransition:J
    move-wide/from16 v12, v21

    .end local v21           #millisAtTransition:J
    .restart local v12       #millisAtTransition:J
    goto :goto_4

    .line 807
    .end local v3           #before:Ljava/util/Date;
    .end local v12           #millisAtTransition:J
    .restart local v4       #before:Ljava/util/Date;
    .restart local v13       #millisAtTransition:J
    :cond_8
    invoke-virtual {v15}, Ljava/util/TimeZone;->getDSTSavings()I

    move-result v3

    move v0, v3

    int-to-long v0, v0

    move-wide/from16 v19, v0

    cmp-long v3, v6, v19

    if-eqz v3, :cond_9

    move-object v3, v4

    .end local v4           #before:Ljava/util/Date;
    .restart local v3       #before:Ljava/util/Date;
    move-wide/from16 v21, v13

    .end local v13           #millisAtTransition:J
    .restart local v21       #millisAtTransition:J
    move-wide/from16 v12, v21

    .end local v21           #millisAtTransition:J
    .restart local v12       #millisAtTransition:J
    goto :goto_4

    .line 808
    .end local v3           #before:Ljava/util/Date;
    .end local v12           #millisAtTransition:J
    .restart local v4       #before:Ljava/util/Date;
    .restart local v13       #millisAtTransition:J
    :cond_9
    move-object/from16 v3, v17

    .local v3, arr$:[Ljava/lang/String;
    array-length v12, v3

    .local v12, len$:I
    const/4 v9, 0x0

    .end local v10           #i$:I
    .local v9, i$:I
    :goto_5
    if-ge v9, v12, :cond_e

    aget-object v16, v3, v9

    .line 810
    .local v16, timeZoneId:Ljava/lang/String;
    if-eqz v16, :cond_a

    invoke-virtual {v15}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    .end local v16           #timeZoneId:Ljava/lang/String;
    if-eqz v16, :cond_a

    move-object/from16 p0, v15

    .end local v15           #timeZone:Ljava/util/TimeZone;
    .local p0, timeZone:Ljava/util/TimeZone;
    move-object/from16 p1, v15

    .line 811
    goto/16 :goto_2

    .line 808
    .restart local v15       #timeZone:Ljava/util/TimeZone;
    .local p0, after:Ljava/util/Date;
    :cond_a
    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    .line 816
    .end local v3           #arr$:[Ljava/lang/String;
    .end local v4           #before:Ljava/util/Date;
    .end local v9           #i$:I
    .end local v12           #len$:I
    .end local v13           #millisAtTransition:J
    .end local v15           #timeZone:Ljava/util/TimeZone;
    .restart local v10       #i$:I
    .local p0, timeZone:Ljava/util/TimeZone;
    :cond_b
    const/16 p0, 0x0

    aget-object p0, v18, p0

    .end local p0           #timeZone:Ljava/util/TimeZone;
    invoke-static/range {p0 .. p0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object p0

    .line 817
    .restart local p0       #timeZone:Ljava/util/TimeZone;
    sget-boolean p1, Lcom/android/exchange/Eas;->USER_LOG:Z

    if-eqz p1, :cond_c

    .line 818
    const-string p1, "CalendarUtility"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No TimeZone with correct DST settings; using first: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Ljava/util/TimeZone;->getDisplayName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p1

    move-object v1, v3

    invoke-static {v0, v1}, Lcom/android/exchange/SyncManager;->log(Ljava/lang/String;Ljava/lang/String;)V

    :cond_c
    move-object/from16 p1, p0

    .line 821
    goto/16 :goto_2

    .line 824
    .end local v5           #dstEnd:Lcom/android/exchange/utility/CalendarUtilities$TimeZoneDate;
    .end local v6           #dstSavings:J
    .end local v8           #dstStart:Lcom/android/exchange/utility/CalendarUtilities$TimeZoneDate;
    .end local v10           #i$:I
    .end local p0           #timeZone:Ljava/util/TimeZone;
    .local v3, timeZone:Ljava/util/TimeZone;
    .local p1, timeZoneBytes:[B
    :cond_d
    const/16 p0, 0x0

    move-object/from16 p1, p0

    move-object/from16 p0, v3

    .end local v3           #timeZone:Ljava/util/TimeZone;
    .restart local p0       #timeZone:Ljava/util/TimeZone;
    goto/16 :goto_2

    .end local p1           #timeZoneBytes:[B
    .local v3, arr$:[Ljava/lang/String;
    .restart local v4       #before:Ljava/util/Date;
    .restart local v5       #dstEnd:Lcom/android/exchange/utility/CalendarUtilities$TimeZoneDate;
    .restart local v6       #dstSavings:J
    .restart local v8       #dstStart:Lcom/android/exchange/utility/CalendarUtilities$TimeZoneDate;
    .restart local v9       #i$:I
    .restart local v12       #len$:I
    .restart local v13       #millisAtTransition:J
    .restart local v15       #timeZone:Ljava/util/TimeZone;
    .local p0, after:Ljava/util/Date;
    :cond_e
    move-object v3, v4

    .end local v4           #before:Ljava/util/Date;
    .local v3, before:Ljava/util/Date;
    move-wide/from16 v21, v13

    .end local v13           #millisAtTransition:J
    .restart local v21       #millisAtTransition:J
    move-wide/from16 v12, v21

    .end local v21           #millisAtTransition:J
    .local v12, millisAtTransition:J
    goto/16 :goto_4
.end method

.method static utcOffsetString(I)Ljava/lang/String;
    .locals 6
    .parameter "offsetMinutes"

    .prologue
    const/16 v5, 0x30

    const/16 v4, 0xa

    .line 469
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 470
    .local v2, sb:Ljava/lang/StringBuilder;
    div-int/lit8 v0, p0, 0x3c

    .line 471
    .local v0, hours:I
    if-gez v0, :cond_2

    .line 472
    const/16 v3, 0x2d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 473
    const/4 v3, 0x0

    sub-int v0, v3, v0

    .line 477
    :goto_0
    rem-int/lit8 v1, p0, 0x3c

    .line 478
    .local v1, minutes:I
    if-ge v0, v4, :cond_0

    .line 479
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 481
    :cond_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 482
    if-ge v1, v4, :cond_1

    .line 483
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 485
    :cond_1
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 486
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 475
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

    .line 546
    const-string v0, "BEGIN"

    const-string v1, "STANDARD"

    invoke-virtual {p0, v0, v4}, Lcom/android/exchange/utility/SimpleIcsWriter;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 547
    const-string v0, "TZOFFSETFROM"

    invoke-virtual {p0, v0, p2}, Lcom/android/exchange/utility/SimpleIcsWriter;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 548
    const-string v0, "TZOFFSETTO"

    invoke-virtual {p0, v0, p2}, Lcom/android/exchange/utility/SimpleIcsWriter;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 550
    const-string v0, "DTSTART"

    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Lcom/android/exchange/utility/CalendarUtilities;->millisToEasDateTime(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/exchange/utility/SimpleIcsWriter;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 551
    const-string v0, "END"

    const-string v0, "STANDARD"

    invoke-virtual {p0, v3, v4}, Lcom/android/exchange/utility/SimpleIcsWriter;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 552
    const-string v0, "END"

    const-string v0, "VTIMEZONE"

    invoke-virtual {p0, v3, v0}, Lcom/android/exchange/utility/SimpleIcsWriter;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 553
    return-void
.end method

.method private static writeVAlarm(Lcom/android/exchange/utility/SimpleIcsWriter;)V
    .locals 4
    .parameter

    .prologue
    const-string v3, "VALARM"

    .line 1758
    const-string v0, "BEGIN"

    const-string v1, "VALARM"

    invoke-virtual {p0, v0, v3}, Lcom/android/exchange/utility/SimpleIcsWriter;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 1759
    const-string v0, "ACTION"

    const-string v1, "DISPLAY"

    invoke-virtual {p0, v0, v1}, Lcom/android/exchange/utility/SimpleIcsWriter;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 1760
    const-string v0, "DESCRIPTION"

    const-string v1, "REMINDER"

    invoke-virtual {p0, v0, v1}, Lcom/android/exchange/utility/SimpleIcsWriter;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 1761
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

    .line 1762
    const-string v0, "END"

    const-string v1, "VALARM"

    invoke-virtual {p0, v0, v3}, Lcom/android/exchange/utility/SimpleIcsWriter;->writeTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 1763
    return-void
.end method
