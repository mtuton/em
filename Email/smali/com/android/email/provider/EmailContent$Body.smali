.class public final Lcom/android/email/provider/EmailContent$Body;
.super Lcom/android/email/provider/EmailContent;
.source "EmailContent.java"

# interfaces
.implements Lcom/android/email/provider/EmailContent$BodyColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/provider/EmailContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Body"
.end annotation


# static fields
.field public static final COMMON_PROJECTION_COLUMN_TEXT:I = 0x1

.field public static final COMMON_PROJECTION_HTML:[Ljava/lang/String; = null

.field public static final COMMON_PROJECTION_INTRO:[Ljava/lang/String; = null

.field public static final COMMON_PROJECTION_REPLY_HTML:[Ljava/lang/String; = null

.field public static final COMMON_PROJECTION_REPLY_TEXT:[Ljava/lang/String; = null

.field public static final COMMON_PROJECTION_TEXT:[Ljava/lang/String; = null

.field public static final CONTENT_HTML_CONTENT_COLUMN:I = 0x2

.field public static final CONTENT_HTML_REPLY_COLUMN:I = 0x4

.field public static final CONTENT_ID_COLUMN:I = 0x0

.field public static final CONTENT_INTRO_TEXT_COLUMN:I = 0x7

.field public static final CONTENT_MESSAGE_KEY_COLUMN:I = 0x1

.field public static final CONTENT_PROJECTION:[Ljava/lang/String; = null

.field public static final CONTENT_SOURCE_KEY_COLUMN:I = 0x6

.field public static final CONTENT_TEXT_CONTENT_COLUMN:I = 0x3

.field public static final CONTENT_TEXT_REPLY_COLUMN:I = 0x5

.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field private static final PROJECTION_SOURCE_KEY:[Ljava/lang/String; = null

.field public static final TABLE_NAME:Ljava/lang/String; = "Body"


# instance fields
.field public mHtmlContent:Ljava/lang/String;

.field public mHtmlReply:Ljava/lang/String;

.field public mIntroText:Ljava/lang/String;

.field public mMessageKey:J

.field public mSourceKey:J

.field public mTextContent:Ljava/lang/String;

.field public mTextReply:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v7, "htmlContent"

    const-string v6, "_id"

    .line 225
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/email/provider/EmailContent;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/body"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/email/provider/EmailContent$Body;->CONTENT_URI:Landroid/net/Uri;

    .line 235
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v6, v0, v3

    const-string v1, "messageKey"

    aput-object v1, v0, v4

    const-string v1, "htmlContent"

    aput-object v7, v0, v5

    const/4 v1, 0x3

    const-string v2, "textContent"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "htmlReply"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "textReply"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "sourceMessageKey"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "introText"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/email/provider/EmailContent$Body;->CONTENT_PROJECTION:[Ljava/lang/String;

    .line 241
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v6, v0, v3

    const-string v1, "textContent"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/email/provider/EmailContent$Body;->COMMON_PROJECTION_TEXT:[Ljava/lang/String;

    .line 244
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v6, v0, v3

    const-string v1, "htmlContent"

    aput-object v7, v0, v4

    sput-object v0, Lcom/android/email/provider/EmailContent$Body;->COMMON_PROJECTION_HTML:[Ljava/lang/String;

    .line 247
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v6, v0, v3

    const-string v1, "textReply"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/email/provider/EmailContent$Body;->COMMON_PROJECTION_REPLY_TEXT:[Ljava/lang/String;

    .line 250
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v6, v0, v3

    const-string v1, "htmlReply"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/email/provider/EmailContent$Body;->COMMON_PROJECTION_REPLY_HTML:[Ljava/lang/String;

    .line 253
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v6, v0, v3

    const-string v1, "introText"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/email/provider/EmailContent$Body;->COMMON_PROJECTION_INTRO:[Ljava/lang/String;

    .line 258
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "sourceMessageKey"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/email/provider/EmailContent$Body;->PROJECTION_SOURCE_KEY:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 269
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/email/provider/EmailContent;-><init>(Lcom/android/email/provider/EmailContent$1;)V

    .line 270
    sget-object v0, Lcom/android/email/provider/EmailContent$Body;->CONTENT_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/email/provider/EmailContent$Body;->mBaseUri:Landroid/net/Uri;

    .line 271
    return-void
.end method

.method public static lookupBodyIdWithMessageId(Landroid/content/ContentResolver;J)J
    .locals 7
    .parameter "resolver"
    .parameter "messageId"

    .prologue
    const/4 v5, 0x0

    .line 326
    sget-object v1, Lcom/android/email/provider/EmailContent$Body;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/email/provider/EmailContent$Body;->ID_PROJECTION:[Ljava/lang/String;

    const-string v3, "messageKey=?"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v5

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 330
    .local v6, c:Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    .line 332
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    return-wide v0

    .line 330
    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0

    .line 332
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static restoreBodyHtmlWithMessageId(Landroid/content/Context;J)Ljava/lang/String;
    .locals 1
    .parameter "context"
    .parameter "messageId"

    .prologue
    .line 389
    sget-object v0, Lcom/android/email/provider/EmailContent$Body;->COMMON_PROJECTION_HTML:[Ljava/lang/String;

    invoke-static {p0, p1, p2, v0}, Lcom/android/email/provider/EmailContent$Body;->restoreTextWithMessageId(Landroid/content/Context;J[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static restoreBodySourceKey(Landroid/content/Context;J)J
    .locals 8
    .parameter "context"
    .parameter "messageId"

    .prologue
    const/4 v7, 0x0

    .line 355
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/email/provider/EmailContent$Body;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/email/provider/EmailContent$Body;->PROJECTION_SOURCE_KEY:[Ljava/lang/String;

    const-string v3, "messageKey=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 359
    .local v6, c:Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 360
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    .line 365
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :goto_0
    return-wide v0

    .line 362
    :cond_0
    const-wide/16 v0, 0x0

    .line 365
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static restoreBodyTextWithMessageId(Landroid/content/Context;J)Ljava/lang/String;
    .locals 1
    .parameter "context"
    .parameter "messageId"

    .prologue
    .line 385
    sget-object v0, Lcom/android/email/provider/EmailContent$Body;->COMMON_PROJECTION_TEXT:[Ljava/lang/String;

    invoke-static {p0, p1, p2, v0}, Lcom/android/email/provider/EmailContent$Body;->restoreTextWithMessageId(Landroid/content/Context;J[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static restoreBodyWithCursor(Landroid/database/Cursor;)Lcom/android/email/provider/EmailContent$Body;
    .locals 1
    .parameter "cursor"

    .prologue
    .line 290
    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 291
    const-class v0, Lcom/android/email/provider/EmailContent$Body;

    invoke-static {p0, v0}, Lcom/android/email/provider/EmailContent$Body;->getContent(Landroid/database/Cursor;Ljava/lang/Class;)Lcom/android/email/provider/EmailContent;

    move-result-object v0

    check-cast v0, Lcom/android/email/provider/EmailContent$Body;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 296
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :goto_0
    return-object v0

    .line 293
    :cond_0
    const/4 v0, 0x0

    .line 296
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static restoreBodyWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Body;
    .locals 7
    .parameter "context"
    .parameter "id"

    .prologue
    const/4 v3, 0x0

    .line 301
    sget-object v0, Lcom/android/email/provider/EmailContent$Body;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 302
    .local v1, u:Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/android/email/provider/EmailContent$Body;->CONTENT_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 305
    .local v6, c:Landroid/database/Cursor;
    if-nez v6, :cond_0

    move-object v0, v3

    .line 308
    :goto_0
    return-object v0

    :cond_0
    invoke-static {v6}, Lcom/android/email/provider/EmailContent$Body;->restoreBodyWithCursor(Landroid/database/Cursor;)Lcom/android/email/provider/EmailContent$Body;

    move-result-object v0

    goto :goto_0
.end method

.method public static restoreBodyWithMessageId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Body;
    .locals 9
    .parameter "context"
    .parameter "messageId"

    .prologue
    const/4 v5, 0x0

    .line 312
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/email/provider/EmailContent$Body;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/email/provider/EmailContent$Body;->CONTENT_PROJECTION:[Ljava/lang/String;

    const-string v3, "messageKey=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v7

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 316
    .local v6, c:Landroid/database/Cursor;
    if-nez v6, :cond_0

    move-object v0, v5

    .line 319
    :goto_0
    return-object v0

    :cond_0
    invoke-static {v6}, Lcom/android/email/provider/EmailContent$Body;->restoreBodyWithCursor(Landroid/database/Cursor;)Lcom/android/email/provider/EmailContent$Body;

    move-result-object v0

    goto :goto_0
.end method

.method public static restoreIntroTextWithMessageId(Landroid/content/Context;J)Ljava/lang/String;
    .locals 1
    .parameter "context"
    .parameter "messageId"

    .prologue
    .line 401
    sget-object v0, Lcom/android/email/provider/EmailContent$Body;->COMMON_PROJECTION_INTRO:[Ljava/lang/String;

    invoke-static {p0, p1, p2, v0}, Lcom/android/email/provider/EmailContent$Body;->restoreTextWithMessageId(Landroid/content/Context;J[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static restoreReplyHtmlWithMessageId(Landroid/content/Context;J)Ljava/lang/String;
    .locals 1
    .parameter "context"
    .parameter "messageId"

    .prologue
    .line 397
    sget-object v0, Lcom/android/email/provider/EmailContent$Body;->COMMON_PROJECTION_REPLY_HTML:[Ljava/lang/String;

    invoke-static {p0, p1, p2, v0}, Lcom/android/email/provider/EmailContent$Body;->restoreTextWithMessageId(Landroid/content/Context;J[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static restoreReplyTextWithMessageId(Landroid/content/Context;J)Ljava/lang/String;
    .locals 1
    .parameter "context"
    .parameter "messageId"

    .prologue
    .line 393
    sget-object v0, Lcom/android/email/provider/EmailContent$Body;->COMMON_PROJECTION_REPLY_TEXT:[Ljava/lang/String;

    invoke-static {p0, p1, p2, v0}, Lcom/android/email/provider/EmailContent$Body;->restoreTextWithMessageId(Landroid/content/Context;J[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static restoreTextWithMessageId(Landroid/content/Context;J[Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "context"
    .parameter "messageId"
    .parameter "projection"

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x1

    .line 371
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/email/provider/EmailContent$Body;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "messageKey=?"

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v2

    move-object v2, p3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 374
    .local v6, c:Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 375
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 380
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :goto_0
    return-object v0

    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move-object v0, v5

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static updateBodyWithMessageId(Landroid/content/Context;JLandroid/content/ContentValues;)V
    .locals 7
    .parameter "context"
    .parameter "messageId"
    .parameter "values"

    .prologue
    const/4 v6, 0x0

    .line 343
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 344
    .local v2, resolver:Landroid/content/ContentResolver;
    invoke-static {v2, p1, p2}, Lcom/android/email/provider/EmailContent$Body;->lookupBodyIdWithMessageId(Landroid/content/ContentResolver;J)J

    move-result-wide v0

    .line 345
    .local v0, bodyId:J
    const-string v4, "messageKey"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {p3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 346
    const-wide/16 v4, -0x1

    cmp-long v4, v0, v4

    if-nez v4, :cond_0

    .line 347
    sget-object v4, Lcom/android/email/provider/EmailContent$Body;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v4, p3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 352
    :goto_0
    return-void

    .line 349
    :cond_0
    sget-object v4, Lcom/android/email/provider/EmailContent$Body;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v4, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .line 350
    .local v3, uri:Landroid/net/Uri;
    invoke-virtual {v2, v3, p3, v6, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public restore(Landroid/database/Cursor;)Lcom/android/email/provider/EmailContent$Body;
    .locals 2
    .parameter "c"

    .prologue
    .line 407
    sget-object v0, Lcom/android/email/provider/EmailContent$Body;->CONTENT_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/email/provider/EmailContent$Body;->mBaseUri:Landroid/net/Uri;

    .line 408
    const/4 v0, 0x1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/email/provider/EmailContent$Body;->mMessageKey:J

    .line 409
    const/4 v0, 0x2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/provider/EmailContent$Body;->mHtmlContent:Ljava/lang/String;

    .line 410
    const/4 v0, 0x3

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/provider/EmailContent$Body;->mTextContent:Ljava/lang/String;

    .line 411
    const/4 v0, 0x4

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/provider/EmailContent$Body;->mHtmlReply:Ljava/lang/String;

    .line 412
    const/4 v0, 0x5

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/provider/EmailContent$Body;->mTextReply:Ljava/lang/String;

    .line 413
    const/4 v0, 0x6

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/email/provider/EmailContent$Body;->mSourceKey:J

    .line 414
    const/4 v0, 0x7

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/provider/EmailContent$Body;->mIntroText:Ljava/lang/String;

    .line 415
    return-object p0
.end method

.method public bridge synthetic restore(Landroid/database/Cursor;)Lcom/android/email/provider/EmailContent;
    .locals 1
    .parameter "x0"

    .prologue
    .line 223
    invoke-virtual {p0, p1}, Lcom/android/email/provider/EmailContent$Body;->restore(Landroid/database/Cursor;)Lcom/android/email/provider/EmailContent$Body;

    move-result-object v0

    return-object v0
.end method

.method public toContentValues()Landroid/content/ContentValues;
    .locals 4

    .prologue
    .line 275
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 278
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "messageKey"

    iget-wide v2, p0, Lcom/android/email/provider/EmailContent$Body;->mMessageKey:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 279
    const-string v1, "htmlContent"

    iget-object v2, p0, Lcom/android/email/provider/EmailContent$Body;->mHtmlContent:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    const-string v1, "textContent"

    iget-object v2, p0, Lcom/android/email/provider/EmailContent$Body;->mTextContent:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    const-string v1, "htmlReply"

    iget-object v2, p0, Lcom/android/email/provider/EmailContent$Body;->mHtmlReply:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    const-string v1, "textReply"

    iget-object v2, p0, Lcom/android/email/provider/EmailContent$Body;->mTextReply:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    const-string v1, "sourceMessageKey"

    iget-wide v2, p0, Lcom/android/email/provider/EmailContent$Body;->mSourceKey:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 284
    const-string v1, "introText"

    iget-object v2, p0, Lcom/android/email/provider/EmailContent$Body;->mIntroText:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    return-object v0
.end method

.method public update()Z
    .locals 1

    .prologue
    .line 420
    const/4 v0, 0x0

    return v0
.end method
