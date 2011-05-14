.class public final Lcom/android/email/provider/EmailContent$Mailbox;
.super Lcom/android/email/provider/EmailContent;
.source "EmailContent.java"

# interfaces
.implements Lcom/android/email/provider/EmailContent$SyncColumns;
.implements Lcom/android/email/provider/EmailContent$MailboxColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/provider/EmailContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Mailbox"
.end annotation


# static fields
.field public static final ADD_TO_FIELD_URI:Landroid/net/Uri; = null

.field public static final CHECK_INTERVAL_NEVER:I = -0x1

.field public static final CHECK_INTERVAL_PING:I = -0x3

.field public static final CHECK_INTERVAL_PUSH:I = -0x2

.field public static final CHECK_INTERVAL_PUSH_HOLD:I = -0x4

.field public static final CONTENT_ACCOUNT_KEY_COLUMN:I = 0x4

.field public static final CONTENT_DELIMITER_COLUMN:I = 0x6

.field public static final CONTENT_DISPLAY_NAME_COLUMN:I = 0x1

.field public static final CONTENT_DST_SERVER_ID:I = 0x11

.field public static final CONTENT_FLAGS_COLUMN:I = 0xd

.field public static final CONTENT_FLAG_CHANGED:I = 0x10

.field public static final CONTENT_FLAG_VISIBLE_COLUMN:I = 0xc

.field public static final CONTENT_ID_COLUMN:I = 0x0

.field public static final CONTENT_NEW_DISPLAY_NAME:I = 0x12

.field public static final CONTENT_PARENT_SERVER_ID_COLUMN:I = 0x3

.field public static final CONTENT_PROJECTION:[Ljava/lang/String; = null

.field public static final CONTENT_SERVER_ID_COLUMN:I = 0x2

.field public static final CONTENT_SYNC_INTERVAL_COLUMN:I = 0x9

.field public static final CONTENT_SYNC_KEY_COLUMN:I = 0x7

.field public static final CONTENT_SYNC_LOOKBACK_COLUMN:I = 0x8

.field public static final CONTENT_SYNC_STATUS_COLUMN:I = 0xf

.field public static final CONTENT_SYNC_TIME_COLUMN:I = 0xa

.field public static final CONTENT_TYPE_COLUMN:I = 0x5

.field public static final CONTENT_UNREAD_COUNT_COLUMN:I = 0xb

.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final CONTENT_VISIBLE_LIMIT_COLUMN:I = 0xe

.field public static final FLAG_CANT_PUSH:I = 0x4

.field public static final FLAG_CHILDREN_VISIBLE:I = 0x2

.field public static final FLAG_FOLDER_CREATED:I = 0x4

.field public static final FLAG_FOLDER_DELETED:I = 0x1

.field public static final FLAG_FOLDER_UPDATED:I = 0x2

.field public static final FLAG_HAS_CHILDREN:I = 0x1

.field public static final NO_MAILBOX:J = -0x1L

.field public static final QUERY_ALL_DRAFTS:J = -0x5L

.field public static final QUERY_ALL_FAVORITES:J = -0x4L

.field public static final QUERY_ALL_INBOXES:J = -0x2L

.field public static final QUERY_ALL_OUTBOX:J = -0x6L

.field public static final QUERY_ALL_UNREAD:J = -0x3L

.field public static final TABLE_NAME:Ljava/lang/String; = "Mailbox"

.field public static final TYPE_CALENDAR:I = 0x41

.field public static final TYPE_CONTACTS:I = 0x42

.field public static final TYPE_DRAFTS:I = 0x3

.field public static final TYPE_EAS_ACCOUNT_MAILBOX:I = 0x44

.field public static final TYPE_INBOX:I = 0x0

.field public static final TYPE_JUNK:I = 0x7

.field public static final TYPE_MAIL:I = 0x1

.field public static final TYPE_NOT_EMAIL:I = 0x40

.field public static final TYPE_OUTBOX:I = 0x4

.field public static final TYPE_PARENT:I = 0x2

.field public static final TYPE_SEARCH_RESULTS:I = 0x8

.field public static final TYPE_SENT:I = 0x5

.field public static final TYPE_TASKS:I = 0x43

.field public static final TYPE_TRASH:I = 0x6

.field public static final TYPE_USER_CREATED_MAIL:I = 0xc

.field private static final WHERE_TYPE_AND_ACCOUNT_KEY:Ljava/lang/String; = "type=? and accountKey=?"

.field public static mContextForMailbox:Landroid/content/Context;


# instance fields
.field private bFirstEnter:Z

.field public mAccountKey:J

.field public mDelimiter:I

.field public mDisplayName:Ljava/lang/String;

.field public mDstServerId:Ljava/lang/String;

.field public mFlagChanged:I

.field public mFlagVisible:Z

.field public mFlags:I

.field public mNewDisplayName:Ljava/lang/String;

.field public mParentServerId:Ljava/lang/String;

.field public mServerId:Ljava/lang/String;

.field public mSyncInterval:I

.field public mSyncKey:Ljava/lang/String;

.field public mSyncLookback:I

.field public mSyncStatus:Ljava/lang/String;

.field public mSyncTime:J

.field public mType:I

.field public mUnreadCount:I

.field public mVisibleLimit:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 2991
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/email/provider/EmailContent;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/mailbox"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/email/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    .line 2992
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/email/provider/EmailContent;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/mailboxIdAddToField"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/email/provider/EmailContent$Mailbox;->ADD_TO_FIELD_URI:Landroid/net/Uri;

    .line 3018
    const/4 v0, 0x0

    sput-object v0, Lcom/android/email/provider/EmailContent$Mailbox;->mContextForMailbox:Landroid/content/Context;

    .line 3042
    const/16 v0, 0x13

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "displayName"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "serverId"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "parentServerId"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "accountKey"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "type"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "delimiter"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "syncKey"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "syncLookback"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "syncInterval"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "syncTime"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "unreadCount"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "flagVisible"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "flags"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "visibleLimit"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "syncStatus"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "flagChanged"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "dstMailboxId"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "newDisplayName"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/email/provider/EmailContent$Mailbox;->CONTENT_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 3124
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/email/provider/EmailContent;-><init>(Lcom/android/email/provider/EmailContent$1;)V

    .line 3006
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/email/provider/EmailContent$Mailbox;->mFlagVisible:Z

    .line 3017
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/email/provider/EmailContent$Mailbox;->bFirstEnter:Z

    .line 3125
    sget-object v0, Lcom/android/email/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/email/provider/EmailContent$Mailbox;->mBaseUri:Landroid/net/Uri;

    .line 3126
    return-void
.end method

.method public static findMailboxOfType(Landroid/content/Context;JI)J
    .locals 9
    .parameter "context"
    .parameter "accountId"
    .parameter "type"

    .prologue
    const/4 v2, 0x0

    .line 3271
    const-wide/16 v7, -0x1

    .line 3272
    .local v7, mailboxId:J
    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    int-to-long v0, p3

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v2

    const/4 v0, 0x1

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    .line 3273
    .local v4, bindArguments:[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/email/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/email/provider/EmailContent$Mailbox;->ID_PROJECTION:[Ljava/lang/String;

    const-string v3, "type=? and accountKey=?"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 3276
    .local v6, c:Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3277
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v7

    .line 3280
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 3282
    return-wide v7

    .line 3280
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static restoreMailboxOfType(Landroid/content/Context;JI)Lcom/android/email/provider/EmailContent$Mailbox;
    .locals 4
    .parameter "context"
    .parameter "accountId"
    .parameter "type"

    .prologue
    .line 3289
    invoke-static {p0, p1, p2, p3}, Lcom/android/email/provider/EmailContent$Mailbox;->findMailboxOfType(Landroid/content/Context;JI)J

    move-result-wide v0

    .line 3290
    .local v0, mailboxId:J
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 3291
    invoke-static {p0, v0, v1}, Lcom/android/email/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Mailbox;

    move-result-object v2

    .line 3293
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Mailbox;
    .locals 9
    .parameter "context"
    .parameter "id"

    .prologue
    const/4 v8, 0x0

    .line 3135
    sget-object v0, Lcom/android/email/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 3138
    .local v1, u:Landroid/net/Uri;
    sput-object p0, Lcom/android/email/provider/EmailContent$Mailbox;->mContextForMailbox:Landroid/content/Context;

    .line 3140
    const/4 v6, 0x0

    .line 3142
    .local v6, c:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/android/email/provider/EmailContent$Mailbox;->CONTENT_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v6

    .line 3156
    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3157
    const-class v0, Lcom/android/email/provider/EmailContent$Mailbox;

    invoke-static {v6, v0}, Lcom/android/email/provider/EmailContent;->getContent(Landroid/database/Cursor;Ljava/lang/Class;)Lcom/android/email/provider/EmailContent;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/email/provider/EmailContent$Mailbox;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3162
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move-object v0, p0

    :goto_0
    return-object v0

    .line 3144
    .restart local p0
    :catch_0
    move-exception v0

    move-object v7, v0

    .line 3145
    .local v7, ie:Ljava/lang/IllegalArgumentException;
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3146
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_0
    move-object v0, v8

    .line 3147
    goto :goto_0

    .line 3148
    .end local v7           #ie:Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    move-object v7, v0

    .line 3149
    .local v7, ie:Ljava/lang/IllegalStateException;
    invoke-virtual {v7}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 3150
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3151
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    move-object v0, v8

    .line 3152
    goto :goto_0

    .line 3162
    .end local v7           #ie:Ljava/lang/IllegalStateException;
    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move-object v0, v8

    goto :goto_0

    .end local p0
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method


# virtual methods
.method public restore(Landroid/database/Cursor;)Lcom/android/email/provider/EmailContent$Mailbox;
    .locals 12
    .parameter "cursor"

    .prologue
    .line 3169
    sget-object v8, Lcom/android/email/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    iput-object v8, p0, Lcom/android/email/provider/EmailContent$Mailbox;->mBaseUri:Landroid/net/Uri;

    .line 3170
    const/4 v8, 0x0

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    iput-wide v8, p0, Lcom/android/email/provider/EmailContent$Mailbox;->mId:J

    .line 3171
    const/4 v8, 0x1

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/email/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    .line 3172
    const/4 v8, 0x2

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/email/provider/EmailContent$Mailbox;->mServerId:Ljava/lang/String;

    .line 3173
    const/4 v8, 0x3

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/email/provider/EmailContent$Mailbox;->mParentServerId:Ljava/lang/String;

    .line 3174
    const/4 v8, 0x4

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    iput-wide v8, p0, Lcom/android/email/provider/EmailContent$Mailbox;->mAccountKey:J

    .line 3175
    const/4 v8, 0x5

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    iput v8, p0, Lcom/android/email/provider/EmailContent$Mailbox;->mType:I

    .line 3176
    const/4 v8, 0x6

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    iput v8, p0, Lcom/android/email/provider/EmailContent$Mailbox;->mDelimiter:I

    .line 3177
    const/4 v8, 0x7

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/email/provider/EmailContent$Mailbox;->mSyncKey:Ljava/lang/String;

    .line 3178
    const/16 v8, 0x8

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    iput v8, p0, Lcom/android/email/provider/EmailContent$Mailbox;->mSyncLookback:I

    .line 3179
    const/16 v8, 0x9

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    iput v8, p0, Lcom/android/email/provider/EmailContent$Mailbox;->mSyncInterval:I

    .line 3184
    iget-boolean v8, p0, Lcom/android/email/provider/EmailContent$Mailbox;->bFirstEnter:Z

    if-nez v8, :cond_0

    .line 3186
    const/4 v5, 0x0

    .line 3188
    .local v5, isEAS:Z
    :try_start_0
    sget-object v8, Lcom/android/email/provider/EmailContent$Mailbox;->mContextForMailbox:Landroid/content/Context;

    iget-wide v9, p0, Lcom/android/email/provider/EmailContent$Mailbox;->mAccountKey:J

    invoke-static {v8, v9, v10}, Lcom/android/email/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Account;

    move-result-object v0

    .line 3189
    .local v0, account:Lcom/android/email/provider/EmailContent$Account;
    if-nez v0, :cond_1

    .line 3190
    const-string v8, "EmailContent >>"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "account is null with account key = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-wide v10, p0, Lcom/android/email/provider/EmailContent$Mailbox;->mAccountKey:J

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3205
    .end local v0           #account:Lcom/android/email/provider/EmailContent$Account;
    :goto_0
    if-nez v5, :cond_0

    .line 3206
    const-wide/16 v1, 0x0

    .line 3207
    .local v1, currentTime:J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 3208
    sget-object v8, Lcom/android/email/provider/EmailContent$Mailbox;->mContextForMailbox:Landroid/content/Context;

    if-eqz v8, :cond_0

    const-wide/16 v8, 0x0

    cmp-long v8, v1, v8

    if-lez v8, :cond_0

    .line 3210
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 3211
    .local v7, values:Landroid/content/ContentValues;
    const-string v8, "syncTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3212
    sget-object v8, Lcom/android/email/provider/EmailContent$Mailbox;->mContextForMailbox:Landroid/content/Context;

    invoke-virtual {p0, v8, v7}, Lcom/android/email/provider/EmailContent$Mailbox;->update(Landroid/content/Context;Landroid/content/ContentValues;)I

    .line 3213
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/android/email/provider/EmailContent$Mailbox;->bFirstEnter:Z

    .line 3221
    .end local v1           #currentTime:J
    .end local v5           #isEAS:Z
    .end local v7           #values:Landroid/content/ContentValues;
    :cond_0
    const/16 v8, 0xa

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    iput-wide v8, p0, Lcom/android/email/provider/EmailContent$Mailbox;->mSyncTime:J

    .line 3224
    const/16 v8, 0xb

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    iput v8, p0, Lcom/android/email/provider/EmailContent$Mailbox;->mUnreadCount:I

    .line 3225
    const/16 v8, 0xc

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_3

    const/4 v8, 0x1

    :goto_1
    iput-boolean v8, p0, Lcom/android/email/provider/EmailContent$Mailbox;->mFlagVisible:Z

    .line 3226
    const/16 v8, 0xd

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    iput v8, p0, Lcom/android/email/provider/EmailContent$Mailbox;->mFlags:I

    .line 3227
    const/16 v8, 0xe

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    iput v8, p0, Lcom/android/email/provider/EmailContent$Mailbox;->mVisibleLimit:I

    .line 3228
    const/16 v8, 0xf

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/email/provider/EmailContent$Mailbox;->mSyncStatus:Ljava/lang/String;

    .line 3230
    const/16 v8, 0x10

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    iput v8, p0, Lcom/android/email/provider/EmailContent$Mailbox;->mFlagChanged:I

    .line 3231
    const/16 v8, 0x11

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/email/provider/EmailContent$Mailbox;->mDstServerId:Ljava/lang/String;

    .line 3232
    const/16 v8, 0x12

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/email/provider/EmailContent$Mailbox;->mNewDisplayName:Ljava/lang/String;

    .line 3234
    return-object p0

    .line 3192
    .restart local v0       #account:Lcom/android/email/provider/EmailContent$Account;
    .restart local v5       #isEAS:Z
    :cond_1
    :try_start_1
    sget-object v8, Lcom/android/email/provider/EmailContent$Mailbox;->mContextForMailbox:Landroid/content/Context;

    invoke-virtual {v0, v8}, Lcom/android/email/provider/EmailContent$Account;->getStoreUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    sget-object v9, Lcom/android/email/provider/EmailContent$Mailbox;->mContextForMailbox:Landroid/content/Context;

    invoke-static {v8, v9}, Lcom/android/email/mail/Store$StoreInfo;->getStoreInfo(Ljava/lang/String;Landroid/content/Context;)Lcom/android/email/mail/Store$StoreInfo;

    move-result-object v4

    .line 3193
    .local v4, info:Lcom/android/email/mail/Store$StoreInfo;
    if-nez v4, :cond_2

    .line 3194
    const-string v8, "EmailContent >>"

    const-string v9, "info is null"

    invoke-static {v8, v9}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 3201
    .end local v0           #account:Lcom/android/email/provider/EmailContent$Account;
    .end local v4           #info:Lcom/android/email/mail/Store$StoreInfo;
    :catch_0
    move-exception v8

    move-object v3, v8

    .line 3202
    .local v3, e:Ljava/lang/NullPointerException;
    const-string v8, "EmailContent >>"

    const-string v9, "EmailContent.Mailbox restore NullPointerException >>>"

    invoke-static {v8, v9}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3196
    .end local v3           #e:Ljava/lang/NullPointerException;
    .restart local v0       #account:Lcom/android/email/provider/EmailContent$Account;
    .restart local v4       #info:Lcom/android/email/mail/Store$StoreInfo;
    :cond_2
    :try_start_2
    iget-object v6, v4, Lcom/android/email/mail/Store$StoreInfo;->mScheme:Ljava/lang/String;

    .line 3197
    .local v6, scheme:Ljava/lang/String;
    const-string v8, "eas"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_0

    move-result v5

    goto/16 :goto_0

    .line 3225
    .end local v0           #account:Lcom/android/email/provider/EmailContent$Account;
    .end local v4           #info:Lcom/android/email/mail/Store$StoreInfo;
    .end local v5           #isEAS:Z
    .end local v6           #scheme:Ljava/lang/String;
    :cond_3
    const/4 v8, 0x0

    goto :goto_1
.end method

.method public bridge synthetic restore(Landroid/database/Cursor;)Lcom/android/email/provider/EmailContent;
    .locals 1
    .parameter "x0"

    .prologue
    .line 2989
    invoke-virtual {p0, p1}, Lcom/android/email/provider/EmailContent$Mailbox;->restore(Landroid/database/Cursor;)Lcom/android/email/provider/EmailContent$Mailbox;

    move-result-object v0

    return-object v0
.end method

.method public toContentValues()Landroid/content/ContentValues;
    .locals 4

    .prologue
    .line 3239
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 3240
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "displayName"

    iget-object v2, p0, Lcom/android/email/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3241
    const-string v1, "serverId"

    iget-object v2, p0, Lcom/android/email/provider/EmailContent$Mailbox;->mServerId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3242
    const-string v1, "parentServerId"

    iget-object v2, p0, Lcom/android/email/provider/EmailContent$Mailbox;->mParentServerId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3243
    const-string v1, "accountKey"

    iget-wide v2, p0, Lcom/android/email/provider/EmailContent$Mailbox;->mAccountKey:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3244
    const-string v1, "type"

    iget v2, p0, Lcom/android/email/provider/EmailContent$Mailbox;->mType:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3245
    const-string v1, "delimiter"

    iget v2, p0, Lcom/android/email/provider/EmailContent$Mailbox;->mDelimiter:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3246
    const-string v1, "syncKey"

    iget-object v2, p0, Lcom/android/email/provider/EmailContent$Mailbox;->mSyncKey:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3247
    const-string v1, "syncLookback"

    iget v2, p0, Lcom/android/email/provider/EmailContent$Mailbox;->mSyncLookback:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3248
    const-string v1, "syncInterval"

    iget v2, p0, Lcom/android/email/provider/EmailContent$Mailbox;->mSyncInterval:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3249
    const-string v1, "syncTime"

    iget-wide v2, p0, Lcom/android/email/provider/EmailContent$Mailbox;->mSyncTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3250
    const-string v1, "unreadCount"

    iget v2, p0, Lcom/android/email/provider/EmailContent$Mailbox;->mUnreadCount:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3251
    const-string v1, "flagVisible"

    iget-boolean v2, p0, Lcom/android/email/provider/EmailContent$Mailbox;->mFlagVisible:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 3252
    const-string v1, "flags"

    iget v2, p0, Lcom/android/email/provider/EmailContent$Mailbox;->mFlags:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3253
    const-string v1, "visibleLimit"

    iget v2, p0, Lcom/android/email/provider/EmailContent$Mailbox;->mVisibleLimit:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3254
    const-string v1, "syncStatus"

    iget-object v2, p0, Lcom/android/email/provider/EmailContent$Mailbox;->mSyncStatus:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3256
    const-string v1, "flagChanged"

    iget v2, p0, Lcom/android/email/provider/EmailContent$Mailbox;->mFlagChanged:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3257
    const-string v1, "dstMailboxId"

    iget-object v2, p0, Lcom/android/email/provider/EmailContent$Mailbox;->mDstServerId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3258
    const-string v1, "newDisplayName"

    iget-object v2, p0, Lcom/android/email/provider/EmailContent$Mailbox;->mNewDisplayName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3260
    return-object v0
.end method
