.class public Lcom/android/exchange/adapter/CalendarSyncAdapter;
.super Lcom/android/exchange/adapter/AbstractSyncAdapter;
.source "CalendarSyncAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/exchange/adapter/CalendarSyncAdapter$1;,
        Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;,
        Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;
    }
.end annotation


# static fields
.field private static final ATTENDEES_URI:Landroid/net/Uri;

.field private static final ATTENDEE_STATUS_PROJECTION:[Ljava/lang/String;

.field private static final AVAILABILITY_STATUS_PROJECTION:[Ljava/lang/String;

.field private static final EVENTS_URI:Landroid/net/Uri;

.field private static final EXTENDED_PROPERTIES_URI:Landroid/net/Uri;

.field private static final EXTENDED_PROPERTY_PROJECTION:[Ljava/lang/String;

.field private static final ID_PROJECTION:[Ljava/lang/String;

.field private static final ORIGINAL_EVENT_PROJECTION:[Ljava/lang/String;

.field private static final PLACEHOLDER_OPERATION:Landroid/content/ContentProviderOperation;

.field private static final REMINDERS_URI:Landroid/net/Uri;

.field private static final UTC_TIMEZONE:Ljava/util/TimeZone;

.field private static final sSyncKeyLock:Ljava/lang/Object;


# instance fields
.field private mCalendarId:J

.field private mCalendarIdArgument:[Ljava/lang/String;

.field private mCalendarIdString:Ljava/lang/String;

.field private mDeletedIdList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mEmailAddress:Ljava/lang/String;

.field private final mLocalTimeZone:Ljava/util/TimeZone;

.field private mOutgoingMailList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/email/provider/EmailContent$Message;",
            ">;"
        }
    .end annotation
.end field

.field private mSendCancelIdList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mUploadedIdList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const-string v4, "_id"

    .line 96
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v4, v0, v2

    sput-object v0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->ID_PROJECTION:[Ljava/lang/String;

    .line 97
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "originalEvent"

    aput-object v1, v0, v2

    const-string v1, "_id"

    aput-object v4, v0, v3

    sput-object v0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->ORIGINAL_EVENT_PROJECTION:[Ljava/lang/String;

    .line 106
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "attendeeStatus"

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->ATTENDEE_STATUS_PROJECTION:[Ljava/lang/String;

    .line 110
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "availabilityStatus"

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->AVAILABILITY_STATUS_PROJECTION:[Ljava/lang/String;

    .line 118
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v4, v0, v2

    sput-object v0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->EXTENDED_PROPERTY_PROJECTION:[Ljava/lang/String;

    .line 135
    sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    sput-object v0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->PLACEHOLDER_OPERATION:Landroid/content/ContentProviderOperation;

    .line 138
    sget-object v0, Landroid/provider/Calendar$Events;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0}, Lcom/android/exchange/adapter/CalendarSyncAdapter;->asSyncAdapter(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->EVENTS_URI:Landroid/net/Uri;

    .line 139
    sget-object v0, Landroid/provider/Calendar$Attendees;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0}, Lcom/android/exchange/adapter/CalendarSyncAdapter;->asSyncAdapter(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->ATTENDEES_URI:Landroid/net/Uri;

    .line 140
    sget-object v0, Landroid/provider/Calendar$ExtendedProperties;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0}, Lcom/android/exchange/adapter/CalendarSyncAdapter;->asSyncAdapter(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->EXTENDED_PROPERTIES_URI:Landroid/net/Uri;

    .line 142
    sget-object v0, Landroid/provider/Calendar$Reminders;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0}, Lcom/android/exchange/adapter/CalendarSyncAdapter;->asSyncAdapter(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->REMINDERS_URI:Landroid/net/Uri;

    .line 144
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->sSyncKeyLock:Ljava/lang/Object;

    .line 146
    const-string v0, "UTC"

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    sput-object v0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->UTC_TIMEZONE:Ljava/util/TimeZone;

    return-void
.end method

.method public constructor <init>(Lcom/android/email/provider/EmailContent$Mailbox;Lcom/android/exchange/EasSyncService;)V
    .locals 9
    .parameter "mailbox"
    .parameter "service"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 180
    invoke-direct {p0, p1, p2}, Lcom/android/exchange/adapter/AbstractSyncAdapter;-><init>(Lcom/android/email/provider/EmailContent$Mailbox;Lcom/android/exchange/EasSyncService;)V

    .line 147
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mLocalTimeZone:Ljava/util/TimeZone;

    .line 169
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mCalendarId:J

    .line 174
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mDeletedIdList:Ljava/util/ArrayList;

    .line 175
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mUploadedIdList:Ljava/util/ArrayList;

    .line 176
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mSendCancelIdList:Ljava/util/ArrayList;

    .line 177
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mOutgoingMailList:Ljava/util/ArrayList;

    .line 181
    iget-object v0, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-object v0, v0, Lcom/android/email/provider/EmailContent$Account;->mEmailAddress:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mEmailAddress:Ljava/lang/String;

    .line 182
    iget-object v0, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mService:Lcom/android/exchange/EasSyncService;

    iget-object v0, v0, Lcom/android/exchange/EasSyncService;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/Calendar$Calendars;->CONTENT_URI:Landroid/net/Uri;

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v7

    const-string v3, "_sync_account=? AND _sync_account_type=?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    iget-object v5, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mEmailAddress:Ljava/lang/String;

    aput-object v5, v4, v7

    const-string v5, "com.android.exchange"

    aput-object v5, v4, v8

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 185
    .local v6, c:Landroid/database/Cursor;
    if-nez v6, :cond_0

    .line 197
    :goto_0
    return-void

    .line 187
    :cond_0
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 188
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mCalendarId:J

    .line 192
    :goto_1
    iget-wide v0, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mCalendarId:J

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mCalendarIdString:Ljava/lang/String;

    .line 193
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mCalendarIdString:Ljava/lang/String;

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mCalendarIdArgument:[Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 195
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 190
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mService:Lcom/android/exchange/EasSyncService;

    iget-object v1, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-object v2, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    invoke-static {v0, v1, v2}, Lcom/android/exchange/utility/CalendarUtilities;->createCalendar(Lcom/android/exchange/EasSyncService;Lcom/android/email/provider/EmailContent$Account;Lcom/android/email/provider/EmailContent$Mailbox;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mCalendarId:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 195
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method static synthetic access$100(Lcom/android/exchange/adapter/CalendarSyncAdapter;)Ljava/util/TimeZone;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mLocalTimeZone:Ljava/util/TimeZone;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/exchange/adapter/CalendarSyncAdapter;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mSendCancelIdList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/exchange/adapter/CalendarSyncAdapter;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mUploadedIdList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/exchange/adapter/CalendarSyncAdapter;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mDeletedIdList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/exchange/adapter/CalendarSyncAdapter;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mOutgoingMailList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1600()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 78
    sget-object v0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->EXTENDED_PROPERTIES_URI:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$1700()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    sget-object v0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->EXTENDED_PROPERTY_PROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1800()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 78
    sget-object v0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->REMINDERS_URI:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$200()Ljava/util/TimeZone;
    .locals 1

    .prologue
    .line 78
    sget-object v0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->UTC_TIMEZONE:Ljava/util/TimeZone;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/exchange/adapter/CalendarSyncAdapter;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 78
    iget-wide v0, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mCalendarId:J

    return-wide v0
.end method

.method static synthetic access$400(Lcom/android/exchange/adapter/CalendarSyncAdapter;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mEmailAddress:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 78
    sget-object v0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->ATTENDEES_URI:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$600()Landroid/content/ContentProviderOperation;
    .locals 1

    .prologue
    .line 78
    sget-object v0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->PLACEHOLDER_OPERATION:Landroid/content/ContentProviderOperation;

    return-object v0
.end method

.method static synthetic access$700()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 78
    sget-object v0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->EVENTS_URI:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$800()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    sget-object v0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->ID_PROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/exchange/adapter/CalendarSyncAdapter;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mCalendarIdString:Ljava/lang/String;

    return-object v0
.end method

.method static asSyncAdapter(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 3
    .parameter "uri"

    .prologue
    .line 220
    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "caller_is_syncadapter"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private decodeVisibility(I)Ljava/lang/String;
    .locals 2
    .parameter "visibility"

    .prologue
    .line 1613
    const/4 v0, 0x0

    .line 1614
    .local v0, easVisibility:I
    packed-switch p1, :pswitch_data_0

    .line 1628
    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1616
    :pswitch_0
    const/4 v0, 0x0

    .line 1617
    goto :goto_0

    .line 1619
    :pswitch_1
    const/4 v0, 0x1

    .line 1620
    goto :goto_0

    .line 1622
    :pswitch_2
    const/4 v0, 0x2

    .line 1623
    goto :goto_0

    .line 1625
    :pswitch_3
    const/4 v0, 0x3

    goto :goto_0

    .line 1614
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private getInt(Landroid/content/ContentValues;Ljava/lang/String;)I
    .locals 2
    .parameter "cv"
    .parameter "column"

    .prologue
    .line 1632
    invoke-virtual {p1, p2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 1633
    .local v0, i:Ljava/lang/Integer;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 1634
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0
.end method

.method private sendDeclinedEmail(Landroid/content/Entity;Ljava/lang/String;)V
    .locals 5
    .parameter "entity"
    .parameter "clientId"

    .prologue
    .line 1999
    iget-object v1, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mContext:Landroid/content/Context;

    const/16 v2, 0x80

    iget-object v3, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    invoke-static {v1, p1, v2, p2, v3}, Lcom/android/exchange/utility/CalendarUtilities;->createMessageForEntity(Landroid/content/Context;Landroid/content/Entity;ILjava/lang/String;Lcom/android/email/provider/EmailContent$Account;)Lcom/android/email/provider/EmailContent$Message;

    move-result-object v0

    .line 2002
    .local v0, msg:Lcom/android/email/provider/EmailContent$Message;
    if-eqz v0, :cond_0

    .line 2003
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Queueing declined response to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/android/email/provider/EmailContent$Message;->mTo:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v1}, Lcom/android/exchange/adapter/CalendarSyncAdapter;->userLog([Ljava/lang/String;)V

    .line 2004
    iget-object v1, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mOutgoingMailList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2006
    :cond_0
    return-void
.end method

.method private sendEvent(Landroid/content/Entity;Ljava/lang/String;Lcom/android/exchange/adapter/Serializer;)V
    .locals 59
    .parameter "entity"
    .parameter "clientId"
    .parameter "s"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1644
    invoke-virtual/range {p1 .. p1}, Landroid/content/Entity;->getEntityValues()Landroid/content/ContentValues;

    move-result-object v27

    .line 1645
    .local v27, entityValues:Landroid/content/ContentValues;
    if-nez p2, :cond_11

    const/4 v5, 0x1

    move/from16 v37, v5

    .line 1648
    .local v37, isException:Z
    :goto_0
    const-string v5, "deleted"

    move-object/from16 v0, v27

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v19

    .line 1649
    .local v19, deleted:Ljava/lang/Integer;
    if-eqz v19, :cond_12

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_12

    const/4 v5, 0x1

    move/from16 v36, v5

    .line 1650
    .local v36, isDeleted:Z
    :goto_1
    const-string v5, "eventStatus"

    move-object/from16 v0, v27

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v30

    .line 1651
    .local v30, eventStatus:Ljava/lang/Integer;
    if-eqz v30, :cond_13

    const/4 v5, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v30

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_13

    const/4 v5, 0x1

    move/from16 v34, v5

    .line 1652
    .local v34, isCanceled:Z
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mService:Lcom/android/exchange/EasSyncService;

    move-object v5, v0

    move-object v0, v5

    iget-object v0, v0, Lcom/android/exchange/EasSyncService;->mProtocolVersionDouble:Ljava/lang/Double;

    move-object/from16 v57, v0

    .line 1654
    .local v57, version:Ljava/lang/Double;
    const/16 v32, 0x0

    .line 1655
    .local v32, hasAttendees:Z
    const-string v5, "_sync_id"

    move-object/from16 v0, v27

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v35

    .line 1659
    .local v35, isChange:Z
    if-eqz v37, :cond_1

    .line 1660
    if-nez v36, :cond_0

    if-eqz v34, :cond_14

    .line 1661
    :cond_0
    const/16 v5, 0x115

    const-string v6, "1"

    move-object/from16 v0, p3

    move v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 1662
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "This is a deleted exception"

    aput-object v7, v5, v6

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/CalendarSyncAdapter;->userLog([Ljava/lang/String;)V

    .line 1665
    if-eqz v36, :cond_1

    if-nez v34, :cond_1

    .line 1666
    const-string v5, "_id"

    move-object/from16 v0, v27

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v28

    .line 1667
    .local v28, eventId:J
    new-instance v18, Landroid/content/ContentValues;

    invoke-direct/range {v18 .. v18}, Landroid/content/ContentValues;-><init>()V

    .line 1668
    .local v18, cv:Landroid/content/ContentValues;
    const-string v5, "eventStatus"

    const/4 v6, 0x2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v18

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1669
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "event status: 2"

    aput-object v7, v5, v6

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/CalendarSyncAdapter;->userLog([Ljava/lang/String;)V

    .line 1670
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mService:Lcom/android/exchange/EasSyncService;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/exchange/EasSyncService;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v6, Lcom/android/exchange/adapter/CalendarSyncAdapter;->EVENTS_URI:Landroid/net/Uri;

    move-object v0, v6

    move-wide/from16 v1, v28

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v18

    move-object v3, v7

    move-object v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1679
    .end local v18           #cv:Landroid/content/ContentValues;
    .end local v28           #eventId:J
    :cond_1
    :goto_3
    if-eqz v37, :cond_15

    .line 1680
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "this is an exception to recurrent event"

    aput-object v7, v5, v6

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/CalendarSyncAdapter;->userLog([Ljava/lang/String;)V

    .line 1686
    :goto_4
    const/4 v12, 0x0

    .line 1687
    .local v12, allDay:Z
    const-string v5, "allDay"

    move-object/from16 v0, v27

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1688
    const-string v5, "allDay"

    move-object/from16 v0, v27

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v11

    .line 1689
    .local v11, ade:Ljava/lang/Integer;
    if-eqz v11, :cond_2

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-eqz v5, :cond_2

    .line 1690
    const/4 v12, 0x1

    .line 1695
    .end local v11           #ade:Ljava/lang/Integer;
    :cond_2
    if-eqz v12, :cond_16

    const-string v5, "eventTimezone2"

    :goto_5
    move-object/from16 v0, v27

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v55

    .line 1697
    .local v55, timeZoneName:Ljava/lang/String;
    if-nez v55, :cond_3

    .line 1698
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mLocalTimeZone:Ljava/util/TimeZone;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v55

    .line 1700
    :cond_3
    invoke-static/range {v55 .. v55}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v31

    .line 1702
    .local v31, eventTimeZone:Ljava/util/TimeZone;
    if-nez v37, :cond_4

    .line 1705
    invoke-static/range {v31 .. v31}, Lcom/android/exchange/utility/CalendarUtilities;->timeZoneToTziString(Ljava/util/TimeZone;)Ljava/lang/String;

    move-result-object v54

    .line 1706
    .local v54, timeZone:Ljava/lang/String;
    const/16 v5, 0x105

    move-object/from16 v0, p3

    move v1, v5

    move-object/from16 v2, v54

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 1707
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Timezone: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v0, v7

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/CalendarSyncAdapter;->userLog([Ljava/lang/String;)V

    .line 1713
    .end local v54           #timeZone:Ljava/lang/String;
    :cond_4
    if-eqz v37, :cond_5

    if-eqz v37, :cond_6

    if-nez v36, :cond_6

    if-nez v34, :cond_6

    .line 1714
    :cond_5
    const/16 v5, 0x106

    if-eqz v12, :cond_17

    const-string v6, "1"

    :goto_6
    move-object/from16 v0, p3

    move v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 1715
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Allday: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    if-eqz v12, :cond_18

    const-string v8, "1"

    :goto_7
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/CalendarSyncAdapter;->userLog([Ljava/lang/String;)V

    .line 1720
    :cond_6
    const-string v5, "dtstart"

    move-object/from16 v0, v27

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v51

    .line 1724
    .local v51, startTime:J
    const-string v5, "dtend"

    move-object/from16 v0, v27

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_19

    .line 1725
    const-string v5, "dtend"

    move-object/from16 v0, v27

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v25

    .line 1739
    .local v25, endTime:J
    :goto_8
    if-eqz v12, :cond_7

    .line 1740
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mLocalTimeZone:Ljava/util/TimeZone;

    move-object/from16 v56, v0

    .line 1741
    .local v56, tz:Ljava/util/TimeZone;
    move-wide/from16 v0, v51

    move-object/from16 v2, v56

    invoke-static {v0, v1, v2}, Lcom/android/exchange/utility/CalendarUtilities;->getLocalAllDayCalendarTime(JLjava/util/TimeZone;)J

    move-result-wide v51

    .line 1742
    move-wide/from16 v0, v25

    move-object/from16 v2, v56

    invoke-static {v0, v1, v2}, Lcom/android/exchange/utility/CalendarUtilities;->getLocalAllDayCalendarTime(JLjava/util/TimeZone;)J

    move-result-wide v25

    .line 1748
    .end local v56           #tz:Ljava/util/TimeZone;
    :cond_7
    if-eqz v37, :cond_8

    if-eqz v37, :cond_b

    if-nez v36, :cond_b

    if-nez v34, :cond_b

    .line 1749
    :cond_8
    const/16 v5, 0x127

    invoke-static/range {v51 .. v52}, Lcom/android/exchange/utility/CalendarUtilities;->millisToEasDateTime(J)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p3

    move v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 1750
    const/16 v5, 0x112

    invoke-static/range {v25 .. v26}, Lcom/android/exchange/utility/CalendarUtilities;->millisToEasDateTime(J)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p3

    move v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 1752
    const/16 v5, 0x111

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/android/exchange/utility/CalendarUtilities;->millisToEasDateTime(J)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p3

    move v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 1755
    const-string v5, "eventLocation"

    move-object/from16 v0, v27

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    .line 1756
    .local v38, loc:Ljava/lang/String;
    invoke-static/range {v38 .. v38}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_a

    .line 1757
    invoke-virtual/range {v57 .. v57}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    const-wide/high16 v7, 0x4028

    cmpg-double v5, v5, v7

    if-gez v5, :cond_9

    .line 1759
    invoke-static/range {v38 .. v38}, Lcom/android/email/Utility;->replaceBareLfWithCrlf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    .line 1761
    :cond_9
    const/16 v5, 0x117

    move-object/from16 v0, p3

    move v1, v5

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 1763
    :cond_a
    const-string v5, "title"

    const/16 v6, 0x126

    move-object/from16 v0, p3

    move-object/from16 v1, v27

    move-object v2, v5

    move v3, v6

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/exchange/adapter/Serializer;->writeStringValue(Landroid/content/ContentValues;Ljava/lang/String;I)V

    .line 1765
    const-string v5, "visibility"

    move-object/from16 v0, v27

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v58

    .line 1768
    .local v58, visibility:Ljava/lang/Integer;
    if-nez v37, :cond_b

    .line 1769
    if-eqz v58, :cond_1b

    .line 1770
    const/16 v5, 0x125

    invoke-virtual/range {v58 .. v58}, Ljava/lang/Integer;->intValue()I

    move-result v6

    move-object/from16 v0, p0

    move v1, v6

    invoke-direct {v0, v1}, Lcom/android/exchange/adapter/CalendarSyncAdapter;->decodeVisibility(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p3

    move v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 1780
    .end local v38           #loc:Ljava/lang/String;
    .end local v58           #visibility:Ljava/lang/Integer;
    :cond_b
    :goto_9
    const-string v5, "description"

    move-object/from16 v0, v27

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 1781
    .local v20, desc:Ljava/lang/String;
    if-eqz v20, :cond_c

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_c

    .line 1782
    invoke-virtual/range {v57 .. v57}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    const-wide/high16 v7, 0x4028

    cmpl-double v5, v5, v7

    if-ltz v5, :cond_1c

    .line 1783
    const/16 v5, 0x44a

    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    .line 1784
    const/16 v5, 0x446

    const-string v6, "1"

    move-object/from16 v0, p3

    move v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 1785
    const/16 v5, 0x44b

    move-object/from16 v0, p3

    move v1, v5

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 1786
    invoke-virtual/range {p3 .. p3}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    .line 1793
    :cond_c
    :goto_a
    if-nez v37, :cond_31

    .line 1795
    invoke-virtual/range {v57 .. v57}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    const-wide/high16 v7, 0x4028

    cmpl-double v5, v5, v7

    if-gez v5, :cond_d

    if-nez v35, :cond_e

    .line 1796
    :cond_d
    const-string v5, "organizer"

    const/16 v6, 0x119

    move-object/from16 v0, p3

    move-object/from16 v1, v27

    move-object v2, v5

    move v3, v6

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/exchange/adapter/Serializer;->writeStringValue(Landroid/content/ContentValues;Ljava/lang/String;I)V

    .line 1799
    :cond_e
    const-string v5, "rrule"

    move-object/from16 v0, v27

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v49

    .line 1800
    .local v49, rrule:Ljava/lang/String;
    if-eqz v49, :cond_f

    .line 1801
    move-object/from16 v0, v49

    move-wide/from16 v1, v51

    move-object/from16 v3, p3

    invoke-static {v0, v1, v2, v3}, Lcom/android/exchange/utility/CalendarUtilities;->recurrenceFromRrule(Ljava/lang/String;JLcom/android/exchange/adapter/Serializer;)V

    .line 1805
    :cond_f
    invoke-virtual/range {p1 .. p1}, Landroid/content/Entity;->getSubValues()Ljava/util/ArrayList;

    move-result-object v53

    .line 1807
    .local v53, subValues:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/Entity$NamedContentValues;>;"
    const/16 v24, -0x1

    .line 1808
    .local v24, earliestReminder:I
    invoke-virtual/range {v53 .. v53}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v33

    .local v33, i$:Ljava/util/Iterator;
    :cond_10
    :goto_b
    invoke-interface/range {v33 .. v33}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_20

    invoke-interface/range {v33 .. v33}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Landroid/content/Entity$NamedContentValues;

    .line 1809
    .local v40, ncv:Landroid/content/Entity$NamedContentValues;
    move-object/from16 v0, v40

    iget-object v0, v0, Landroid/content/Entity$NamedContentValues;->uri:Landroid/net/Uri;

    move-object/from16 v41, v0

    .line 1810
    .local v41, ncvUri:Landroid/net/Uri;
    move-object/from16 v0, v40

    iget-object v0, v0, Landroid/content/Entity$NamedContentValues;->values:Landroid/content/ContentValues;

    move-object/from16 v42, v0

    .line 1811
    .local v42, ncvValues:Landroid/content/ContentValues;
    sget-object v5, Landroid/provider/Calendar$ExtendedProperties;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v41

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1e

    .line 1812
    const-string v5, "name"

    move-object/from16 v0, v42

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v46

    .line 1814
    .local v46, propertyName:Ljava/lang/String;
    const-string v5, "value"

    move-object/from16 v0, v42

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v47

    .line 1816
    .local v47, propertyValue:Ljava/lang/String;
    invoke-static/range {v47 .. v47}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_10

    .line 1819
    const-string v5, "categories"

    move-object/from16 v0, v46

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_10

    .line 1822
    new-instance v50, Ljava/util/StringTokenizer;

    const-string v5, "\\"

    move-object/from16 v0, v50

    move-object/from16 v1, v47

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1824
    .local v50, st:Ljava/util/StringTokenizer;
    invoke-virtual/range {v50 .. v50}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v5

    if-lez v5, :cond_10

    .line 1825
    const/16 v5, 0x10e

    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    .line 1826
    :goto_c
    invoke-virtual/range {v50 .. v50}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v5

    if-eqz v5, :cond_1d

    .line 1827
    invoke-virtual/range {v50 .. v50}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v17

    .line 1828
    .local v17, category:Ljava/lang/String;
    const/16 v5, 0x10f

    move-object/from16 v0, p3

    move v1, v5

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    goto :goto_c

    .line 1645
    .end local v12           #allDay:Z
    .end local v17           #category:Ljava/lang/String;
    .end local v19           #deleted:Ljava/lang/Integer;
    .end local v20           #desc:Ljava/lang/String;
    .end local v24           #earliestReminder:I
    .end local v25           #endTime:J
    .end local v30           #eventStatus:Ljava/lang/Integer;
    .end local v31           #eventTimeZone:Ljava/util/TimeZone;
    .end local v32           #hasAttendees:Z
    .end local v33           #i$:Ljava/util/Iterator;
    .end local v34           #isCanceled:Z
    .end local v35           #isChange:Z
    .end local v36           #isDeleted:Z
    .end local v37           #isException:Z
    .end local v40           #ncv:Landroid/content/Entity$NamedContentValues;
    .end local v41           #ncvUri:Landroid/net/Uri;
    .end local v42           #ncvValues:Landroid/content/ContentValues;
    .end local v46           #propertyName:Ljava/lang/String;
    .end local v47           #propertyValue:Ljava/lang/String;
    .end local v49           #rrule:Ljava/lang/String;
    .end local v50           #st:Ljava/util/StringTokenizer;
    .end local v51           #startTime:J
    .end local v53           #subValues:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/Entity$NamedContentValues;>;"
    .end local v55           #timeZoneName:Ljava/lang/String;
    .end local v57           #version:Ljava/lang/Double;
    :cond_11
    const/4 v5, 0x0

    move/from16 v37, v5

    goto/16 :goto_0

    .line 1649
    .restart local v19       #deleted:Ljava/lang/Integer;
    .restart local v37       #isException:Z
    :cond_12
    const/4 v5, 0x0

    move/from16 v36, v5

    goto/16 :goto_1

    .line 1651
    .restart local v30       #eventStatus:Ljava/lang/Integer;
    .restart local v36       #isDeleted:Z
    :cond_13
    const/4 v5, 0x0

    move/from16 v34, v5

    goto/16 :goto_2

    .line 1675
    .restart local v32       #hasAttendees:Z
    .restart local v34       #isCanceled:Z
    .restart local v35       #isChange:Z
    .restart local v57       #version:Ljava/lang/Double;
    :cond_14
    const/16 v5, 0x115

    const-string v6, "0"

    move-object/from16 v0, p3

    move v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    goto/16 :goto_3

    .line 1683
    :cond_15
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "this is NOT an exception to recurrent event"

    aput-object v7, v5, v6

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/CalendarSyncAdapter;->userLog([Ljava/lang/String;)V

    goto/16 :goto_4

    .line 1695
    .restart local v12       #allDay:Z
    :cond_16
    const-string v5, "eventTimezone"

    goto/16 :goto_5

    .line 1714
    .restart local v31       #eventTimeZone:Ljava/util/TimeZone;
    .restart local v55       #timeZoneName:Ljava/lang/String;
    :cond_17
    const-string v6, "0"

    goto/16 :goto_6

    .line 1715
    :cond_18
    const-string v8, "0"

    goto/16 :goto_7

    .line 1727
    .restart local v51       #startTime:J
    :cond_19
    const-wide/32 v22, 0x36ee80

    .line 1728
    .local v22, durationMillis:J
    const-string v5, "duration"

    move-object/from16 v0, v27

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1a

    .line 1729
    new-instance v21, Lcom/android/exchange/utility/Duration;

    invoke-direct/range {v21 .. v21}, Lcom/android/exchange/utility/Duration;-><init>()V

    .line 1731
    .local v21, duration:Lcom/android/exchange/utility/Duration;
    :try_start_0
    const-string v5, "duration"

    move-object/from16 v0, v27

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v21

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/android/exchange/utility/Duration;->parse(Ljava/lang/String;)V

    .line 1732
    invoke-virtual/range {v21 .. v21}, Lcom/android/exchange/utility/Duration;->getMillis()J
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v22

    .line 1737
    .end local v21           #duration:Lcom/android/exchange/utility/Duration;
    :cond_1a
    :goto_d
    add-long v25, v51, v22

    .restart local v25       #endTime:J
    goto/16 :goto_8

    .line 1774
    .end local v22           #durationMillis:J
    .restart local v38       #loc:Ljava/lang/String;
    .restart local v58       #visibility:Ljava/lang/Integer;
    :cond_1b
    const/16 v5, 0x125

    const-string v6, "1"

    move-object/from16 v0, p3

    move v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    goto/16 :goto_9

    .line 1789
    .end local v38           #loc:Ljava/lang/String;
    .end local v58           #visibility:Ljava/lang/Integer;
    .restart local v20       #desc:Ljava/lang/String;
    :cond_1c
    const/16 v5, 0x10b

    invoke-static/range {v20 .. v20}, Lcom/android/email/Utility;->replaceBareLfWithCrlf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p3

    move v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    goto/16 :goto_a

    .line 1830
    .restart local v24       #earliestReminder:I
    .restart local v33       #i$:Ljava/util/Iterator;
    .restart local v40       #ncv:Landroid/content/Entity$NamedContentValues;
    .restart local v41       #ncvUri:Landroid/net/Uri;
    .restart local v42       #ncvValues:Landroid/content/ContentValues;
    .restart local v46       #propertyName:Ljava/lang/String;
    .restart local v47       #propertyValue:Ljava/lang/String;
    .restart local v49       #rrule:Ljava/lang/String;
    .restart local v50       #st:Ljava/util/StringTokenizer;
    .restart local v53       #subValues:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/Entity$NamedContentValues;>;"
    :cond_1d
    invoke-virtual/range {p3 .. p3}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    goto/16 :goto_b

    .line 1833
    .end local v46           #propertyName:Ljava/lang/String;
    .end local v47           #propertyValue:Ljava/lang/String;
    .end local v50           #st:Ljava/util/StringTokenizer;
    :cond_1e
    sget-object v5, Landroid/provider/Calendar$Reminders;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v41

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_10

    .line 1834
    const-string v5, "minutes"

    move-object/from16 v0, v42

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v39

    .line 1835
    .local v39, mins:Ljava/lang/Integer;
    if-eqz v39, :cond_10

    .line 1837
    invoke-virtual/range {v39 .. v39}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-gez v5, :cond_1f

    .line 1838
    const/16 v5, 0x1e

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v39

    .line 1841
    :cond_1f
    invoke-virtual/range {v39 .. v39}, Ljava/lang/Integer;->intValue()I

    move-result v5

    move v0, v5

    move/from16 v1, v24

    if-le v0, v1, :cond_10

    .line 1842
    invoke-virtual/range {v39 .. v39}, Ljava/lang/Integer;->intValue()I

    move-result v24

    goto/16 :goto_b

    .line 1849
    .end local v39           #mins:Ljava/lang/Integer;
    .end local v40           #ncv:Landroid/content/Entity$NamedContentValues;
    .end local v41           #ncvUri:Landroid/net/Uri;
    .end local v42           #ncvValues:Landroid/content/ContentValues;
    :cond_20
    if-ltz v24, :cond_21

    .line 1850
    const/16 v5, 0x124

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p3

    move v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 1855
    :cond_21
    if-eqz p2, :cond_22

    .line 1856
    const/16 v5, 0x128

    move-object/from16 v0, p3

    move v1, v5

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 1860
    :cond_22
    const/16 v44, 0x0

    .line 1861
    .local v44, organizerName:Ljava/lang/String;
    const/16 v43, 0x0

    .line 1862
    .local v43, organizerEmail:Ljava/lang/String;
    invoke-virtual/range {v53 .. v53}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v33

    :cond_23
    :goto_e
    invoke-interface/range {v33 .. v33}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_29

    invoke-interface/range {v33 .. v33}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Landroid/content/Entity$NamedContentValues;

    .line 1863
    .restart local v40       #ncv:Landroid/content/Entity$NamedContentValues;
    move-object/from16 v0, v40

    iget-object v0, v0, Landroid/content/Entity$NamedContentValues;->uri:Landroid/net/Uri;

    move-object/from16 v41, v0

    .line 1864
    .restart local v41       #ncvUri:Landroid/net/Uri;
    move-object/from16 v0, v40

    iget-object v0, v0, Landroid/content/Entity$NamedContentValues;->values:Landroid/content/ContentValues;

    move-object/from16 v42, v0

    .line 1865
    .restart local v42       #ncvValues:Landroid/content/ContentValues;
    sget-object v5, Landroid/provider/Calendar$Attendees;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v41

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_23

    .line 1866
    const-string v5, "attendeeRelationship"

    move-object/from16 v0, v42

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v48

    .line 1869
    .local v48, relationship:Ljava/lang/Integer;
    if-eqz v48, :cond_23

    const-string v5, "attendeeEmail"

    move-object/from16 v0, v42

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_23

    .line 1871
    invoke-virtual/range {v48 .. v48}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_24

    .line 1872
    const-string v5, "attendeeName"

    move-object/from16 v0, v42

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v44

    .line 1873
    const-string v5, "attendeeEmail"

    move-object/from16 v0, v42

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v43

    .line 1874
    goto :goto_e

    .line 1876
    :cond_24
    if-nez v32, :cond_25

    .line 1877
    const/16 v5, 0x107

    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    .line 1878
    const/16 v32, 0x1

    .line 1880
    :cond_25
    const/16 v5, 0x108

    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    .line 1881
    const-string v5, "attendeeEmail"

    move-object/from16 v0, v42

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 1882
    .local v13, attendeeEmail:Ljava/lang/String;
    const-string v5, "attendeeName"

    move-object/from16 v0, v42

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 1883
    .local v14, attendeeName:Ljava/lang/String;
    if-nez v14, :cond_28

    .line 1884
    move-object v14, v13

    .line 1890
    :cond_26
    :goto_f
    const/16 v5, 0x10a

    move-object/from16 v0, p3

    move v1, v5

    move-object v2, v14

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 1891
    const/16 v5, 0x109

    move-object/from16 v0, p3

    move v1, v5

    move-object v2, v13

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 1892
    invoke-virtual/range {v57 .. v57}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    const-wide/high16 v7, 0x4028

    cmpl-double v5, v5, v7

    if-ltz v5, :cond_27

    .line 1893
    const/16 v5, 0x12a

    const-string v6, "1"

    move-object/from16 v0, p3

    move v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 1895
    :cond_27
    invoke-virtual/range {p3 .. p3}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    goto/16 :goto_e

    .line 1887
    :cond_28
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_26

    .line 1888
    move-object v14, v13

    goto :goto_f

    .line 1899
    .end local v13           #attendeeEmail:Ljava/lang/String;
    .end local v14           #attendeeName:Ljava/lang/String;
    .end local v40           #ncv:Landroid/content/Entity$NamedContentValues;
    .end local v41           #ncvUri:Landroid/net/Uri;
    .end local v42           #ncvValues:Landroid/content/ContentValues;
    .end local v48           #relationship:Ljava/lang/Integer;
    :cond_29
    if-eqz v32, :cond_2a

    .line 1900
    invoke-virtual/range {p3 .. p3}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    .line 1904
    :cond_2a
    const-string v5, "_id"

    move-object/from16 v0, v27

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v28

    .line 1926
    .restart local v28       #eventId:J
    const/4 v15, 0x2

    .line 1927
    .local v15, busyStatus:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mService:Lcom/android/exchange/EasSyncService;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/exchange/EasSyncService;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v6, Lcom/android/exchange/adapter/CalendarSyncAdapter;->EVENTS_URI:Landroid/net/Uri;

    sget-object v7, Lcom/android/exchange/adapter/CalendarSyncAdapter;->AVAILABILITY_STATUS_PROJECTION:[Ljava/lang/String;

    const-string v8, "_id = ?"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    invoke-static/range {v28 .. v29}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v16

    .line 1930
    .local v16, c:Landroid/database/Cursor;
    if-eqz v16, :cond_2c

    .line 1932
    :try_start_1
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_2b

    .line 1933
    const/4 v5, 0x0

    move-object/from16 v0, v16

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-static {v5}, Lcom/android/exchange/utility/CalendarUtilities;->busyStatusFromAvailabilityStatus(I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v15

    .line 1937
    :cond_2b
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 1941
    :cond_2c
    const/16 v5, 0x10d

    invoke-static {v15}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p3

    move v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 1944
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mEmailAddress:Ljava/lang/String;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_30

    .line 1945
    const/16 v5, 0x118

    if-eqz v32, :cond_2f

    const-string v6, "1"

    :goto_10
    move-object/from16 v0, p3

    move v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 1951
    :goto_11
    invoke-virtual/range {v57 .. v57}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    const-wide/high16 v7, 0x4028

    cmpl-double v5, v5, v7

    if-gez v5, :cond_2d

    if-nez v35, :cond_2e

    :cond_2d
    if-eqz v44, :cond_2e

    .line 1953
    const/16 v5, 0x11a

    move-object/from16 v0, p3

    move v1, v5

    move-object/from16 v2, v44

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 1991
    .end local v15           #busyStatus:I
    .end local v16           #c:Landroid/database/Cursor;
    .end local v24           #earliestReminder:I
    .end local v28           #eventId:J
    .end local v33           #i$:Ljava/util/Iterator;
    .end local v43           #organizerEmail:Ljava/lang/String;
    .end local v44           #organizerName:Ljava/lang/String;
    .end local v49           #rrule:Ljava/lang/String;
    .end local v53           #subValues:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/Entity$NamedContentValues;>;"
    :cond_2e
    :goto_12
    return-void

    .line 1937
    .restart local v15       #busyStatus:I
    .restart local v16       #c:Landroid/database/Cursor;
    .restart local v24       #earliestReminder:I
    .restart local v28       #eventId:J
    .restart local v33       #i$:Ljava/util/Iterator;
    .restart local v43       #organizerEmail:Ljava/lang/String;
    .restart local v44       #organizerName:Ljava/lang/String;
    .restart local v49       #rrule:Ljava/lang/String;
    .restart local v53       #subValues:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/Entity$NamedContentValues;>;"
    :catchall_0
    move-exception v5

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    throw v5

    .line 1945
    :cond_2f
    const-string v6, "0"

    goto :goto_10

    .line 1947
    :cond_30
    const/16 v5, 0x118

    const-string v6, "3"

    move-object/from16 v0, p3

    move v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    goto :goto_11

    .line 1957
    .end local v15           #busyStatus:I
    .end local v16           #c:Landroid/database/Cursor;
    .end local v24           #earliestReminder:I
    .end local v28           #eventId:J
    .end local v33           #i$:Ljava/util/Iterator;
    .end local v43           #organizerEmail:Ljava/lang/String;
    .end local v44           #organizerName:Ljava/lang/String;
    .end local v49           #rrule:Ljava/lang/String;
    .end local v53           #subValues:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/Entity$NamedContentValues;>;"
    :cond_31
    const-string v5, "originalInstanceTime"

    move-object/from16 v0, v27

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v45

    .line 1958
    .local v45, originalTime:Ljava/lang/Long;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception original time = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v0, v7

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/CalendarSyncAdapter;->userLog([Ljava/lang/String;)V

    .line 1959
    if-eqz v45, :cond_2e

    .line 1960
    const/16 v5, 0x116

    invoke-virtual/range {v45 .. v45}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/android/exchange/utility/CalendarUtilities;->millisToEasDateTime(J)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p3

    move v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    goto :goto_12

    .line 1733
    .end local v20           #desc:Ljava/lang/String;
    .end local v25           #endTime:J
    .end local v45           #originalTime:Ljava/lang/Long;
    .restart local v21       #duration:Lcom/android/exchange/utility/Duration;
    .restart local v22       #durationMillis:J
    :catch_0
    move-exception v5

    goto/16 :goto_d
.end method


# virtual methods
.method public cleanup()V
    .locals 0

    .prologue
    .line 206
    return-void
.end method

.method public getCollectionName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 201
    const-string v0, "Calendar"

    return-object v0
.end method

.method public getSyncKey()Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-string v7, "0"

    .line 240
    sget-object v4, Lcom/android/exchange/adapter/CalendarSyncAdapter;->sSyncKeyLock:Ljava/lang/Object;

    monitor-enter v4

    .line 241
    :try_start_0
    iget-object v5, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mService:Lcom/android/exchange/EasSyncService;

    iget-object v5, v5, Lcom/android/exchange/EasSyncService;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v6, Landroid/provider/Calendar;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v5, v6}, Landroid/content/ContentResolver;->acquireContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 244
    .local v0, client:Landroid/content/ContentProviderClient;
    :try_start_1
    sget-object v5, Landroid/provider/Calendar$SyncState;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v5}, Lcom/android/exchange/adapter/CalendarSyncAdapter;->asSyncAdapter(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v5

    iget-object v6, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mAccountManagerAccount:Landroid/accounts/Account;

    invoke-static {v0, v5, v6}, Landroid/provider/SyncStateContract$Helpers;->get(Landroid/content/ContentProviderClient;Landroid/net/Uri;Landroid/accounts/Account;)[B

    move-result-object v1

    .line 246
    .local v1, data:[B
    if-eqz v1, :cond_0

    array-length v5, v1

    if-nez v5, :cond_1

    .line 248
    :cond_0
    const-string v5, "0"

    const/4 v6, 0x0

    invoke-virtual {p0, v5, v6}, Lcom/android/exchange/adapter/CalendarSyncAdapter;->setSyncKey(Ljava/lang/String;Z)V

    .line 249
    const-string v5, "0"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v4, v7

    .line 253
    :goto_0
    return-object v4

    .line 251
    :cond_1
    :try_start_3
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v1}, Ljava/lang/String;-><init>([B)V

    .line 252
    .local v3, syncKey:Ljava/lang/String;
    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "SyncKey retrieved as "

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object v3, v5, v6

    const/4 v6, 0x2

    const-string v7, " from CalendarProvider"

    aput-object v7, v5, v6

    invoke-virtual {p0, v5}, Lcom/android/exchange/adapter/CalendarSyncAdapter;->userLog([Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    .line 253
    :try_start_4
    monitor-exit v4

    move-object v4, v3

    goto :goto_0

    .line 255
    .end local v1           #data:[B
    .end local v3           #syncKey:Ljava/lang/String;
    :catch_0
    move-exception v5

    move-object v2, v5

    .line 256
    .local v2, e:Landroid/os/RemoteException;
    new-instance v5, Ljava/io/IOException;

    const-string v6, "Can\'t get SyncKey from CalendarProvider"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 258
    .end local v0           #client:Landroid/content/ContentProviderClient;
    .end local v2           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v5

    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v5
.end method

.method public isSyncable()Z
    .locals 2

    .prologue
    .line 210
    iget-object v0, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mAccountManagerAccount:Landroid/accounts/Account;

    const-string v1, "com.android.calendar"

    invoke-static {v0, v1}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public parse(Ljava/io/InputStream;)Z
    .locals 2
    .parameter "is"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/email/mail/DeviceAccessException;
        }
    .end annotation

    .prologue
    .line 215
    new-instance v0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;

    invoke-direct {v0, p0, p1, p0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;-><init>(Lcom/android/exchange/adapter/CalendarSyncAdapter;Ljava/io/InputStream;Lcom/android/exchange/adapter/CalendarSyncAdapter;)V

    .line 216
    .local v0, p:Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;
    invoke-virtual {v0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;->parse()Z

    move-result v1

    return v1
.end method

.method public sendLocalChanges(Lcom/android/exchange/adapter/Serializer;)Z
    .locals 56
    .parameter "s"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2010
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mService:Lcom/android/exchange/EasSyncService;

    move-object v6, v0

    iget-object v5, v6, Lcom/android/exchange/EasSyncService;->mContentResolver:Landroid/content/ContentResolver;

    .line 2012
    .local v5, cr:Landroid/content/ContentResolver;
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/CalendarSyncAdapter;->getSyncKey()Ljava/lang/String;

    move-result-object v6

    const-string v7, "0"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 2013
    const/4 v6, 0x0

    .line 2383
    :goto_0
    return v6

    .line 2019
    :cond_0
    :try_start_0
    new-instance v46, Ljava/util/ArrayList;

    invoke-direct/range {v46 .. v46}, Ljava/util/ArrayList;-><init>()V

    .line 2020
    .local v46, orphanedExceptions:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    sget-object v6, Landroid/provider/Calendar$Events;->CONTENT_URI:Landroid/net/Uri;

    sget-object v7, Lcom/android/exchange/adapter/CalendarSyncAdapter;->ORIGINAL_EVENT_PROJECTION:[Ljava/lang/String;

    const-string v8, "_sync_dirty=1 AND originalEvent NOTNULL AND calendar_id=?"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mCalendarIdArgument:[Ljava/lang/String;

    move-object v9, v0

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v17

    .line 2023
    .local v17, c:Landroid/database/Cursor;
    :try_start_1
    new-instance v22, Landroid/content/ContentValues;

    invoke-direct/range {v22 .. v22}, Landroid/content/ContentValues;-><init>()V

    .line 2026
    .local v22, cv:Landroid/content/ContentValues;
    const-string v6, "_sync_mark"

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object/from16 v0, v22

    move-object v1, v6

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2027
    :cond_1
    :goto_1
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 2029
    const/4 v6, 0x0

    move-object/from16 v0, v17

    move v1, v6

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v49

    .line 2030
    .local v49, serverId:Ljava/lang/String;
    sget-object v6, Lcom/android/exchange/adapter/CalendarSyncAdapter;->EVENTS_URI:Landroid/net/Uri;

    const-string v7, "_sync_id=? AND originalEvent ISNULL AND calendar_id=?"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    aput-object v49, v8, v9

    const/4 v9, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mCalendarIdString:Ljava/lang/String;

    move-object v10, v0

    aput-object v10, v8, v9

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v22

    move-object v3, v7

    move-object v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v20

    .line 2033
    .local v20, cnt:I
    if-nez v20, :cond_1

    .line 2034
    const/4 v6, 0x1

    move-object/from16 v0, v17

    move v1, v6

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, v46

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 2038
    .end local v20           #cnt:I
    .end local v22           #cv:Landroid/content/ContentValues;
    .end local v49           #serverId:Ljava/lang/String;
    :catchall_0
    move-exception v6

    :try_start_2
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    throw v6
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 2379
    .end local v17           #c:Landroid/database/Cursor;
    .end local v46           #orphanedExceptions:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :catch_0
    move-exception v6

    move-object/from16 v23, v6

    .line 2380
    .local v23, e:Landroid/os/RemoteException;
    const-string v6, "EasCalendarSyncAdapter"

    const-string v7, "Could not read dirty events."

    invoke-static {v6, v7}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 2383
    .end local v23           #e:Landroid/os/RemoteException;
    :goto_2
    const/4 v6, 0x0

    goto :goto_0

    .line 2038
    .restart local v17       #c:Landroid/database/Cursor;
    .restart local v22       #cv:Landroid/content/ContentValues;
    .restart local v46       #orphanedExceptions:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :cond_2
    :try_start_3
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    .line 2042
    invoke-virtual/range {v46 .. v46}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v37

    .local v37, i$:Ljava/util/Iterator;
    :goto_3
    invoke-interface/range {v37 .. v37}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface/range {v37 .. v37}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v44

    .line 2043
    .local v44, orphan:J
    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "EasCalendarSyncAdapter"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Deleted orphaned exception: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v0, v8

    move-wide/from16 v1, v44

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    move-object/from16 v0, p0

    move-object v1, v6

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/CalendarSyncAdapter;->userLog([Ljava/lang/String;)V

    .line 2044
    sget-object v6, Lcom/android/exchange/adapter/CalendarSyncAdapter;->EVENTS_URI:Landroid/net/Uri;

    move-object v0, v6

    move-wide/from16 v1, v44

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v7, v8}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_3

    .line 2046
    .end local v44           #orphan:J
    :cond_3
    invoke-virtual/range {v46 .. v46}, Ljava/util/ArrayList;->clear()V

    .line 2049
    sget-object v6, Lcom/android/exchange/adapter/CalendarSyncAdapter;->EVENTS_URI:Landroid/net/Uri;

    const/4 v7, 0x0

    const-string v8, "(_sync_dirty=1 OR _sync_mark= 1) AND originalEvent ISNULL AND calendar_id=?"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mCalendarIdArgument:[Ljava/lang/String;

    move-object v9, v0

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    invoke-static {v6, v5}, Landroid/provider/Calendar$EventsEntity;->newEntityIterator(Landroid/database/Cursor;Landroid/content/ContentResolver;)Landroid/content/EntityIterator;

    move-result-object v28

    .line 2052
    .local v28, eventIterator:Landroid/content/EntityIterator;
    new-instance v18, Landroid/content/ContentValues;

    invoke-direct/range {v18 .. v18}, Landroid/content/ContentValues;-><init>()V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    .line 2055
    .local v18, cidValues:Landroid/content/ContentValues;
    const/16 v35, 0x1

    .line 2056
    .local v35, first:Z
    :cond_4
    :goto_4
    :try_start_4
    invoke-interface/range {v28 .. v28}, Landroid/content/EntityIterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_23

    .line 2057
    invoke-interface/range {v28 .. v28}, Landroid/content/EntityIterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/content/Entity;

    .line 2060
    .local v24, entity:Landroid/content/Entity;
    invoke-virtual/range {v24 .. v24}, Landroid/content/Entity;->getEntityValues()Landroid/content/ContentValues;

    move-result-object v25

    .line 2061
    .local v25, entityValues:Landroid/content/ContentValues;
    const-string v6, "_sync_id"

    move-object/from16 v0, v25

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v49

    .line 2066
    .restart local v49       #serverId:Ljava/lang/String;
    invoke-virtual/range {v24 .. v24}, Landroid/content/Entity;->getSubValues()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v37

    :cond_5
    :goto_5
    invoke-interface/range {v37 .. v37}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface/range {v37 .. v37}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Landroid/content/Entity$NamedContentValues;

    .line 2067
    .local v39, ncv:Landroid/content/Entity$NamedContentValues;
    move-object/from16 v0, v39

    iget-object v0, v0, Landroid/content/Entity$NamedContentValues;->uri:Landroid/net/Uri;

    move-object v6, v0

    sget-object v7, Landroid/provider/Calendar$ExtendedProperties;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v6, v7}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 2068
    move-object/from16 v0, v39

    iget-object v0, v0, Landroid/content/Entity$NamedContentValues;->values:Landroid/content/ContentValues;

    move-object/from16 v40, v0

    .line 2069
    .local v40, ncvValues:Landroid/content/ContentValues;
    const-string v6, "name"

    move-object/from16 v0, v40

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "upsyncProhibited"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 2071
    const-string v6, "1"

    const-string v7, "value"

    move-object/from16 v0, v40

    move-object v1, v7

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 2073
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mUploadedIdList:Ljava/util/ArrayList;

    move-object v6, v0

    const-string v7, "_id"

    move-object/from16 v0, v25

    move-object v1, v7

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_5

    .line 2377
    .end local v22           #cv:Landroid/content/ContentValues;
    .end local v24           #entity:Landroid/content/Entity;
    .end local v25           #entityValues:Landroid/content/ContentValues;
    .end local v39           #ncv:Landroid/content/Entity$NamedContentValues;
    .end local v40           #ncvValues:Landroid/content/ContentValues;
    .end local v49           #serverId:Ljava/lang/String;
    :catchall_1
    move-exception v6

    :try_start_5
    invoke-interface/range {v28 .. v28}, Landroid/content/EntityIterator;->close()V

    throw v6
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0

    .line 2081
    .restart local v22       #cv:Landroid/content/ContentValues;
    .restart local v24       #entity:Landroid/content/Entity;
    .restart local v25       #entityValues:Landroid/content/ContentValues;
    .restart local v49       #serverId:Ljava/lang/String;
    :cond_6
    :try_start_6
    const-string v6, "_sync_local_id"

    move-object/from16 v0, v25

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 2082
    .local v19, clientId:Ljava/lang/String;
    if-nez v19, :cond_7

    .line 2083
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v19

    .line 2088
    :cond_7
    const-string v6, "organizer"

    move-object/from16 v0, v25

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v42

    .line 2089
    .local v42, organizerEmail:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mEmailAddress:Ljava/lang/String;

    move-object v6, v0

    move-object/from16 v0, v42

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v48

    .line 2091
    .local v48, selfOrganizer:Z
    const-string v6, "dtstart"

    move-object/from16 v0, v25

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    const-string v6, "duration"

    move-object/from16 v0, v25

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_8

    const-string v6, "dtend"

    move-object/from16 v0, v25

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    :cond_8
    if-eqz v42, :cond_4

    .line 2098
    if-eqz v35, :cond_9

    .line 2099
    const/16 v6, 0x16

    move-object/from16 v0, p1

    move v1, v6

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    .line 2100
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "Sending Calendar changes to the server"

    aput-object v8, v6, v7

    move-object/from16 v0, p0

    move-object v1, v6

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/CalendarSyncAdapter;->userLog([Ljava/lang/String;)V

    .line 2101
    const/16 v35, 0x0

    .line 2103
    :cond_9
    const-string v6, "_id"

    move-object/from16 v0, v25

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v26

    .line 2104
    .local v26, eventId:J
    if-nez v49, :cond_c

    .line 2106
    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "Creating new event with clientId: "

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aput-object v19, v6, v7

    move-object/from16 v0, p0

    move-object v1, v6

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/CalendarSyncAdapter;->userLog([Ljava/lang/String;)V

    .line 2107
    const/4 v6, 0x7

    move-object/from16 v0, p1

    move v1, v6

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v6

    const/16 v7, 0xc

    move-object v0, v6

    move v1, v7

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 2109
    const-string v6, "_sync_local_id"

    move-object/from16 v0, v18

    move-object v1, v6

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2110
    const-string v6, "_sync_version"

    const-string v7, "0"

    move-object/from16 v0, v18

    move-object v1, v6

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2111
    sget-object v6, Lcom/android/exchange/adapter/CalendarSyncAdapter;->EVENTS_URI:Landroid/net/Uri;

    move-object v0, v6

    move-wide/from16 v1, v26

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v18

    move-object v3, v7

    move-object v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2149
    :goto_6
    const/16 v6, 0x1d

    move-object/from16 v0, p1

    move v1, v6

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    .line 2151
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v19

    move-object/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/exchange/adapter/CalendarSyncAdapter;->sendEvent(Landroid/content/Entity;Ljava/lang/String;Lcom/android/exchange/adapter/Serializer;)V

    .line 2154
    if-eqz v49, :cond_17

    .line 2155
    sget-object v6, Lcom/android/exchange/adapter/CalendarSyncAdapter;->EVENTS_URI:Landroid/net/Uri;

    const/4 v7, 0x0

    const-string v8, "originalEvent=? AND calendar_id=?"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    aput-object v49, v9, v10

    const/4 v10, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mCalendarIdString:Ljava/lang/String;

    move-object v11, v0

    aput-object v11, v9, v10

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    invoke-static {v6, v5}, Landroid/provider/Calendar$EventsEntity;->newEntityIterator(Landroid/database/Cursor;Landroid/content/ContentResolver;)Landroid/content/EntityIterator;

    move-result-object v33

    .line 2158
    .local v33, exIterator:Landroid/content/EntityIterator;
    const/16 v32, 0x1

    .line 2160
    .local v32, exFirst:Z
    invoke-interface/range {v33 .. v33}, Landroid/content/EntityIterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_a

    .line 2161
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "We have exceptions for this event"

    aput-object v8, v6, v7

    move-object/from16 v0, p0

    move-object v1, v6

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/CalendarSyncAdapter;->userLog([Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 2164
    :cond_a
    :goto_7
    :try_start_7
    invoke-interface/range {v33 .. v33}, Landroid/content/EntityIterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_16

    .line 2165
    invoke-interface/range {v33 .. v33}, Landroid/content/EntityIterator;->next()Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Landroid/content/Entity;

    .line 2166
    .local v29, exEntity:Landroid/content/Entity;
    if-eqz v32, :cond_b

    .line 2167
    const/16 v6, 0x114

    move-object/from16 v0, p1

    move v1, v6

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    .line 2168
    const/16 v32, 0x0

    .line 2170
    :cond_b
    const/16 v6, 0x113

    move-object/from16 v0, p1

    move v1, v6

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    .line 2171
    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move-object v2, v6

    move-object/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/exchange/adapter/CalendarSyncAdapter;->sendEvent(Landroid/content/Entity;Ljava/lang/String;Lcom/android/exchange/adapter/Serializer;)V

    .line 2172
    invoke-virtual/range {v29 .. v29}, Landroid/content/Entity;->getEntityValues()Landroid/content/ContentValues;

    move-result-object v34

    .line 2173
    .local v34, exValues:Landroid/content/ContentValues;
    const-string v6, "_sync_dirty"

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    move-object v2, v6

    invoke-direct {v0, v1, v2}, Lcom/android/exchange/adapter/CalendarSyncAdapter;->getInt(Landroid/content/ContentValues;Ljava/lang/String;)I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_14

    .line 2176
    const-string v6, "_id"

    move-object/from16 v0, v34

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v30

    .line 2181
    .local v30, exEventId:J
    invoke-virtual/range {v24 .. v24}, Landroid/content/Entity;->getSubValues()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v37

    :goto_8
    invoke-interface/range {v37 .. v37}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_10

    invoke-interface/range {v37 .. v37}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Landroid/content/Entity$NamedContentValues;

    .line 2182
    .restart local v39       #ncv:Landroid/content/Entity$NamedContentValues;
    move-object/from16 v0, v39

    iget-object v0, v0, Landroid/content/Entity$NamedContentValues;->uri:Landroid/net/Uri;

    move-object v6, v0

    move-object/from16 v0, v39

    iget-object v0, v0, Landroid/content/Entity$NamedContentValues;->values:Landroid/content/ContentValues;

    move-object v7, v0

    move-object/from16 v0, v29

    move-object v1, v6

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/content/Entity;->addSubValue(Landroid/net/Uri;Landroid/content/ContentValues;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    goto :goto_8

    .line 2227
    .end local v29           #exEntity:Landroid/content/Entity;
    .end local v30           #exEventId:J
    .end local v34           #exValues:Landroid/content/ContentValues;
    .end local v39           #ncv:Landroid/content/Entity$NamedContentValues;
    :catchall_2
    move-exception v6

    :try_start_8
    invoke-interface/range {v33 .. v33}, Landroid/content/EntityIterator;->close()V

    throw v6

    .line 2114
    .end local v32           #exFirst:Z
    .end local v33           #exIterator:Landroid/content/EntityIterator;
    :cond_c
    const-string v6, "deleted"

    move-object/from16 v0, v25

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_e

    .line 2115
    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "Deleting event with serverId: "

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aput-object v49, v6, v7

    move-object/from16 v0, p0

    move-object v1, v6

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/CalendarSyncAdapter;->userLog([Ljava/lang/String;)V

    .line 2116
    const/16 v6, 0x9

    move-object/from16 v0, p1

    move v1, v6

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v6

    const/16 v7, 0xd

    move-object v0, v6

    move v1, v7

    move-object/from16 v2, v49

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    .line 2117
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mDeletedIdList:Ljava/util/ArrayList;

    move-object v6, v0

    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2118
    if-eqz v48, :cond_d

    .line 2119
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mSendCancelIdList:Ljava/util/ArrayList;

    move-object v6, v0

    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 2121
    :cond_d
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/android/exchange/adapter/CalendarSyncAdapter;->sendDeclinedEmail(Landroid/content/Entity;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 2125
    :cond_e
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Upsync change to event with serverId: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v0, v8

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    move-object/from16 v0, p0

    move-object v1, v6

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/CalendarSyncAdapter;->userLog([Ljava/lang/String;)V

    .line 2127
    const-string v6, "_sync_version"

    move-object/from16 v0, v25

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v55

    .line 2130
    .local v55, version:Ljava/lang/String;
    if-nez v55, :cond_f

    .line 2131
    const-string v55, "0"

    .line 2142
    :goto_9
    const-string v6, "_sync_version"

    move-object/from16 v0, v18

    move-object v1, v6

    move-object/from16 v2, v55

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2144
    const-string v6, "_sync_version"

    move-object/from16 v0, v25

    move-object v1, v6

    move-object/from16 v2, v55

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2145
    sget-object v6, Lcom/android/exchange/adapter/CalendarSyncAdapter;->EVENTS_URI:Landroid/net/Uri;

    move-object v0, v6

    move-wide/from16 v1, v26

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v18

    move-object v3, v7

    move-object v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2147
    const/16 v6, 0x8

    move-object/from16 v0, p1

    move v1, v6

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v6

    const/16 v7, 0xd

    move-object v0, v6

    move v1, v7

    move-object/from16 v2, v49

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto/16 :goto_6

    .line 2135
    :cond_f
    :try_start_9
    invoke-static/range {v55 .. v55}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1

    move-result-object v55

    goto :goto_9

    .line 2136
    :catch_1
    move-exception v6

    move-object/from16 v23, v6

    .line 2139
    .local v23, e:Ljava/lang/Exception;
    :try_start_a
    const-string v55, "0"
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto :goto_9

    .line 2185
    .end local v23           #e:Ljava/lang/Exception;
    .end local v55           #version:Ljava/lang/String;
    .restart local v29       #exEntity:Landroid/content/Entity;
    .restart local v30       #exEventId:J
    .restart local v32       #exFirst:Z
    .restart local v33       #exIterator:Landroid/content/EntityIterator;
    .restart local v34       #exValues:Landroid/content/ContentValues;
    :cond_10
    :try_start_b
    const-string v6, "deleted"

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    move-object v2, v6

    invoke-direct {v0, v1, v2}, Lcom/android/exchange/adapter/CalendarSyncAdapter;->getInt(Landroid/content/ContentValues;Ljava/lang/String;)I

    move-result v6

    const/4 v7, 0x1

    if-eq v6, v7, :cond_11

    const-string v6, "eventStatus"

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    move-object v2, v6

    invoke-direct {v0, v1, v2}, Lcom/android/exchange/adapter/CalendarSyncAdapter;->getInt(Landroid/content/ContentValues;Ljava/lang/String;)I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_15

    .line 2188
    :cond_11
    const/16 v36, 0x20

    .line 2189
    .local v36, flag:I
    if-nez v48, :cond_12

    .line 2194
    const-string v6, "organizer"

    const-string v7, "organizer"

    move-object/from16 v0, v25

    move-object v1, v7

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v34

    move-object v1, v6

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2196
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/android/exchange/adapter/CalendarSyncAdapter;->sendDeclinedEmail(Landroid/content/Entity;Ljava/lang/String;)V

    .line 2203
    :cond_12
    :goto_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mUploadedIdList:Ljava/util/ArrayList;

    move-object v6, v0

    invoke-static/range {v30 .. v31}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2206
    const-string v6, "_sync_version"

    const-string v7, "_sync_version"

    move-object/from16 v0, v25

    move-object v1, v7

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v34

    move-object v1, v6

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2209
    const-string v6, "eventLocation"

    move-object/from16 v0, v25

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_13

    .line 2210
    const-string v6, "eventLocation"

    const-string v7, "eventLocation"

    move-object/from16 v0, v25

    move-object v1, v7

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v34

    move-object v1, v6

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2214
    :cond_13
    if-eqz v48, :cond_14

    .line 2215
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mContext:Landroid/content/Context;

    move-object v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    move-object v7, v0

    move-object v0, v6

    move-object/from16 v1, v29

    move/from16 v2, v36

    move-object/from16 v3, v19

    move-object v4, v7

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/exchange/utility/CalendarUtilities;->createMessageForEntity(Landroid/content/Context;Landroid/content/Entity;ILjava/lang/String;Lcom/android/email/provider/EmailContent$Account;)Lcom/android/email/provider/EmailContent$Message;

    move-result-object v38

    .line 2218
    .local v38, msg:Lcom/android/email/provider/EmailContent$Message;
    if-eqz v38, :cond_14

    .line 2219
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Queueing exception update to "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/android/email/provider/EmailContent$Message;->mTo:Ljava/lang/String;

    move-object v9, v0

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    move-object/from16 v0, p0

    move-object v1, v6

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/CalendarSyncAdapter;->userLog([Ljava/lang/String;)V

    .line 2220
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mOutgoingMailList:Ljava/util/ArrayList;

    move-object v6, v0

    move-object v0, v6

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2224
    .end local v30           #exEventId:J
    .end local v36           #flag:I
    .end local v38           #msg:Lcom/android/email/provider/EmailContent$Message;
    :cond_14
    invoke-virtual/range {p1 .. p1}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    goto/16 :goto_7

    .line 2199
    .restart local v30       #exEventId:J
    :cond_15
    const/16 v36, 0x10

    .restart local v36       #flag:I
    goto/16 :goto_a

    .line 2227
    .end local v29           #exEntity:Landroid/content/Entity;
    .end local v30           #exEventId:J
    .end local v34           #exValues:Landroid/content/ContentValues;
    .end local v36           #flag:I
    :cond_16
    :try_start_c
    invoke-interface/range {v33 .. v33}, Landroid/content/EntityIterator;->close()V

    .line 2229
    if-nez v32, :cond_17

    .line 2230
    invoke-virtual/range {p1 .. p1}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    .line 2234
    .end local v32           #exFirst:Z
    .end local v33           #exIterator:Landroid/content/EntityIterator;
    :cond_17
    invoke-virtual/range {p1 .. p1}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    .line 2235
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mUploadedIdList:Ljava/util/ArrayList;

    move-object v6, v0

    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2239
    const/4 v14, 0x0

    .line 2240
    .local v14, attendeeString:Ljava/lang/String;
    const-wide/16 v15, -0x1

    .line 2241
    .local v15, attendeeStringId:J
    const/16 v52, 0x0

    .line 2242
    .local v52, userAttendeeStatus:Ljava/lang/String;
    const-wide/16 v53, -0x1

    .line 2243
    .local v53, userAttendeeStatusId:J
    invoke-virtual/range {v24 .. v24}, Landroid/content/Entity;->getSubValues()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v37

    :cond_18
    :goto_b
    invoke-interface/range {v37 .. v37}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1a

    invoke-interface/range {v37 .. v37}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Landroid/content/Entity$NamedContentValues;

    .line 2244
    .restart local v39       #ncv:Landroid/content/Entity$NamedContentValues;
    move-object/from16 v0, v39

    iget-object v0, v0, Landroid/content/Entity$NamedContentValues;->uri:Landroid/net/Uri;

    move-object v6, v0

    sget-object v7, Landroid/provider/Calendar$ExtendedProperties;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v6, v7}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_18

    .line 2245
    move-object/from16 v0, v39

    iget-object v0, v0, Landroid/content/Entity$NamedContentValues;->values:Landroid/content/ContentValues;

    move-object/from16 v40, v0

    .line 2246
    .restart local v40       #ncvValues:Landroid/content/ContentValues;
    const-string v6, "name"

    move-object/from16 v0, v40

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v47

    .line 2248
    .local v47, propertyName:Ljava/lang/String;
    const-string v6, "attendees"

    move-object/from16 v0, v47

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_19

    .line 2249
    const-string v6, "value"

    move-object/from16 v0, v40

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 2251
    const-string v6, "_id"

    move-object/from16 v0, v40

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v15

    goto :goto_b

    .line 2253
    :cond_19
    const-string v6, "userAttendeeStatus"

    move-object/from16 v0, v47

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_18

    .line 2255
    const-string v6, "value"

    move-object/from16 v0, v40

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v52

    .line 2257
    const-string v6, "_id"

    move-object/from16 v0, v40

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v53

    goto :goto_b

    .line 2266
    .end local v39           #ncv:Landroid/content/Entity$NamedContentValues;
    .end local v40           #ncvValues:Landroid/content/ContentValues;
    .end local v47           #propertyName:Ljava/lang/String;
    :cond_1a
    if-eqz v48, :cond_21

    const-string v6, "_sync_dirty"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object v2, v6

    invoke-direct {v0, v1, v2}, Lcom/android/exchange/adapter/CalendarSyncAdapter;->getInt(Landroid/content/ContentValues;Ljava/lang/String;)I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_21

    .line 2268
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mContext:Landroid/content/Context;

    move-object v6, v0

    const/16 v9, 0x10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    move-object v11, v0

    move-wide/from16 v7, v26

    move-object/from16 v10, v19

    invoke-static/range {v6 .. v11}, Lcom/android/exchange/utility/CalendarUtilities;->createMessageForEventId(Landroid/content/Context;JILjava/lang/String;Lcom/android/email/provider/EmailContent$Account;)Lcom/android/email/provider/EmailContent$Message;

    move-result-object v38

    .line 2272
    .restart local v38       #msg:Lcom/android/email/provider/EmailContent$Message;
    if-eqz v38, :cond_1b

    .line 2273
    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "Queueing invitation to "

    aput-object v8, v6, v7

    const/4 v7, 0x1

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/android/email/provider/EmailContent$Message;->mTo:Ljava/lang/String;

    move-object v8, v0

    aput-object v8, v6, v7

    move-object/from16 v0, p0

    move-object v1, v6

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/CalendarSyncAdapter;->userLog([Ljava/lang/String;)V

    .line 2274
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mOutgoingMailList:Ljava/util/ArrayList;

    move-object v6, v0

    move-object v0, v6

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2277
    :cond_1b
    new-instance v43, Ljava/util/ArrayList;

    invoke-direct/range {v43 .. v43}, Ljava/util/ArrayList;-><init>()V

    .line 2278
    .local v43, originalAttendeeList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v14, :cond_1c

    .line 2279
    new-instance v50, Ljava/util/StringTokenizer;

    const-string v6, "\\"

    move-object/from16 v0, v50

    move-object v1, v14

    move-object v2, v6

    invoke-direct {v0, v1, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2281
    .local v50, st:Ljava/util/StringTokenizer;
    :goto_c
    invoke-virtual/range {v50 .. v50}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v6

    if-eqz v6, :cond_1c

    .line 2282
    invoke-virtual/range {v50 .. v50}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v43

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_c

    .line 2285
    .end local v50           #st:Ljava/util/StringTokenizer;
    :cond_1c
    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    .line 2288
    .local v41, newTokenizedAttendees:Ljava/lang/StringBuilder;
    invoke-virtual/range {v24 .. v24}, Landroid/content/Entity;->getSubValues()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v37

    :cond_1d
    :goto_d
    invoke-interface/range {v37 .. v37}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1e

    invoke-interface/range {v37 .. v37}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Landroid/content/Entity$NamedContentValues;

    .line 2289
    .restart local v39       #ncv:Landroid/content/Entity$NamedContentValues;
    move-object/from16 v0, v39

    iget-object v0, v0, Landroid/content/Entity$NamedContentValues;->uri:Landroid/net/Uri;

    move-object v6, v0

    sget-object v7, Landroid/provider/Calendar$Attendees;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v6, v7}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1d

    .line 2290
    move-object/from16 v0, v39

    iget-object v0, v0, Landroid/content/Entity$NamedContentValues;->values:Landroid/content/ContentValues;

    move-object v6, v0

    const-string v7, "attendeeEmail"

    invoke-virtual {v6, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 2293
    .local v13, attendeeEmail:Ljava/lang/String;
    move-object/from16 v0, v43

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2294
    move-object/from16 v0, v41

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2295
    const-string v6, "\\"

    move-object/from16 v0, v41

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_d

    .line 2301
    .end local v13           #attendeeEmail:Ljava/lang/String;
    .end local v39           #ncv:Landroid/content/Entity$NamedContentValues;
    :cond_1e
    new-instance v22, Landroid/content/ContentValues;

    .end local v22           #cv:Landroid/content/ContentValues;
    invoke-direct/range {v22 .. v22}, Landroid/content/ContentValues;-><init>()V

    .line 2302
    .restart local v22       #cv:Landroid/content/ContentValues;
    const-string v6, "value"

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v22

    move-object v1, v6

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2303
    if-eqz v14, :cond_20

    .line 2304
    sget-object v6, Landroid/provider/Calendar$ExtendedProperties;->CONTENT_URI:Landroid/net/Uri;

    move-object v0, v6

    move-wide v1, v15

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v22

    move-object v3, v7

    move-object v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2314
    :goto_e
    invoke-virtual/range {v43 .. v43}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v37

    :cond_1f
    :goto_f
    invoke-interface/range {v37 .. v37}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface/range {v37 .. v37}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 2316
    .local v12, removedAttendee:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mContext:Landroid/content/Context;

    move-object v6, v0

    const/16 v9, 0x20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    move-object v11, v0

    move-wide/from16 v7, v26

    move-object/from16 v10, v19

    invoke-static/range {v6 .. v12}, Lcom/android/exchange/utility/CalendarUtilities;->createMessageForEventId(Landroid/content/Context;JILjava/lang/String;Lcom/android/email/provider/EmailContent$Account;Ljava/lang/String;)Lcom/android/email/provider/EmailContent$Message;

    move-result-object v38

    .line 2319
    if-eqz v38, :cond_1f

    .line 2321
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Queueing cancellation to removed attendee "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/android/email/provider/EmailContent$Message;->mTo:Ljava/lang/String;

    move-object v9, v0

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    move-object/from16 v0, p0

    move-object v1, v6

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/CalendarSyncAdapter;->userLog([Ljava/lang/String;)V

    .line 2322
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mOutgoingMailList:Ljava/util/ArrayList;

    move-object v6, v0

    move-object v0, v6

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_f

    .line 2308
    .end local v12           #removedAttendee:Ljava/lang/String;
    :cond_20
    const-string v6, "name"

    const-string v7, "attendees"

    move-object/from16 v0, v22

    move-object v1, v6

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2309
    const-string v6, "event_id"

    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    move-object/from16 v0, v22

    move-object v1, v6

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2310
    sget-object v6, Landroid/provider/Calendar$ExtendedProperties;->CONTENT_URI:Landroid/net/Uri;

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto :goto_e

    .line 2325
    .end local v38           #msg:Lcom/android/email/provider/EmailContent$Message;
    .end local v41           #newTokenizedAttendees:Ljava/lang/StringBuilder;
    .end local v43           #originalAttendeeList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_21
    if-nez v48, :cond_4

    .line 2329
    const-string v6, "selfAttendeeStatus"

    move-object/from16 v0, v25

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    move-result v21

    .line 2330
    .local v21, currentStatus:I
    const/16 v51, 0x0

    .line 2331
    .local v51, syncStatus:I
    if-eqz v52, :cond_22

    .line 2333
    :try_start_d
    invoke-static/range {v52 .. v52}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1
    .catch Ljava/lang/NumberFormatException; {:try_start_d .. :try_end_d} :catch_2

    move-result v51

    .line 2338
    :cond_22
    :goto_10
    move/from16 v0, v21

    move/from16 v1, v51

    if-eq v0, v1, :cond_4

    if-eqz v21, :cond_4

    .line 2341
    const/4 v9, 0x0

    .line 2342
    .local v9, messageFlag:I
    packed-switch v21, :pswitch_data_0

    .line 2354
    :goto_11
    :pswitch_0
    if-eqz v9, :cond_4

    const-wide/16 v6, 0x0

    cmp-long v6, v53, v6

    if-ltz v6, :cond_4

    .line 2356
    :try_start_e
    invoke-virtual/range {v18 .. v18}, Landroid/content/ContentValues;->clear()V

    .line 2357
    const-string v6, "value"

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v18

    move-object v1, v6

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2359
    sget-object v6, Landroid/provider/Calendar$ExtendedProperties;->CONTENT_URI:Landroid/net/Uri;

    move-object v0, v6

    move-wide/from16 v1, v53

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v18

    move-object v3, v7

    move-object v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2362
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mContext:Landroid/content/Context;

    move-object v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    move-object v11, v0

    move-wide/from16 v7, v26

    move-object/from16 v10, v19

    invoke-static/range {v6 .. v11}, Lcom/android/exchange/utility/CalendarUtilities;->createMessageForEventId(Landroid/content/Context;JILjava/lang/String;Lcom/android/email/provider/EmailContent$Account;)Lcom/android/email/provider/EmailContent$Message;

    move-result-object v38

    .line 2365
    .restart local v38       #msg:Lcom/android/email/provider/EmailContent$Message;
    if-eqz v38, :cond_4

    .line 2366
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Queueing invitation reply to "

    .end local v9           #messageFlag:I
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/android/email/provider/EmailContent$Message;->mTo:Ljava/lang/String;

    move-object v9, v0

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    move-object/from16 v0, p0

    move-object v1, v6

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/CalendarSyncAdapter;->userLog([Ljava/lang/String;)V

    .line 2367
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mOutgoingMailList:Ljava/util/ArrayList;

    move-object v6, v0

    move-object v0, v6

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 2344
    .end local v38           #msg:Lcom/android/email/provider/EmailContent$Message;
    .restart local v9       #messageFlag:I
    :pswitch_1
    const/16 v9, 0x40

    .line 2345
    goto :goto_11

    .line 2347
    :pswitch_2
    const/16 v9, 0x80

    .line 2348
    goto :goto_11

    .line 2350
    :pswitch_3
    const/16 v9, 0x100

    goto :goto_11

    .line 2373
    .end local v9           #messageFlag:I
    .end local v14           #attendeeString:Ljava/lang/String;
    .end local v15           #attendeeStringId:J
    .end local v19           #clientId:Ljava/lang/String;
    .end local v21           #currentStatus:I
    .end local v24           #entity:Landroid/content/Entity;
    .end local v25           #entityValues:Landroid/content/ContentValues;
    .end local v26           #eventId:J
    .end local v42           #organizerEmail:Ljava/lang/String;
    .end local v48           #selfOrganizer:Z
    .end local v49           #serverId:Ljava/lang/String;
    .end local v51           #syncStatus:I
    .end local v52           #userAttendeeStatus:Ljava/lang/String;
    .end local v53           #userAttendeeStatusId:J
    :cond_23
    if-nez v35, :cond_24

    .line 2374
    invoke-virtual/range {p1 .. p1}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    .line 2377
    :cond_24
    :try_start_f
    invoke-interface/range {v28 .. v28}, Landroid/content/EntityIterator;->close()V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_f} :catch_0

    goto/16 :goto_2

    .line 2334
    .restart local v14       #attendeeString:Ljava/lang/String;
    .restart local v15       #attendeeStringId:J
    .restart local v19       #clientId:Ljava/lang/String;
    .restart local v21       #currentStatus:I
    .restart local v24       #entity:Landroid/content/Entity;
    .restart local v25       #entityValues:Landroid/content/ContentValues;
    .restart local v26       #eventId:J
    .restart local v42       #organizerEmail:Ljava/lang/String;
    .restart local v48       #selfOrganizer:Z
    .restart local v49       #serverId:Ljava/lang/String;
    .restart local v51       #syncStatus:I
    .restart local v52       #userAttendeeStatus:Ljava/lang/String;
    .restart local v53       #userAttendeeStatusId:J
    :catch_2
    move-exception v6

    goto/16 :goto_10

    .line 2342
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public setSyncKey(Ljava/lang/String;Z)V
    .locals 6
    .parameter "syncKey"
    .parameter "inCommands"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 267
    sget-object v2, Lcom/android/exchange/adapter/CalendarSyncAdapter;->sSyncKeyLock:Ljava/lang/Object;

    monitor-enter v2

    .line 268
    :try_start_0
    const-string v3, "0"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    if-nez p2, :cond_1

    .line 269
    :cond_0
    iget-object v3, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mService:Lcom/android/exchange/EasSyncService;

    iget-object v3, v3, Lcom/android/exchange/EasSyncService;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v4, Landroid/provider/Calendar;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Landroid/content/ContentResolver;->acquireContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 272
    .local v0, client:Landroid/content/ContentProviderClient;
    :try_start_1
    sget-object v3, Landroid/provider/Calendar$SyncState;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3}, Lcom/android/exchange/adapter/CalendarSyncAdapter;->asSyncAdapter(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mAccountManagerAccount:Landroid/accounts/Account;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-static {v0, v3, v4, v5}, Landroid/provider/SyncStateContract$Helpers;->set(Landroid/content/ContentProviderClient;Landroid/net/Uri;Landroid/accounts/Account;[B)V

    .line 275
    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "SyncKey set to "

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    const/4 v4, 0x2

    const-string v5, " in CalendarProvider"

    aput-object v5, v3, v4

    invoke-virtual {p0, v3}, Lcom/android/exchange/adapter/CalendarSyncAdapter;->userLog([Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 280
    .end local v0           #client:Landroid/content/ContentProviderClient;
    :cond_1
    :try_start_2
    iget-object v3, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    iput-object p1, v3, Lcom/android/email/provider/EmailContent$Mailbox;->mSyncKey:Ljava/lang/String;

    .line 281
    monitor-exit v2

    .line 282
    return-void

    .line 276
    .restart local v0       #client:Landroid/content/ContentProviderClient;
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 277
    .local v1, e:Landroid/os/RemoteException;
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Can\'t set SyncKey in CalendarProvider"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 281
    .end local v0           #client:Landroid/content/ContentProviderClient;
    .end local v1           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3
.end method
