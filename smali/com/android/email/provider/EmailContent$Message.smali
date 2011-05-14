.class public final Lcom/android/email/provider/EmailContent$Message;
.super Lcom/android/email/provider/EmailContent;
.source "EmailContent.java"

# interfaces
.implements Lcom/android/email/provider/EmailContent$SyncColumns;
.implements Lcom/android/email/provider/EmailContent$MessageColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/provider/EmailContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Message"
.end annotation


# static fields
.field public static final CONTENT_ACCOUNT_KEY_COLUMN:I = 0xd

.field public static final CONTENT_BCC_LIST_COLUMN:I = 0x11

.field public static final CONTENT_CC_LIST_COLUMN:I = 0x10

.field public static final CONTENT_CLIENT_ID_COLUMN:I = 0xa

.field public static final CONTENT_DISPLAY_NAME_COLUMN:I = 0x1

.field public static final CONTENT_FLAGS_COLUMN:I = 0x8

.field public static final CONTENT_FLAG_ATTACHMENT_COLUMN:I = 0x7

.field public static final CONTENT_FLAG_FAVORITE_COLUMN:I = 0x6

.field public static final CONTENT_FLAG_LOADED_COLUMN:I = 0x5

.field public static final CONTENT_FLAG_READ_COLUMN:I = 0x4

.field public static final CONTENT_FLAG_STATUS_COLUMN:I = 0x17

.field public static final CONTENT_FROM_LIST_COLUMN:I = 0xe

.field public static final CONTENT_ID_COLUMN:I = 0x0

.field public static final CONTENT_IMPORTANCE_COLUMN:I = 0x16

.field public static final CONTENT_MAILBOX_KEY_COLUMN:I = 0xc

.field public static final CONTENT_MEETING_INFO_COLUMN:I = 0x14

.field public static final CONTENT_MESSAGE_ID_COLUMN:I = 0xb

.field public static final CONTENT_PROJECTION:[Ljava/lang/String; = null

.field public static final CONTENT_REPLY_TO_COLUMN:I = 0x12

.field public static final CONTENT_SERVER_ID_COLUMN:I = 0x9

.field public static final CONTENT_SERVER_TIMESTAMP_COLUMN:I = 0x13

.field public static final CONTENT_SUBJECT_COLUMN:I = 0x3

.field public static final CONTENT_THREAD_NAME_COLUMN:I = 0x15

.field public static final CONTENT_TIMESTAMP_COLUMN:I = 0x2

.field public static final CONTENT_TO_LIST_COLUMN:I = 0xf

.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final DELETED_CONTENT_URI:Landroid/net/Uri; = null

.field public static final DELETED_TABLE_NAME:Ljava/lang/String; = "Message_Deletes"

.field public static final FLAG_INCOMING_MEETING_CANCEL:I = 0x8

.field public static final FLAG_INCOMING_MEETING_INVITE:I = 0x4

.field public static final FLAG_INCOMING_MEETING_MASK:I = 0xc

.field public static final FLAG_LOADED_COMPLETE:I = 0x1

.field public static final FLAG_LOADED_DELETED:I = 0x3

.field public static final FLAG_LOADED_PARTIAL:I = 0x2

.field public static final FLAG_LOADED_UNLOADED:I = 0x0

.field public static final FLAG_OUTGOING_MEETING_ACCEPT:I = 0x40

.field public static final FLAG_OUTGOING_MEETING_CANCEL:I = 0x20

.field public static final FLAG_OUTGOING_MEETING_DECLINE:I = 0x80

.field public static final FLAG_OUTGOING_MEETING_INVITE:I = 0x10

.field public static final FLAG_OUTGOING_MEETING_MASK:I = 0x1f0

.field public static final FLAG_OUTGOING_MEETING_REQUEST_MASK:I = 0x30

.field public static final FLAG_OUTGOING_MEETING_TENTATIVE:I = 0x100

.field public static final FLAG_TRUNCATED_NO:B = 0x0t

.field public static final FLAG_TRUNCATED_YES:B = 0x1t

.field public static final FLAG_TYPE_FORWARD:I = 0x2

.field public static final FLAG_TYPE_MASK:I = 0x3

.field public static final FLAG_TYPE_ORIGINAL:I = 0x0

.field public static final FLAG_TYPE_REPLY:I = 0x1

.field public static final ID_COLUMNS_ID_COLUMN:I = 0x0

.field public static final ID_COLUMNS_PROJECTION:[Ljava/lang/String; = null

.field public static final ID_COLUMNS_SYNC_SERVER_ID:I = 0x1

.field public static final ID_COLUMN_PROJECTION:[Ljava/lang/String; = null

.field public static final ID_MAILBOX_COLUMN_ID:I = 0x0

.field public static final ID_MAILBOX_COLUMN_MAILBOX_KEY:I = 0x1

.field public static final ID_MAILBOX_PROJECTION:[Ljava/lang/String; = null

.field public static final KEY_TIMESTAMP_DESC:Ljava/lang/String; = "timeStamp desc"

.field public static final LIST_ACCOUNT_KEY_COLUMN:I = 0xa

.field public static final LIST_ATTACHMENT_COLUMN:I = 0x7

.field public static final LIST_DISPLAY_NAME_COLUMN:I = 0x1

.field public static final LIST_FAVORITE_COLUMN:I = 0x6

.field public static final LIST_FLAGS_COLUMN:I = 0x8

.field public static final LIST_FLAG_STATUS_COLUMN:I = 0xd

.field public static final LIST_ID_COLUMN:I = 0x0

.field public static final LIST_IMPORTANCE_COLUMN:I = 0xc

.field public static final LIST_LOADED_COLUMN:I = 0x5

.field public static final LIST_MAILBOX_KEY_COLUMN:I = 0x9

.field public static final LIST_PROJECTION:[Ljava/lang/String; = null

.field public static final LIST_READ_COLUMN:I = 0x4

.field public static final LIST_SERVER_ID_COLUMN:I = 0xb

.field public static final LIST_SUBJECT_COLUMN:I = 0x3

.field public static final LIST_TIMESTAMP_COLUMN:I = 0x2

.field public static final READ:I = 0x1

.field public static final SYNCED_CONTENT_URI:Landroid/net/Uri; = null

.field public static final TABLE_NAME:Ljava/lang/String; = "Message"

.field public static final UNREAD:I = 0x0

.field public static final UPDATED_CONTENT_URI:Landroid/net/Uri; = null

.field public static final UPDATED_TABLE_NAME:Ljava/lang/String; = "Message_Updates"


# instance fields
.field public mAccountKey:J

.field public transient mAttachments:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/email/provider/EmailContent$Attachment;",
            ">;"
        }
    .end annotation
.end field

.field public mBcc:Ljava/lang/String;

.field public mCc:Ljava/lang/String;

.field public mClientId:Ljava/lang/String;

.field public mDisplayName:Ljava/lang/String;

.field public mFlagAttachment:Z

.field public mFlagFavorite:Z

.field public mFlagLoaded:I

.field public mFlagRead:Z

.field public mFlagStatus:I

.field public mFlagTruncated:B

.field public mFlags:I

.field public transient mFollowupFlag:Lcom/android/email/provider/EmailContent$FollowupFlag;

.field public mFrom:Ljava/lang/String;

.field public transient mHtml:Ljava/lang/String;

.field public transient mHtmlReply:Ljava/lang/String;

.field public mImportance:I

.field public transient mIntroText:Ljava/lang/String;

.field public mMailboxKey:J

.field public mMeetingInfo:Ljava/lang/String;

.field public mMessageId:Ljava/lang/String;

.field public mReplyTo:Ljava/lang/String;

.field public mServerId:Ljava/lang/String;

.field public mServerTimeStamp:J

.field public transient mSourceKey:J

.field public mSubject:Ljava/lang/String;

.field public transient mText:Ljava/lang/String;

.field public transient mTextReply:Ljava/lang/String;

.field public mThreadName:Ljava/lang/String;

.field public mTimeStamp:J

.field public mTo:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v6, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v7, "mailboxKey"

    const-string v5, "_id"

    .line 483
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/email/provider/EmailContent;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/message"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/email/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    .line 484
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/email/provider/EmailContent;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/syncedMessage"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/email/provider/EmailContent$Message;->SYNCED_CONTENT_URI:Landroid/net/Uri;

    .line 486
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/email/provider/EmailContent;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/deletedMessage"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/email/provider/EmailContent$Message;->DELETED_CONTENT_URI:Landroid/net/Uri;

    .line 488
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/email/provider/EmailContent;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/updatedMessage"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/email/provider/EmailContent$Message;->UPDATED_CONTENT_URI:Landroid/net/Uri;

    .line 534
    const/16 v0, 0x18

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v5, v0, v3

    const-string v1, "displayName"

    aput-object v1, v0, v4

    const-string v1, "timeStamp"

    aput-object v1, v0, v6

    const/4 v1, 0x3

    const-string v2, "subject"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "flagRead"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "flagLoaded"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "flagFavorite"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "flagAttachment"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "flags"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "syncServerId"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "clientId"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "messageId"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "mailboxKey"

    aput-object v7, v0, v1

    const/16 v1, 0xd

    const-string v2, "accountKey"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "fromList"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "toList"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "ccList"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "bccList"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "replyToList"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "syncServerTimeStamp"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "meetingInfo"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "threadName"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "importance"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "flagStatus"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/email/provider/EmailContent$Message;->CONTENT_PROJECTION:[Ljava/lang/String;

    .line 567
    const/16 v0, 0xe

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v5, v0, v3

    const-string v1, "displayName"

    aput-object v1, v0, v4

    const-string v1, "timeStamp"

    aput-object v1, v0, v6

    const/4 v1, 0x3

    const-string v2, "subject"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "flagRead"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "flagLoaded"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "flagFavorite"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "flagAttachment"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "flags"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "mailboxKey"

    aput-object v7, v0, v1

    const/16 v1, 0xa

    const-string v2, "accountKey"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "syncServerId"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "importance"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "flagStatus"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/email/provider/EmailContent$Message;->LIST_PROJECTION:[Ljava/lang/String;

    .line 581
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v5, v0, v3

    const-string v1, "syncServerId"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/email/provider/EmailContent$Message;->ID_COLUMNS_PROJECTION:[Ljava/lang/String;

    .line 587
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v5, v0, v3

    const-string v1, "mailboxKey"

    aput-object v7, v0, v4

    sput-object v0, Lcom/android/email/provider/EmailContent$Message;->ID_MAILBOX_PROJECTION:[Ljava/lang/String;

    .line 591
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v5, v0, v3

    sput-object v0, Lcom/android/email/provider/EmailContent$Message;->ID_COLUMN_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 691
    invoke-direct {p0, v2}, Lcom/android/email/provider/EmailContent;-><init>(Lcom/android/email/provider/EmailContent$1;)V

    .line 597
    iput-boolean v1, p0, Lcom/android/email/provider/EmailContent$Message;->mFlagRead:Z

    .line 598
    iput v1, p0, Lcom/android/email/provider/EmailContent$Message;->mFlagLoaded:I

    .line 601
    iput-byte v1, p0, Lcom/android/email/provider/EmailContent$Message;->mFlagTruncated:B

    .line 603
    iput-boolean v1, p0, Lcom/android/email/provider/EmailContent$Message;->mFlagFavorite:Z

    .line 604
    iput-boolean v1, p0, Lcom/android/email/provider/EmailContent$Message;->mFlagAttachment:Z

    .line 605
    iput v1, p0, Lcom/android/email/provider/EmailContent$Message;->mFlags:I

    .line 627
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/email/provider/EmailContent$Message;->mImportance:I

    .line 631
    iput v1, p0, Lcom/android/email/provider/EmailContent$Message;->mFlagStatus:I

    .line 640
    iput-object v2, p0, Lcom/android/email/provider/EmailContent$Message;->mAttachments:Ljava/util/ArrayList;

    .line 644
    iput-object v2, p0, Lcom/android/email/provider/EmailContent$Message;->mFollowupFlag:Lcom/android/email/provider/EmailContent$FollowupFlag;

    .line 692
    sget-object v0, Lcom/android/email/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/email/provider/EmailContent$Message;->mBaseUri:Landroid/net/Uri;

    .line 693
    return-void
.end method

.method public static restoreMessageAll(Landroid/content/Context;)[Lcom/android/email/provider/EmailContent$Message;
    .locals 10
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    .line 841
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/email/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/email/provider/EmailContent$Message;->CONTENT_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 844
    .local v6, c:Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v7

    .line 845
    .local v7, count:I
    new-array v9, v7, [Lcom/android/email/provider/EmailContent$Message;

    .line 846
    .local v9, messages:[Lcom/android/email/provider/EmailContent$Message;
    const/4 v8, 0x0

    .local v8, i:I
    :goto_0
    if-ge v8, v7, :cond_0

    .line 847
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    .line 848
    new-instance v0, Lcom/android/email/provider/EmailContent$Message;

    invoke-direct {v0}, Lcom/android/email/provider/EmailContent$Message;-><init>()V

    invoke-virtual {v0, v6}, Lcom/android/email/provider/EmailContent$Message;->restore(Landroid/database/Cursor;)Lcom/android/email/provider/EmailContent$Message;

    move-result-object v0

    aput-object v0, v9, v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 846
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 852
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    return-object v9

    .end local v7           #count:I
    .end local v8           #i:I
    .end local v9           #messages:[Lcom/android/email/provider/EmailContent$Message;
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static restoreMessageAllWithThreadName(Landroid/content/Context;Ljava/lang/String;)[Lcom/android/email/provider/EmailContent$Message;
    .locals 10
    .parameter "context"
    .parameter "szQueryName"

    .prologue
    const/4 v4, 0x0

    .line 804
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/email/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/email/provider/EmailContent$Message;->CONTENT_PROJECTION:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "threadName="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 808
    .local v6, c:Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v7

    .line 809
    .local v7, count:I
    new-array v9, v7, [Lcom/android/email/provider/EmailContent$Message;

    .line 810
    .local v9, messages:[Lcom/android/email/provider/EmailContent$Message;
    const/4 v8, 0x0

    .local v8, i:I
    :goto_0
    if-ge v8, v7, :cond_0

    .line 811
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    .line 812
    new-instance v0, Lcom/android/email/provider/EmailContent$Message;

    invoke-direct {v0}, Lcom/android/email/provider/EmailContent$Message;-><init>()V

    invoke-virtual {v0, v6}, Lcom/android/email/provider/EmailContent$Message;->restore(Landroid/database/Cursor;)Lcom/android/email/provider/EmailContent$Message;

    move-result-object v0

    aput-object v0, v9, v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 810
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 816
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    return-object v9

    .end local v7           #count:I
    .end local v8           #i:I
    .end local v9           #messages:[Lcom/android/email/provider/EmailContent$Message;
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static restoreMessageWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Message;
    .locals 7
    .parameter "context"
    .parameter "id"

    .prologue
    const/4 v3, 0x0

    .line 765
    sget-object v0, Lcom/android/email/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 766
    .local v1, u:Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/android/email/provider/EmailContent$Message;->CONTENT_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 770
    .local v6, c:Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 771
    const-class v0, Lcom/android/email/provider/EmailContent$Message;

    invoke-static {v6, v0}, Lcom/android/email/provider/EmailContent$Message;->getContent(Landroid/database/Cursor;Ljava/lang/Class;)Lcom/android/email/provider/EmailContent;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/email/provider/EmailContent$Message;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 776
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move-object v0, p0

    :goto_0
    return-object v0

    .restart local p0
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move-object v0, v3

    goto :goto_0

    .end local p0
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static restoreMessageWithLimit(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)[Lcom/android/email/provider/EmailContent$Message;
    .locals 10
    .parameter "context"
    .parameter "szStartID"
    .parameter "szLimitCount"

    .prologue
    const/4 v4, 0x0

    .line 822
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/email/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/email/provider/EmailContent$Message;->CONTENT_PROJECTION:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id > "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " limit "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 827
    .local v6, c:Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v7

    .line 828
    .local v7, count:I
    new-array v9, v7, [Lcom/android/email/provider/EmailContent$Message;

    .line 829
    .local v9, messages:[Lcom/android/email/provider/EmailContent$Message;
    const/4 v8, 0x0

    .local v8, i:I
    :goto_0
    if-ge v8, v7, :cond_0

    .line 830
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    .line 831
    new-instance v0, Lcom/android/email/provider/EmailContent$Message;

    invoke-direct {v0}, Lcom/android/email/provider/EmailContent$Message;-><init>()V

    invoke-virtual {v0, v6}, Lcom/android/email/provider/EmailContent$Message;->restore(Landroid/database/Cursor;)Lcom/android/email/provider/EmailContent$Message;

    move-result-object v0

    aput-object v0, v9, v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 829
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 835
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    return-object v9

    .end local v7           #count:I
    .end local v8           #i:I
    .end local v9           #messages:[Lcom/android/email/provider/EmailContent$Message;
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static restoreMessageWithThreadName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Lcom/android/email/provider/EmailContent$Message;
    .locals 10
    .parameter "context"
    .parameter "szQueryName"
    .parameter "szStartID"
    .parameter "szLimitCount"

    .prologue
    const/4 v4, 0x0

    .line 785
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/email/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/email/provider/EmailContent$Message;->CONTENT_PROJECTION:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "threadName="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " AND "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "_id"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " > "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " limit "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 790
    .local v6, c:Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v7

    .line 791
    .local v7, count:I
    new-array v9, v7, [Lcom/android/email/provider/EmailContent$Message;

    .line 792
    .local v9, messages:[Lcom/android/email/provider/EmailContent$Message;
    const/4 v8, 0x0

    .local v8, i:I
    :goto_0
    if-ge v8, v7, :cond_0

    .line 793
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    .line 794
    new-instance v0, Lcom/android/email/provider/EmailContent$Message;

    invoke-direct {v0}, Lcom/android/email/provider/EmailContent$Message;-><init>()V

    invoke-virtual {v0, v6}, Lcom/android/email/provider/EmailContent$Message;->restore(Landroid/database/Cursor;)Lcom/android/email/provider/EmailContent$Message;

    move-result-object v0

    aput-object v0, v9, v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 792
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 798
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    return-object v9

    .end local v7           #count:I
    .end local v8           #i:I
    .end local v9           #messages:[Lcom/android/email/provider/EmailContent$Message;
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method


# virtual methods
.method public addSaveOps(Ljava/util/ArrayList;)V
    .locals 11
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const-string v10, "messageKey"

    .line 962
    iget-object v6, p0, Lcom/android/email/provider/EmailContent$Message;->mBaseUri:Landroid/net/Uri;

    invoke-static {v6}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    .line 963
    .local v1, b:Landroid/content/ContentProviderOperation$Builder;
    invoke-virtual {p0}, Lcom/android/email/provider/EmailContent$Message;->toContentValues()Landroid/content/ContentValues;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 966
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 967
    .local v3, cv:Landroid/content/ContentValues;
    iget-object v6, p0, Lcom/android/email/provider/EmailContent$Message;->mText:Ljava/lang/String;

    if-eqz v6, :cond_0

    .line 968
    const-string v6, "textContent"

    iget-object v7, p0, Lcom/android/email/provider/EmailContent$Message;->mText:Ljava/lang/String;

    invoke-virtual {v3, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 970
    :cond_0
    iget-object v6, p0, Lcom/android/email/provider/EmailContent$Message;->mHtml:Ljava/lang/String;

    if-eqz v6, :cond_1

    .line 971
    const-string v6, "htmlContent"

    iget-object v7, p0, Lcom/android/email/provider/EmailContent$Message;->mHtml:Ljava/lang/String;

    invoke-virtual {v3, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 973
    :cond_1
    iget-object v6, p0, Lcom/android/email/provider/EmailContent$Message;->mTextReply:Ljava/lang/String;

    if-eqz v6, :cond_2

    .line 974
    const-string v6, "textReply"

    iget-object v7, p0, Lcom/android/email/provider/EmailContent$Message;->mTextReply:Ljava/lang/String;

    invoke-virtual {v3, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 976
    :cond_2
    iget-object v6, p0, Lcom/android/email/provider/EmailContent$Message;->mHtmlReply:Ljava/lang/String;

    if-eqz v6, :cond_3

    .line 977
    const-string v6, "htmlReply"

    iget-object v7, p0, Lcom/android/email/provider/EmailContent$Message;->mHtmlReply:Ljava/lang/String;

    invoke-virtual {v3, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 979
    :cond_3
    iget-wide v6, p0, Lcom/android/email/provider/EmailContent$Message;->mSourceKey:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-eqz v6, :cond_4

    .line 980
    const-string v6, "sourceMessageKey"

    iget-wide v7, p0, Lcom/android/email/provider/EmailContent$Message;->mSourceKey:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 982
    :cond_4
    iget-object v6, p0, Lcom/android/email/provider/EmailContent$Message;->mIntroText:Ljava/lang/String;

    if-eqz v6, :cond_5

    .line 983
    const-string v6, "introText"

    iget-object v7, p0, Lcom/android/email/provider/EmailContent$Message;->mIntroText:Ljava/lang/String;

    invoke-virtual {v3, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 985
    :cond_5
    sget-object v6, Lcom/android/email/provider/EmailContent$Body;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v6}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    .line 986
    invoke-virtual {v1, v3}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    .line 987
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 988
    .local v2, backValues:Landroid/content/ContentValues;
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v7, 0x1

    sub-int v5, v6, v7

    .line 989
    .local v5, messageBackValue:I
    const-string v6, "messageKey"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v10, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 990
    invoke-virtual {v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReferences(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 993
    iget-object v6, p0, Lcom/android/email/provider/EmailContent$Message;->mAttachments:Ljava/util/ArrayList;

    if-eqz v6, :cond_6

    .line 994
    iget-object v6, p0, Lcom/android/email/provider/EmailContent$Message;->mAttachments:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/provider/EmailContent$Attachment;

    .line 995
    .local v0, att:Lcom/android/email/provider/EmailContent$Attachment;
    sget-object v6, Lcom/android/email/provider/EmailContent$Attachment;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v6}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v6

    invoke-virtual {v0}, Lcom/android/email/provider/EmailContent$Attachment;->toContentValues()Landroid/content/ContentValues;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v6

    const-string v7, "messageKey"

    invoke-virtual {v6, v10, v5}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1002
    .end local v0           #att:Lcom/android/email/provider/EmailContent$Attachment;
    .end local v4           #i$:Ljava/util/Iterator;
    :cond_6
    iget-object v6, p0, Lcom/android/email/provider/EmailContent$Message;->mFollowupFlag:Lcom/android/email/provider/EmailContent$FollowupFlag;

    if-nez v6, :cond_7

    .line 1003
    new-instance v6, Lcom/android/email/provider/EmailContent$FollowupFlag;

    invoke-direct {v6}, Lcom/android/email/provider/EmailContent$FollowupFlag;-><init>()V

    iput-object v6, p0, Lcom/android/email/provider/EmailContent$Message;->mFollowupFlag:Lcom/android/email/provider/EmailContent$FollowupFlag;

    .line 1006
    :cond_7
    sget-object v6, Lcom/android/email/provider/EmailContent$FollowupFlag;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v6}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/email/provider/EmailContent$Message;->mFollowupFlag:Lcom/android/email/provider/EmailContent$FollowupFlag;

    invoke-virtual {v7}, Lcom/android/email/provider/EmailContent$FollowupFlag;->toContentValues()Landroid/content/ContentValues;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v6

    const-string v7, "messageKey"

    invoke-virtual {v6, v10, v5}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1011
    return-void
.end method

.method public getFollowupFlag(Landroid/content/Context;)Lcom/android/email/provider/EmailContent$FollowupFlag;
    .locals 2
    .parameter "context"

    .prologue
    .line 1013
    iget-wide v0, p0, Lcom/android/email/provider/EmailContent$Message;->mId:J

    invoke-static {p1, v0, v1}, Lcom/android/email/provider/EmailContent$FollowupFlag;->restoreFollowupFlagWithEmailId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$FollowupFlag;

    move-result-object v0

    return-object v0
.end method

.method public restore(Landroid/database/Cursor;)Lcom/android/email/provider/EmailContent$Message;
    .locals 5
    .parameter "c"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 860
    sget-object v0, Lcom/android/email/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/email/provider/EmailContent$Message;->mBaseUri:Landroid/net/Uri;

    .line 861
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/email/provider/EmailContent$Message;->mId:J

    .line 862
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/provider/EmailContent$Message;->mDisplayName:Ljava/lang/String;

    .line 863
    const/4 v0, 0x2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/email/provider/EmailContent$Message;->mTimeStamp:J

    .line 864
    const/4 v0, 0x3

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/provider/EmailContent$Message;->mSubject:Ljava/lang/String;

    .line 865
    const/4 v0, 0x4

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, v3, :cond_0

    move v0, v3

    :goto_0
    iput-boolean v0, p0, Lcom/android/email/provider/EmailContent$Message;->mFlagRead:Z

    .line 868
    const/4 v0, 0x5

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/email/provider/EmailContent$Message;->mFlagLoaded:I

    .line 870
    iget v0, p0, Lcom/android/email/provider/EmailContent$Message;->mFlagLoaded:I

    const v1, 0xff00

    and-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x8

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/android/email/provider/EmailContent$Message;->mFlagTruncated:B

    .line 871
    const-string v0, "EmailContent"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "restore() mFlagTruncated = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-byte v2, p0, Lcom/android/email/provider/EmailContent$Message;->mFlagTruncated:B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 872
    iget v0, p0, Lcom/android/email/provider/EmailContent$Message;->mFlagLoaded:I

    and-int/lit16 v0, v0, 0xff

    iput v0, p0, Lcom/android/email/provider/EmailContent$Message;->mFlagLoaded:I

    .line 874
    const/4 v0, 0x6

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, v3, :cond_1

    move v0, v3

    :goto_1
    iput-boolean v0, p0, Lcom/android/email/provider/EmailContent$Message;->mFlagFavorite:Z

    .line 875
    const/4 v0, 0x7

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, v3, :cond_2

    move v0, v3

    :goto_2
    iput-boolean v0, p0, Lcom/android/email/provider/EmailContent$Message;->mFlagAttachment:Z

    .line 876
    const/16 v0, 0x8

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/email/provider/EmailContent$Message;->mFlags:I

    .line 877
    const/16 v0, 0x9

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    .line 878
    const/16 v0, 0x13

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/email/provider/EmailContent$Message;->mServerTimeStamp:J

    .line 879
    const/16 v0, 0xa

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/provider/EmailContent$Message;->mClientId:Ljava/lang/String;

    .line 880
    const/16 v0, 0xb

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/provider/EmailContent$Message;->mMessageId:Ljava/lang/String;

    .line 881
    const/16 v0, 0xc

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/email/provider/EmailContent$Message;->mMailboxKey:J

    .line 882
    const/16 v0, 0xd

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/email/provider/EmailContent$Message;->mAccountKey:J

    .line 883
    const/16 v0, 0xe

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/provider/EmailContent$Message;->mFrom:Ljava/lang/String;

    .line 884
    const/16 v0, 0xf

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/provider/EmailContent$Message;->mTo:Ljava/lang/String;

    .line 885
    const/16 v0, 0x10

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/provider/EmailContent$Message;->mCc:Ljava/lang/String;

    .line 886
    const/16 v0, 0x11

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/provider/EmailContent$Message;->mBcc:Ljava/lang/String;

    .line 887
    const/16 v0, 0x12

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/provider/EmailContent$Message;->mReplyTo:Ljava/lang/String;

    .line 888
    const/16 v0, 0x14

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/provider/EmailContent$Message;->mMeetingInfo:Ljava/lang/String;

    .line 889
    const/16 v0, 0x15

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/provider/EmailContent$Message;->mThreadName:Ljava/lang/String;

    .line 891
    const/16 v0, 0x16

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/email/provider/EmailContent$Message;->mImportance:I

    .line 892
    const/16 v0, 0x17

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/email/provider/EmailContent$Message;->mFlagStatus:I

    .line 893
    return-object p0

    :cond_0
    move v0, v4

    .line 865
    goto/16 :goto_0

    :cond_1
    move v0, v4

    .line 874
    goto/16 :goto_1

    :cond_2
    move v0, v4

    .line 875
    goto/16 :goto_2
.end method

.method public bridge synthetic restore(Landroid/database/Cursor;)Lcom/android/email/provider/EmailContent;
    .locals 1
    .parameter "x0"

    .prologue
    .line 477
    invoke-virtual {p0, p1}, Lcom/android/email/provider/EmailContent$Message;->restore(Landroid/database/Cursor;)Lcom/android/email/provider/EmailContent$Message;

    move-result-object v0

    return-object v0
.end method

.method public save(Landroid/content/Context;)Landroid/net/Uri;
    .locals 12
    .parameter "context"

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 910
    invoke-virtual {p0}, Lcom/android/email/provider/EmailContent$Message;->isSaved()Z

    move-result v8

    if-nez v8, :cond_1

    move v1, v9

    .line 915
    .local v1, doSave:Z
    :goto_0
    iget-object v8, p0, Lcom/android/email/provider/EmailContent$Message;->mText:Ljava/lang/String;

    if-nez v8, :cond_4

    iget-object v8, p0, Lcom/android/email/provider/EmailContent$Message;->mHtml:Ljava/lang/String;

    if-nez v8, :cond_4

    iget-object v8, p0, Lcom/android/email/provider/EmailContent$Message;->mTextReply:Ljava/lang/String;

    if-nez v8, :cond_4

    iget-object v8, p0, Lcom/android/email/provider/EmailContent$Message;->mHtmlReply:Ljava/lang/String;

    if-nez v8, :cond_4

    iget-object v8, p0, Lcom/android/email/provider/EmailContent$Message;->mAttachments:Ljava/util/ArrayList;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/android/email/provider/EmailContent$Message;->mAttachments:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 917
    :cond_0
    if-eqz v1, :cond_2

    .line 918
    invoke-super {p0, p1}, Lcom/android/email/provider/EmailContent;->save(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v8

    .line 957
    :goto_1
    return-object v8

    .end local v1           #doSave:Z
    :cond_1
    move v1, v11

    .line 910
    goto :goto_0

    .line 921
    .restart local v1       #doSave:Z
    :cond_2
    invoke-virtual {p0}, Lcom/android/email/provider/EmailContent$Message;->toContentValues()Landroid/content/ContentValues;

    move-result-object v8

    invoke-virtual {p0, p1, v8}, Lcom/android/email/provider/EmailContent$Message;->update(Landroid/content/Context;Landroid/content/ContentValues;)I

    move-result v8

    if-ne v8, v9, :cond_3

    .line 922
    invoke-virtual {p0}, Lcom/android/email/provider/EmailContent$Message;->getUri()Landroid/net/Uri;

    move-result-object v8

    goto :goto_1

    :cond_3
    move-object v8, v10

    .line 924
    goto :goto_1

    .line 928
    :cond_4
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 929
    .local v3, ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    invoke-virtual {p0, v3}, Lcom/android/email/provider/EmailContent$Message;->addSaveOps(Ljava/util/ArrayList;)V

    .line 931
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "com.android.email.provider"

    invoke-virtual {v8, v9, v3}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object v6

    .line 934
    .local v6, results:[Landroid/content/ContentProviderResult;
    if-eqz v1, :cond_7

    .line 935
    const/4 v8, 0x0

    aget-object v8, v6, v8

    iget-object v7, v8, Landroid/content/ContentProviderResult;->uri:Landroid/net/Uri;

    .line 936
    .local v7, u:Landroid/net/Uri;
    invoke-virtual {v7}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v8

    const/4 v9, 0x1

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    iput-wide v8, p0, Lcom/android/email/provider/EmailContent$Message;->mId:J

    .line 937
    iget-object v8, p0, Lcom/android/email/provider/EmailContent$Message;->mAttachments:Ljava/util/ArrayList;

    if-eqz v8, :cond_6

    .line 938
    const/4 v4, 0x2

    .line 939
    .local v4, resultOffset:I
    iget-object v8, p0, Lcom/android/email/provider/EmailContent$Message;->mAttachments:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    move v5, v4

    .end local v4           #resultOffset:I
    .local v5, resultOffset:I
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/provider/EmailContent$Attachment;

    .line 941
    .local v0, a:Lcom/android/email/provider/EmailContent$Attachment;
    add-int/lit8 v4, v5, 0x1

    .end local v5           #resultOffset:I
    .restart local v4       #resultOffset:I
    aget-object v8, v6, v5

    iget-object v7, v8, Landroid/content/ContentProviderResult;->uri:Landroid/net/Uri;

    .line 942
    if-eqz v7, :cond_5

    .line 943
    invoke-virtual {v7}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v8

    const/4 v9, 0x1

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    iput-wide v8, v0, Lcom/android/email/provider/EmailContent$Attachment;->mId:J

    .line 945
    :cond_5
    iget-wide v8, p0, Lcom/android/email/provider/EmailContent$Message;->mId:J

    iput-wide v8, v0, Lcom/android/email/provider/EmailContent$Attachment;->mMessageKey:J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_0

    move v5, v4

    .end local v4           #resultOffset:I
    .restart local v5       #resultOffset:I
    goto :goto_2

    .end local v0           #a:Lcom/android/email/provider/EmailContent$Attachment;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v5           #resultOffset:I
    :cond_6
    move-object v8, v7

    .line 948
    goto :goto_1

    .end local v7           #u:Landroid/net/Uri;
    :cond_7
    move-object v8, v10

    .line 950
    goto :goto_1

    .line 954
    .end local v6           #results:[Landroid/content/ContentProviderResult;
    :catch_0
    move-exception v8

    :goto_3
    move-object v8, v10

    .line 957
    goto :goto_1

    .line 952
    :catch_1
    move-exception v8

    goto :goto_3
.end method

.method public setFollowupFlag(Landroid/content/Context;Lcom/android/email/provider/EmailContent$FollowupFlag;)Ljava/lang/Boolean;
    .locals 8
    .parameter "context"
    .parameter "ff"

    .prologue
    const/4 v7, 0x0

    .line 1017
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 1019
    .local v0, result:Ljava/lang/Boolean;
    invoke-virtual {p2, p1}, Lcom/android/email/provider/EmailContent$FollowupFlag;->storeFollowupFlag(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v0

    .line 1022
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1023
    sget-object v3, Lcom/android/email/provider/EmailContent$1;->$SwitchMap$com$android$email$provider$EmailContent$FollowupFlag$FollowupFlagStatus:[I

    iget-object v4, p2, Lcom/android/email/provider/EmailContent$FollowupFlag;->Status:Lcom/android/email/provider/EmailContent$FollowupFlag$FollowupFlagStatus;

    invoke-virtual {v4}, Lcom/android/email/provider/EmailContent$FollowupFlag$FollowupFlagStatus;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 1030
    iput-boolean v7, p0, Lcom/android/email/provider/EmailContent$Message;->mFlagFavorite:Z

    .line 1035
    :goto_0
    invoke-virtual {p0}, Lcom/android/email/provider/EmailContent$Message;->isSaved()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1036
    const/4 v1, 0x0

    .line 1037
    .local v1, tmp:I
    iget-object v3, p0, Lcom/android/email/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 1038
    sget-object v3, Lcom/android/email/provider/EmailContent$Message;->SYNCED_CONTENT_URI:Landroid/net/Uri;

    iget-wide v4, p0, Lcom/android/email/provider/EmailContent$Message;->mId:J

    invoke-virtual {p0}, Lcom/android/email/provider/EmailContent$Message;->toContentValues()Landroid/content/ContentValues;

    move-result-object v6

    invoke-static {p1, v3, v4, v5, v6}, Lcom/android/email/provider/EmailContent$Message;->update(Landroid/content/Context;Landroid/net/Uri;JLandroid/content/ContentValues;)I

    move-result v1

    .line 1039
    if-nez v1, :cond_0

    .line 1040
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 1053
    .end local v1           #tmp:I
    :cond_0
    :goto_1
    return-object v0

    .line 1026
    :pswitch_0
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/email/provider/EmailContent$Message;->mFlagFavorite:Z

    goto :goto_0

    .line 1042
    .restart local v1       #tmp:I
    :cond_1
    sget-object v3, Lcom/android/email/provider/EmailContent$Message;->UPDATED_CONTENT_URI:Landroid/net/Uri;

    iget-wide v4, p0, Lcom/android/email/provider/EmailContent$Message;->mId:J

    invoke-virtual {p0}, Lcom/android/email/provider/EmailContent$Message;->toContentValues()Landroid/content/ContentValues;

    move-result-object v6

    invoke-static {p1, v3, v4, v5, v6}, Lcom/android/email/provider/EmailContent$Message;->update(Landroid/content/Context;Landroid/net/Uri;JLandroid/content/ContentValues;)I

    move-result v1

    .line 1043
    if-nez v1, :cond_0

    .line 1044
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_1

    .line 1047
    .end local v1           #tmp:I
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/email/provider/EmailContent$Message;->save(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v2

    .line 1048
    .local v2, uri:Landroid/net/Uri;
    if-nez v2, :cond_0

    .line 1049
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_1

    .line 1023
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public toContentValues()Landroid/content/ContentValues;
    .locals 7

    .prologue
    const-string v6, ""

    .line 697
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 700
    .local v2, values:Landroid/content/ContentValues;
    const-string v3, "displayName"

    iget-object v4, p0, Lcom/android/email/provider/EmailContent$Message;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 701
    const-string v3, "timeStamp"

    iget-wide v4, p0, Lcom/android/email/provider/EmailContent$Message;->mTimeStamp:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 702
    const-string v3, "subject"

    iget-object v4, p0, Lcom/android/email/provider/EmailContent$Message;->mSubject:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 703
    const-string v3, "flagRead"

    iget-boolean v4, p0, Lcom/android/email/provider/EmailContent$Message;->mFlagRead:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 706
    const-string v3, "flagLoaded"

    iget v4, p0, Lcom/android/email/provider/EmailContent$Message;->mFlagLoaded:I

    iget-byte v5, p0, Lcom/android/email/provider/EmailContent$Message;->mFlagTruncated:B

    int-to-short v5, v5

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 708
    const-string v3, "flagFavorite"

    iget-boolean v4, p0, Lcom/android/email/provider/EmailContent$Message;->mFlagFavorite:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 709
    const-string v3, "flagAttachment"

    iget-boolean v4, p0, Lcom/android/email/provider/EmailContent$Message;->mFlagAttachment:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 710
    const-string v3, "flags"

    iget v4, p0, Lcom/android/email/provider/EmailContent$Message;->mFlags:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 712
    const-string v3, "syncServerId"

    iget-object v4, p0, Lcom/android/email/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 713
    const-string v3, "syncServerTimeStamp"

    iget-wide v4, p0, Lcom/android/email/provider/EmailContent$Message;->mServerTimeStamp:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 714
    const-string v3, "clientId"

    iget-object v4, p0, Lcom/android/email/provider/EmailContent$Message;->mClientId:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 715
    const-string v3, "messageId"

    iget-object v4, p0, Lcom/android/email/provider/EmailContent$Message;->mMessageId:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 717
    const-string v3, "mailboxKey"

    iget-wide v4, p0, Lcom/android/email/provider/EmailContent$Message;->mMailboxKey:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 718
    const-string v3, "accountKey"

    iget-wide v4, p0, Lcom/android/email/provider/EmailContent$Message;->mAccountKey:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 720
    const-string v3, "fromList"

    iget-object v4, p0, Lcom/android/email/provider/EmailContent$Message;->mFrom:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 721
    const-string v3, "toList"

    iget-object v4, p0, Lcom/android/email/provider/EmailContent$Message;->mTo:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 722
    const-string v3, "ccList"

    iget-object v4, p0, Lcom/android/email/provider/EmailContent$Message;->mCc:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 723
    const-string v3, "bccList"

    iget-object v4, p0, Lcom/android/email/provider/EmailContent$Message;->mBcc:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 724
    const-string v3, "replyToList"

    iget-object v4, p0, Lcom/android/email/provider/EmailContent$Message;->mReplyTo:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 726
    const-string v3, "meetingInfo"

    iget-object v4, p0, Lcom/android/email/provider/EmailContent$Message;->mMeetingInfo:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 735
    iget-object v3, p0, Lcom/android/email/provider/EmailContent$Message;->mThreadName:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 736
    iget-object v3, p0, Lcom/android/email/provider/EmailContent$Message;->mSubject:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 737
    const-string v3, ""

    iput-object v6, p0, Lcom/android/email/provider/EmailContent$Message;->mThreadName:Ljava/lang/String;

    .line 756
    :cond_0
    :goto_0
    const-string v3, "threadName"

    iget-object v4, p0, Lcom/android/email/provider/EmailContent$Message;->mThreadName:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 758
    const-string v3, "importance"

    iget v4, p0, Lcom/android/email/provider/EmailContent$Message;->mImportance:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 759
    const-string v3, "flagStatus"

    iget v4, p0, Lcom/android/email/provider/EmailContent$Message;->mFlagStatus:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 761
    return-object v2

    .line 740
    :cond_1
    :try_start_0
    iget-object v3, p0, Lcom/android/email/provider/EmailContent$Message;->mSubject:Ljava/lang/String;

    const/16 v4, 0x3a

    invoke-virtual {v3, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 741
    .local v1, iStartStr:I
    if-gez v1, :cond_2

    .line 743
    iget-object v3, p0, Lcom/android/email/provider/EmailContent$Message;->mSubject:Ljava/lang/String;

    iput-object v3, p0, Lcom/android/email/provider/EmailContent$Message;->mThreadName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 749
    .end local v1           #iStartStr:I
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 750
    .local v0, e:Ljava/lang/Exception;
    const-string v3, ""

    iput-object v6, p0, Lcom/android/email/provider/EmailContent$Message;->mThreadName:Ljava/lang/String;

    goto :goto_0

    .line 747
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v1       #iStartStr:I
    :cond_2
    :try_start_1
    iget-object v3, p0, Lcom/android/email/provider/EmailContent$Message;->mSubject:Ljava/lang/String;

    add-int/lit8 v4, v1, 0x1

    iget-object v5, p0, Lcom/android/email/provider/EmailContent$Message;->mSubject:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/email/provider/EmailContent$Message;->mThreadName:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public update()Z
    .locals 1

    .prologue
    .line 898
    const/4 v0, 0x0

    return v0
.end method
