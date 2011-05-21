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
.field private static final ATTENDEES_EXCEPT_ORGANIZER:Ljava/lang/String; = "event_id=? AND attendeeRelationship!=2"

.field private static final ATTENDEES_URI:Landroid/net/Uri; = null

.field private static final ATTENDEE_STATUS_COLUMN_STATUS:I = 0x0

.field private static final ATTENDEE_STATUS_PROJECTION:[Ljava/lang/String; = null

.field private static final ATTENDEE_TOKENIZER_DELIMITER:Ljava/lang/String; = "\\"

.field private static final BOGUS_ORGANIZER_EMAIL:Ljava/lang/String; = "upload_disallowed@uploadisdisallowed.aaa"

.field public static final CALENDAR_SELECTION:Ljava/lang/String; = "_sync_account=? AND _sync_account_type=?"

.field private static final CALENDAR_SELECTION_ID:I = 0x0

.field private static final CATEGORY_TOKENIZER_DELIMITER:Ljava/lang/String; = "\\"

.field private static final CLIENT_ID_SELECTION:Ljava/lang/String; = "_sync_local_id=?"

.field private static final DIRTY_EXCEPTION_IN_CALENDAR:Ljava/lang/String; = "_sync_dirty=1 AND originalEvent NOTNULL AND calendar_id=?"

.field private static final DIRTY_OR_MARKED_TOP_LEVEL_IN_CALENDAR:Ljava/lang/String; = "(_sync_dirty=1 OR _sync_mark= 1) AND originalEvent ISNULL AND calendar_id=?"

.field private static final EVENTS_URI:Landroid/net/Uri; = null

.field private static final EVENT_AND_EMAIL:Ljava/lang/String; = "event_id=? AND attendeeEmail LIKE ?"

.field private static final EVENT_ID_AND_NAME:Ljava/lang/String; = "event_id=? AND name=?"

.field private static final EVENT_TIMEZONE2_COLUMN:Ljava/lang/String; = "eventTimezone2"

.field private static final EXTENDED_PROPERTIES_URI:Landroid/net/Uri; = null

.field private static final EXTENDED_PROPERTY_ATTENDEES:Ljava/lang/String; = "attendees"

.field private static final EXTENDED_PROPERTY_ATTENDEES_REDACTED:Ljava/lang/String; = "attendeesRedacted"

.field private static final EXTENDED_PROPERTY_CATEGORIES:Ljava/lang/String; = "categories"

.field private static final EXTENDED_PROPERTY_DTSTAMP:Ljava/lang/String; = "dtstamp"

.field private static final EXTENDED_PROPERTY_ID:I = 0x0

.field private static final EXTENDED_PROPERTY_MEETING_STATUS:Ljava/lang/String; = "meeting_status"

.field private static final EXTENDED_PROPERTY_PROJECTION:[Ljava/lang/String; = null

.field private static final EXTENDED_PROPERTY_UPSYNC_PROHIBITED:Ljava/lang/String; = "upsyncProhibited"

.field private static final EXTENDED_PROPERTY_USER_ATTENDEE_STATUS:Ljava/lang/String; = "userAttendeeStatus"

.field private static final ID_PROJECTION:[Ljava/lang/String; = null

.field private static final MAX_OPS_BEFORE_EXCEPTION_ATTENDEE_REDACTION:I = 0x1f4

.field private static final MAX_SYNCED_ATTENDEES:I = 0x32

.field private static final ORIGINAL_EVENT_AND_CALENDAR:Ljava/lang/String; = "originalEvent=? AND calendar_id=?"

.field private static final ORIGINAL_EVENT_PROJECTION:[Ljava/lang/String; = null

.field private static final PLACEHOLDER_OPERATION:Landroid/content/ContentProviderOperation; = null

.field private static final REMINDERS_URI:Landroid/net/Uri; = null

.field private static final SERVER_ID_AND_CALENDAR_ID:Ljava/lang/String; = "_sync_id=? AND originalEvent ISNULL AND calendar_id=?"

.field private static final TAG:Ljava/lang/String; = "EasCalendarSyncAdapter"

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

    .line 95
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v4, v0, v2

    sput-object v0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->ID_PROJECTION:[Ljava/lang/String;

    .line 96
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "originalEvent"

    aput-object v1, v0, v2

    const-string v1, "_id"

    aput-object v4, v0, v3

    sput-object v0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->ORIGINAL_EVENT_PROJECTION:[Ljava/lang/String;

    .line 105
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "attendeeStatus"

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->ATTENDEE_STATUS_PROJECTION:[Ljava/lang/String;

    .line 112
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v4, v0, v2

    sput-object v0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->EXTENDED_PROPERTY_PROJECTION:[Ljava/lang/String;

    .line 129
    sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    sput-object v0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->PLACEHOLDER_OPERATION:Landroid/content/ContentProviderOperation;

    .line 132
    sget-object v0, Landroid/provider/Calendar$Events;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0}, Lcom/android/exchange/adapter/CalendarSyncAdapter;->asSyncAdapter(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->EVENTS_URI:Landroid/net/Uri;

    .line 133
    sget-object v0, Landroid/provider/Calendar$Attendees;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0}, Lcom/android/exchange/adapter/CalendarSyncAdapter;->asSyncAdapter(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->ATTENDEES_URI:Landroid/net/Uri;

    .line 134
    sget-object v0, Landroid/provider/Calendar$ExtendedProperties;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0}, Lcom/android/exchange/adapter/CalendarSyncAdapter;->asSyncAdapter(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->EXTENDED_PROPERTIES_URI:Landroid/net/Uri;

    .line 136
    sget-object v0, Landroid/provider/Calendar$Reminders;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0}, Lcom/android/exchange/adapter/CalendarSyncAdapter;->asSyncAdapter(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->REMINDERS_URI:Landroid/net/Uri;

    .line 138
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->sSyncKeyLock:Ljava/lang/Object;

    .line 140
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

    .line 174
    invoke-direct {p0, p1, p2}, Lcom/android/exchange/adapter/AbstractSyncAdapter;-><init>(Lcom/android/email/provider/EmailContent$Mailbox;Lcom/android/exchange/EasSyncService;)V

    .line 141
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mLocalTimeZone:Ljava/util/TimeZone;

    .line 163
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mCalendarId:J

    .line 168
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mDeletedIdList:Ljava/util/ArrayList;

    .line 169
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mUploadedIdList:Ljava/util/ArrayList;

    .line 170
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mSendCancelIdList:Ljava/util/ArrayList;

    .line 171
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mOutgoingMailList:Ljava/util/ArrayList;

    .line 175
    iget-object v0, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-object v0, v0, Lcom/android/email/provider/EmailContent$Account;->mEmailAddress:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mEmailAddress:Ljava/lang/String;

    .line 176
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

    .line 179
    .local v6, c:Landroid/database/Cursor;
    if-nez v6, :cond_0

    .line 191
    :goto_0
    return-void

    .line 181
    :cond_0
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 182
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mCalendarId:J

    .line 186
    :goto_1
    iget-wide v0, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mCalendarId:J

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mCalendarIdString:Ljava/lang/String;

    .line 187
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mCalendarIdString:Ljava/lang/String;

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mCalendarIdArgument:[Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 189
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 184
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

    .line 189
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method static synthetic access$100(Lcom/android/exchange/adapter/CalendarSyncAdapter;)Ljava/util/TimeZone;
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mLocalTimeZone:Ljava/util/TimeZone;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/exchange/adapter/CalendarSyncAdapter;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mSendCancelIdList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/exchange/adapter/CalendarSyncAdapter;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mUploadedIdList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/exchange/adapter/CalendarSyncAdapter;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mDeletedIdList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/exchange/adapter/CalendarSyncAdapter;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mOutgoingMailList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1600()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 77
    sget-object v0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->EXTENDED_PROPERTIES_URI:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$1700()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    sget-object v0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->EXTENDED_PROPERTY_PROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1800()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 77
    sget-object v0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->REMINDERS_URI:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$200()Ljava/util/TimeZone;
    .locals 1

    .prologue
    .line 77
    sget-object v0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->UTC_TIMEZONE:Ljava/util/TimeZone;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/exchange/adapter/CalendarSyncAdapter;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 77
    iget-wide v0, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mCalendarId:J

    return-wide v0
.end method

.method static synthetic access$400(Lcom/android/exchange/adapter/CalendarSyncAdapter;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mEmailAddress:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 77
    sget-object v0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->ATTENDEES_URI:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$600()Landroid/content/ContentProviderOperation;
    .locals 1

    .prologue
    .line 77
    sget-object v0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->PLACEHOLDER_OPERATION:Landroid/content/ContentProviderOperation;

    return-object v0
.end method

.method static synthetic access$700()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 77
    sget-object v0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->EVENTS_URI:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$800()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    sget-object v0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->ID_PROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/exchange/adapter/CalendarSyncAdapter;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mCalendarIdString:Ljava/lang/String;

    return-object v0
.end method

.method static asSyncAdapter(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 3
    .parameter "uri"

    .prologue
    .line 214
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
    .line 1575
    const/4 v0, 0x0

    .line 1576
    .local v0, easVisibility:I
    packed-switch p1, :pswitch_data_0

    .line 1590
    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1578
    :pswitch_0
    const/4 v0, 0x0

    .line 1579
    goto :goto_0

    .line 1581
    :pswitch_1
    const/4 v0, 0x1

    .line 1582
    goto :goto_0

    .line 1584
    :pswitch_2
    const/4 v0, 0x2

    .line 1585
    goto :goto_0

    .line 1587
    :pswitch_3
    const/4 v0, 0x3

    goto :goto_0

    .line 1576
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
    .line 1594
    invoke-virtual {p1, p2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 1595
    .local v0, i:Ljava/lang/Integer;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 1596
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
    .line 1919
    iget-object v1, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mContext:Landroid/content/Context;

    const/16 v2, 0x80

    iget-object v3, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    invoke-static {v1, p1, v2, p2, v3}, Lcom/android/exchange/utility/CalendarUtilities;->createMessageForEntity(Landroid/content/Context;Landroid/content/Entity;ILjava/lang/String;Lcom/android/email/provider/EmailContent$Account;)Lcom/android/email/provider/EmailContent$Message;

    move-result-object v0

    .line 1922
    .local v0, msg:Lcom/android/email/provider/EmailContent$Message;
    if-eqz v0, :cond_0

    .line 1923
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

    .line 1924
    iget-object v1, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mOutgoingMailList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1926
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
    .line 1606
    invoke-virtual/range {p1 .. p1}, Landroid/content/Entity;->getEntityValues()Landroid/content/ContentValues;

    move-result-object v27

    .line 1607
    .local v27, entityValues:Landroid/content/ContentValues;
    if-nez p2, :cond_f

    const/4 v5, 0x1

    move/from16 v37, v5

    .line 1610
    .local v37, isException:Z
    :goto_0
    const-string v5, "deleted"

    move-object/from16 v0, v27

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v19

    .line 1611
    .local v19, deleted:Ljava/lang/Integer;
    if-eqz v19, :cond_10

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_10

    const/4 v5, 0x1

    move/from16 v36, v5

    .line 1612
    .local v36, isDeleted:Z
    :goto_1
    const-string v5, "eventStatus"

    move-object/from16 v0, v27

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v30

    .line 1613
    .local v30, eventStatus:Ljava/lang/Integer;
    if-eqz v30, :cond_11

    const/4 v5, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v30

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_11

    const/4 v5, 0x1

    move/from16 v34, v5

    .line 1614
    .local v34, isCanceled:Z
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mService:Lcom/android/exchange/EasSyncService;

    move-object v5, v0

    move-object v0, v5

    iget-object v0, v0, Lcom/android/exchange/EasSyncService;->mProtocolVersionDouble:Ljava/lang/Double;

    move-object/from16 v57, v0

    .line 1616
    .local v57, version:Ljava/lang/Double;
    const/16 v32, 0x0

    .line 1617
    .local v32, hasAttendees:Z
    const-string v5, "_sync_id"

    move-object/from16 v0, v27

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v35

    .line 1621
    .local v35, isChange:Z
    if-eqz v37, :cond_12

    .line 1622
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "this is an exception to recurrent event"

    aput-object v7, v5, v6

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/CalendarSyncAdapter;->userLog([Ljava/lang/String;)V

    .line 1628
    :goto_3
    const/4 v12, 0x0

    .line 1629
    .local v12, allDay:Z
    const-string v5, "allDay"

    move-object/from16 v0, v27

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1630
    const-string v5, "allDay"

    move-object/from16 v0, v27

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v11

    .line 1631
    .local v11, ade:Ljava/lang/Integer;
    if-eqz v11, :cond_0

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-eqz v5, :cond_0

    .line 1632
    const/4 v12, 0x1

    .line 1637
    .end local v11           #ade:Ljava/lang/Integer;
    :cond_0
    if-eqz v12, :cond_13

    const-string v5, "eventTimezone2"

    :goto_4
    move-object/from16 v0, v27

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v55

    .line 1639
    .local v55, timeZoneName:Ljava/lang/String;
    if-nez v55, :cond_1

    .line 1640
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mLocalTimeZone:Ljava/util/TimeZone;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v55

    .line 1642
    :cond_1
    invoke-static/range {v55 .. v55}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v31

    .line 1644
    .local v31, eventTimeZone:Ljava/util/TimeZone;
    if-nez v37, :cond_2

    .line 1647
    invoke-static/range {v31 .. v31}, Lcom/android/exchange/utility/CalendarUtilities;->timeZoneToTziString(Ljava/util/TimeZone;)Ljava/lang/String;

    move-result-object v54

    .line 1648
    .local v54, timeZone:Ljava/lang/String;
    const/16 v5, 0x105

    move-object/from16 v0, p3

    move v1, v5

    move-object/from16 v2, v54

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 1649
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

    .line 1655
    .end local v54           #timeZone:Ljava/lang/String;
    :cond_2
    if-eqz v37, :cond_3

    if-eqz v37, :cond_4

    if-nez v36, :cond_4

    if-nez v34, :cond_4

    .line 1656
    :cond_3
    const/16 v5, 0x106

    if-eqz v12, :cond_14

    const-string v6, "1"

    :goto_5
    move-object/from16 v0, p3

    move v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 1657
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Allday: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    if-eqz v12, :cond_15

    const-string v8, "1"

    :goto_6
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/CalendarSyncAdapter;->userLog([Ljava/lang/String;)V

    .line 1662
    :cond_4
    const-string v5, "dtstart"

    move-object/from16 v0, v27

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v51

    .line 1666
    .local v51, startTime:J
    const-string v5, "dtend"

    move-object/from16 v0, v27

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_16

    .line 1667
    const-string v5, "dtend"

    move-object/from16 v0, v27

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v25

    .line 1681
    .local v25, endTime:J
    :goto_7
    if-eqz v12, :cond_5

    .line 1682
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mLocalTimeZone:Ljava/util/TimeZone;

    move-object/from16 v56, v0

    .line 1683
    .local v56, tz:Ljava/util/TimeZone;
    move-wide/from16 v0, v51

    move-object/from16 v2, v56

    invoke-static {v0, v1, v2}, Lcom/android/exchange/utility/CalendarUtilities;->getLocalAllDayCalendarTime(JLjava/util/TimeZone;)J

    move-result-wide v51

    .line 1684
    move-wide/from16 v0, v25

    move-object/from16 v2, v56

    invoke-static {v0, v1, v2}, Lcom/android/exchange/utility/CalendarUtilities;->getLocalAllDayCalendarTime(JLjava/util/TimeZone;)J

    move-result-wide v25

    .line 1690
    .end local v56           #tz:Ljava/util/TimeZone;
    :cond_5
    if-eqz v37, :cond_6

    if-eqz v37, :cond_9

    if-nez v36, :cond_9

    if-nez v34, :cond_9

    .line 1691
    :cond_6
    const/16 v5, 0x127

    invoke-static/range {v51 .. v52}, Lcom/android/exchange/utility/CalendarUtilities;->millisToEasDateTime(J)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p3

    move v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 1692
    const/16 v5, 0x112

    invoke-static/range {v25 .. v26}, Lcom/android/exchange/utility/CalendarUtilities;->millisToEasDateTime(J)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p3

    move v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 1694
    const/16 v5, 0x111

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/android/exchange/utility/CalendarUtilities;->millisToEasDateTime(J)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p3

    move v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 1697
    const-string v5, "eventLocation"

    move-object/from16 v0, v27

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    .line 1698
    .local v38, loc:Ljava/lang/String;
    invoke-static/range {v38 .. v38}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_8

    .line 1699
    invoke-virtual/range {v57 .. v57}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    const-wide/high16 v7, 0x4028

    cmpg-double v5, v5, v7

    if-gez v5, :cond_7

    .line 1701
    invoke-static/range {v38 .. v38}, Lcom/android/email/Utility;->replaceBareLfWithCrlf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    .line 1703
    :cond_7
    const/16 v5, 0x117

    move-object/from16 v0, p3

    move v1, v5

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 1705
    :cond_8
    const-string v5, "title"

    const/16 v6, 0x126

    move-object/from16 v0, p3

    move-object/from16 v1, v27

    move-object v2, v5

    move v3, v6

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/exchange/adapter/Serializer;->writeStringValue(Landroid/content/ContentValues;Ljava/lang/String;I)V

    .line 1707
    const-string v5, "visibility"

    move-object/from16 v0, v27

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v58

    .line 1710
    .local v58, visibility:Ljava/lang/Integer;
    if-nez v37, :cond_9

    .line 1711
    if-eqz v58, :cond_18

    .line 1712
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

    .line 1722
    .end local v38           #loc:Ljava/lang/String;
    .end local v58           #visibility:Ljava/lang/Integer;
    :cond_9
    :goto_8
    const-string v5, "description"

    move-object/from16 v0, v27

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 1723
    .local v20, desc:Ljava/lang/String;
    if-eqz v20, :cond_a

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_a

    .line 1724
    invoke-virtual/range {v57 .. v57}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    const-wide/high16 v7, 0x4028

    cmpl-double v5, v5, v7

    if-ltz v5, :cond_19

    .line 1725
    const/16 v5, 0x44a

    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    .line 1726
    const/16 v5, 0x446

    const-string v6, "1"

    move-object/from16 v0, p3

    move v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 1727
    const/16 v5, 0x44b

    move-object/from16 v0, p3

    move v1, v5

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 1728
    invoke-virtual/range {p3 .. p3}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    .line 1735
    :cond_a
    :goto_9
    if-nez v37, :cond_2e

    .line 1737
    invoke-virtual/range {v57 .. v57}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    const-wide/high16 v7, 0x4028

    cmpl-double v5, v5, v7

    if-gez v5, :cond_b

    if-nez v35, :cond_c

    .line 1738
    :cond_b
    const-string v5, "organizer"

    const/16 v6, 0x119

    move-object/from16 v0, p3

    move-object/from16 v1, v27

    move-object v2, v5

    move v3, v6

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/exchange/adapter/Serializer;->writeStringValue(Landroid/content/ContentValues;Ljava/lang/String;I)V

    .line 1741
    :cond_c
    const-string v5, "rrule"

    move-object/from16 v0, v27

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v49

    .line 1742
    .local v49, rrule:Ljava/lang/String;
    if-eqz v49, :cond_d

    .line 1743
    move-object/from16 v0, v49

    move-wide/from16 v1, v51

    move-object/from16 v3, p3

    invoke-static {v0, v1, v2, v3}, Lcom/android/exchange/utility/CalendarUtilities;->recurrenceFromRrule(Ljava/lang/String;JLcom/android/exchange/adapter/Serializer;)V

    .line 1747
    :cond_d
    invoke-virtual/range {p1 .. p1}, Landroid/content/Entity;->getSubValues()Ljava/util/ArrayList;

    move-result-object v53

    .line 1749
    .local v53, subValues:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/Entity$NamedContentValues;>;"
    const/16 v24, -0x1

    .line 1750
    .local v24, earliestReminder:I
    invoke-virtual/range {v53 .. v53}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v33

    .local v33, i$:Ljava/util/Iterator;
    :cond_e
    :goto_a
    invoke-interface/range {v33 .. v33}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1d

    invoke-interface/range {v33 .. v33}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Landroid/content/Entity$NamedContentValues;

    .line 1751
    .local v40, ncv:Landroid/content/Entity$NamedContentValues;
    move-object/from16 v0, v40

    iget-object v0, v0, Landroid/content/Entity$NamedContentValues;->uri:Landroid/net/Uri;

    move-object/from16 v41, v0

    .line 1752
    .local v41, ncvUri:Landroid/net/Uri;
    move-object/from16 v0, v40

    iget-object v0, v0, Landroid/content/Entity$NamedContentValues;->values:Landroid/content/ContentValues;

    move-object/from16 v42, v0

    .line 1753
    .local v42, ncvValues:Landroid/content/ContentValues;
    sget-object v5, Landroid/provider/Calendar$ExtendedProperties;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v41

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1b

    .line 1754
    const-string v5, "name"

    move-object/from16 v0, v42

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v46

    .line 1756
    .local v46, propertyName:Ljava/lang/String;
    const-string v5, "value"

    move-object/from16 v0, v42

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v47

    .line 1758
    .local v47, propertyValue:Ljava/lang/String;
    invoke-static/range {v47 .. v47}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_e

    .line 1761
    const-string v5, "categories"

    move-object/from16 v0, v46

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 1764
    new-instance v50, Ljava/util/StringTokenizer;

    const-string v5, "\\"

    move-object/from16 v0, v50

    move-object/from16 v1, v47

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1766
    .local v50, st:Ljava/util/StringTokenizer;
    invoke-virtual/range {v50 .. v50}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v5

    if-lez v5, :cond_e

    .line 1767
    const/16 v5, 0x10e

    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    .line 1768
    :goto_b
    invoke-virtual/range {v50 .. v50}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v5

    if-eqz v5, :cond_1a

    .line 1769
    invoke-virtual/range {v50 .. v50}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v17

    .line 1770
    .local v17, category:Ljava/lang/String;
    const/16 v5, 0x10f

    move-object/from16 v0, p3

    move v1, v5

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    goto :goto_b

    .line 1607
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
    :cond_f
    const/4 v5, 0x0

    move/from16 v37, v5

    goto/16 :goto_0

    .line 1611
    .restart local v19       #deleted:Ljava/lang/Integer;
    .restart local v37       #isException:Z
    :cond_10
    const/4 v5, 0x0

    move/from16 v36, v5

    goto/16 :goto_1

    .line 1613
    .restart local v30       #eventStatus:Ljava/lang/Integer;
    .restart local v36       #isDeleted:Z
    :cond_11
    const/4 v5, 0x0

    move/from16 v34, v5

    goto/16 :goto_2

    .line 1625
    .restart local v32       #hasAttendees:Z
    .restart local v34       #isCanceled:Z
    .restart local v35       #isChange:Z
    .restart local v57       #version:Ljava/lang/Double;
    :cond_12
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "this is NOT an exception to recurrent event"

    aput-object v7, v5, v6

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/CalendarSyncAdapter;->userLog([Ljava/lang/String;)V

    goto/16 :goto_3

    .line 1637
    .restart local v12       #allDay:Z
    :cond_13
    const-string v5, "eventTimezone"

    goto/16 :goto_4

    .line 1656
    .restart local v31       #eventTimeZone:Ljava/util/TimeZone;
    .restart local v55       #timeZoneName:Ljava/lang/String;
    :cond_14
    const-string v6, "0"

    goto/16 :goto_5

    .line 1657
    :cond_15
    const-string v8, "0"

    goto/16 :goto_6

    .line 1669
    .restart local v51       #startTime:J
    :cond_16
    const-wide/32 v22, 0x36ee80

    .line 1670
    .local v22, durationMillis:J
    const-string v5, "duration"

    move-object/from16 v0, v27

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_17

    .line 1671
    new-instance v21, Lcom/android/exchange/utility/Duration;

    invoke-direct/range {v21 .. v21}, Lcom/android/exchange/utility/Duration;-><init>()V

    .line 1673
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

    .line 1674
    invoke-virtual/range {v21 .. v21}, Lcom/android/exchange/utility/Duration;->getMillis()J
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v22

    .line 1679
    .end local v21           #duration:Lcom/android/exchange/utility/Duration;
    :cond_17
    :goto_c
    add-long v25, v51, v22

    .restart local v25       #endTime:J
    goto/16 :goto_7

    .line 1716
    .end local v22           #durationMillis:J
    .restart local v38       #loc:Ljava/lang/String;
    .restart local v58       #visibility:Ljava/lang/Integer;
    :cond_18
    const/16 v5, 0x125

    const-string v6, "1"

    move-object/from16 v0, p3

    move v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    goto/16 :goto_8

    .line 1731
    .end local v38           #loc:Ljava/lang/String;
    .end local v58           #visibility:Ljava/lang/Integer;
    .restart local v20       #desc:Ljava/lang/String;
    :cond_19
    const/16 v5, 0x10b

    invoke-static/range {v20 .. v20}, Lcom/android/email/Utility;->replaceBareLfWithCrlf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p3

    move v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    goto/16 :goto_9

    .line 1772
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
    :cond_1a
    invoke-virtual/range {p3 .. p3}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    goto/16 :goto_a

    .line 1775
    .end local v46           #propertyName:Ljava/lang/String;
    .end local v47           #propertyValue:Ljava/lang/String;
    .end local v50           #st:Ljava/util/StringTokenizer;
    :cond_1b
    sget-object v5, Landroid/provider/Calendar$Reminders;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v41

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 1776
    const-string v5, "minutes"

    move-object/from16 v0, v42

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v39

    .line 1777
    .local v39, mins:Ljava/lang/Integer;
    if-eqz v39, :cond_e

    .line 1779
    invoke-virtual/range {v39 .. v39}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-gez v5, :cond_1c

    .line 1780
    const/16 v5, 0x1e

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v39

    .line 1783
    :cond_1c
    invoke-virtual/range {v39 .. v39}, Ljava/lang/Integer;->intValue()I

    move-result v5

    move v0, v5

    move/from16 v1, v24

    if-le v0, v1, :cond_e

    .line 1784
    invoke-virtual/range {v39 .. v39}, Ljava/lang/Integer;->intValue()I

    move-result v24

    goto/16 :goto_a

    .line 1791
    .end local v39           #mins:Ljava/lang/Integer;
    .end local v40           #ncv:Landroid/content/Entity$NamedContentValues;
    .end local v41           #ncvUri:Landroid/net/Uri;
    .end local v42           #ncvValues:Landroid/content/ContentValues;
    :cond_1d
    if-ltz v24, :cond_1e

    .line 1792
    const/16 v5, 0x124

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p3

    move v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 1797
    :cond_1e
    if-eqz p2, :cond_1f

    .line 1798
    const/16 v5, 0x128

    move-object/from16 v0, p3

    move v1, v5

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 1802
    :cond_1f
    const/16 v44, 0x0

    .line 1803
    .local v44, organizerName:Ljava/lang/String;
    const/16 v43, 0x0

    .line 1804
    .local v43, organizerEmail:Ljava/lang/String;
    invoke-virtual/range {v53 .. v53}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v33

    :cond_20
    :goto_d
    invoke-interface/range {v33 .. v33}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_26

    invoke-interface/range {v33 .. v33}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Landroid/content/Entity$NamedContentValues;

    .line 1805
    .restart local v40       #ncv:Landroid/content/Entity$NamedContentValues;
    move-object/from16 v0, v40

    iget-object v0, v0, Landroid/content/Entity$NamedContentValues;->uri:Landroid/net/Uri;

    move-object/from16 v41, v0

    .line 1806
    .restart local v41       #ncvUri:Landroid/net/Uri;
    move-object/from16 v0, v40

    iget-object v0, v0, Landroid/content/Entity$NamedContentValues;->values:Landroid/content/ContentValues;

    move-object/from16 v42, v0

    .line 1807
    .restart local v42       #ncvValues:Landroid/content/ContentValues;
    sget-object v5, Landroid/provider/Calendar$Attendees;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v41

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_20

    .line 1808
    const-string v5, "attendeeRelationship"

    move-object/from16 v0, v42

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v48

    .line 1811
    .local v48, relationship:Ljava/lang/Integer;
    if-eqz v48, :cond_20

    const-string v5, "attendeeEmail"

    move-object/from16 v0, v42

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_20

    .line 1813
    invoke-virtual/range {v48 .. v48}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_21

    .line 1814
    const-string v5, "attendeeName"

    move-object/from16 v0, v42

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v44

    .line 1815
    const-string v5, "attendeeEmail"

    move-object/from16 v0, v42

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v43

    .line 1816
    goto :goto_d

    .line 1818
    :cond_21
    if-nez v32, :cond_22

    .line 1819
    const/16 v5, 0x107

    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    .line 1820
    const/16 v32, 0x1

    .line 1822
    :cond_22
    const/16 v5, 0x108

    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    .line 1823
    const-string v5, "attendeeEmail"

    move-object/from16 v0, v42

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 1824
    .local v13, attendeeEmail:Ljava/lang/String;
    const-string v5, "attendeeName"

    move-object/from16 v0, v42

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 1825
    .local v14, attendeeName:Ljava/lang/String;
    if-nez v14, :cond_25

    .line 1826
    move-object v14, v13

    .line 1832
    :cond_23
    :goto_e
    const/16 v5, 0x10a

    move-object/from16 v0, p3

    move v1, v5

    move-object v2, v14

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 1833
    const/16 v5, 0x109

    move-object/from16 v0, p3

    move v1, v5

    move-object v2, v13

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 1834
    invoke-virtual/range {v57 .. v57}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    const-wide/high16 v7, 0x4028

    cmpl-double v5, v5, v7

    if-ltz v5, :cond_24

    .line 1835
    const/16 v5, 0x12a

    const-string v6, "1"

    move-object/from16 v0, p3

    move v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 1837
    :cond_24
    invoke-virtual/range {p3 .. p3}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    goto/16 :goto_d

    .line 1829
    :cond_25
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_23

    .line 1830
    move-object v14, v13

    goto :goto_e

    .line 1841
    .end local v13           #attendeeEmail:Ljava/lang/String;
    .end local v14           #attendeeName:Ljava/lang/String;
    .end local v40           #ncv:Landroid/content/Entity$NamedContentValues;
    .end local v41           #ncvUri:Landroid/net/Uri;
    .end local v42           #ncvValues:Landroid/content/ContentValues;
    .end local v48           #relationship:Ljava/lang/Integer;
    :cond_26
    if-eqz v32, :cond_27

    .line 1842
    invoke-virtual/range {p3 .. p3}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    .line 1846
    :cond_27
    const-string v5, "_id"

    move-object/from16 v0, v27

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v28

    .line 1847
    .local v28, eventId:J
    const/4 v15, 0x1

    .line 1848
    .local v15, busyStatus:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mService:Lcom/android/exchange/EasSyncService;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/exchange/EasSyncService;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v6, Lcom/android/exchange/adapter/CalendarSyncAdapter;->ATTENDEES_URI:Landroid/net/Uri;

    sget-object v7, Lcom/android/exchange/adapter/CalendarSyncAdapter;->ATTENDEE_STATUS_PROJECTION:[Ljava/lang/String;

    const-string v8, "event_id=? AND attendeeEmail LIKE ?"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    invoke-static/range {v28 .. v29}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mEmailAddress:Ljava/lang/String;

    move-object v11, v0

    aput-object v11, v9, v10

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v16

    .line 1851
    .local v16, c:Landroid/database/Cursor;
    if-eqz v16, :cond_29

    .line 1853
    :try_start_1
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_28

    .line 1854
    const/4 v5, 0x0

    move-object/from16 v0, v16

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-static {v5}, Lcom/android/exchange/utility/CalendarUtilities;->busyStatusFromAttendeeStatus(I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v15

    .line 1858
    :cond_28
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 1861
    :cond_29
    const/16 v5, 0x10d

    invoke-static {v15}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p3

    move v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 1864
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mEmailAddress:Ljava/lang/String;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2d

    .line 1865
    const/16 v5, 0x118

    if-eqz v32, :cond_2c

    const-string v6, "1"

    :goto_f
    move-object/from16 v0, p3

    move v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 1871
    :goto_10
    invoke-virtual/range {v57 .. v57}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    const-wide/high16 v7, 0x4028

    cmpl-double v5, v5, v7

    if-gez v5, :cond_2a

    if-nez v35, :cond_2b

    :cond_2a
    if-eqz v44, :cond_2b

    .line 1873
    const/16 v5, 0x11a

    move-object/from16 v0, p3

    move v1, v5

    move-object/from16 v2, v44

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 1911
    .end local v15           #busyStatus:I
    .end local v16           #c:Landroid/database/Cursor;
    .end local v24           #earliestReminder:I
    .end local v28           #eventId:J
    .end local v33           #i$:Ljava/util/Iterator;
    .end local v43           #organizerEmail:Ljava/lang/String;
    .end local v44           #organizerName:Ljava/lang/String;
    .end local v49           #rrule:Ljava/lang/String;
    .end local v53           #subValues:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/Entity$NamedContentValues;>;"
    :cond_2b
    :goto_11
    return-void

    .line 1858
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

    .line 1865
    :cond_2c
    const-string v6, "0"

    goto :goto_f

    .line 1867
    :cond_2d
    const/16 v5, 0x118

    const-string v6, "3"

    move-object/from16 v0, p3

    move v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    goto :goto_10

    .line 1877
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
    const-string v5, "originalInstanceTime"

    move-object/from16 v0, v27

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v45

    .line 1878
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

    .line 1879
    if-eqz v45, :cond_2f

    .line 1880
    const/16 v5, 0x116

    invoke-virtual/range {v45 .. v45}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/android/exchange/utility/CalendarUtilities;->millisToEasDateTime(J)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p3

    move v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 1895
    :cond_2f
    if-nez v36, :cond_30

    if-eqz v34, :cond_2b

    .line 1896
    :cond_30
    const/16 v5, 0x115

    const-string v6, "1"

    move-object/from16 v0, p3

    move v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 1897
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "This is a deleted exception"

    aput-object v7, v5, v6

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/CalendarSyncAdapter;->userLog([Ljava/lang/String;)V

    .line 1900
    if-eqz v36, :cond_2b

    if-nez v34, :cond_2b

    .line 1901
    const-string v5, "_id"

    move-object/from16 v0, v27

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v28

    .line 1902
    .restart local v28       #eventId:J
    new-instance v18, Landroid/content/ContentValues;

    invoke-direct/range {v18 .. v18}, Landroid/content/ContentValues;-><init>()V

    .line 1903
    .local v18, cv:Landroid/content/ContentValues;
    const-string v5, "eventStatus"

    const/4 v6, 0x2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v18

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1904
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "event status: 2"

    aput-object v7, v5, v6

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/CalendarSyncAdapter;->userLog([Ljava/lang/String;)V

    .line 1905
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

    goto/16 :goto_11

    .line 1675
    .end local v18           #cv:Landroid/content/ContentValues;
    .end local v20           #desc:Ljava/lang/String;
    .end local v25           #endTime:J
    .end local v28           #eventId:J
    .end local v45           #originalTime:Ljava/lang/Long;
    .restart local v21       #duration:Lcom/android/exchange/utility/Duration;
    .restart local v22       #durationMillis:J
    :catch_0
    move-exception v5

    goto/16 :goto_c
.end method


# virtual methods
.method public cleanup()V
    .locals 0

    .prologue
    .line 200
    return-void
.end method

.method public dataUriFromNamedContentValues(Landroid/content/Entity$NamedContentValues;)Landroid/net/Uri;
    .locals 5
    .parameter "ncv"

    .prologue
    .line 223
    iget-object v3, p1, Landroid/content/Entity$NamedContentValues;->values:Landroid/content/ContentValues;

    const-string v4, "_id"

    invoke-virtual {v3, v4}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 224
    .local v1, id:J
    iget-object v3, p1, Landroid/content/Entity$NamedContentValues;->uri:Landroid/net/Uri;

    invoke-static {v3, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 225
    .local v0, dataUri:Landroid/net/Uri;
    return-object v0
.end method

.method public getCollectionName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 195
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

    .line 234
    sget-object v4, Lcom/android/exchange/adapter/CalendarSyncAdapter;->sSyncKeyLock:Ljava/lang/Object;

    monitor-enter v4

    .line 235
    :try_start_0
    iget-object v5, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mService:Lcom/android/exchange/EasSyncService;

    iget-object v5, v5, Lcom/android/exchange/EasSyncService;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v6, Landroid/provider/Calendar;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v5, v6}, Landroid/content/ContentResolver;->acquireContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 238
    .local v0, client:Landroid/content/ContentProviderClient;
    :try_start_1
    sget-object v5, Landroid/provider/Calendar$SyncState;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v5}, Lcom/android/exchange/adapter/CalendarSyncAdapter;->asSyncAdapter(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v5

    iget-object v6, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mAccountManagerAccount:Landroid/accounts/Account;

    invoke-static {v0, v5, v6}, Landroid/provider/SyncStateContract$Helpers;->get(Landroid/content/ContentProviderClient;Landroid/net/Uri;Landroid/accounts/Account;)[B

    move-result-object v1

    .line 240
    .local v1, data:[B
    if-eqz v1, :cond_0

    array-length v5, v1

    if-nez v5, :cond_1

    .line 242
    :cond_0
    const-string v5, "0"

    const/4 v6, 0x0

    invoke-virtual {p0, v5, v6}, Lcom/android/exchange/adapter/CalendarSyncAdapter;->setSyncKey(Ljava/lang/String;Z)V

    .line 243
    const-string v5, "0"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v4, v7

    .line 247
    :goto_0
    return-object v4

    .line 245
    :cond_1
    :try_start_3
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v1}, Ljava/lang/String;-><init>([B)V

    .line 246
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

    .line 247
    :try_start_4
    monitor-exit v4

    move-object v4, v3

    goto :goto_0

    .line 249
    .end local v1           #data:[B
    .end local v3           #syncKey:Ljava/lang/String;
    :catch_0
    move-exception v5

    move-object v2, v5

    .line 250
    .local v2, e:Landroid/os/RemoteException;
    new-instance v5, Ljava/io/IOException;

    const-string v6, "Can\'t get SyncKey from CalendarProvider"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 252
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
    .line 204
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
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 209
    new-instance v0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;

    invoke-direct {v0, p0, p1, p0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;-><init>(Lcom/android/exchange/adapter/CalendarSyncAdapter;Ljava/io/InputStream;Lcom/android/exchange/adapter/CalendarSyncAdapter;)V

    .line 210
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
    .line 1930
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mService:Lcom/android/exchange/EasSyncService;

    move-object v6, v0

    iget-object v5, v6, Lcom/android/exchange/EasSyncService;->mContentResolver:Landroid/content/ContentResolver;

    .line 1932
    .local v5, cr:Landroid/content/ContentResolver;
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/CalendarSyncAdapter;->getSyncKey()Ljava/lang/String;

    move-result-object v6

    const-string v7, "0"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1933
    const/4 v6, 0x0

    .line 2303
    :goto_0
    return v6

    .line 1939
    :cond_0
    :try_start_0
    new-instance v46, Ljava/util/ArrayList;

    invoke-direct/range {v46 .. v46}, Ljava/util/ArrayList;-><init>()V

    .line 1940
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

    .line 1943
    .local v17, c:Landroid/database/Cursor;
    :try_start_1
    new-instance v22, Landroid/content/ContentValues;

    invoke-direct/range {v22 .. v22}, Landroid/content/ContentValues;-><init>()V

    .line 1946
    .local v22, cv:Landroid/content/ContentValues;
    const-string v6, "_sync_mark"

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object/from16 v0, v22

    move-object v1, v6

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1947
    :cond_1
    :goto_1
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1949
    const/4 v6, 0x0

    move-object/from16 v0, v17

    move v1, v6

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v49

    .line 1950
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

    .line 1953
    .local v20, cnt:I
    if-nez v20, :cond_1

    .line 1954
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

    .line 1958
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

    .line 2299
    .end local v17           #c:Landroid/database/Cursor;
    .end local v46           #orphanedExceptions:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :catch_0
    move-exception v6

    move-object/from16 v23, v6

    .line 2300
    .local v23, e:Landroid/os/RemoteException;
    const-string v6, "EasCalendarSyncAdapter"

    const-string v7, "Could not read dirty events."

    invoke-static {v6, v7}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 2303
    .end local v23           #e:Landroid/os/RemoteException;
    :goto_2
    const/4 v6, 0x0

    goto :goto_0

    .line 1958
    .restart local v17       #c:Landroid/database/Cursor;
    .restart local v22       #cv:Landroid/content/ContentValues;
    .restart local v46       #orphanedExceptions:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :cond_2
    :try_start_3
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    .line 1962
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

    .line 1963
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

    .line 1964
    sget-object v6, Lcom/android/exchange/adapter/CalendarSyncAdapter;->EVENTS_URI:Landroid/net/Uri;

    move-object v0, v6

    move-wide/from16 v1, v44

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v7, v8}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_3

    .line 1966
    .end local v44           #orphan:J
    :cond_3
    invoke-virtual/range {v46 .. v46}, Ljava/util/ArrayList;->clear()V

    .line 1969
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

    .line 1972
    .local v28, eventIterator:Landroid/content/EntityIterator;
    new-instance v18, Landroid/content/ContentValues;

    invoke-direct/range {v18 .. v18}, Landroid/content/ContentValues;-><init>()V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    .line 1975
    .local v18, cidValues:Landroid/content/ContentValues;
    const/16 v35, 0x1

    .line 1976
    .local v35, first:Z
    :cond_4
    :goto_4
    :try_start_4
    invoke-interface/range {v28 .. v28}, Landroid/content/EntityIterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_23

    .line 1977
    invoke-interface/range {v28 .. v28}, Landroid/content/EntityIterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/content/Entity;

    .line 1980
    .local v24, entity:Landroid/content/Entity;
    invoke-virtual/range {v24 .. v24}, Landroid/content/Entity;->getEntityValues()Landroid/content/ContentValues;

    move-result-object v25

    .line 1981
    .local v25, entityValues:Landroid/content/ContentValues;
    const-string v6, "_sync_id"

    move-object/from16 v0, v25

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v49

    .line 1986
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

    .line 1987
    .local v39, ncv:Landroid/content/Entity$NamedContentValues;
    move-object/from16 v0, v39

    iget-object v0, v0, Landroid/content/Entity$NamedContentValues;->uri:Landroid/net/Uri;

    move-object v6, v0

    sget-object v7, Landroid/provider/Calendar$ExtendedProperties;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v6, v7}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1988
    move-object/from16 v0, v39

    iget-object v0, v0, Landroid/content/Entity$NamedContentValues;->values:Landroid/content/ContentValues;

    move-object/from16 v40, v0

    .line 1989
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

    .line 1991
    const-string v6, "1"

    const-string v7, "value"

    move-object/from16 v0, v40

    move-object v1, v7

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1993
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

    .line 2297
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

    .line 2001
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

    .line 2002
    .local v19, clientId:Ljava/lang/String;
    if-nez v19, :cond_7

    .line 2003
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v19

    .line 2008
    :cond_7
    const-string v6, "organizer"

    move-object/from16 v0, v25

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v42

    .line 2009
    .local v42, organizerEmail:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mEmailAddress:Ljava/lang/String;

    move-object v6, v0

    move-object/from16 v0, v42

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v48

    .line 2011
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

    .line 2018
    if-eqz v35, :cond_9

    .line 2019
    const/16 v6, 0x16

    move-object/from16 v0, p1

    move v1, v6

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    .line 2020
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "Sending Calendar changes to the server"

    aput-object v8, v6, v7

    move-object/from16 v0, p0

    move-object v1, v6

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/CalendarSyncAdapter;->userLog([Ljava/lang/String;)V

    .line 2021
    const/16 v35, 0x0

    .line 2023
    :cond_9
    const-string v6, "_id"

    move-object/from16 v0, v25

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v26

    .line 2024
    .local v26, eventId:J
    if-nez v49, :cond_c

    .line 2026
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

    .line 2027
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

    .line 2029
    const-string v6, "_sync_local_id"

    move-object/from16 v0, v18

    move-object v1, v6

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2030
    const-string v6, "_sync_version"

    const-string v7, "0"

    move-object/from16 v0, v18

    move-object v1, v6

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2031
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

    .line 2069
    :goto_6
    const/16 v6, 0x1d

    move-object/from16 v0, p1

    move v1, v6

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    .line 2071
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v19

    move-object/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/exchange/adapter/CalendarSyncAdapter;->sendEvent(Landroid/content/Entity;Ljava/lang/String;Lcom/android/exchange/adapter/Serializer;)V

    .line 2074
    if-eqz v49, :cond_17

    .line 2075
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

    .line 2078
    .local v33, exIterator:Landroid/content/EntityIterator;
    const/16 v32, 0x1

    .line 2080
    .local v32, exFirst:Z
    invoke-interface/range {v33 .. v33}, Landroid/content/EntityIterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_a

    .line 2081
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

    .line 2084
    :cond_a
    :goto_7
    :try_start_7
    invoke-interface/range {v33 .. v33}, Landroid/content/EntityIterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_16

    .line 2085
    invoke-interface/range {v33 .. v33}, Landroid/content/EntityIterator;->next()Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Landroid/content/Entity;

    .line 2086
    .local v29, exEntity:Landroid/content/Entity;
    if-eqz v32, :cond_b

    .line 2087
    const/16 v6, 0x114

    move-object/from16 v0, p1

    move v1, v6

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    .line 2088
    const/16 v32, 0x0

    .line 2090
    :cond_b
    const/16 v6, 0x113

    move-object/from16 v0, p1

    move v1, v6

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    .line 2091
    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move-object v2, v6

    move-object/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/exchange/adapter/CalendarSyncAdapter;->sendEvent(Landroid/content/Entity;Ljava/lang/String;Lcom/android/exchange/adapter/Serializer;)V

    .line 2092
    invoke-virtual/range {v29 .. v29}, Landroid/content/Entity;->getEntityValues()Landroid/content/ContentValues;

    move-result-object v34

    .line 2093
    .local v34, exValues:Landroid/content/ContentValues;
    const-string v6, "_sync_dirty"

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    move-object v2, v6

    invoke-direct {v0, v1, v2}, Lcom/android/exchange/adapter/CalendarSyncAdapter;->getInt(Landroid/content/ContentValues;Ljava/lang/String;)I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_14

    .line 2096
    const-string v6, "_id"

    move-object/from16 v0, v34

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v30

    .line 2101
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

    .line 2102
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

    .line 2147
    .end local v29           #exEntity:Landroid/content/Entity;
    .end local v30           #exEventId:J
    .end local v34           #exValues:Landroid/content/ContentValues;
    .end local v39           #ncv:Landroid/content/Entity$NamedContentValues;
    :catchall_2
    move-exception v6

    :try_start_8
    invoke-interface/range {v33 .. v33}, Landroid/content/EntityIterator;->close()V

    throw v6

    .line 2034
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

    .line 2035
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

    .line 2036
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

    .line 2037
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mDeletedIdList:Ljava/util/ArrayList;

    move-object v6, v0

    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2038
    if-eqz v48, :cond_d

    .line 2039
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mSendCancelIdList:Ljava/util/ArrayList;

    move-object v6, v0

    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 2041
    :cond_d
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/android/exchange/adapter/CalendarSyncAdapter;->sendDeclinedEmail(Landroid/content/Entity;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 2045
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

    .line 2047
    const-string v6, "_sync_version"

    move-object/from16 v0, v25

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v55

    .line 2050
    .local v55, version:Ljava/lang/String;
    if-nez v55, :cond_f

    .line 2051
    const-string v55, "0"

    .line 2062
    :goto_9
    const-string v6, "_sync_version"

    move-object/from16 v0, v18

    move-object v1, v6

    move-object/from16 v2, v55

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2064
    const-string v6, "_sync_version"

    move-object/from16 v0, v25

    move-object v1, v6

    move-object/from16 v2, v55

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2065
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

    .line 2067
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

    .line 2055
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

    .line 2056
    :catch_1
    move-exception v6

    move-object/from16 v23, v6

    .line 2059
    .local v23, e:Ljava/lang/Exception;
    :try_start_a
    const-string v55, "0"
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto :goto_9

    .line 2105
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

    .line 2108
    :cond_11
    const/16 v36, 0x20

    .line 2109
    .local v36, flag:I
    if-nez v48, :cond_12

    .line 2114
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

    .line 2116
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/android/exchange/adapter/CalendarSyncAdapter;->sendDeclinedEmail(Landroid/content/Entity;Ljava/lang/String;)V

    .line 2123
    :cond_12
    :goto_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mUploadedIdList:Ljava/util/ArrayList;

    move-object v6, v0

    invoke-static/range {v30 .. v31}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2126
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

    .line 2129
    const-string v6, "eventLocation"

    move-object/from16 v0, v25

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_13

    .line 2130
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

    .line 2134
    :cond_13
    if-eqz v48, :cond_14

    .line 2135
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

    .line 2138
    .local v38, msg:Lcom/android/email/provider/EmailContent$Message;
    if-eqz v38, :cond_14

    .line 2139
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

    .line 2140
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mOutgoingMailList:Ljava/util/ArrayList;

    move-object v6, v0

    move-object v0, v6

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2144
    .end local v30           #exEventId:J
    .end local v36           #flag:I
    .end local v38           #msg:Lcom/android/email/provider/EmailContent$Message;
    :cond_14
    invoke-virtual/range {p1 .. p1}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    goto/16 :goto_7

    .line 2119
    .restart local v30       #exEventId:J
    :cond_15
    const/16 v36, 0x10

    .restart local v36       #flag:I
    goto/16 :goto_a

    .line 2147
    .end local v29           #exEntity:Landroid/content/Entity;
    .end local v30           #exEventId:J
    .end local v34           #exValues:Landroid/content/ContentValues;
    .end local v36           #flag:I
    :cond_16
    :try_start_c
    invoke-interface/range {v33 .. v33}, Landroid/content/EntityIterator;->close()V

    .line 2149
    if-nez v32, :cond_17

    .line 2150
    invoke-virtual/range {p1 .. p1}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    .line 2154
    .end local v32           #exFirst:Z
    .end local v33           #exIterator:Landroid/content/EntityIterator;
    :cond_17
    invoke-virtual/range {p1 .. p1}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    .line 2155
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mUploadedIdList:Ljava/util/ArrayList;

    move-object v6, v0

    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2159
    const/4 v14, 0x0

    .line 2160
    .local v14, attendeeString:Ljava/lang/String;
    const-wide/16 v15, -0x1

    .line 2161
    .local v15, attendeeStringId:J
    const/16 v52, 0x0

    .line 2162
    .local v52, userAttendeeStatus:Ljava/lang/String;
    const-wide/16 v53, -0x1

    .line 2163
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

    .line 2164
    .restart local v39       #ncv:Landroid/content/Entity$NamedContentValues;
    move-object/from16 v0, v39

    iget-object v0, v0, Landroid/content/Entity$NamedContentValues;->uri:Landroid/net/Uri;

    move-object v6, v0

    sget-object v7, Landroid/provider/Calendar$ExtendedProperties;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v6, v7}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_18

    .line 2165
    move-object/from16 v0, v39

    iget-object v0, v0, Landroid/content/Entity$NamedContentValues;->values:Landroid/content/ContentValues;

    move-object/from16 v40, v0

    .line 2166
    .restart local v40       #ncvValues:Landroid/content/ContentValues;
    const-string v6, "name"

    move-object/from16 v0, v40

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v47

    .line 2168
    .local v47, propertyName:Ljava/lang/String;
    const-string v6, "attendees"

    move-object/from16 v0, v47

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_19

    .line 2169
    const-string v6, "value"

    move-object/from16 v0, v40

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 2171
    const-string v6, "_id"

    move-object/from16 v0, v40

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v15

    goto :goto_b

    .line 2173
    :cond_19
    const-string v6, "userAttendeeStatus"

    move-object/from16 v0, v47

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_18

    .line 2175
    const-string v6, "value"

    move-object/from16 v0, v40

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v52

    .line 2177
    const-string v6, "_id"

    move-object/from16 v0, v40

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v53

    goto :goto_b

    .line 2186
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

    .line 2188
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

    .line 2192
    .restart local v38       #msg:Lcom/android/email/provider/EmailContent$Message;
    if-eqz v38, :cond_1b

    .line 2193
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

    .line 2194
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mOutgoingMailList:Ljava/util/ArrayList;

    move-object v6, v0

    move-object v0, v6

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2197
    :cond_1b
    new-instance v43, Ljava/util/ArrayList;

    invoke-direct/range {v43 .. v43}, Ljava/util/ArrayList;-><init>()V

    .line 2198
    .local v43, originalAttendeeList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v14, :cond_1c

    .line 2199
    new-instance v50, Ljava/util/StringTokenizer;

    const-string v6, "\\"

    move-object/from16 v0, v50

    move-object v1, v14

    move-object v2, v6

    invoke-direct {v0, v1, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2201
    .local v50, st:Ljava/util/StringTokenizer;
    :goto_c
    invoke-virtual/range {v50 .. v50}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v6

    if-eqz v6, :cond_1c

    .line 2202
    invoke-virtual/range {v50 .. v50}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v43

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_c

    .line 2205
    .end local v50           #st:Ljava/util/StringTokenizer;
    :cond_1c
    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    .line 2208
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

    .line 2209
    .restart local v39       #ncv:Landroid/content/Entity$NamedContentValues;
    move-object/from16 v0, v39

    iget-object v0, v0, Landroid/content/Entity$NamedContentValues;->uri:Landroid/net/Uri;

    move-object v6, v0

    sget-object v7, Landroid/provider/Calendar$Attendees;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v6, v7}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1d

    .line 2210
    move-object/from16 v0, v39

    iget-object v0, v0, Landroid/content/Entity$NamedContentValues;->values:Landroid/content/ContentValues;

    move-object v6, v0

    const-string v7, "attendeeEmail"

    invoke-virtual {v6, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 2213
    .local v13, attendeeEmail:Ljava/lang/String;
    move-object/from16 v0, v43

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2214
    move-object/from16 v0, v41

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2215
    const-string v6, "\\"

    move-object/from16 v0, v41

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_d

    .line 2221
    .end local v13           #attendeeEmail:Ljava/lang/String;
    .end local v39           #ncv:Landroid/content/Entity$NamedContentValues;
    :cond_1e
    new-instance v22, Landroid/content/ContentValues;

    .end local v22           #cv:Landroid/content/ContentValues;
    invoke-direct/range {v22 .. v22}, Landroid/content/ContentValues;-><init>()V

    .line 2222
    .restart local v22       #cv:Landroid/content/ContentValues;
    const-string v6, "value"

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v22

    move-object v1, v6

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2223
    if-eqz v14, :cond_20

    .line 2224
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

    .line 2234
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

    .line 2236
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

    .line 2239
    if-eqz v38, :cond_1f

    .line 2241
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

    .line 2242
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mOutgoingMailList:Ljava/util/ArrayList;

    move-object v6, v0

    move-object v0, v6

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_f

    .line 2228
    .end local v12           #removedAttendee:Ljava/lang/String;
    :cond_20
    const-string v6, "name"

    const-string v7, "attendees"

    move-object/from16 v0, v22

    move-object v1, v6

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2229
    const-string v6, "event_id"

    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    move-object/from16 v0, v22

    move-object v1, v6

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2230
    sget-object v6, Landroid/provider/Calendar$ExtendedProperties;->CONTENT_URI:Landroid/net/Uri;

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto :goto_e

    .line 2245
    .end local v38           #msg:Lcom/android/email/provider/EmailContent$Message;
    .end local v41           #newTokenizedAttendees:Ljava/lang/StringBuilder;
    .end local v43           #originalAttendeeList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_21
    if-nez v48, :cond_4

    .line 2249
    const-string v6, "selfAttendeeStatus"

    move-object/from16 v0, v25

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    move-result v21

    .line 2250
    .local v21, currentStatus:I
    const/16 v51, 0x0

    .line 2251
    .local v51, syncStatus:I
    if-eqz v52, :cond_22

    .line 2253
    :try_start_d
    invoke-static/range {v52 .. v52}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1
    .catch Ljava/lang/NumberFormatException; {:try_start_d .. :try_end_d} :catch_2

    move-result v51

    .line 2258
    :cond_22
    :goto_10
    move/from16 v0, v21

    move/from16 v1, v51

    if-eq v0, v1, :cond_4

    if-eqz v21, :cond_4

    .line 2261
    const/4 v9, 0x0

    .line 2262
    .local v9, messageFlag:I
    packed-switch v21, :pswitch_data_0

    .line 2274
    :goto_11
    :pswitch_0
    if-eqz v9, :cond_4

    const-wide/16 v6, 0x0

    cmp-long v6, v53, v6

    if-ltz v6, :cond_4

    .line 2276
    :try_start_e
    invoke-virtual/range {v18 .. v18}, Landroid/content/ContentValues;->clear()V

    .line 2277
    const-string v6, "value"

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v18

    move-object v1, v6

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2279
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

    .line 2282
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

    .line 2285
    .restart local v38       #msg:Lcom/android/email/provider/EmailContent$Message;
    if-eqz v38, :cond_4

    .line 2286
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

    .line 2287
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mOutgoingMailList:Ljava/util/ArrayList;

    move-object v6, v0

    move-object v0, v6

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 2264
    .end local v38           #msg:Lcom/android/email/provider/EmailContent$Message;
    .restart local v9       #messageFlag:I
    :pswitch_1
    const/16 v9, 0x40

    .line 2265
    goto :goto_11

    .line 2267
    :pswitch_2
    const/16 v9, 0x80

    .line 2268
    goto :goto_11

    .line 2270
    :pswitch_3
    const/16 v9, 0x100

    goto :goto_11

    .line 2293
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

    .line 2294
    invoke-virtual/range {p1 .. p1}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    .line 2297
    :cond_24
    :try_start_f
    invoke-interface/range {v28 .. v28}, Landroid/content/EntityIterator;->close()V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_f} :catch_0

    goto/16 :goto_2

    .line 2254
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

    .line 2262
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
    .line 261
    sget-object v2, Lcom/android/exchange/adapter/CalendarSyncAdapter;->sSyncKeyLock:Ljava/lang/Object;

    monitor-enter v2

    .line 262
    :try_start_0
    const-string v3, "0"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    if-nez p2, :cond_1

    .line 263
    :cond_0
    iget-object v3, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mService:Lcom/android/exchange/EasSyncService;

    iget-object v3, v3, Lcom/android/exchange/EasSyncService;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v4, Landroid/provider/Calendar;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Landroid/content/ContentResolver;->acquireContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 266
    .local v0, client:Landroid/content/ContentProviderClient;
    :try_start_1
    sget-object v3, Landroid/provider/Calendar$SyncState;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3}, Lcom/android/exchange/adapter/CalendarSyncAdapter;->asSyncAdapter(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mAccountManagerAccount:Landroid/accounts/Account;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-static {v0, v3, v4, v5}, Landroid/provider/SyncStateContract$Helpers;->set(Landroid/content/ContentProviderClient;Landroid/net/Uri;Landroid/accounts/Account;[B)V

    .line 269
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

    .line 274
    .end local v0           #client:Landroid/content/ContentProviderClient;
    :cond_1
    :try_start_2
    iget-object v3, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    iput-object p1, v3, Lcom/android/email/provider/EmailContent$Mailbox;->mSyncKey:Ljava/lang/String;

    .line 275
    monitor-exit v2

    .line 276
    return-void

    .line 270
    .restart local v0       #client:Landroid/content/ContentProviderClient;
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 271
    .local v1, e:Landroid/os/RemoteException;
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Can\'t set SyncKey in CalendarProvider"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 275
    .end local v0           #client:Landroid/content/ContentProviderClient;
    .end local v1           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3
.end method
