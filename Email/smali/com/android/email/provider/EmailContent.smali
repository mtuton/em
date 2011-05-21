.class public abstract Lcom/android/email/provider/EmailContent;
.super Ljava/lang/Object;
.source "EmailContent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/provider/EmailContent$1;,
        Lcom/android/email/provider/EmailContent$Policies;,
        Lcom/android/email/provider/EmailContent$PoliciesColumns;,
        Lcom/android/email/provider/EmailContent$HostAuth;,
        Lcom/android/email/provider/EmailContent$HostAuthColumns;,
        Lcom/android/email/provider/EmailContent$Mailbox;,
        Lcom/android/email/provider/EmailContent$MailboxColumns;,
        Lcom/android/email/provider/EmailContent$Attachment;,
        Lcom/android/email/provider/EmailContent$AttachmentColumns;,
        Lcom/android/email/provider/EmailContent$Account;,
        Lcom/android/email/provider/EmailContent$AccountColumns;,
        Lcom/android/email/provider/EmailContent$FollowupFlag;,
        Lcom/android/email/provider/EmailContent$FollowupFlagColumns;,
        Lcom/android/email/provider/EmailContent$Message;,
        Lcom/android/email/provider/EmailContent$MessageColumns;,
        Lcom/android/email/provider/EmailContent$Body;,
        Lcom/android/email/provider/EmailContent$BodyColumns;,
        Lcom/android/email/provider/EmailContent$SyncColumns;
    }
.end annotation


# static fields
.field public static final ADD_COLUMN_NAME:Ljava/lang/String; = "add"

.field public static final AUTHORITY:Ljava/lang/String; = "com.android.email.provider"

.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final CONTROLED_SYNC_ID_COLUMN:I = 0x0

.field public static final CONTROLED_SYNC_INTERVAL_COLUMN:I = 0x1

.field public static final CONTROLED_SYNC_PROJECTION:[Ljava/lang/String; = null

.field private static final COUNT_COLUMNS:[Ljava/lang/String; = null

.field public static final FIELD_COLUMN_NAME:Ljava/lang/String; = "field"

.field public static final ID_PROJECTION:[Ljava/lang/String; = null

.field public static final ID_PROJECTION_COLUMN:I = 0x0

.field private static final ID_SELECTION:Ljava/lang/String; = "_id =?"

.field private static final NOT_SAVED:I = -0x1

.field public static final RECORD_ID:Ljava/lang/String; = "_id"

.field public static final SYNC_INTERVAL_COLUMN:Ljava/lang/String; = "syncInterval"

.field public static final TAG:Ljava/lang/String; = "EmailContent >>"


# instance fields
.field public mBaseUri:Landroid/net/Uri;

.field public mId:J

.field private mUri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const-string v4, "_id"

    .line 78
    const-string v0, "content://com.android.email.provider"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/email/provider/EmailContent;->CONTENT_URI:Landroid/net/Uri;

    .line 82
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "count(*)"

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/email/provider/EmailContent;->COUNT_COLUMNS:[Ljava/lang/String;

    .line 88
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v4, v0, v2

    sput-object v0, Lcom/android/email/provider/EmailContent;->ID_PROJECTION:[Ljava/lang/String;

    .line 95
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v4, v0, v2

    const-string v1, "syncInterval"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/email/provider/EmailContent;->CONTROLED_SYNC_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 194
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/email/provider/EmailContent;->mUri:Landroid/net/Uri;

    .line 115
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/email/provider/EmailContent;->mId:J

    .line 195
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/email/provider/EmailContent$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/android/email/provider/EmailContent;-><init>()V

    return-void
.end method

.method public static count(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 8
    .parameter "context"
    .parameter "uri"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    const/4 v7, 0x0

    .line 179
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/android/email/provider/EmailContent;->COUNT_COLUMNS:[Ljava/lang/String;

    const/4 v5, 0x0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 182
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 187
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move v0, v7

    :goto_0
    return v0

    .line 185
    :cond_0
    const/4 v0, 0x0

    :try_start_1
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    .line 187
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static getContent(Landroid/database/Cursor;Ljava/lang/Class;)Lcom/android/email/provider/EmailContent;
    .locals 4
    .parameter "cursor"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/email/provider/EmailContent;",
            ">(",
            "Landroid/database/Cursor;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 138
    .local p1, klass:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/provider/EmailContent;

    .line 139
    .local v0, content:Lcom/android/email/provider/EmailContent;,"TT;"
    const/4 v2, 0x0

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/android/email/provider/EmailContent;->mId:J

    .line 140
    invoke-virtual {v0, p0}, Lcom/android/email/provider/EmailContent;->restore(Landroid/database/Cursor;)Lcom/android/email/provider/EmailContent;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 146
    .end local v0           #content:Lcom/android/email/provider/EmailContent;,"TT;"
    :goto_0
    return-object v2

    .line 141
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 142
    .local v1, e:Ljava/lang/IllegalAccessException;
    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    .line 146
    .end local v1           #e:Ljava/lang/IllegalAccessException;
    :goto_1
    const/4 v2, 0x0

    goto :goto_0

    .line 143
    :catch_1
    move-exception v2

    move-object v1, v2

    .line 144
    .local v1, e:Ljava/lang/InstantiationException;
    invoke-virtual {v1}, Ljava/lang/InstantiationException;->printStackTrace()V

    goto :goto_1
.end method

.method public static update(Landroid/content/Context;Landroid/net/Uri;JLandroid/content/ContentValues;)I
    .locals 3
    .parameter "context"
    .parameter "baseUri"
    .parameter "id"
    .parameter "contentValues"

    .prologue
    const/4 v2, 0x0

    .line 166
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {p1, p2, p3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, p4, v2, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method


# virtual methods
.method public getUri()Landroid/net/Uri;
    .locals 3

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/email/provider/EmailContent;->mUri:Landroid/net/Uri;

    if-nez v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/android/email/provider/EmailContent;->mBaseUri:Landroid/net/Uri;

    iget-wide v1, p0, Lcom/android/email/provider/EmailContent;->mId:J

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/provider/EmailContent;->mUri:Landroid/net/Uri;

    .line 127
    :cond_0
    iget-object v0, p0, Lcom/android/email/provider/EmailContent;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method public isSaved()Z
    .locals 4

    .prologue
    .line 131
    iget-wide v0, p0, Lcom/android/email/provider/EmailContent;->mId:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public abstract restore(Landroid/database/Cursor;)Lcom/android/email/provider/EmailContent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/email/provider/EmailContent;",
            ">(",
            "Landroid/database/Cursor;",
            ")TT;"
        }
    .end annotation
.end method

.method public save(Landroid/content/Context;)Landroid/net/Uri;
    .locals 4
    .parameter "context"

    .prologue
    .line 150
    invoke-virtual {p0}, Lcom/android/email/provider/EmailContent;->isSaved()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 151
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v1

    .line 153
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/email/provider/EmailContent;->mBaseUri:Landroid/net/Uri;

    invoke-virtual {p0}, Lcom/android/email/provider/EmailContent;->toContentValues()Landroid/content/ContentValues;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    .line 154
    .local v0, res:Landroid/net/Uri;
    invoke-virtual {v0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/email/provider/EmailContent;->mId:J

    .line 155
    return-object v0
.end method

.method public abstract toContentValues()Landroid/content/ContentValues;
.end method

.method public update(Landroid/content/Context;Landroid/content/ContentValues;)I
    .locals 3
    .parameter "context"
    .parameter "contentValues"

    .prologue
    const/4 v2, 0x0

    .line 159
    invoke-virtual {p0}, Lcom/android/email/provider/EmailContent;->isSaved()Z

    move-result v0

    if-nez v0, :cond_0

    .line 160
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 162
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/email/provider/EmailContent;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, p2, v2, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method
