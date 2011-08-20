.class public final Lcom/android/email/provider/EmailContent$Message;
.super Lcom/android/email/provider/EmailContent;
.source "EmailContent.java"

# interfaces
.implements Lcom/android/email/provider/EmailContent$MessageColumns;
.implements Lcom/android/email/provider/EmailContent$SyncColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/provider/EmailContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Message"
.end annotation


# static fields
.field public static final CONTENT_PROJECTION:[Ljava/lang/String;

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final DELETED_CONTENT_URI:Landroid/net/Uri;

.field public static final ID_COLUMNS_PROJECTION:[Ljava/lang/String;

.field public static final ID_COLUMN_PROJECTION:[Ljava/lang/String;

.field public static final ID_MAILBOX_PROJECTION:[Ljava/lang/String;

.field public static final LIST_PROJECTION:[Ljava/lang/String;

.field public static final SYNCED_CONTENT_URI:Landroid/net/Uri;

.field public static final UPDATED_CONTENT_URI:Landroid/net/Uri;


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

.field public mConversationId:Ljava/lang/String;

.field public mConversationIndex:[B

.field public mDisplayName:Ljava/lang/String;

.field public transient mEncrypted:Z

.field public mEncryptionAlgorithm:Ljava/lang/Integer;

.field public mFFlag:Z

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

.field public mIsMimeLoaded:I

.field public transient mLastVerb:I

.field public transient mLastVerbTime:J

.field public mMailboxKey:J

.field public mMeetingInfo:Ljava/lang/String;

.field public mMessageDirty:I

.field public mMessageId:Ljava/lang/String;

.field public mMessageType:I

.field public transient mProcessed:Z

.field public mReplyTo:Ljava/lang/String;

.field public mServerId:Ljava/lang/String;

.field public mServerTimeStamp:J

.field public transient mSigned:Z

.field public transient mSourceKey:J

.field public mSubject:Ljava/lang/String;

.field public transient mText:Ljava/lang/String;

.field public transient mTextReply:Ljava/lang/String;

.field public mThreadName:Ljava/lang/String;

.field public mTimeStamp:J

.field public mTo:Ljava/lang/String;

.field public mUmCallerId:Ljava/lang/String;

.field public mUmUserNotes:Ljava/lang/String;

.field public transient mVerified:Z


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v6, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v7, "mailboxKey"

    const-string v5, "_id"

    .line 519
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

    .line 520
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

    .line 522
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

    .line 524
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

    .line 601
    const/16 v0, 0x24

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

    const/16 v1, 0x18

    const-string v2, "smimeFlags"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "encryptionAlgorithm"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "lastVerb"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "lastVerbTime"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "umCallerId"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "umUserNotes"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "conversationId"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "conversationIndex"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "followupflag"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "messageType"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "messageDirty"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "isMimeLoaded"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/email/provider/EmailContent$Message;->CONTENT_PROJECTION:[Ljava/lang/String;

    .line 657
    const/16 v0, 0x11

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

    const/16 v1, 0xe

    const-string v2, "lastVerb"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "lastVerbTime"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "isMimeLoaded"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/email/provider/EmailContent$Message;->LIST_PROJECTION:[Ljava/lang/String;

    .line 677
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v5, v0, v3

    const-string v1, "syncServerId"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/email/provider/EmailContent$Message;->ID_COLUMNS_PROJECTION:[Ljava/lang/String;

    .line 683
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v5, v0, v3

    const-string v1, "mailboxKey"

    aput-object v7, v0, v4

    sput-object v0, Lcom/android/email/provider/EmailContent$Message;->ID_MAILBOX_PROJECTION:[Ljava/lang/String;

    .line 687
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

    .line 843
    invoke-direct {p0, v2}, Lcom/android/email/provider/EmailContent;-><init>(Lcom/android/email/provider/EmailContent$1;)V

    .line 693
    iput-boolean v1, p0, Lcom/android/email/provider/EmailContent$Message;->mFlagRead:Z

    .line 694
    iput v1, p0, Lcom/android/email/provider/EmailContent$Message;->mFlagLoaded:I

    .line 697
    iput-byte v1, p0, Lcom/android/email/provider/EmailContent$Message;->mFlagTruncated:B

    .line 699
    iput-boolean v1, p0, Lcom/android/email/provider/EmailContent$Message;->mFlagFavorite:Z

    .line 700
    iput-boolean v1, p0, Lcom/android/email/provider/EmailContent$Message;->mFlagAttachment:Z

    .line 701
    iput v1, p0, Lcom/android/email/provider/EmailContent$Message;->mFlags:I

    .line 703
    iput-boolean v1, p0, Lcom/android/email/provider/EmailContent$Message;->mFFlag:Z

    .line 725
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/email/provider/EmailContent$Message;->mImportance:I

    .line 729
    iput v1, p0, Lcom/android/email/provider/EmailContent$Message;->mFlagStatus:I

    .line 732
    iput v1, p0, Lcom/android/email/provider/EmailContent$Message;->mIsMimeLoaded:I

    .line 747
    iput-object v2, p0, Lcom/android/email/provider/EmailContent$Message;->mAttachments:Ljava/util/ArrayList;

    .line 760
    iput-object v2, p0, Lcom/android/email/provider/EmailContent$Message;->mFollowupFlag:Lcom/android/email/provider/EmailContent$FollowupFlag;

    .line 844
    sget-object v0, Lcom/android/email/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/email/provider/EmailContent;->mBaseUri:Landroid/net/Uri;

    .line 845
    return-void
.end method

.method public static restoreMessageWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Message;
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 945
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    move-object v0, v3

    .line 958
    :goto_0
    return-object v0

    .line 947
    :cond_0
    sget-object v0, Lcom/android/email/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 948
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/android/email/provider/EmailContent$Message;->CONTENT_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 952
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 953
    const-class v1, Lcom/android/email/provider/EmailContent$Message;

    invoke-static {v0, v1}, Lcom/android/email/provider/EmailContent$Message;->getContent(Landroid/database/Cursor;Ljava/lang/Class;)Lcom/android/email/provider/EmailContent;

    move-result-object p0

    check-cast p0, Lcom/android/email/provider/EmailContent$Message;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 958
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    move-object v0, p0

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    move-object v0, v3

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v1
.end method


# virtual methods
.method public addSaveOps(Ljava/util/ArrayList;)I
    .locals 12
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;)I"
        }
    .end annotation

    .prologue
    .local p1, ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const-string v11, "messageKey"

    .line 1197
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 1200
    .local v6, nOPSIndex:I
    iget-object v7, p0, Lcom/android/email/provider/EmailContent;->mBaseUri:Landroid/net/Uri;

    invoke-static {v7}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    .line 1201
    .local v1, b:Landroid/content/ContentProviderOperation$Builder;
    invoke-virtual {p0}, Lcom/android/email/provider/EmailContent$Message;->toContentValues()Landroid/content/ContentValues;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1204
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 1205
    .local v3, cv:Landroid/content/ContentValues;
    iget-object v7, p0, Lcom/android/email/provider/EmailContent$Message;->mText:Ljava/lang/String;

    if-eqz v7, :cond_0

    .line 1206
    const-string v7, "textContent"

    iget-object v8, p0, Lcom/android/email/provider/EmailContent$Message;->mText:Ljava/lang/String;

    invoke-virtual {v3, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1208
    :cond_0
    iget-object v7, p0, Lcom/android/email/provider/EmailContent$Message;->mHtml:Ljava/lang/String;

    if-eqz v7, :cond_1

    .line 1209
    const-string v7, "htmlContent"

    iget-object v8, p0, Lcom/android/email/provider/EmailContent$Message;->mHtml:Ljava/lang/String;

    invoke-virtual {v3, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1211
    :cond_1
    iget-object v7, p0, Lcom/android/email/provider/EmailContent$Message;->mTextReply:Ljava/lang/String;

    if-eqz v7, :cond_2

    .line 1212
    const-string v7, "textReply"

    iget-object v8, p0, Lcom/android/email/provider/EmailContent$Message;->mTextReply:Ljava/lang/String;

    invoke-virtual {v3, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1214
    :cond_2
    iget-object v7, p0, Lcom/android/email/provider/EmailContent$Message;->mHtmlReply:Ljava/lang/String;

    if-eqz v7, :cond_3

    .line 1215
    const-string v7, "htmlReply"

    iget-object v8, p0, Lcom/android/email/provider/EmailContent$Message;->mHtmlReply:Ljava/lang/String;

    invoke-virtual {v3, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1217
    :cond_3
    iget-wide v7, p0, Lcom/android/email/provider/EmailContent$Message;->mSourceKey:J

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-eqz v7, :cond_4

    .line 1218
    const-string v7, "sourceMessageKey"

    iget-wide v8, p0, Lcom/android/email/provider/EmailContent$Message;->mSourceKey:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1220
    :cond_4
    iget-object v7, p0, Lcom/android/email/provider/EmailContent$Message;->mIntroText:Ljava/lang/String;

    if-eqz v7, :cond_5

    .line 1221
    const-string v7, "introText"

    iget-object v8, p0, Lcom/android/email/provider/EmailContent$Message;->mIntroText:Ljava/lang/String;

    invoke-virtual {v3, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1223
    :cond_5
    sget-object v7, Lcom/android/email/provider/EmailContent$Body;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v7}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    .line 1224
    invoke-virtual {v1, v3}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    .line 1225
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 1226
    .local v2, backValues:Landroid/content/ContentValues;
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v8, 0x1

    sub-int v5, v7, v8

    .line 1227
    .local v5, messageBackValue:I
    const-string v7, "messageKey"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2, v11, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1228
    invoke-virtual {v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReferences(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1231
    iget-object v7, p0, Lcom/android/email/provider/EmailContent$Message;->mAttachments:Ljava/util/ArrayList;

    if-eqz v7, :cond_6

    .line 1232
    iget-object v7, p0, Lcom/android/email/provider/EmailContent$Message;->mAttachments:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/provider/EmailContent$Attachment;

    .line 1233
    .local v0, att:Lcom/android/email/provider/EmailContent$Attachment;
    sget-object v7, Lcom/android/email/provider/EmailContent$Attachment;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v7}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v7

    invoke-virtual {v0}, Lcom/android/email/provider/EmailContent$Attachment;->toContentValues()Landroid/content/ContentValues;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v7

    const-string v8, "messageKey"

    invoke-virtual {v7, v11, v5}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1240
    .end local v0           #att:Lcom/android/email/provider/EmailContent$Attachment;
    .end local v4           #i$:Ljava/util/Iterator;
    :cond_6
    iget-object v7, p0, Lcom/android/email/provider/EmailContent$Message;->mFollowupFlag:Lcom/android/email/provider/EmailContent$FollowupFlag;

    if-nez v7, :cond_7

    .line 1241
    new-instance v7, Lcom/android/email/provider/EmailContent$FollowupFlag;

    invoke-direct {v7}, Lcom/android/email/provider/EmailContent$FollowupFlag;-><init>()V

    iput-object v7, p0, Lcom/android/email/provider/EmailContent$Message;->mFollowupFlag:Lcom/android/email/provider/EmailContent$FollowupFlag;

    .line 1244
    :cond_7
    sget-object v7, Lcom/android/email/provider/EmailContent$FollowupFlag;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v7}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/email/provider/EmailContent$Message;->mFollowupFlag:Lcom/android/email/provider/EmailContent$FollowupFlag;

    invoke-virtual {v8}, Lcom/android/email/provider/EmailContent$FollowupFlag;->toContentValues()Landroid/content/ContentValues;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v7

    const-string v8, "messageKey"

    invoke-virtual {v7, v11, v5}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1251
    return v6
.end method

.method public getFollowupFlag(Landroid/content/Context;)Lcom/android/email/provider/EmailContent$FollowupFlag;
    .locals 2
    .parameter "context"

    .prologue
    .line 1346
    iget-wide v0, p0, Lcom/android/email/provider/EmailContent;->mId:J

    invoke-static {p1, v0, v1}, Lcom/android/email/provider/EmailContent$FollowupFlag;->restoreFollowupFlagWithEmailId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$FollowupFlag;

    move-result-object v0

    return-object v0
.end method

.method public getSmimeFlags()I
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1115
    const/4 v0, 0x0

    .line 1116
    .local v0, flags:I
    iget-boolean v1, p0, Lcom/android/email/provider/EmailContent$Message;->mSigned:Z

    if-eqz v1, :cond_0

    move v1, v3

    :goto_0
    shl-int/lit8 v0, v1, 0x0

    .line 1117
    iget-boolean v1, p0, Lcom/android/email/provider/EmailContent$Message;->mEncrypted:Z

    if-eqz v1, :cond_1

    move v1, v3

    :goto_1
    shl-int/lit8 v1, v1, 0x1

    or-int/2addr v0, v1

    .line 1118
    iget-boolean v1, p0, Lcom/android/email/provider/EmailContent$Message;->mProcessed:Z

    if-eqz v1, :cond_2

    move v1, v3

    :goto_2
    shl-int/lit8 v1, v1, 0x2

    or-int/2addr v0, v1

    .line 1119
    iget-boolean v1, p0, Lcom/android/email/provider/EmailContent$Message;->mVerified:Z

    if-eqz v1, :cond_3

    move v1, v3

    :goto_3
    shl-int/lit8 v1, v1, 0x3

    or-int/2addr v0, v1

    .line 1120
    return v0

    :cond_0
    move v1, v2

    .line 1116
    goto :goto_0

    :cond_1
    move v1, v2

    .line 1117
    goto :goto_1

    :cond_2
    move v1, v2

    .line 1118
    goto :goto_2

    :cond_3
    move v1, v2

    .line 1119
    goto :goto_3
.end method

.method public restore(Landroid/database/Cursor;)Lcom/android/email/provider/EmailContent$Message;
    .locals 6
    .parameter "c"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1042
    sget-object v1, Lcom/android/email/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    iput-object v1, p0, Lcom/android/email/provider/EmailContent;->mBaseUri:Landroid/net/Uri;

    .line 1043
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/email/provider/EmailContent;->mId:J

    .line 1044
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/provider/EmailContent$Message;->mDisplayName:Ljava/lang/String;

    .line 1045
    const/4 v1, 0x2

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/email/provider/EmailContent$Message;->mTimeStamp:J

    .line 1046
    const/4 v1, 0x3

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/provider/EmailContent$Message;->mSubject:Ljava/lang/String;

    .line 1047
    const/4 v1, 0x4

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-ne v1, v4, :cond_0

    move v1, v4

    :goto_0
    iput-boolean v1, p0, Lcom/android/email/provider/EmailContent$Message;->mFlagRead:Z

    .line 1050
    const/4 v1, 0x5

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p0, Lcom/android/email/provider/EmailContent$Message;->mFlagLoaded:I

    .line 1052
    iget v1, p0, Lcom/android/email/provider/EmailContent$Message;->mFlagLoaded:I

    const v2, 0xff00

    and-int/2addr v1, v2

    shr-int/lit8 v1, v1, 0x8

    int-to-byte v1, v1

    iput-byte v1, p0, Lcom/android/email/provider/EmailContent$Message;->mFlagTruncated:B

    .line 1053
    const-string v1, "EmailContent"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "restore() mFlagTruncated = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-byte v3, p0, Lcom/android/email/provider/EmailContent$Message;->mFlagTruncated:B

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1054
    iget v1, p0, Lcom/android/email/provider/EmailContent$Message;->mFlagLoaded:I

    and-int/lit16 v1, v1, 0xff

    iput v1, p0, Lcom/android/email/provider/EmailContent$Message;->mFlagLoaded:I

    .line 1056
    const/4 v1, 0x6

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-ne v1, v4, :cond_1

    move v1, v4

    :goto_1
    iput-boolean v1, p0, Lcom/android/email/provider/EmailContent$Message;->mFlagFavorite:Z

    .line 1057
    const/4 v1, 0x7

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-ne v1, v4, :cond_2

    move v1, v4

    :goto_2
    iput-boolean v1, p0, Lcom/android/email/provider/EmailContent$Message;->mFlagAttachment:Z

    .line 1058
    const/16 v1, 0x8

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p0, Lcom/android/email/provider/EmailContent$Message;->mFlags:I

    .line 1059
    const/16 v1, 0x9

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    .line 1060
    const/16 v1, 0x13

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/email/provider/EmailContent$Message;->mServerTimeStamp:J

    .line 1061
    const/16 v1, 0xa

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/provider/EmailContent$Message;->mClientId:Ljava/lang/String;

    .line 1062
    const/16 v1, 0xb

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/provider/EmailContent$Message;->mMessageId:Ljava/lang/String;

    .line 1063
    const/16 v1, 0xc

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/email/provider/EmailContent$Message;->mMailboxKey:J

    .line 1064
    const/16 v1, 0xd

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/email/provider/EmailContent$Message;->mAccountKey:J

    .line 1065
    const/16 v1, 0xe

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/provider/EmailContent$Message;->mFrom:Ljava/lang/String;

    .line 1066
    const/16 v1, 0xf

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/provider/EmailContent$Message;->mTo:Ljava/lang/String;

    .line 1067
    const/16 v1, 0x10

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/provider/EmailContent$Message;->mCc:Ljava/lang/String;

    .line 1068
    const/16 v1, 0x11

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/provider/EmailContent$Message;->mBcc:Ljava/lang/String;

    .line 1069
    const/16 v1, 0x12

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/provider/EmailContent$Message;->mReplyTo:Ljava/lang/String;

    .line 1070
    const/16 v1, 0x14

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/provider/EmailContent$Message;->mMeetingInfo:Ljava/lang/String;

    .line 1071
    const/16 v1, 0x15

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/provider/EmailContent$Message;->mThreadName:Ljava/lang/String;

    .line 1073
    const/16 v1, 0x16

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p0, Lcom/android/email/provider/EmailContent$Message;->mImportance:I

    .line 1074
    const/16 v1, 0x17

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p0, Lcom/android/email/provider/EmailContent$Message;->mFlagStatus:I

    .line 1076
    const/16 v1, 0x18

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 1077
    .local v0, flags:I
    invoke-virtual {p0, v0}, Lcom/android/email/provider/EmailContent$Message;->setSmimeFlags(I)V

    .line 1078
    const/16 v1, 0x19

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/provider/EmailContent$Message;->mEncryptionAlgorithm:Ljava/lang/Integer;

    .line 1080
    const/16 v1, 0x1e

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/provider/EmailContent$Message;->mConversationId:Ljava/lang/String;

    .line 1081
    const/16 v1, 0x1f

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/provider/EmailContent$Message;->mConversationIndex:[B

    .line 1083
    const/16 v1, 0x20

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-ne v1, v4, :cond_3

    move v1, v4

    :goto_3
    iput-boolean v1, p0, Lcom/android/email/provider/EmailContent$Message;->mFFlag:Z

    .line 1085
    const/16 v1, 0x1a

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p0, Lcom/android/email/provider/EmailContent$Message;->mLastVerb:I

    .line 1086
    const/16 v1, 0x1b

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/email/provider/EmailContent$Message;->mLastVerbTime:J

    .line 1089
    const/16 v1, 0x21

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p0, Lcom/android/email/provider/EmailContent$Message;->mMessageType:I

    .line 1090
    const/16 v1, 0x22

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p0, Lcom/android/email/provider/EmailContent$Message;->mMessageDirty:I

    .line 1093
    const/16 v1, 0x1c

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/provider/EmailContent$Message;->mUmCallerId:Ljava/lang/String;

    .line 1094
    const/16 v1, 0x1d

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/provider/EmailContent$Message;->mUmUserNotes:Ljava/lang/String;

    .line 1098
    const/16 v1, 0x23

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p0, Lcom/android/email/provider/EmailContent$Message;->mIsMimeLoaded:I

    .line 1101
    return-object p0

    .end local v0           #flags:I
    :cond_0
    move v1, v5

    .line 1047
    goto/16 :goto_0

    :cond_1
    move v1, v5

    .line 1056
    goto/16 :goto_1

    :cond_2
    move v1, v5

    .line 1057
    goto/16 :goto_2

    .restart local v0       #flags:I
    :cond_3
    move v1, v5

    .line 1083
    goto :goto_3
.end method

.method public bridge synthetic restore(Landroid/database/Cursor;)Lcom/android/email/provider/EmailContent;
    .locals 1
    .parameter "x0"

    .prologue
    .line 513
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

    .line 1144
    invoke-virtual {p0}, Lcom/android/email/provider/EmailContent$Message;->isSaved()Z

    move-result v8

    if-nez v8, :cond_1

    move v1, v9

    .line 1149
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

    .line 1151
    :cond_0
    if-eqz v1, :cond_2

    .line 1152
    invoke-super {p0, p1}, Lcom/android/email/provider/EmailContent;->save(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v8

    .line 1191
    :goto_1
    return-object v8

    .end local v1           #doSave:Z
    :cond_1
    move v1, v11

    .line 1144
    goto :goto_0

    .line 1155
    .restart local v1       #doSave:Z
    :cond_2
    invoke-virtual {p0}, Lcom/android/email/provider/EmailContent$Message;->toContentValues()Landroid/content/ContentValues;

    move-result-object v8

    invoke-virtual {p0, p1, v8}, Lcom/android/email/provider/EmailContent$Message;->update(Landroid/content/Context;Landroid/content/ContentValues;)I

    move-result v8

    if-ne v8, v9, :cond_3

    .line 1156
    invoke-virtual {p0}, Lcom/android/email/provider/EmailContent$Message;->getUri()Landroid/net/Uri;

    move-result-object v8

    goto :goto_1

    :cond_3
    move-object v8, v10

    .line 1158
    goto :goto_1

    .line 1162
    :cond_4
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1163
    .local v3, ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    invoke-virtual {p0, v3}, Lcom/android/email/provider/EmailContent$Message;->addSaveOps(Ljava/util/ArrayList;)I

    .line 1165
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "com.android.email.provider"

    invoke-virtual {v8, v9, v3}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object v6

    .line 1168
    .local v6, results:[Landroid/content/ContentProviderResult;
    if-eqz v1, :cond_7

    .line 1169
    const/4 v8, 0x0

    aget-object v8, v6, v8

    iget-object v7, v8, Landroid/content/ContentProviderResult;->uri:Landroid/net/Uri;

    .line 1170
    .local v7, u:Landroid/net/Uri;
    invoke-virtual {v7}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v8

    const/4 v9, 0x1

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    iput-wide v8, p0, Lcom/android/email/provider/EmailContent;->mId:J

    .line 1171
    iget-object v8, p0, Lcom/android/email/provider/EmailContent$Message;->mAttachments:Ljava/util/ArrayList;

    if-eqz v8, :cond_6

    .line 1172
    const/4 v4, 0x2

    .line 1173
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

    .line 1175
    .local v0, a:Lcom/android/email/provider/EmailContent$Attachment;
    add-int/lit8 v4, v5, 0x1

    .end local v5           #resultOffset:I
    .restart local v4       #resultOffset:I
    aget-object v8, v6, v5

    iget-object v7, v8, Landroid/content/ContentProviderResult;->uri:Landroid/net/Uri;

    .line 1176
    if-eqz v7, :cond_5

    .line 1177
    invoke-virtual {v7}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v8

    const/4 v9, 0x1

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    iput-wide v8, v0, Lcom/android/email/provider/EmailContent;->mId:J

    .line 1179
    :cond_5
    iget-wide v8, p0, Lcom/android/email/provider/EmailContent;->mId:J

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

    .line 1182
    goto :goto_1

    .end local v7           #u:Landroid/net/Uri;
    :cond_7
    move-object v8, v10

    .line 1184
    goto :goto_1

    .line 1188
    .end local v6           #results:[Landroid/content/ContentProviderResult;
    :catch_0
    move-exception v8

    :goto_3
    move-object v8, v10

    .line 1191
    goto :goto_1

    .line 1186
    :catch_1
    move-exception v8

    goto :goto_3
.end method

.method public setSmimeFlags(I)V
    .locals 3
    .parameter "flags"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1128
    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_0

    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lcom/android/email/provider/EmailContent$Message;->mSigned:Z

    .line 1129
    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_1

    move v0, v2

    :goto_1
    iput-boolean v0, p0, Lcom/android/email/provider/EmailContent$Message;->mEncrypted:Z

    .line 1130
    and-int/lit8 v0, p1, 0x4

    if-eqz v0, :cond_2

    move v0, v2

    :goto_2
    iput-boolean v0, p0, Lcom/android/email/provider/EmailContent$Message;->mProcessed:Z

    .line 1131
    and-int/lit8 v0, p1, 0x8

    if-eqz v0, :cond_3

    move v0, v2

    :goto_3
    iput-boolean v0, p0, Lcom/android/email/provider/EmailContent$Message;->mVerified:Z

    .line 1132
    return-void

    :cond_0
    move v0, v1

    .line 1128
    goto :goto_0

    :cond_1
    move v0, v1

    .line 1129
    goto :goto_1

    :cond_2
    move v0, v1

    .line 1130
    goto :goto_2

    :cond_3
    move v0, v1

    .line 1131
    goto :goto_3
.end method

.method public toContentValues()Landroid/content/ContentValues;
    .locals 7

    .prologue
    const-string v6, ""

    .line 849
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 852
    .local v2, values:Landroid/content/ContentValues;
    const-string v3, "displayName"

    iget-object v4, p0, Lcom/android/email/provider/EmailContent$Message;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 853
    const-string v3, "timeStamp"

    iget-wide v4, p0, Lcom/android/email/provider/EmailContent$Message;->mTimeStamp:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 854
    const-string v3, "subject"

    iget-object v4, p0, Lcom/android/email/provider/EmailContent$Message;->mSubject:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 855
    const-string v3, "flagRead"

    iget-boolean v4, p0, Lcom/android/email/provider/EmailContent$Message;->mFlagRead:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 858
    const-string v3, "flagLoaded"

    iget v4, p0, Lcom/android/email/provider/EmailContent$Message;->mFlagLoaded:I

    iget-byte v5, p0, Lcom/android/email/provider/EmailContent$Message;->mFlagTruncated:B

    int-to-short v5, v5

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 860
    const-string v3, "flagFavorite"

    iget-boolean v4, p0, Lcom/android/email/provider/EmailContent$Message;->mFlagFavorite:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 861
    const-string v3, "flagAttachment"

    iget-boolean v4, p0, Lcom/android/email/provider/EmailContent$Message;->mFlagAttachment:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 862
    const-string v3, "flags"

    iget v4, p0, Lcom/android/email/provider/EmailContent$Message;->mFlags:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 864
    const-string v3, "syncServerId"

    iget-object v4, p0, Lcom/android/email/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 865
    const-string v3, "syncServerTimeStamp"

    iget-wide v4, p0, Lcom/android/email/provider/EmailContent$Message;->mServerTimeStamp:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 866
    const-string v3, "clientId"

    iget-object v4, p0, Lcom/android/email/provider/EmailContent$Message;->mClientId:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 867
    const-string v3, "messageId"

    iget-object v4, p0, Lcom/android/email/provider/EmailContent$Message;->mMessageId:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 869
    const-string v3, "mailboxKey"

    iget-wide v4, p0, Lcom/android/email/provider/EmailContent$Message;->mMailboxKey:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 870
    const-string v3, "accountKey"

    iget-wide v4, p0, Lcom/android/email/provider/EmailContent$Message;->mAccountKey:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 872
    const-string v3, "fromList"

    iget-object v4, p0, Lcom/android/email/provider/EmailContent$Message;->mFrom:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 873
    const-string v3, "toList"

    iget-object v4, p0, Lcom/android/email/provider/EmailContent$Message;->mTo:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 874
    const-string v3, "ccList"

    iget-object v4, p0, Lcom/android/email/provider/EmailContent$Message;->mCc:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 875
    const-string v3, "bccList"

    iget-object v4, p0, Lcom/android/email/provider/EmailContent$Message;->mBcc:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 876
    const-string v3, "replyToList"

    iget-object v4, p0, Lcom/android/email/provider/EmailContent$Message;->mReplyTo:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 878
    const-string v3, "meetingInfo"

    iget-object v4, p0, Lcom/android/email/provider/EmailContent$Message;->mMeetingInfo:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 887
    iget-object v3, p0, Lcom/android/email/provider/EmailContent$Message;->mThreadName:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 888
    iget-object v3, p0, Lcom/android/email/provider/EmailContent$Message;->mSubject:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 889
    const-string v3, ""

    iput-object v6, p0, Lcom/android/email/provider/EmailContent$Message;->mThreadName:Ljava/lang/String;

    .line 908
    :cond_0
    :goto_0
    const-string v3, "threadName"

    iget-object v4, p0, Lcom/android/email/provider/EmailContent$Message;->mThreadName:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 910
    const-string v3, "importance"

    iget v4, p0, Lcom/android/email/provider/EmailContent$Message;->mImportance:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 911
    const-string v3, "flagStatus"

    iget v4, p0, Lcom/android/email/provider/EmailContent$Message;->mFlagStatus:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 913
    const-string v3, "smimeFlags"

    invoke-virtual {p0}, Lcom/android/email/provider/EmailContent$Message;->getSmimeFlags()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 914
    const-string v3, "encryptionAlgorithm"

    iget-object v4, p0, Lcom/android/email/provider/EmailContent$Message;->mEncryptionAlgorithm:Ljava/lang/Integer;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 917
    const-string v3, "conversationId"

    iget-object v4, p0, Lcom/android/email/provider/EmailContent$Message;->mConversationId:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 918
    const-string v3, "conversationIndex"

    iget-object v4, p0, Lcom/android/email/provider/EmailContent$Message;->mConversationIndex:[B

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 920
    const-string v3, "followupflag"

    iget-boolean v4, p0, Lcom/android/email/provider/EmailContent$Message;->mFFlag:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 922
    const-string v3, "lastVerb"

    iget v4, p0, Lcom/android/email/provider/EmailContent$Message;->mLastVerb:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 923
    const-string v3, "lastVerbTime"

    iget-wide v4, p0, Lcom/android/email/provider/EmailContent$Message;->mLastVerbTime:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 926
    const-string v3, "umCallerId"

    iget-object v4, p0, Lcom/android/email/provider/EmailContent$Message;->mUmCallerId:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 927
    const-string v3, "umUserNotes"

    iget-object v4, p0, Lcom/android/email/provider/EmailContent$Message;->mUmUserNotes:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 933
    const-string v3, "messageType"

    iget v4, p0, Lcom/android/email/provider/EmailContent$Message;->mMessageType:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 934
    const-string v3, "messageDirty"

    iget v4, p0, Lcom/android/email/provider/EmailContent$Message;->mMessageDirty:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 938
    const-string v3, "isMimeLoaded"

    iget v4, p0, Lcom/android/email/provider/EmailContent$Message;->mIsMimeLoaded:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 941
    return-object v2

    .line 892
    :cond_1
    :try_start_0
    iget-object v3, p0, Lcom/android/email/provider/EmailContent$Message;->mSubject:Ljava/lang/String;

    const/16 v4, 0x3a

    invoke-virtual {v3, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 893
    .local v1, iStartStr:I
    if-gez v1, :cond_2

    .line 895
    iget-object v3, p0, Lcom/android/email/provider/EmailContent$Message;->mSubject:Ljava/lang/String;

    iput-object v3, p0, Lcom/android/email/provider/EmailContent$Message;->mThreadName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 901
    .end local v1           #iStartStr:I
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 902
    .local v0, e:Ljava/lang/Exception;
    const-string v3, ""

    iput-object v6, p0, Lcom/android/email/provider/EmailContent$Message;->mThreadName:Ljava/lang/String;

    goto/16 :goto_0

    .line 899
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

    goto/16 :goto_0
.end method
