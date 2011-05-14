.class public Lcom/android/email/provider/EmailProvider;
.super Landroid/content/ContentProvider;
.source "EmailProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/provider/EmailProvider$DatabaseHelper;,
        Lcom/android/email/provider/EmailProvider$BodyDatabaseHelper;
    }
.end annotation


# static fields
.field private static final ACCOUNT:I = 0x0

.field private static final ACCOUNT_BASE:I = 0x0

.field private static final ACCOUNT_ID:I = 0x2

.field private static final ACCOUNT_ID_ADD_TO_FIELD:I = 0x3

.field private static final ACCOUNT_MAILBOXES:I = 0x1

.field private static final ATTACHMENT:I = 0x3000

.field private static final ATTACHMENTS_MESSAGE_ID:I = 0x3003

.field private static final ATTACHMENT_BASE:I = 0x3000

.field private static final ATTACHMENT_CONTENT:I = 0x3001

.field private static final ATTACHMENT_ID:I = 0x3002

.field private static final BASE_SHIFT:I = 0xc

.field private static final BODY:I = 0xb000

.field private static final BODY_BASE:I = 0xb000

.field protected static final BODY_DATABASE_NAME:Ljava/lang/String; = "EmailProviderBody.db"

.field public static final BODY_DATABASE_VERSION:I = 0x6

.field private static final BODY_HTML:I = 0xb003

.field private static final BODY_ID:I = 0xb001

.field private static final BODY_MESSAGE_ID:I = 0xb002

.field private static final BODY_TEXT:I = 0xb004

.field protected static final DATABASE_NAME:Ljava/lang/String; = "EmailProvider.db"

.field public static final DATABASE_VERSION:I = 0x12

.field private static final DELETED_FOLLOWUP_FLAG:I = 0xa000

.field private static final DELETED_FOLLOWUP_FLAG_BASE:I = 0xa000

.field private static final DELETED_FOLLOWUP_FLAG_ID:I = 0xa001

.field private static final DELETED_FOLLOWUP_INSERT:Ljava/lang/String; = "insert or replace into FollowupFlag_Deletes select * from FollowupFlag where _id="

.field private static final DELETED_MESSAGE:I = 0x6000

.field private static final DELETED_MESSAGE_BASE:I = 0x6000

.field private static final DELETED_MESSAGE_ID:I = 0x6001

.field private static final DELETED_MESSAGE_INSERT:Ljava/lang/String; = "insert or replace into Message_Deletes select * from Message where _id="

.field private static final DELETED_MESSAGE_MAILBOX:I = 0x6002

.field private static final DELETE_BODY:Ljava/lang/String; = "delete from Body where messageKey="

.field private static final DELETE_ORPHAN_BODIES:Ljava/lang/String; = "delete from Body where messageKey in (select messageKey from Body except select _id from Message)"

.field public static final EMAIL_AUTHORITY:Ljava/lang/String; = "com.android.email.provider"

.field public static FIRST_ENTER:Z = false

.field private static final FOLLOWUP_FLAG:I = 0x8000

.field private static final FOLLOWUP_FLAG_BASE:I = 0x8000

.field private static final FOLLOWUP_FLAG_ID:I = 0x8001

.field private static final HOSTAUTH:I = 0x4000

.field private static final HOSTAUTH_BASE:I = 0x4000

.field private static final HOSTAUTH_ID:I = 0x4001

.field private static final ID_EQUALS:Ljava/lang/String; = "_id=?"

.field public static final INTEGRITY_CHECK_URI:Landroid/net/Uri; = null

.field private static final LAST_EMAIL_PROVIDER_DB_BASE:I = 0xa000

.field private static final MAILBOX:I = 0x1000

.field private static final MAILBOX_BASE:I = 0x1000

.field private static final MAILBOX_ID:I = 0x1002

.field private static final MAILBOX_ID_ADD_TO_FIELD:I = 0x1003

.field private static final MAILBOX_MESSAGES:I = 0x1001

.field private static final MESSAGE:I = 0x2000

.field private static final MESSAGE_BASE:I = 0x2000

.field private static final MESSAGE_ID:I = 0x2001

.field private static final ORPHANS_ID:I = 0x0

.field private static final ORPHANS_MAILBOX_KEY:I = 0x1

.field private static final ORPHANS_PROJECTION:[Ljava/lang/String; = null

.field private static final POLICIES:I = 0x7000

.field private static final POLICIES_BASE:I = 0x7000

.field private static final POLICIES_ID:I = 0x7001

.field private static final SYNCED_FOLLOWUP_FLAG_ID:I = 0x8002

.field private static final SYNCED_MESSAGE_ID:I = 0x2002

.field private static final TABLE_NAMES:[Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "EmailProvider"

.field private static final TRIGGER_MAILBOX_DELETE:Ljava/lang/String; = "create trigger mailbox_delete before delete on Mailbox begin delete from Message  where mailboxKey=old._id; delete from Message_Updates  where mailboxKey=old._id; delete from Message_Deletes  where mailboxKey=old._id; end"

.field private static final UPDATED_FOLLOWUP_DELETE:Ljava/lang/String; = "delete from FollowupFlag_Updates where _id="

.field private static final UPDATED_FOLLOWUP_FLAG:I = 0x9000

.field private static final UPDATED_FOLLOWUP_FLAG_BASE:I = 0x9000

.field private static final UPDATED_FOLLOWUP_FLAG_ID:I = 0x9001

.field private static final UPDATED_FOLLOWUP_INSERT:Ljava/lang/String; = "insert or ignore into FollowupFlag_Updates select * from FollowupFlag where _id="

.field private static final UPDATED_MESSAGE:I = 0x5000

.field private static final UPDATED_MESSAGE_BASE:I = 0x5000

.field private static final UPDATED_MESSAGE_DELETE:Ljava/lang/String; = "delete from Message_Updates where _id="

.field private static final UPDATED_MESSAGE_ID:I = 0x5001

.field private static final UPDATED_MESSAGE_INSERT:Ljava/lang/String; = "insert or ignore into Message_Updates select * from Message where _id="

.field private static final WHERE_ID:Ljava/lang/String; = "_id=?"

.field private static final sURIMatcher:Landroid/content/UriMatcher;


# instance fields
.field private mBodyDatabase:Landroid/database/sqlite/SQLiteDatabase;

.field private mDatabase:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    const-string v4, "com.android.email.provider"

    .line 72
    const-string v1, "content://com.android.email.provider/integrityCheck"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sput-object v1, Lcom/android/email/provider/EmailProvider;->INTEGRITY_CHECK_URI:Landroid/net/Uri;

    .line 76
    new-array v1, v7, [Ljava/lang/String;

    const-string v2, "_id"

    aput-object v2, v1, v6

    const-string v2, "mailboxKey"

    aput-object v2, v1, v5

    sput-object v1, Lcom/android/email/provider/EmailProvider;->ORPHANS_PROJECTION:[Ljava/lang/String;

    .line 116
    sput-boolean v5, Lcom/android/email/provider/EmailProvider;->FIRST_ENTER:Z

    .line 193
    const/16 v1, 0xc

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "Account"

    aput-object v2, v1, v6

    const-string v2, "Mailbox"

    aput-object v2, v1, v5

    const-string v2, "Message"

    aput-object v2, v1, v7

    const-string v2, "Attachment"

    aput-object v2, v1, v8

    const/4 v2, 0x4

    const-string v3, "HostAuth"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "Message_Updates"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "Message_Deletes"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "Policies"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "FollowupFlag"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "FollowupFlag_Updates"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "FollowupFlag_Deletes"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string v3, "Body"

    aput-object v3, v1, v2

    sput-object v1, Lcom/android/email/provider/EmailProvider;->TABLE_NAMES:[Ljava/lang/String;

    .line 215
    new-instance v1, Landroid/content/UriMatcher;

    const/4 v2, -0x1

    invoke-direct {v1, v2}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v1, Lcom/android/email/provider/EmailProvider;->sURIMatcher:Landroid/content/UriMatcher;

    .line 268
    sget-object v0, Lcom/android/email/provider/EmailProvider;->sURIMatcher:Landroid/content/UriMatcher;

    .line 271
    .local v0, matcher:Landroid/content/UriMatcher;
    const-string v1, "com.android.email.provider"

    const-string v1, "account"

    invoke-virtual {v0, v4, v1, v6}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 274
    const-string v1, "com.android.email.provider"

    const-string v1, "account/#"

    invoke-virtual {v0, v4, v1, v7}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 276
    const-string v1, "com.android.email.provider"

    const-string v1, "account/#/mailbox"

    invoke-virtual {v0, v4, v1, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 279
    const-string v1, "com.android.email.provider"

    const-string v1, "mailbox"

    const/16 v2, 0x1000

    invoke-virtual {v0, v4, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 283
    const-string v1, "com.android.email.provider"

    const-string v1, "mailbox/#"

    const/16 v2, 0x1002

    invoke-virtual {v0, v4, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 285
    const-string v1, "com.android.email.provider"

    const-string v1, "mailbox/#/message"

    const/16 v2, 0x1001

    invoke-virtual {v0, v4, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 288
    const-string v1, "com.android.email.provider"

    const-string v1, "message"

    const/16 v2, 0x2000

    invoke-virtual {v0, v4, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 291
    const-string v1, "com.android.email.provider"

    const-string v1, "message/#"

    const/16 v2, 0x2001

    invoke-virtual {v0, v4, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 294
    const-string v1, "com.android.email.provider"

    const-string v1, "attachment"

    const/16 v2, 0x3000

    invoke-virtual {v0, v4, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 296
    const-string v1, "com.android.email.provider"

    const-string v1, "attachment/#"

    const/16 v2, 0x3002

    invoke-virtual {v0, v4, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 299
    const-string v1, "com.android.email.provider"

    const-string v1, "attachment/content/*"

    const/16 v2, 0x3001

    invoke-virtual {v0, v4, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 301
    const-string v1, "com.android.email.provider"

    const-string v1, "attachment/message/#"

    const/16 v2, 0x3003

    invoke-virtual {v0, v4, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 304
    const-string v1, "com.android.email.provider"

    const-string v1, "body"

    const v2, 0xb000

    invoke-virtual {v0, v4, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 306
    const-string v1, "com.android.email.provider"

    const-string v1, "body/#"

    const v2, 0xb001

    invoke-virtual {v0, v4, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 308
    const-string v1, "com.android.email.provider"

    const-string v1, "body/message/#"

    const v2, 0xb002

    invoke-virtual {v0, v4, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 310
    const-string v1, "com.android.email.provider"

    const-string v1, "body/#/html"

    const v2, 0xb003

    invoke-virtual {v0, v4, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 312
    const-string v1, "com.android.email.provider"

    const-string v1, "body/#/text"

    const v2, 0xb004

    invoke-virtual {v0, v4, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 315
    const-string v1, "com.android.email.provider"

    const-string v1, "hostauth"

    const/16 v2, 0x4000

    invoke-virtual {v0, v4, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 317
    const-string v1, "com.android.email.provider"

    const-string v1, "hostauth/#"

    const/16 v2, 0x4001

    invoke-virtual {v0, v4, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 320
    const-string v1, "com.android.email.provider"

    const-string v1, "mailboxIdAddToField/#"

    const/16 v2, 0x1003

    invoke-virtual {v0, v4, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 321
    const-string v1, "com.android.email.provider"

    const-string v1, "accountIdAddToField/#"

    invoke-virtual {v0, v4, v1, v8}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 328
    const-string v1, "com.android.email.provider"

    const-string v1, "syncedMessage/#"

    const/16 v2, 0x2002

    invoke-virtual {v0, v4, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 336
    const-string v1, "com.android.email.provider"

    const-string v1, "deletedMessage"

    const/16 v2, 0x6000

    invoke-virtual {v0, v4, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 338
    const-string v1, "com.android.email.provider"

    const-string v1, "deletedMessage/#"

    const/16 v2, 0x6001

    invoke-virtual {v0, v4, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 341
    const-string v1, "com.android.email.provider"

    const-string v1, "deletedMessage/mailbox/#"

    const/16 v2, 0x6002

    invoke-virtual {v0, v4, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 344
    const-string v1, "com.android.email.provider"

    const-string v1, "updatedMessage"

    const/16 v2, 0x5000

    invoke-virtual {v0, v4, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 346
    const-string v1, "com.android.email.provider"

    const-string v1, "updatedMessage/#"

    const/16 v2, 0x5001

    invoke-virtual {v0, v4, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 350
    const-string v1, "com.android.email.provider"

    const-string v1, "policies"

    const/16 v2, 0x7000

    invoke-virtual {v0, v4, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 352
    const-string v1, "com.android.email.provider"

    const-string v1, "policies/#"

    const/16 v2, 0x7001

    invoke-virtual {v0, v4, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 356
    const-string v1, "com.android.email.provider"

    const-string v1, "followupFlag"

    const v2, 0x8000

    invoke-virtual {v0, v4, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 357
    const-string v1, "com.android.email.provider"

    const-string v1, "updatedFollowupFlag"

    const v2, 0x9000

    invoke-virtual {v0, v4, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 358
    const-string v1, "com.android.email.provider"

    const-string v1, "deletedFollowupFlag"

    const v2, 0xa000

    invoke-virtual {v0, v4, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 360
    const-string v1, "com.android.email.provider"

    const-string v1, "followupFlag/#"

    const v2, 0x8001

    invoke-virtual {v0, v4, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 361
    const-string v1, "com.android.email.provider"

    const-string v1, "updatedFollowupFlag/#"

    const v2, 0x9001

    invoke-virtual {v0, v4, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 362
    const-string v1, "com.android.email.provider"

    const-string v1, "deletedFollowupFlag/#"

    const v2, 0xa001

    invoke-virtual {v0, v4, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 368
    const-string v1, "com.android.email.provider"

    const-string v1, "syncedFollowupFlag/#"

    const v2, 0x8002

    invoke-virtual {v0, v4, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 371
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 877
    return-void
.end method

.method static synthetic access$000(Lcom/android/email/provider/EmailProvider;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/android/email/provider/EmailProvider;->populateFollowupFlagsTable(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method static createAccountTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3
    .parameter "db"

    .prologue
    .line 506
    const-string v0, " (_id integer primary key autoincrement, displayName text, emailAddress text, syncKey text, syncLookback integer, syncInterval text, hostAuthKeyRecv integer, hostAuthKeySend integer, flags integer, isDefault integer, compatibilityUuid text, senderName text, ringtoneUri text, protocolVersion text, newMessageCount integer, securityFlags integer, securitySyncKey text, signature text, policyKey text, peakDays integer, peakStartMinute integer, peakEndMinute integer, peakSchedule integer, offPeakSchedule integer, roamingSchedule integer, displayMode integer, calendarSyncLookback integer, textSize integer);"

    .line 543
    .local v0, s:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "create table Account"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 545
    const-string v1, "create trigger account_delete before delete on Account begin delete from Mailbox where accountKey=old._id; delete from HostAuth where _id=old.hostAuthKeyRecv; delete from HostAuth where _id=old.hostAuthKeySend; end"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 555
    const-string v1, "create trigger account_delete_policy before delete on Account begin delete from Policies where account_id=old._id; end"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 560
    return-void
.end method

.method static createAttachmentTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3
    .parameter "db"

    .prologue
    .line 633
    const-string v0, " (_id integer primary key autoincrement, fileName text, mimeType text, size integer, contentId text, contentUri text, messageKey integer, location text, encoding text, content text, flags integer, content_bytes blob);"

    .line 646
    .local v0, s:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "create table Attachment"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 647
    const-string v1, "Attachment"

    const-string v2, "messageKey"

    invoke-static {v1, v2}, Lcom/android/email/provider/EmailProvider;->createIndex(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 648
    return-void
.end method

.method static createBodyTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3
    .parameter "db"

    .prologue
    .line 659
    const-string v0, " (_id integer primary key autoincrement, messageKey integer, htmlContent text, textContent text, htmlReply text, textReply text, sourceMessageKey text, introText text);"

    .line 668
    .local v0, s:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "create table Body"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 669
    const-string v1, "Body"

    const-string v2, "messageKey"

    invoke-static {v1, v2}, Lcom/android/email/provider/EmailProvider;->createIndex(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 670
    return-void
.end method

.method static createFollowupFlagsTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3
    .parameter "db"

    .prologue
    .line 716
    const-string v0, " (_id integer primary key autoincrement, messageKey integer, messageSyncServerId text, taskKey integer, taskSyncServerId text, ringtoneUri text, status integer, flagType text, completeTime text, dateCompleted text, startDate text, dueDate text, UTCStartDate text, UTCDueDate text, reminderSet integer, reminderTime text, ordinalDate text, sub_ordinaldate text );"

    .line 735
    .local v0, s:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "create table FollowupFlag"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 736
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "create table FollowupFlag_Updates"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 737
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "create table FollowupFlag_Deletes"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 740
    const-string v1, "create trigger message_delete_followup before delete on Message begin delete from FollowupFlag where messageKey=old._id; end"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 744
    return-void
.end method

.method static createHostAuthTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3
    .parameter "db"

    .prologue
    .line 571
    const-string v0, " (_id integer primary key autoincrement, protocol text, address text, port integer, flags integer, login text, password text, domain text, accountKey integer);"

    .line 581
    .local v0, s:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "create table HostAuth"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 582
    return-void
.end method

.method static createIndex(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "tableName"
    .parameter "columnName"

    .prologue
    .line 381
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "create index "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x5f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " on "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ");"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static createMailboxTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3
    .parameter "db"

    .prologue
    .line 593
    const-string v0, " (_id integer primary key autoincrement, displayName text, serverId text, parentServerId text, accountKey integer, type integer, delimiter integer, syncKey text, syncLookback integer, syncInterval integer, syncTime integer, unreadCount integer, flagVisible integer, flags integer, visibleLimit integer, syncStatus text,flagChanged integer, dstMailboxId text, newDisplayName text);"

    .line 615
    .local v0, s:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "create table Mailbox"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 616
    const-string v1, "create index mailbox_serverId on Mailbox (serverId)"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 618
    const-string v1, "create index mailbox_accountKey on Mailbox (accountKey)"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 621
    const-string v1, "create trigger mailbox_delete before delete on Mailbox begin delete from Message  where mailboxKey=old._id; delete from Message_Updates  where mailboxKey=old._id; delete from Message_Deletes  where mailboxKey=old._id; end"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 622
    return-void
.end method

.method static createMessageTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 10
    .parameter "db"

    .prologue
    .line 386
    const-string v7, "displayName text, timeStamp integer, subject text, flagRead integer, flagLoaded integer, flagFavorite integer, flagAttachment integer, flags integer, clientId integer, messageId text, mailboxKey integer, accountKey integer, fromList text, toList text, ccList text, bccList text, replyToList text, meetingInfo text, threadName text,importance integer default 1, flagMoved integer default 0, dstMailboxKey integer default -1,flagStatus integer default 0);"

    .line 416
    .local v7, messageColumns:Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " (_id integer primary key autoincrement, syncServerId text, syncServerTimeStamp integer, "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 424
    .local v3, createString:Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " (_id integer unique, syncServerId text, syncServerTimeStamp integer, "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 430
    .local v0, altCreateString:Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "create table Message"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 431
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "create table Message_Updates"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 432
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "create table Message_Deletes"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 434
    const/4 v8, 0x5

    new-array v5, v8, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "timeStamp"

    aput-object v9, v5, v8

    const/4 v8, 0x1

    const-string v9, "flagRead"

    aput-object v9, v5, v8

    const/4 v8, 0x2

    const-string v9, "flagLoaded"

    aput-object v9, v5, v8

    const/4 v8, 0x3

    const-string v9, "mailboxKey"

    aput-object v9, v5, v8

    const/4 v8, 0x4

    const-string v9, "syncServerId"

    aput-object v9, v5, v8

    .line 442
    .local v5, indexColumns:[Ljava/lang/String;
    move-object v1, v5

    .local v1, arr$:[Ljava/lang/String;
    array-length v6, v1

    .local v6, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_0
    if-ge v4, v6, :cond_0

    aget-object v2, v1, v4

    .line 443
    .local v2, columnName:Ljava/lang/String;
    const-string v8, "Message"

    invoke-static {v8, v2}, Lcom/android/email/provider/EmailProvider;->createIndex(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 442
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 449
    .end local v2           #columnName:Ljava/lang/String;
    :cond_0
    const-string v8, "create trigger message_delete before delete on Message begin delete from Attachment  where messageKey=old._id; end"

    invoke-virtual {p0, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 457
    const-string v8, "create trigger unread_message_insert before insert on Message when NEW.flagRead=0 begin update Mailbox set unreadCount=unreadCount+1  where _id=NEW.mailboxKey; end"

    invoke-virtual {p0, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 465
    const-string v8, "create trigger unread_message_delete before delete on Message when OLD.flagRead=0 begin update Mailbox set unreadCount=unreadCount-1  where _id=OLD.mailboxKey; end"

    invoke-virtual {p0, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 473
    const-string v8, "create trigger unread_message_move before update of mailboxKey on Message when OLD.flagRead=0 begin update Mailbox set unreadCount=unreadCount-1  where _id=OLD.mailboxKey; update Mailbox set unreadCount=unreadCount+1 where _id=NEW.mailboxKey; end"

    invoke-virtual {p0, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 485
    const-string v8, "create trigger unread_message_read before update of flagRead on Message when OLD.flagRead!=NEW.flagRead begin update Mailbox set unreadCount=unreadCount+ case OLD.flagRead when 0 then -1 else 1 end  where _id=OLD.mailboxKey; end"

    invoke-virtual {p0, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 493
    return-void
.end method

.method static createPoliciesTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3
    .parameter "db"

    .prologue
    .line 693
    const-string v0, " (_id integer primary key autoincrement, name text, type text, value text, account_id integer , CONSTRAINT policyconstraint UNIQUE(account_id,name));"

    .line 702
    .local v0, s:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "create table Policies"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 704
    return-void
.end method

.method static deleteOrphans(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .locals 22
    .parameter "database"
    .parameter "tableName"

    .prologue
    .line 807
    if-eqz p0, :cond_0

    .line 809
    sget-object v8, Lcom/android/email/provider/EmailProvider;->ORPHANS_PROJECTION:[Ljava/lang/String;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v8

    move-object v3, v9

    move-object v4, v10

    move-object v5, v11

    move-object v6, v12

    move-object v7, v13

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v16

    .line 812
    .local v16, c:Landroid/database/Cursor;
    :try_start_0
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v8

    if-nez v8, :cond_1

    .line 849
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 852
    .end local v16           #c:Landroid/database/Cursor;
    :cond_0
    :goto_0
    return-void

    .line 813
    .restart local v16       #c:Landroid/database/Cursor;
    :cond_1
    :try_start_1
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 814
    .local v18, foundMailboxes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    .line 815
    .local v21, notFoundMailboxes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 816
    .local v17, deleteList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const/4 v8, 0x1

    new-array v12, v8, [Ljava/lang/String;

    .line 817
    .local v12, bindArray:[Ljava/lang/String;
    :cond_2
    :goto_1
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToNext()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 820
    const/4 v8, 0x1

    move-object/from16 v0, v16

    move v1, v8

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v19

    .line 822
    .local v19, mailboxId:J
    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    move-object/from16 v0, v21

    move-object v1, v8

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 823
    const/4 v8, 0x0

    move-object/from16 v0, v16

    move v1, v8

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    move-object/from16 v0, v17

    move-object v1, v8

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 849
    .end local v12           #bindArray:[Ljava/lang/String;
    .end local v17           #deleteList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .end local v18           #foundMailboxes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .end local v19           #mailboxId:J
    .end local v21           #notFoundMailboxes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .end local p0
    :catchall_0
    move-exception p0

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    throw p0

    .line 825
    .restart local v12       #bindArray:[Ljava/lang/String;
    .restart local v17       #deleteList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .restart local v18       #foundMailboxes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .restart local v19       #mailboxId:J
    .restart local v21       #notFoundMailboxes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .restart local p0
    :cond_3
    :try_start_2
    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    move-object/from16 v0, v18

    move-object v1, v8

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 826
    const/4 v8, 0x0

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v12, v8

    .line 827
    const-string v9, "Mailbox"

    sget-object v10, Lcom/android/email/provider/EmailContent$Mailbox;->ID_PROJECTION:[Ljava/lang/String;

    const-string v11, "_id=?"

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v8, p0

    invoke-virtual/range {v8 .. v15}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v8

    .line 831
    .local v8, boxCursor:Landroid/database/Cursor;
    :try_start_3
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 832
    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    move-object/from16 v0, v18

    move-object v1, v9

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 839
    :goto_2
    :try_start_4
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 835
    :cond_4
    :try_start_5
    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    move-object/from16 v0, v21

    move-object v1, v9

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 836
    const/4 v9, 0x0

    move-object/from16 v0, v16

    move v1, v9

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    move-object/from16 v0, v17

    move-object v1, v9

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_2

    .line 839
    :catchall_1
    move-exception p0

    .end local p0
    :try_start_6
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw p0

    .line 844
    .end local v8           #boxCursor:Landroid/database/Cursor;
    .end local v19           #mailboxId:J
    .restart local p0
    :cond_5
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, i$:Ljava/util/Iterator;
    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    .line 845
    .local v9, messageId:J
    const/4 v11, 0x0

    invoke-static {v9, v10}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v9

    .end local v9           #messageId:J
    aput-object v9, v12, v11

    .line 846
    const-string v9, "_id=?"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v9

    move-object v3, v12

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_3

    .line 849
    :cond_6
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0
.end method

.method static getReadableDatabase(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;
    .locals 3
    .parameter "context"

    .prologue
    .line 802
    new-instance v0, Lcom/android/email/provider/EmailProvider$DatabaseHelper;

    new-instance v1, Lcom/android/email/provider/EmailProvider;

    invoke-direct {v1}, Lcom/android/email/provider/EmailProvider;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "EmailProvider.db"

    invoke-direct {v0, v1, p0, v2}, Lcom/android/email/provider/EmailProvider$DatabaseHelper;-><init>(Lcom/android/email/provider/EmailProvider;Landroid/content/Context;Ljava/lang/String;)V

    .line 803
    .local v0, helper:Lcom/android/email/provider/EmailProvider$DatabaseHelper;
    invoke-virtual {v0}, Lcom/android/email/provider/EmailProvider$DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    return-object v1
.end method

.method private populateFollowupFlagsTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .parameter "db"

    .prologue
    .line 759
    return-void
.end method

.method static resetAccountTable(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1
    .parameter "db"
    .parameter "oldVersion"
    .parameter "newVersion"

    .prologue
    .line 564
    :try_start_0
    const-string v0, "drop table Account"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 567
    :goto_0
    invoke-static {p0}, Lcom/android/email/provider/EmailProvider;->createAccountTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 568
    return-void

    .line 565
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static resetAttachmentTable(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1
    .parameter "db"
    .parameter "oldVersion"
    .parameter "newVersion"

    .prologue
    .line 652
    :try_start_0
    const-string v0, "drop table Attachment"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 655
    :goto_0
    invoke-static {p0}, Lcom/android/email/provider/EmailProvider;->createAttachmentTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 656
    return-void

    .line 653
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static resetFollowupFlagsTable(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1
    .parameter "db"
    .parameter "oldVersion"
    .parameter "newVersion"

    .prologue
    .line 748
    :try_start_0
    const-string v0, "drop table FollowupFlag"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 751
    :goto_0
    invoke-static {p0}, Lcom/android/email/provider/EmailProvider;->createFollowupFlagsTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 752
    return-void

    .line 749
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static resetHostAuthTable(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1
    .parameter "db"
    .parameter "oldVersion"
    .parameter "newVersion"

    .prologue
    .line 586
    :try_start_0
    const-string v0, "drop table HostAuth"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 589
    :goto_0
    invoke-static {p0}, Lcom/android/email/provider/EmailProvider;->createHostAuthTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 590
    return-void

    .line 587
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static resetMailboxTable(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1
    .parameter "db"
    .parameter "oldVersion"
    .parameter "newVersion"

    .prologue
    .line 626
    :try_start_0
    const-string v0, "drop table Mailbox"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 629
    :goto_0
    invoke-static {p0}, Lcom/android/email/provider/EmailProvider;->createMailboxTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 630
    return-void

    .line 627
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static resetMessageTable(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1
    .parameter "db"
    .parameter "oldVersion"
    .parameter "newVersion"

    .prologue
    .line 497
    :try_start_0
    const-string v0, "drop table Message"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 498
    const-string v0, "drop table Message_Updates"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 499
    const-string v0, "drop table Message_Deletes"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 502
    :goto_0
    invoke-static {p0}, Lcom/android/email/provider/EmailProvider;->createMessageTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 503
    return-void

    .line 500
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static resetPoliciesTable(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1
    .parameter "db"
    .parameter "oldVersion"
    .parameter "newVersion"

    .prologue
    .line 708
    :try_start_0
    const-string v0, "drop table Policies"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 711
    :goto_0
    invoke-static {p0}, Lcom/android/email/provider/EmailProvider;->createPoliciesTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 712
    return-void

    .line 709
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static upgradeBodyTable(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 3
    .parameter "db"
    .parameter "oldVersion"
    .parameter "newVersion"

    .prologue
    const/4 v1, 0x5

    .line 673
    if-ge p1, v1, :cond_1

    .line 675
    :try_start_0
    const-string v1, "drop table Body"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 676
    invoke-static {p0}, Lcom/android/email/provider/EmailProvider;->createBodyTable(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_1

    .line 689
    :cond_0
    :goto_0
    return-void

    .line 679
    :cond_1
    if-ne p1, v1, :cond_0

    .line 681
    :try_start_1
    const-string v1, "alter table Body add introText text"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0

    .line 687
    :goto_1
    const/4 p1, 0x6

    goto :goto_0

    .line 683
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 685
    .local v0, e:Landroid/database/SQLException;
    const-string v1, "EmailProvider"

    const-string v2, "Exception upgrading EmailProviderBody.db from v5 to v6"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 677
    .end local v0           #e:Landroid/database/SQLException;
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method private whereWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "where"
    .parameter "selection"

    .prologue
    .line 1606
    if-nez p2, :cond_0

    move-object v1, p1

    .line 1614
    :goto_0
    return-object v1

    .line 1609
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1610
    .local v0, sb:Ljava/lang/StringBuilder;
    const-string v1, " AND ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1611
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1612
    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1614
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private whereWithId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "id"
    .parameter "selection"

    .prologue
    .line 1584
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1585
    .local v0, sb:Ljava/lang/StringBuilder;
    const-string v1, "_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1586
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1587
    if-eqz p2, :cond_0

    .line 1588
    const-string v1, " AND ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1589
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1590
    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1592
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public applyBatch(Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;)[",
            "Landroid/content/ContentProviderResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/OperationApplicationException;
        }
    .end annotation

    .prologue
    .line 1751
    .local p1, operations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    invoke-virtual {p0}, Lcom/android/email/provider/EmailProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1752
    .local v0, context:Landroid/content/Context;
    invoke-virtual {p0, v0}, Lcom/android/email/provider/EmailProvider;->getDatabase(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 1753
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1755
    :try_start_0
    invoke-super {p0, p1}, Landroid/content/ContentProvider;->applyBatch(Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object v2

    .line 1756
    .local v2, results:[Landroid/content/ContentProviderResult;
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1759
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-object v2

    .end local v2           #results:[Landroid/content/ContentProviderResult;
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v3
.end method

.method public checkDatabases()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    const-string v4, "EmailProvider"

    .line 1452
    iget-object v2, p0, Lcom/android/email/provider/EmailProvider;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v2, :cond_0

    .line 1453
    iput-object v3, p0, Lcom/android/email/provider/EmailProvider;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 1455
    :cond_0
    iget-object v2, p0, Lcom/android/email/provider/EmailProvider;->mBodyDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v2, :cond_1

    .line 1456
    iput-object v3, p0, Lcom/android/email/provider/EmailProvider;->mBodyDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 1459
    :cond_1
    invoke-virtual {p0}, Lcom/android/email/provider/EmailProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "EmailProvider.db"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 1460
    .local v1, databaseFile:Ljava/io/File;
    invoke-virtual {p0}, Lcom/android/email/provider/EmailProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "EmailProviderBody.db"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 1463
    .local v0, bodyFile:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_3

    .line 1464
    const-string v2, "EmailProvider"

    const-string v2, "Deleting orphaned EmailProvider database..."

    invoke-static {v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1465
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 1470
    :cond_2
    :goto_0
    return-void

    .line 1466
    :cond_3
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1467
    const-string v2, "EmailProvider"

    const-string v2, "Deleting orphaned EmailProviderBody database..."

    invoke-static {v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1468
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_0
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 12
    .parameter "uri"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    const-string v9, "Policies"

    .line 1160
    sget-object v9, Lcom/android/email/provider/EmailProvider;->sURIMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v9, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v5

    .line 1161
    .local v5, match:I
    invoke-virtual {p0}, Lcom/android/email/provider/EmailProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 1166
    .local v1, context:Landroid/content/Context;
    invoke-virtual {p0, v1}, Lcom/android/email/provider/EmailProvider;->getDatabase(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 1167
    .local v2, db:Landroid/database/sqlite/SQLiteDatabase;
    shr-int/lit8 v8, v5, 0xc

    .line 1168
    .local v8, table:I
    const-string v4, "0"

    .line 1169
    .local v4, id:Ljava/lang/String;
    const/4 v6, 0x0

    .line 1175
    .local v6, messageDeletion:Z
    const/4 v7, -0x1

    .line 1178
    .local v7, result:I
    sparse-switch v5, :sswitch_data_0

    .line 1200
    :goto_0
    sparse-switch v5, :sswitch_data_1

    .line 1271
    :try_start_0
    new-instance v9, Ljava/lang/IllegalArgumentException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unknown URI "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1283
    :catch_0
    move-exception v9

    move-object v3, v9

    .line 1284
    .local v3, e:Landroid/database/sqlite/SQLiteException;
    :try_start_1
    invoke-virtual {p0}, Lcom/android/email/provider/EmailProvider;->checkDatabases()V

    .line 1285
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1287
    .end local v3           #e:Landroid/database/sqlite/SQLiteException;
    :catchall_0
    move-exception v9

    if-eqz v6, :cond_0

    .line 1288
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    :cond_0
    throw v9

    .line 1196
    :sswitch_0
    const/4 v6, 0x1

    .line 1197
    :try_start_2
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    goto :goto_0

    .line 1210
    :sswitch_1
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v9

    const/4 v10, 0x1

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    move-object v0, v9

    check-cast v0, Ljava/lang/String;

    move-object v4, v0

    .line 1211
    const/16 v9, 0x2002

    if-ne v5, v9, :cond_1

    .line 1215
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "insert or replace into Message_Deletes select * from Message where _id="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1216
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "delete from Message_Updates where _id="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1218
    :cond_1
    sget-object v9, Lcom/android/email/provider/EmailProvider;->TABLE_NAMES:[Ljava/lang/String;

    aget-object v9, v9, v8

    invoke-direct {p0, v4, p2}, Lcom/android/email/provider/EmailProvider;->whereWithId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v9, v10, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v7

    .line 1273
    :goto_1
    if-eqz v6, :cond_2

    .line 1274
    const/16 v9, 0x2001

    if-ne v5, v9, :cond_5

    .line 1276
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "delete from Body where messageKey="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1281
    :goto_2
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1287
    :cond_2
    if-eqz v6, :cond_3

    .line 1288
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1291
    :cond_3
    invoke-virtual {p0}, Lcom/android/email/provider/EmailProvider;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, p1, v10}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 1292
    return v7

    .line 1223
    :sswitch_2
    :try_start_3
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v9

    const/4 v10, 0x2

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    move-object v0, v9

    check-cast v0, Ljava/lang/String;

    move-object v4, v0

    .line 1224
    sget-object v9, Lcom/android/email/provider/EmailProvider;->TABLE_NAMES:[Ljava/lang/String;

    aget-object v9, v9, v8

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "messageKey="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10, p2}, Lcom/android/email/provider/EmailProvider;->whereWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v9, v10, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v7

    .line 1226
    goto :goto_1

    .line 1236
    :sswitch_3
    sget-object v9, Lcom/android/email/provider/EmailProvider;->TABLE_NAMES:[Ljava/lang/String;

    aget-object v9, v9, v8

    invoke-virtual {v2, v9, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v7

    .line 1237
    goto :goto_1

    .line 1241
    :sswitch_4
    const-string v9, "Policies"

    invoke-virtual {v2, v9, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v7

    .line 1242
    goto :goto_1

    .line 1244
    :sswitch_5
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v9

    const/4 v10, 0x1

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    move-object v0, v9

    check-cast v0, Ljava/lang/String;

    move-object v4, v0

    .line 1245
    const-string v9, "Policies"

    invoke-direct {p0, v4, p2}, Lcom/android/email/provider/EmailProvider;->whereWithId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v9, v10, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v7

    .line 1246
    goto/16 :goto_1

    .line 1252
    :sswitch_6
    sget-object v9, Lcom/android/email/provider/EmailProvider;->TABLE_NAMES:[Ljava/lang/String;

    aget-object v9, v9, v8

    invoke-virtual {v2, v9, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v7

    .line 1253
    goto/16 :goto_1

    .line 1259
    :sswitch_7
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v9

    const/4 v10, 0x1

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    move-object v0, v9

    check-cast v0, Ljava/lang/String;

    move-object v4, v0

    .line 1260
    const v9, 0x8002

    if-ne v5, v9, :cond_4

    .line 1262
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "insert or replace into FollowupFlag_Deletes select * from FollowupFlag where _id="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1263
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "delete from FollowupFlag_Updates where _id="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1266
    :cond_4
    sget-object v9, Lcom/android/email/provider/EmailProvider;->TABLE_NAMES:[Ljava/lang/String;

    aget-object v9, v9, v8

    invoke-direct {p0, v4, p2}, Lcom/android/email/provider/EmailProvider;->whereWithId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v9, v10, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v7

    .line 1267
    goto/16 :goto_1

    .line 1279
    :cond_5
    const-string v9, "delete from Body where messageKey in (select messageKey from Body except select _id from Message)"

    invoke-virtual {v2, v9}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_2

    .line 1178
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x2 -> :sswitch_0
        0x1000 -> :sswitch_0
        0x1002 -> :sswitch_0
        0x2000 -> :sswitch_0
        0x2001 -> :sswitch_0
        0x2002 -> :sswitch_0
    .end sparse-switch

    .line 1200
    :sswitch_data_1
    .sparse-switch
        0x0 -> :sswitch_3
        0x2 -> :sswitch_1
        0x1000 -> :sswitch_3
        0x1002 -> :sswitch_1
        0x2000 -> :sswitch_3
        0x2001 -> :sswitch_1
        0x2002 -> :sswitch_1
        0x3000 -> :sswitch_3
        0x3002 -> :sswitch_1
        0x3003 -> :sswitch_2
        0x4000 -> :sswitch_3
        0x4001 -> :sswitch_1
        0x5000 -> :sswitch_3
        0x5001 -> :sswitch_1
        0x6000 -> :sswitch_3
        0x6001 -> :sswitch_1
        0x7000 -> :sswitch_4
        0x7001 -> :sswitch_5
        0x8000 -> :sswitch_6
        0x8001 -> :sswitch_7
        0x8002 -> :sswitch_7
        0x9000 -> :sswitch_6
        0x9001 -> :sswitch_7
        0xa000 -> :sswitch_6
        0xa001 -> :sswitch_7
        0xb000 -> :sswitch_3
        0xb001 -> :sswitch_1
    .end sparse-switch
.end method

.method public declared-synchronized getDatabase(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;
    .locals 7
    .parameter "context"

    .prologue
    .line 766
    monitor-enter p0

    :try_start_0
    iget-object v4, p0, Lcom/android/email/provider/EmailProvider;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/email/provider/EmailProvider;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 767
    iget-object v4, p0, Lcom/android/email/provider/EmailProvider;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 798
    :goto_0
    monitor-exit p0

    return-object v4

    .line 769
    :cond_0
    :try_start_1
    iget-object v4, p0, Lcom/android/email/provider/EmailProvider;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v4, :cond_1

    .line 770
    const-string v4, "HTHLOG"

    const-string v5, "############# mDatabase is closed! ##############"

    invoke-static {v4, v5}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 775
    :cond_1
    invoke-virtual {p0}, Lcom/android/email/provider/EmailProvider;->checkDatabases()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 777
    :try_start_2
    new-instance v3, Lcom/android/email/provider/EmailProvider$DatabaseHelper;

    const-string v4, "EmailProvider.db"

    invoke-direct {v3, p0, p1, v4}, Lcom/android/email/provider/EmailProvider$DatabaseHelper;-><init>(Lcom/android/email/provider/EmailProvider;Landroid/content/Context;Ljava/lang/String;)V

    .line 778
    .local v3, helper:Lcom/android/email/provider/EmailProvider$DatabaseHelper;
    invoke-virtual {v3}, Lcom/android/email/provider/EmailProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    iput-object v4, p0, Lcom/android/email/provider/EmailProvider;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_0

    .line 783
    .end local v3           #helper:Lcom/android/email/provider/EmailProvider$DatabaseHelper;
    :goto_1
    :try_start_3
    iget-object v4, p0, Lcom/android/email/provider/EmailProvider;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v4, :cond_2

    .line 784
    iget-object v4, p0, Lcom/android/email/provider/EmailProvider;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->setLockingEnabled(Z)V

    .line 785
    new-instance v1, Lcom/android/email/provider/EmailProvider$BodyDatabaseHelper;

    const-string v4, "EmailProviderBody.db"

    invoke-direct {v1, p0, p1, v4}, Lcom/android/email/provider/EmailProvider$BodyDatabaseHelper;-><init>(Lcom/android/email/provider/EmailProvider;Landroid/content/Context;Ljava/lang/String;)V

    .line 786
    .local v1, bodyHelper:Lcom/android/email/provider/EmailProvider$BodyDatabaseHelper;
    invoke-virtual {v1}, Lcom/android/email/provider/EmailProvider$BodyDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    iput-object v4, p0, Lcom/android/email/provider/EmailProvider;->mBodyDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 787
    iget-object v4, p0, Lcom/android/email/provider/EmailProvider;->mBodyDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v4, :cond_2

    .line 788
    iget-object v4, p0, Lcom/android/email/provider/EmailProvider;->mBodyDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->setLockingEnabled(Z)V

    .line 789
    iget-object v4, p0, Lcom/android/email/provider/EmailProvider;->mBodyDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 790
    .local v0, bodyFileName:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/email/provider/EmailProvider;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "attach \""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\" as BodyDatabase"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 795
    .end local v0           #bodyFileName:Ljava/lang/String;
    .end local v1           #bodyHelper:Lcom/android/email/provider/EmailProvider$BodyDatabaseHelper;
    :cond_2
    iget-object v4, p0, Lcom/android/email/provider/EmailProvider;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "Message_Updates"

    invoke-static {v4, v5}, Lcom/android/email/provider/EmailProvider;->deleteOrphans(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 796
    iget-object v4, p0, Lcom/android/email/provider/EmailProvider;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "Message_Deletes"

    invoke-static {v4, v5}, Lcom/android/email/provider/EmailProvider;->deleteOrphans(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 798
    iget-object v4, p0, Lcom/android/email/provider/EmailProvider;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    goto :goto_0

    .line 779
    :catch_0
    move-exception v4

    move-object v2, v4

    .line 780
    .local v2, e:Landroid/database/SQLException;
    invoke-virtual {v2}, Landroid/database/SQLException;->printStackTrace()V

    .line 781
    const-string v4, "EmailProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "===== EmailProvider, SQLiteDatabase getDatabase occur exception ===== "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/email/Email;->logv(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 766
    .end local v2           #e:Landroid/database/SQLException;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 4
    .parameter "uri"

    .prologue
    const-string v2, "vnd.android.cursor.dir/email-message"

    .line 1298
    sget-object v1, Lcom/android/email/provider/EmailProvider;->sURIMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    .line 1299
    .local v0, match:I
    sparse-switch v0, :sswitch_data_0

    .line 1344
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown URI "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1301
    :sswitch_0
    const-string v1, "vnd.android.cursor.item/email-body"

    .line 1341
    :goto_0
    return-object v1

    .line 1303
    :sswitch_1
    const-string v1, "vnd.android.cursor.dir/email-message"

    move-object v1, v2

    goto :goto_0

    .line 1306
    :sswitch_2
    const-string v1, "vnd.android.cursor.item/email-message"

    goto :goto_0

    .line 1310
    :sswitch_3
    const-string v1, "vnd.android.cursor.dir/email-message"

    move-object v1, v2

    goto :goto_0

    .line 1313
    :sswitch_4
    const-string v1, "vnd.android.cursor.dir/email-mailbox"

    goto :goto_0

    .line 1315
    :sswitch_5
    const-string v1, "vnd.android.cursor.item/email-mailbox"

    goto :goto_0

    .line 1317
    :sswitch_6
    const-string v1, "vnd.android.cursor.dir/email-account"

    goto :goto_0

    .line 1319
    :sswitch_7
    const-string v1, "vnd.android.cursor.item/email-account"

    goto :goto_0

    .line 1322
    :sswitch_8
    const-string v1, "vnd.android.cursor.dir/email-attachment"

    goto :goto_0

    .line 1324
    :sswitch_9
    const-string v1, "vnd.android.cursor.item/email-attachment"

    goto :goto_0

    .line 1326
    :sswitch_a
    const-string v1, "vnd.android.cursor.dir/email-hostauth"

    goto :goto_0

    .line 1328
    :sswitch_b
    const-string v1, "vnd.android.cursor.item/email-hostauth"

    goto :goto_0

    .line 1331
    :sswitch_c
    const-string v1, "vnd.android.cursor.dir/email-policies"

    goto :goto_0

    .line 1333
    :sswitch_d
    const-string v1, "vnd.android.cursor.item/email-policies"

    goto :goto_0

    .line 1338
    :sswitch_e
    const-string v1, "vnd.android.cursor.dir/email-followupflags"

    goto :goto_0

    .line 1341
    :sswitch_f
    const-string v1, "vnd.android.cursor.item/email-followupflags"

    goto :goto_0

    .line 1299
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_6
        0x1 -> :sswitch_4
        0x2 -> :sswitch_7
        0x1000 -> :sswitch_4
        0x1001 -> :sswitch_3
        0x1002 -> :sswitch_5
        0x2000 -> :sswitch_3
        0x2001 -> :sswitch_2
        0x3000 -> :sswitch_8
        0x3002 -> :sswitch_9
        0x3003 -> :sswitch_8
        0x4000 -> :sswitch_a
        0x4001 -> :sswitch_b
        0x5000 -> :sswitch_3
        0x5001 -> :sswitch_2
        0x7000 -> :sswitch_c
        0x7001 -> :sswitch_d
        0x8000 -> :sswitch_e
        0x8001 -> :sswitch_f
        0x9000 -> :sswitch_e
        0x9001 -> :sswitch_f
        0xb000 -> :sswitch_1
        0xb001 -> :sswitch_0
    .end sparse-switch
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 11
    .parameter "uri"
    .parameter "values"

    .prologue
    const-string v8, "Unknown URL "

    const-string v8, "foo"

    .line 1350
    sget-object v8, Lcom/android/email/provider/EmailProvider;->sURIMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v8, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v5

    .line 1351
    .local v5, match:I
    invoke-virtual {p0}, Lcom/android/email/provider/EmailProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1353
    .local v0, context:Landroid/content/Context;
    invoke-virtual {p0, v0}, Lcom/android/email/provider/EmailProvider;->getDatabase(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 1354
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    shr-int/lit8 v7, v5, 0xc

    .line 1361
    .local v7, table:I
    const/4 v6, 0x0

    .line 1364
    .local v6, resultUri:Landroid/net/Uri;
    sparse-switch v5, :sswitch_data_0

    .line 1426
    :try_start_0
    new-instance v8, Ljava/lang/IllegalArgumentException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unknown URL "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1428
    :catch_0
    move-exception v8

    move-object v2, v8

    .line 1429
    .local v2, e:Landroid/database/sqlite/SQLiteException;
    invoke-virtual {p0}, Lcom/android/email/provider/EmailProvider;->checkDatabases()V

    .line 1430
    throw v2

    .line 1373
    .end local v2           #e:Landroid/database/sqlite/SQLiteException;
    :sswitch_0
    :try_start_1
    sget-object v8, Lcom/android/email/provider/EmailProvider;->TABLE_NAMES:[Ljava/lang/String;

    aget-object v8, v8, v7

    const-string v9, "foo"

    invoke-virtual {v1, v8, v9, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v3

    .line 1374
    .local v3, id:J
    invoke-static {p1, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    .line 1379
    const/16 v8, 0x5000

    if-eq v5, v8, :cond_0

    const/16 v8, 0x6000

    if-ne v5, v8, :cond_1

    .line 1380
    :cond_0
    new-instance v8, Ljava/lang/IllegalArgumentException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unknown URL "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 1387
    .end local v3           #id:J
    :sswitch_1
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v8

    const/4 v9, 0x1

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 1388
    .restart local v3       #id:J
    const-string v8, "mailboxKey"

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {p2, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1389
    sget-object v8, Lcom/android/email/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, v8, p2}, Lcom/android/email/provider/EmailProvider;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v6

    .line 1434
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/email/provider/EmailProvider;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, p1, v9}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 1435
    return-object v6

    .line 1393
    .end local v3           #id:J
    :sswitch_2
    :try_start_2
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v8

    const/4 v9, 0x1

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 1394
    .restart local v3       #id:J
    const-string v8, "messageKey"

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {p2, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1395
    sget-object v8, Lcom/android/email/provider/EmailContent$Attachment;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, v8, p2}, Lcom/android/email/provider/EmailProvider;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v6

    .line 1396
    goto :goto_0

    .line 1399
    .end local v3           #id:J
    :sswitch_3
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v8

    const/4 v9, 0x1

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 1400
    .restart local v3       #id:J
    const-string v8, "accountKey"

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {p2, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1401
    sget-object v8, Lcom/android/email/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, v8, p2}, Lcom/android/email/provider/EmailProvider;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v6

    .line 1402
    goto :goto_0

    .line 1404
    .end local v3           #id:J
    :sswitch_4
    sget-object v8, Lcom/android/email/provider/EmailProvider;->TABLE_NAMES:[Ljava/lang/String;

    aget-object v8, v8, v7

    const-string v9, "foo"

    invoke-virtual {v1, v8, v9, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v3

    .line 1405
    .restart local v3       #id:J
    sget-object v8, Lcom/android/email/provider/EmailContent$Attachment;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v8, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    .line 1406
    goto :goto_0

    .line 1410
    .end local v3           #id:J
    :sswitch_5
    sget-object v8, Lcom/android/email/provider/EmailProvider;->TABLE_NAMES:[Ljava/lang/String;

    aget-object v8, v8, v7

    const-string v9, "foo"

    invoke-virtual {v1, v8, v9, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v3

    .line 1411
    .restart local v3       #id:J
    sget-object v8, Lcom/android/email/provider/EmailContent$Policies;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v8, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    .line 1412
    goto :goto_0

    .line 1416
    .end local v3           #id:J
    :sswitch_6
    sget-object v8, Lcom/android/email/provider/EmailProvider;->TABLE_NAMES:[Ljava/lang/String;

    aget-object v8, v8, v7

    const-string v9, "foo"

    invoke-virtual {v1, v8, v9, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v3

    .line 1417
    .restart local v3       #id:J
    invoke-static {p1, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    .line 1418
    goto :goto_0

    .line 1420
    .end local v3           #id:J
    :sswitch_7
    sget-object v8, Lcom/android/email/provider/EmailProvider;->TABLE_NAMES:[Ljava/lang/String;

    aget-object v8, v8, v7

    const-string v9, "foo"

    invoke-virtual {v1, v8, v9, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v3

    .line 1421
    .restart local v3       #id:J
    sget-object v8, Lcom/android/email/provider/EmailContent$FollowupFlag;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v8, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v6

    .line 1422
    goto/16 :goto_0

    .line 1364
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x2 -> :sswitch_3
        0x1000 -> :sswitch_0
        0x1002 -> :sswitch_1
        0x2000 -> :sswitch_0
        0x2001 -> :sswitch_2
        0x3000 -> :sswitch_0
        0x3003 -> :sswitch_4
        0x4000 -> :sswitch_0
        0x5000 -> :sswitch_0
        0x6000 -> :sswitch_0
        0x7000 -> :sswitch_5
        0x8000 -> :sswitch_6
        0x8001 -> :sswitch_7
        0xb000 -> :sswitch_0
    .end sparse-switch
.end method

.method public onCreate()Z
    .locals 1

    .prologue
    .line 1440
    invoke-virtual {p0}, Lcom/android/email/provider/EmailProvider;->checkDatabases()V

    .line 1441
    const/4 v0, 0x0

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 18
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    .line 1475
    const/4 v11, 0x0

    .line 1476
    .local v11, c:Landroid/database/Cursor;
    sget-object v16, Lcom/android/email/provider/EmailContent;->CONTENT_URI:Landroid/net/Uri;

    .line 1477
    .local v16, notificationUri:Landroid/net/Uri;
    sget-object v4, Lcom/android/email/provider/EmailProvider;->sURIMatcher:Landroid/content/UriMatcher;

    move-object v0, v4

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v15

    .line 1478
    .local v15, match:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/provider/EmailProvider;->getContext()Landroid/content/Context;

    move-result-object v12

    .line 1480
    .local v12, context:Landroid/content/Context;
    move-object/from16 v0, p0

    move-object v1, v12

    invoke-virtual {v0, v1}, Lcom/android/email/provider/EmailProvider;->getDatabase(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 1481
    .local v3, db:Landroid/database/sqlite/SQLiteDatabase;
    shr-int/lit8 v17, v15, 0xc

    .line 1489
    .local v17, table:I
    sparse-switch v15, :sswitch_data_0

    .line 1570
    :try_start_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown URI "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1572
    :catch_0
    move-exception v4

    move-object v13, v4

    .line 1573
    .local v13, e:Landroid/database/sqlite/SQLiteException;
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/provider/EmailProvider;->checkDatabases()V

    .line 1574
    throw v13

    .line 1507
    .end local v13           #e:Landroid/database/sqlite/SQLiteException;
    :sswitch_0
    :try_start_1
    sget-object v4, Lcom/android/email/provider/EmailProvider;->TABLE_NAMES:[Ljava/lang/String;

    aget-object v4, v4, v17

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v10, p5

    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v11

    .line 1577
    :goto_0
    if-eqz v11, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/android/email/provider/EmailProvider;->isTemporary()Z

    move-result v4

    if-nez v4, :cond_0

    .line 1578
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/provider/EmailProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    move-object v0, v11

    move-object v1, v4

    move-object/from16 v2, v16

    invoke-interface {v0, v1, v2}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 1580
    :cond_0
    return-object v11

    .line 1509
    :catch_1
    move-exception v4

    move-object v13, v4

    .line 1510
    .local v13, e:Ljava/lang/IllegalStateException;
    :try_start_2
    const-string v4, "Email"

    const-string v5, "========== IllegalStateException occur POLICIES ~ MEETING_INVITATION=========="

    invoke-static {v4, v5}, Lcom/android/email/Email;->logv(Ljava/lang/String;Ljava/lang/String;)V

    .line 1511
    const-string v4, "Email"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "========== IllegalStateException occur TABLE_NAMES[table] = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/android/email/provider/EmailProvider;->TABLE_NAMES:[Ljava/lang/String;

    aget-object v6, v6, v17

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/email/Email;->logv(Ljava/lang/String;Ljava/lang/String;)V

    .line 1512
    if-eqz v11, :cond_1

    invoke-interface {v11}, Landroid/database/Cursor;->isClosed()Z

    move-result v4

    if-nez v4, :cond_1

    .line 1513
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 1514
    const/4 v11, 0x0

    .line 1515
    const-string v4, "Email"

    const-string v5, "========== IllegalStateException occur cursor closed =========="

    invoke-static {v4, v5}, Lcom/android/email/Email;->logv(Ljava/lang/String;Ljava/lang/String;)V

    .line 1517
    :cond_1
    invoke-virtual {v13}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0

    .line 1536
    .end local v13           #e:Ljava/lang/IllegalStateException;
    :sswitch_1
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1538
    .local v14, id:Ljava/lang/String;
    :try_start_3
    sget-object v4, Lcom/android/email/provider/EmailProvider;->TABLE_NAMES:[Ljava/lang/String;

    aget-object v4, v4, v17

    move-object/from16 v0, p0

    move-object v1, v14

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcom/android/email/provider/EmailProvider;->whereWithId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v5, p2

    move-object/from16 v7, p4

    move-object/from16 v10, p5

    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_0

    move-result-object v11

    goto :goto_0

    .line 1540
    :catch_2
    move-exception v4

    move-object v13, v4

    .line 1541
    .restart local v13       #e:Ljava/lang/IllegalStateException;
    :try_start_4
    const-string v4, "Email"

    const-string v5, "========== IllegalStateException occur POLICIES_ID~MEETING_INVITATION_ID=========="

    invoke-static {v4, v5}, Lcom/android/email/Email;->logv(Ljava/lang/String;Ljava/lang/String;)V

    .line 1542
    const-string v4, "Email"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "========== IllegalStateException occur TABLE_NAMES[table] = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/android/email/provider/EmailProvider;->TABLE_NAMES:[Ljava/lang/String;

    aget-object v6, v6, v17

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/email/Email;->logv(Ljava/lang/String;Ljava/lang/String;)V

    .line 1543
    if-eqz v11, :cond_2

    invoke-interface {v11}, Landroid/database/Cursor;->isClosed()Z

    move-result v4

    if-nez v4, :cond_2

    .line 1544
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 1545
    const/4 v11, 0x0

    .line 1546
    const-string v4, "Email"

    const-string v5, "========== IllegalStateException occur cursor closed =========="

    invoke-static {v4, v5}, Lcom/android/email/Email;->logv(Ljava/lang/String;Ljava/lang/String;)V

    .line 1548
    :cond_2
    invoke-virtual {v13}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto/16 :goto_0

    .line 1553
    .end local v13           #e:Ljava/lang/IllegalStateException;
    .end local v14           #id:Ljava/lang/String;
    :sswitch_2
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x2

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_0

    .line 1555
    .restart local v14       #id:Ljava/lang/String;
    :try_start_5
    const-string v4, "Attachment"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "messageKey="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object v1, v5

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcom/android/email/provider/EmailProvider;->whereWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v5, p2

    move-object/from16 v7, p4

    move-object/from16 v10, p5

    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_5
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_5} :catch_0

    move-result-object v11

    goto/16 :goto_0

    .line 1558
    :catch_3
    move-exception v4

    move-object v13, v4

    .line 1559
    .restart local v13       #e:Ljava/lang/IllegalStateException;
    :try_start_6
    const-string v4, "Email"

    const-string v5, "========== IllegalStateException occur ATTACHMENTS_MESSAGE_ID=========="

    invoke-static {v4, v5}, Lcom/android/email/Email;->logv(Ljava/lang/String;Ljava/lang/String;)V

    .line 1560
    const-string v4, "Email"

    const-string v5, "========== IllegalStateException occur Attachment.TABLE_NAME = Attachment"

    invoke-static {v4, v5}, Lcom/android/email/Email;->logv(Ljava/lang/String;Ljava/lang/String;)V

    .line 1561
    if-eqz v11, :cond_3

    invoke-interface {v11}, Landroid/database/Cursor;->isClosed()Z

    move-result v4

    if-nez v4, :cond_3

    .line 1562
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 1563
    const/4 v11, 0x0

    .line 1564
    const-string v4, "Email"

    const-string v5, "========== IllegalStateException occur cursor closed =========="

    invoke-static {v4, v5}, Lcom/android/email/Email;->logv(Ljava/lang/String;Ljava/lang/String;)V

    .line 1566
    :cond_3
    invoke-virtual {v13}, Ljava/lang/IllegalStateException;->printStackTrace()V
    :try_end_6
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_6 .. :try_end_6} :catch_0

    goto/16 :goto_0

    .line 1489
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x2 -> :sswitch_1
        0x1000 -> :sswitch_0
        0x1002 -> :sswitch_1
        0x2000 -> :sswitch_0
        0x2001 -> :sswitch_1
        0x3000 -> :sswitch_0
        0x3002 -> :sswitch_1
        0x3003 -> :sswitch_2
        0x4000 -> :sswitch_0
        0x4001 -> :sswitch_1
        0x5000 -> :sswitch_0
        0x5001 -> :sswitch_1
        0x6000 -> :sswitch_0
        0x6001 -> :sswitch_1
        0x7000 -> :sswitch_0
        0x7001 -> :sswitch_1
        0x8000 -> :sswitch_0
        0x8001 -> :sswitch_1
        0x9000 -> :sswitch_0
        0x9001 -> :sswitch_1
        0xa000 -> :sswitch_0
        0xa001 -> :sswitch_1
        0xb000 -> :sswitch_0
        0xb001 -> :sswitch_1
    .end sparse-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 27
    .parameter "uri"
    .parameter "values"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 1619
    sget-object v6, Lcom/android/email/provider/EmailProvider;->sURIMatcher:Landroid/content/UriMatcher;

    move-object v0, v6

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v22

    .line 1620
    .local v22, match:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/provider/EmailProvider;->getContext()Landroid/content/Context;

    move-result-object v16

    .line 1622
    .local v16, context:Landroid/content/Context;
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/email/provider/EmailProvider;->getDatabase(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    .line 1623
    .local v5, db:Landroid/database/sqlite/SQLiteDatabase;
    shr-int/lit8 v24, v22, 0xc

    .line 1624
    .local v24, table:I
    const/16 v23, 0x0

    .line 1632
    .local v23, result:I
    const/16 v6, 0x1002

    move/from16 v0, v22

    move v1, v6

    if-eq v0, v1, :cond_0

    const/16 v6, 0x1000

    move/from16 v0, v22

    move v1, v6

    if-ne v0, v1, :cond_1

    .line 1633
    :cond_0
    const-string v6, "unreadCount"

    move-object/from16 v0, p2

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1637
    :cond_1
    sget-object v6, Lcom/android/email/provider/EmailProvider;->INTEGRITY_CHECK_URI:Landroid/net/Uri;

    move-object/from16 v0, p1

    move-object v1, v6

    if-ne v0, v1, :cond_2

    .line 1638
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/provider/EmailProvider;->checkDatabases()V

    .line 1639
    const/4 v6, 0x0

    .line 1742
    :goto_0
    return v6

    .line 1644
    :cond_2
    sparse-switch v22, :sswitch_data_0

    .line 1732
    :try_start_0
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unknown URI "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v0, v7

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1734
    :catch_0
    move-exception v6

    move-object/from16 v18, v6

    .line 1735
    .local v18, e:Landroid/database/sqlite/SQLiteException;
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/provider/EmailProvider;->checkDatabases()V

    .line 1736
    throw v18

    .line 1647
    .end local v18           #e:Landroid/database/sqlite/SQLiteException;
    :sswitch_0
    :try_start_1
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1648
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v6

    const/4 v7, 0x1

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/String;

    .line 1649
    .local v21, id:Ljava/lang/String;
    const-string v6, "field"

    move-object/from16 v0, p2

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 1650
    .local v20, field:Ljava/lang/String;
    const-string v6, "add"

    move-object/from16 v0, p2

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v13

    .line 1651
    .local v13, add:Ljava/lang/Long;
    if-eqz v20, :cond_3

    if-nez v13, :cond_4

    .line 1652
    :cond_3
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "No field/add specified "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v0, v7

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1737
    .end local v13           #add:Ljava/lang/Long;
    .end local v20           #field:Ljava/lang/String;
    .end local v21           #id:Ljava/lang/String;
    :catch_1
    move-exception v6

    move-object/from16 v19, v6

    .line 1738
    .local v19, ex:Ljava/lang/RuntimeException;
    const-string v6, "Email"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error while sync message in update()"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {v19 .. v19}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 1741
    .end local v19           #ex:Ljava/lang/RuntimeException;
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/provider/EmailProvider;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const/4 v7, 0x0

    move-object v0, v6

    move-object/from16 v1, p1

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    move/from16 v6, v23

    .line 1742
    goto/16 :goto_0

    .line 1654
    .restart local v13       #add:Ljava/lang/Long;
    .restart local v20       #field:Ljava/lang/String;
    .restart local v21       #id:Ljava/lang/String;
    :cond_4
    :try_start_2
    sget-object v6, Lcom/android/email/provider/EmailProvider;->TABLE_NAMES:[Ljava/lang/String;

    aget-object v6, v6, v24

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "_id"

    aput-object v9, v7, v8

    const/4 v8, 0x1

    aput-object v20, v7, v8

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcom/android/email/provider/EmailProvider;->whereWithId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v9, p4

    invoke-virtual/range {v5 .. v12}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v15

    .line 1659
    .local v15, c:Landroid/database/Cursor;
    const/16 v23, 0x0

    .line 1660
    :try_start_3
    new-instance v17, Landroid/content/ContentValues;

    invoke-direct/range {v17 .. v17}, Landroid/content/ContentValues;-><init>()V

    .line 1661
    .local v17, cv:Landroid/content/ContentValues;
    const/4 v6, 0x1

    new-array v14, v6, [Ljava/lang/String;

    .line 1662
    .local v14, bind:[Ljava/lang/String;
    :goto_2
    invoke-interface {v15}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1663
    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface {v15, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v14, v6

    .line 1664
    const/4 v6, 0x1

    invoke-interface {v15, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    add-long v25, v6, v8

    .line 1665
    .local v25, value:J
    invoke-static/range {v25 .. v26}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1666
    sget-object v6, Lcom/android/email/provider/EmailProvider;->TABLE_NAMES:[Ljava/lang/String;

    aget-object v6, v6, v24

    const-string v7, "_id=?"

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v17

    move-object v3, v7

    move-object v4, v14

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v23

    .line 1667
    goto :goto_2

    .line 1669
    .end local v25           #value:J
    :cond_5
    :try_start_4
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 1671
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 1672
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_1

    .line 1669
    .end local v14           #bind:[Ljava/lang/String;
    .end local v17           #cv:Landroid/content/ContentValues;
    :catchall_0
    move-exception v6

    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    throw v6

    .line 1685
    .end local v13           #add:Ljava/lang/Long;
    .end local v15           #c:Landroid/database/Cursor;
    .end local v20           #field:Ljava/lang/String;
    .end local v21           #id:Ljava/lang/String;
    :sswitch_1
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v6

    const/4 v7, 0x1

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/String;

    .line 1686
    .restart local v21       #id:Ljava/lang/String;
    const/16 v6, 0x2002

    move/from16 v0, v22

    move v1, v6

    if-ne v0, v1, :cond_7

    .line 1691
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "insert or ignore into Message_Updates select * from Message where _id="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1695
    :cond_6
    :goto_3
    sget-object v6, Lcom/android/email/provider/EmailProvider;->TABLE_NAMES:[Ljava/lang/String;

    aget-object v6, v6, v24

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcom/android/email/provider/EmailProvider;->whereWithId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, p2

    move-object v3, v7

    move-object/from16 v4, p4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v23

    .line 1698
    goto/16 :goto_1

    .line 1692
    :cond_7
    const/16 v6, 0x2001

    move/from16 v0, v22

    move v1, v6

    if-ne v0, v1, :cond_6

    .line 1693
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "delete from Message_Updates where _id="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto :goto_3

    .line 1709
    .end local v21           #id:Ljava/lang/String;
    :sswitch_2
    sget-object v6, Lcom/android/email/provider/EmailProvider;->TABLE_NAMES:[Ljava/lang/String;

    aget-object v6, v6, v24

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v23

    .line 1710
    goto/16 :goto_1

    .line 1714
    :sswitch_3
    sget-object v6, Lcom/android/email/provider/EmailProvider;->TABLE_NAMES:[Ljava/lang/String;

    aget-object v6, v6, v24

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v23

    .line 1715
    goto/16 :goto_1

    .line 1719
    :sswitch_4
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v6

    const/4 v7, 0x1

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/String;

    .line 1720
    .restart local v21       #id:Ljava/lang/String;
    const v6, 0x8002

    move/from16 v0, v22

    move v1, v6

    if-ne v0, v1, :cond_9

    .line 1722
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "insert or ignore into FollowupFlag_Updates select * from FollowupFlag where _id="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1727
    :cond_8
    :goto_4
    sget-object v6, Lcom/android/email/provider/EmailProvider;->TABLE_NAMES:[Ljava/lang/String;

    aget-object v6, v6, v24

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "_id="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v0, v7

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    move-object v1, v7

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcom/android/email/provider/EmailProvider;->whereWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, p2

    move-object v3, v7

    move-object/from16 v4, p4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v23

    .line 1729
    goto/16 :goto_1

    .line 1723
    :cond_9
    const v6, 0x8001

    move/from16 v0, v22

    move v1, v6

    if-ne v0, v1, :cond_8

    .line 1724
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "delete from FollowupFlag_Updates where _id="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_4

    .line 1644
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_2
        0x2 -> :sswitch_1
        0x3 -> :sswitch_0
        0x1000 -> :sswitch_2
        0x1002 -> :sswitch_1
        0x1003 -> :sswitch_0
        0x2000 -> :sswitch_2
        0x2001 -> :sswitch_1
        0x2002 -> :sswitch_1
        0x3000 -> :sswitch_2
        0x3002 -> :sswitch_1
        0x4000 -> :sswitch_2
        0x4001 -> :sswitch_1
        0x5000 -> :sswitch_2
        0x5001 -> :sswitch_1
        0x7000 -> :sswitch_2
        0x7001 -> :sswitch_1
        0x8000 -> :sswitch_3
        0x8001 -> :sswitch_4
        0x8002 -> :sswitch_4
        0x9000 -> :sswitch_3
        0x9001 -> :sswitch_4
        0xb000 -> :sswitch_2
        0xb001 -> :sswitch_1
    .end sparse-switch
.end method
