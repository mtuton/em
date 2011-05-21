.class public Lcom/android/email/provider/AttachmentProvider;
.super Landroid/content/ContentProvider;
.source "AttachmentProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/provider/AttachmentProvider$AttachmentProviderColumns;
    }
.end annotation


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "com.android.email.attachmentprovider"

.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field private static final FORMAT_RAW:Ljava/lang/String; = "RAW"

.field private static final FORMAT_THUMBNAIL:Ljava/lang/String; = "THUMBNAIL"

.field private static final MIME_TYPE_COLUMN_FILENAME:I = 0x1

.field private static final MIME_TYPE_COLUMN_MIME_TYPE:I

.field private static final MIME_TYPE_PROJECTION:[Ljava/lang/String;

.field private static final PROJECTION_QUERY:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    const-string v5, "fileName"

    .line 73
    const-string v0, "content://com.android.email.attachmentprovider"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/email/provider/AttachmentProvider;->CONTENT_URI:Landroid/net/Uri;

    .line 85
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "mimeType"

    aput-object v1, v0, v2

    const-string v1, "fileName"

    aput-object v5, v0, v3

    sput-object v0, Lcom/android/email/provider/AttachmentProvider;->MIME_TYPE_PROJECTION:[Ljava/lang/String;

    .line 90
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "fileName"

    aput-object v5, v0, v2

    const-string v1, "size"

    aput-object v1, v0, v3

    const-string v1, "contentUri"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/email/provider/AttachmentProvider;->PROJECTION_QUERY:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 70
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 78
    return-void
.end method

.method public static IsAllAttachmentFilesExist(Landroid/content/Context;JJ)Z
    .locals 11
    .parameter "context"
    .parameter "accountId"
    .parameter "messageId"

    .prologue
    const/4 v3, 0x0

    .line 125
    const/4 v9, 0x1

    .line 127
    .local v9, bret:Z
    sget-object v0, Lcom/android/email/provider/EmailContent$Attachment;->MESSAGE_ID_URI:Landroid/net/Uri;

    invoke-static {v0, p3, p4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 128
    .local v1, uri:Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/android/email/provider/EmailContent$Attachment;->ID_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 131
    .local v10, c:Landroid/database/Cursor;
    :cond_0
    :try_start_0
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 132
    const/4 v0, 0x0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 133
    .local v7, attachmentId:J
    invoke-static {p0, p1, p2, v7, v8}, Lcom/android/email/provider/AttachmentProvider;->getAttachmentFilename(Landroid/content/Context;JJ)Ljava/io/File;

    move-result-object v6

    .line 135
    .local v6, attachmentFile:Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 137
    const/4 v9, 0x0

    .line 142
    .end local v6           #attachmentFile:Ljava/io/File;
    .end local v7           #attachmentId:J
    :cond_1
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 145
    return v9

    .line 142
    :catchall_0
    move-exception v0

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static changeMimeType(Landroid/content/Context;JJLjava/lang/String;)Z
    .locals 5
    .parameter "context"
    .parameter "accountId"
    .parameter "attachmentId"
    .parameter "newMimeType"

    .prologue
    const/4 v4, 0x0

    .line 303
    invoke-static {p1, p2, p3, p4}, Lcom/android/email/provider/AttachmentProvider;->getAttachmentUri(JJ)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 304
    .local v0, contentUriString_target:Ljava/lang/String;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 305
    .local v1, cv_target:Landroid/content/ContentValues;
    const-string v3, "mimeType"

    invoke-virtual {v1, v3, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    sget-object v3, Lcom/android/email/provider/EmailContent$Attachment;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3, p3, p4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    .line 307
    .local v2, uri_target:Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, v2, v1, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 308
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "changeMimeType: accountId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " attachmentId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " uri_target = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " newMimeType = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/email/Email;->log(Ljava/lang/String;)V

    .line 310
    const/4 v3, 0x1

    return v3
.end method

.method private createImageThumbnail(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    .locals 4
    .parameter "data"

    .prologue
    const/4 v3, 0x0

    .line 588
    :try_start_0
    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .local v0, bitmap:Landroid/graphics/Bitmap;
    move-object v3, v0

    .line 601
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    :goto_0
    return-object v3

    .line 591
    :catch_0
    move-exception v2

    .line 598
    .local v2, oome:Ljava/lang/OutOfMemoryError;
    goto :goto_0

    .line 600
    .end local v2           #oome:Ljava/lang/OutOfMemoryError;
    :catch_1
    move-exception v1

    .line 601
    .local v1, e:Ljava/lang/Exception;
    goto :goto_0
.end method

.method private createThumbnail(Ljava/lang/String;Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "type"
    .parameter "data"

    .prologue
    .line 580
    const-string v0, "image/*"

    invoke-static {p1, v0}, Lcom/android/email/mail/internet/MimeUtility;->mimeTypeMatches(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 581
    invoke-direct {p0, p2}, Lcom/android/email/provider/AttachmentProvider;->createImageThumbnail(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 583
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static deleteAllAttachmentFiles(Landroid/content/Context;JJ)V
    .locals 10
    .parameter "context"
    .parameter "accountId"
    .parameter "messageId"

    .prologue
    const/4 v3, 0x0

    .line 643
    sget-object v0, Lcom/android/email/provider/EmailContent$Attachment;->MESSAGE_ID_URI:Landroid/net/Uri;

    invoke-static {v0, p3, p4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 644
    .local v1, uri:Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/android/email/provider/EmailContent$Attachment;->ID_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 647
    .local v9, c:Landroid/database/Cursor;
    :goto_0
    :try_start_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 648
    const/4 v0, 0x0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 649
    .local v7, attachmentId:J
    invoke-static {p0, p1, p2, v7, v8}, Lcom/android/email/provider/AttachmentProvider;->getAttachmentFilename(Landroid/content/Context;JJ)Ljava/io/File;

    move-result-object v6

    .line 653
    .local v6, attachmentFile:Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->delete()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 656
    .end local v6           #attachmentFile:Ljava/io/File;
    .end local v7           #attachmentId:J
    :catchall_0
    move-exception v0

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_0
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 658
    return-void
.end method

.method public static deleteAllMailboxAttachmentFiles(Landroid/content/Context;JJ)V
    .locals 10
    .parameter "context"
    .parameter "accountId"
    .parameter "mailboxId"

    .prologue
    const/4 v9, 0x0

    .line 669
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/email/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/email/provider/EmailContent$Message;->ID_COLUMN_PROJECTION:[Ljava/lang/String;

    const-string v3, "mailboxKey=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v9

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 673
    .local v6, c:Landroid/database/Cursor;
    :goto_0
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 674
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 675
    .local v7, messageId:J
    invoke-static {p0, p1, p2, v7, v8}, Lcom/android/email/provider/AttachmentProvider;->deleteAllAttachmentFiles(Landroid/content/Context;JJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 678
    .end local v7           #messageId:J
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 680
    return-void
.end method

.method public static getAllAttachmentId(Landroid/content/Context;J)Ljava/util/HashSet;
    .locals 10
    .parameter "context"
    .parameter "messageId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "J)",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 175
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 176
    .local v6, attachmentId:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    const-wide/16 v8, 0x0

    .line 178
    .local v8, id:J
    sget-object v0, Lcom/android/email/provider/EmailContent$Attachment;->MESSAGE_ID_URI:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 179
    .local v1, uri:Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/android/email/provider/EmailContent$Attachment;->ID_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 182
    .local v7, c:Landroid/database/Cursor;
    :goto_0
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 183
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 185
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 188
    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 191
    return-object v6
.end method

.method public static getAttachmentDirectory(Landroid/content/Context;J)Ljava/io/File;
    .locals 2
    .parameter "context"
    .parameter "accountId"

    .prologue
    .line 321
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".db_att"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static getAttachmentFilename(Landroid/content/Context;JJ)Ljava/io/File;
    .locals 3
    .parameter "context"
    .parameter "accountId"
    .parameter "attachmentId"

    .prologue
    .line 120
    new-instance v0, Ljava/io/File;

    invoke-static {p0, p1, p2}, Lcom/android/email/provider/AttachmentProvider;->getAttachmentDirectory(Landroid/content/Context;J)Ljava/io/File;

    move-result-object v1

    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getAttachmentThumbnailUri(JJII)Landroid/net/Uri;
    .locals 2
    .parameter "accountId"
    .parameter "id"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 103
    sget-object v0, Lcom/android/email/provider/AttachmentProvider;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-static {p0, p1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "THUMBNAIL"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-static {p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-static {p5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static getAttachmentUri(JJ)Landroid/net/Uri;
    .locals 2
    .parameter "accountId"
    .parameter "id"

    .prologue
    .line 94
    sget-object v0, Lcom/android/email/provider/AttachmentProvider;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-static {p0, p1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "RAW"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static getFileNotExistAttachmentId(Landroid/content/Context;JJ)Ljava/util/HashSet;
    .locals 11
    .parameter "context"
    .parameter "accountId"
    .parameter "messageId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "JJ)",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 151
    new-instance v10, Ljava/util/HashSet;

    invoke-direct {v10}, Ljava/util/HashSet;-><init>()V

    .line 153
    .local v10, ids:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    sget-object v0, Lcom/android/email/provider/EmailContent$Attachment;->MESSAGE_ID_URI:Landroid/net/Uri;

    invoke-static {v0, p3, p4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 154
    .local v1, uri:Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/android/email/provider/EmailContent$Attachment;->ID_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 157
    .local v9, c:Landroid/database/Cursor;
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 158
    const/4 v0, 0x0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 159
    .local v7, attachmentId:J
    invoke-static {p0, p1, p2, v7, v8}, Lcom/android/email/provider/AttachmentProvider;->getAttachmentFilename(Landroid/content/Context;JJ)Ljava/io/File;

    move-result-object v6

    .line 161
    .local v6, attachmentFile:Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 163
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 167
    .end local v6           #attachmentFile:Ljava/io/File;
    .end local v7           #attachmentId:J
    :catchall_0
    move-exception v0

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_1
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 170
    return-object v10
.end method

.method public static inferMimeType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "fileName"
    .parameter "mimeType"

    .prologue
    const-string v4, "application/octet-stream"

    .line 388
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "application/octet-stream"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    move-object v2, p1

    .line 411
    :goto_0
    return-object v2

    .line 394
    :cond_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 395
    const/16 v2, 0x2e

    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 396
    .local v1, lastDot:I
    const/4 v0, 0x0

    .line 397
    .local v0, extension:Ljava/lang/String;
    if-lez v1, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    if-ge v1, v2, :cond_1

    .line 398
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 400
    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 402
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 403
    if-nez p1, :cond_2

    .line 404
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "application/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_2
    move-object v2, p1

    .line 406
    goto :goto_0

    .line 411
    .end local v0           #extension:Ljava/lang/String;
    .end local v1           #lastDot:I
    :cond_3
    const-string v2, "application/octet-stream"

    move-object v2, v4

    goto :goto_0
.end method

.method public static moveAllAttachmentToOtherAccount(Landroid/content/Context;JJJ)Z
    .locals 15
    .parameter "context"
    .parameter "accountId"
    .parameter "messageId"
    .parameter "target_accountId"

    .prologue
    .line 201
    sget-object v5, Lcom/android/email/provider/EmailContent$Attachment;->MESSAGE_ID_URI:Landroid/net/Uri;

    move-object v0, v5

    move-wide/from16 v1, p3

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    .line 202
    .local v6, uri:Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v7, Lcom/android/email/provider/EmailContent$Attachment;->ID_PROJECTION:[Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 205
    .local v6, c:Landroid/database/Cursor;
    if-nez v6, :cond_0

    .line 207
    const/4 p0, 0x1

    .line 247
    .end local p0
    :goto_0
    return p0

    .line 212
    .restart local p0
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v5

    .local v5, fail_cnt:I
    move v14, v5

    .line 213
    .end local v5           #fail_cnt:I
    .local v14, fail_cnt:I
    :cond_1
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 214
    const/4 v5, 0x0

    invoke-interface {v6, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .local v10, attachmentId:J
    move-object v7, p0

    move-wide/from16 v8, p1

    move-wide/from16 v12, p5

    .line 217
    :try_start_0
    invoke-static/range {v7 .. v13}, Lcom/android/email/provider/AttachmentProvider;->moveOneAttachmentToOtherAccount(Landroid/content/Context;JJJ)Z
    :try_end_0
    .catch Lcom/android/email/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2

    move-result v5

    .line 230
    .local v5, bret:Z
    :goto_2
    const/4 v7, 0x1

    if-ne v5, v7, :cond_1

    .line 232
    add-int/lit8 v5, v14, -0x1

    .end local v14           #fail_cnt:I
    .local v5, fail_cnt:I
    move v14, v5

    .end local v5           #fail_cnt:I
    .restart local v14       #fail_cnt:I
    goto :goto_1

    .line 219
    :catch_0
    move-exception v5

    .line 221
    .local v5, e:Lcom/android/email/mail/MessagingException;
    const/4 v5, 0x0

    .line 229
    .local v5, bret:Z
    goto :goto_2

    .line 223
    .end local v5           #bret:Z
    :catch_1
    move-exception v5

    .line 225
    .local v5, e:Ljava/io/IOException;
    const/4 v5, 0x0

    .line 229
    .local v5, bret:Z
    goto :goto_2

    .line 227
    .end local v5           #bret:Z
    :catch_2
    move-exception v5

    .line 228
    .local v5, e:Ljava/lang/RuntimeException;
    const/4 v5, 0x0

    .local v5, bret:Z
    goto :goto_2

    .line 236
    .end local v5           #bret:Z
    .end local v10           #attachmentId:J
    :cond_2
    if-lez v14, :cond_3

    .line 238
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 239
    const/4 p0, 0x0

    goto :goto_0

    .line 242
    :cond_3
    move-object v0, p0

    move-wide/from16 v1, p5

    move-wide/from16 v3, p3

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/email/provider/AttachmentProvider;->IsAllAttachmentFilesExist(Landroid/content/Context;JJ)Z

    move-result p0

    .end local p0
    if-nez p0, :cond_4

    .line 243
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 244
    const/4 p0, 0x0

    goto :goto_0

    .line 246
    :cond_4
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 247
    const/4 p0, 0x1

    goto :goto_0
.end method

.method public static moveOneAttachmentToOtherAccount(Landroid/content/Context;JJJ)Z
    .locals 4
    .parameter "context"
    .parameter "accountId"
    .parameter "attachmentId"
    .parameter "target_accountId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/email/mail/MessagingException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 258
    invoke-static {p0, p5, p6}, Lcom/android/email/provider/AttachmentProvider;->getAttachmentDirectory(Landroid/content/Context;J)Ljava/io/File;

    move-result-object v0

    .line 259
    .local v0, saveIn:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 260
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 262
    :cond_0
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/email/provider/AttachmentProvider;->getAttachmentFilename(Landroid/content/Context;JJ)Ljava/io/File;

    move-result-object p1

    .line 263
    .local p1, OrigFile:Ljava/io/File;
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p2

    if-nez p2, :cond_2

    .line 265
    :cond_1
    const/4 p0, 0x0

    .line 295
    .end local v0           #saveIn:Ljava/io/File;
    .end local p0
    .end local p3
    .end local p5
    :goto_0
    return p0

    .line 267
    .restart local v0       #saveIn:Ljava/io/File;
    .restart local p0
    .restart local p3
    .restart local p5
    :cond_2
    invoke-static {p0, p5, p6, p3, p4}, Lcom/android/email/provider/AttachmentProvider;->getAttachmentFilename(Landroid/content/Context;JJ)Ljava/io/File;

    move-result-object p2

    .line 269
    .local p2, SaveAs:Ljava/io/File;
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 270
    .local v2, from:Ljava/io/FileInputStream;
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 272
    .local v3, to:Ljava/io/FileOutputStream;
    if-eqz v2, :cond_3

    if-nez v3, :cond_4

    .line 274
    :cond_3
    const/4 p0, 0x0

    goto :goto_0

    .line 278
    :cond_4
    const-wide/16 v0, 0x0

    .line 279
    .local v0, copySize:J
    invoke-static {v2, v3}, Lorg/apache/commons/io/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I

    move-result p2

    .end local p2           #SaveAs:Ljava/io/File;
    int-to-long v0, p2

    .line 280
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    .line 281
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 284
    invoke-static {p5, p6, p3, p4}, Lcom/android/email/provider/AttachmentProvider;->getAttachmentUri(JJ)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    .line 286
    .local p2, contentUriString_target:Ljava/lang/String;
    new-instance p5, Landroid/content/ContentValues;

    .end local p5
    invoke-direct {p5}, Landroid/content/ContentValues;-><init>()V

    .line 287
    .local p5, cv_target:Landroid/content/ContentValues;
    const-string p6, "size"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .end local v0           #copySize:J
    invoke-virtual {p5, p6, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 288
    const-string p6, "contentUri"

    invoke-virtual {p5, p6, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    sget-object p2, Lcom/android/email/provider/EmailContent$Attachment;->CONTENT_URI:Landroid/net/Uri;

    .end local p2           #contentUriString_target:Ljava/lang/String;
    invoke-static {p2, p3, p4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p2

    .line 290
    .local p2, uri_target:Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .end local p0
    const/4 p3, 0x0

    const/4 p4, 0x0

    invoke-virtual {p0, p2, p5, p3, p4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 293
    .end local p3
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 295
    const/4 p0, 0x1

    goto :goto_0
.end method

.method public static resolveAttachmentIdToContentUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 8
    .parameter "resolver"
    .parameter "attachmentUri"

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 615
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_data"

    aput-object v0, v2, v1

    move-object v0, p0

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 618
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_2

    .line 620
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 621
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 622
    .local v7, strUri:Ljava/lang/String;
    if-eqz v7, :cond_0

    .line 623
    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 629
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 632
    .end local v7           #strUri:Ljava/lang/String;
    :goto_0
    return-object v0

    .line 625
    .restart local v7       #strUri:Ljava/lang/String;
    :cond_0
    :try_start_1
    const-string v0, "AttachmentProvider: attachment with null contentUri"

    invoke-static {v0}, Lcom/android/email/Email;->log(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 629
    .end local v7           #strUri:Ljava/lang/String;
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    move-object v0, p1

    .line 632
    goto :goto_0

    .line 629
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .parameter "uri"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 504
    const/4 v0, 0x0

    return v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 13
    .parameter "uri"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    const/4 v3, 0x0

    .line 348
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v12

    .line 349
    .local v12, segments:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v12, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 350
    .local v6, accountId:Ljava/lang/String;
    invoke-interface {v12, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 351
    .local v10, id:Ljava/lang/String;
    const/4 v0, 0x2

    invoke-interface {v12, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 352
    .local v9, format:Ljava/lang/String;
    const-string v0, "THUMBNAIL"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 353
    const-string v0, "image/png"

    .line 368
    :goto_0
    return-object v0

    .line 355
    :cond_0
    sget-object v0, Lcom/android/email/provider/EmailContent$Attachment;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p1

    .line 356
    invoke-virtual {p0}, Lcom/android/email/provider/AttachmentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/android/email/provider/AttachmentProvider;->MIME_TYPE_PROJECTION:[Ljava/lang/String;

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 359
    .local v7, c:Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 360
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 361
    .local v11, mimeType:Ljava/lang/String;
    const/4 v0, 0x1

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 362
    .local v8, fileName:Ljava/lang/String;
    invoke-static {v8, v11}, Lcom/android/email/provider/AttachmentProvider;->inferMimeType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v11

    .line 366
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    move-object v0, v11

    goto :goto_0

    .end local v8           #fileName:Ljava/lang/String;
    .end local v11           #mimeType:Ljava/lang/String;
    :cond_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    move-object v0, v3

    .line 368
    goto :goto_0

    .line 366
    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 1
    .parameter "uri"
    .parameter "values"

    .prologue
    .line 509
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()Z
    .locals 7

    .prologue
    .line 330
    invoke-virtual {p0}, Lcom/android/email/provider/AttachmentProvider;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 331
    .local v3, files:[Ljava/io/File;
    move-object v0, v3

    .local v0, arr$:[Ljava/io/File;
    array-length v5, v0

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_0
    if-ge v4, v5, :cond_2

    aget-object v1, v0, v4

    .line 332
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    .line 333
    .local v2, filename:Ljava/lang/String;
    const-string v6, ".tmp"

    invoke-virtual {v2, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "thmb_"

    invoke-virtual {v2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 334
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 331
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 337
    .end local v1           #file:Ljava/io/File;
    .end local v2           #filename:Ljava/lang/String;
    :cond_2
    const/4 v6, 0x1

    return v6
.end method

.method public openFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 26
    .parameter "uri"
    .parameter "mode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 427
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v22

    .line 428
    .local v22, segments:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v4, 0x0

    move-object/from16 v0, v22

    move v1, v4

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 429
    .local v10, accountId:Ljava/lang/String;
    const/4 v4, 0x1

    move-object/from16 v0, v22

    move v1, v4

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    .line 430
    .local v17, id:Ljava/lang/String;
    const/4 v4, 0x2

    move-object/from16 v0, v22

    move v1, v4

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 431
    .local v15, format:Ljava/lang/String;
    const-string v4, "THUMBNAIL"

    invoke-virtual {v4, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 432
    const/4 v4, 0x3

    move-object/from16 v0, v22

    move v1, v4

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, Ljava/lang/String;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v25

    .line 433
    .local v25, width:I
    const/4 v4, 0x4

    move-object/from16 v0, v22

    move v1, v4

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v16

    .line 434
    .local v16, height:I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "thmb_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 435
    .local v14, filename:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/provider/AttachmentProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v12

    .line 436
    .local v12, dir:Ljava/io/File;
    new-instance v13, Ljava/io/File;

    invoke-direct {v13, v12, v14}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 437
    .local v13, file:Ljava/io/File;
    invoke-virtual {v13}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_6

    .line 438
    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-static/range {v17 .. v17}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    invoke-static {v6, v7, v8, v9}, Lcom/android/email/provider/AttachmentProvider;->getAttachmentUri(JJ)Landroid/net/Uri;

    move-result-object v5

    .line 439
    .local v5, attachmentUri:Landroid/net/Uri;
    const/4 v4, 0x1

    new-array v6, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v7, "_data"

    aput-object v7, v6, v4

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v9}, Lcom/android/email/provider/AttachmentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 441
    .local v11, c:Landroid/database/Cursor;
    if-eqz v11, :cond_0

    .line 443
    :try_start_0
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 444
    const/4 v4, 0x0

    invoke-interface {v11, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v5

    .line 449
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 452
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/provider/AttachmentProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v24

    .line 455
    .local v24, type:Ljava/lang/String;
    const/16 v18, 0x0

    .line 456
    .local v18, in:Ljava/io/InputStream;
    const/16 v20, 0x0

    .line 460
    .local v20, out:Ljava/io/FileOutputStream;
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/provider/AttachmentProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v18

    .line 461
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/android/email/provider/AttachmentProvider;->createThumbnail(Ljava/lang/String;Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v23

    .line 464
    .local v23, thumbnail:Landroid/graphics/Bitmap;
    if-nez v23, :cond_4

    .line 465
    const/4 v4, 0x0

    .line 482
    if-eqz v20, :cond_1

    .line 484
    :try_start_2
    throw v20
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 486
    .end local v5           #attachmentUri:Landroid/net/Uri;
    :cond_1
    :goto_0
    if-eqz v18, :cond_2

    .line 488
    :try_start_3
    invoke-virtual/range {v18 .. v18}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 496
    .end local v11           #c:Landroid/database/Cursor;
    .end local v12           #dir:Ljava/io/File;
    .end local v13           #file:Ljava/io/File;
    .end local v14           #filename:Ljava/lang/String;
    .end local v16           #height:I
    .end local v18           #in:Ljava/io/InputStream;
    .end local v20           #out:Ljava/io/FileOutputStream;
    .end local v23           #thumbnail:Landroid/graphics/Bitmap;
    .end local v24           #type:Ljava/lang/String;
    .end local v25           #width:I
    :cond_2
    :goto_1
    return-object v4

    .line 446
    .restart local v5       #attachmentUri:Landroid/net/Uri;
    .restart local v11       #c:Landroid/database/Cursor;
    .restart local v12       #dir:Ljava/io/File;
    .restart local v13       #file:Ljava/io/File;
    .restart local v14       #filename:Ljava/lang/String;
    .restart local v16       #height:I
    .restart local v25       #width:I
    :cond_3
    const/4 v4, 0x0

    .line 449
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception v4

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    throw v4

    .line 469
    .restart local v18       #in:Ljava/io/InputStream;
    .restart local v20       #out:Ljava/io/FileOutputStream;
    .restart local v23       #thumbnail:Landroid/graphics/Bitmap;
    .restart local v24       #type:Ljava/lang/String;
    :cond_4
    const/4 v4, 0x1

    :try_start_4
    move-object/from16 v0, v23

    move/from16 v1, v25

    move/from16 v2, v16

    move v3, v4

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v23

    .line 471
    new-instance v21, Ljava/io/FileOutputStream;

    move-object/from16 v0, v21

    move-object v1, v13

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 473
    .end local v20           #out:Ljava/io/FileOutputStream;
    .local v21, out:Ljava/io/FileOutputStream;
    :try_start_5
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v5, 0x64

    move-object/from16 v0, v23

    move-object v1, v4

    move v2, v5

    move-object/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_9

    .line 482
    .end local v5           #attachmentUri:Landroid/net/Uri;
    if-eqz v21, :cond_5

    .line 484
    :try_start_6
    invoke-virtual/range {v21 .. v21}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 486
    :cond_5
    :goto_2
    if-eqz v18, :cond_6

    .line 488
    :try_start_7
    invoke-virtual/range {v18 .. v18}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 493
    .end local v11           #c:Landroid/database/Cursor;
    .end local v18           #in:Ljava/io/InputStream;
    .end local v21           #out:Ljava/io/FileOutputStream;
    .end local v23           #thumbnail:Landroid/graphics/Bitmap;
    .end local v24           #type:Ljava/lang/String;
    :cond_6
    :goto_3
    const/high16 v4, 0x1000

    invoke-static {v13, v4}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v4

    goto :goto_1

    .line 478
    .restart local v5       #attachmentUri:Landroid/net/Uri;
    .restart local v11       #c:Landroid/database/Cursor;
    .restart local v18       #in:Ljava/io/InputStream;
    .restart local v20       #out:Ljava/io/FileOutputStream;
    .restart local v24       #type:Ljava/lang/String;
    :catch_0
    move-exception v4

    move-object/from16 v19, v4

    .line 479
    .end local v5           #attachmentUri:Landroid/net/Uri;
    .local v19, ioe:Ljava/io/IOException;
    :goto_4
    const/4 v4, 0x0

    .line 482
    if-eqz v20, :cond_7

    .line 484
    :try_start_8
    invoke-virtual/range {v20 .. v20}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    .line 486
    :cond_7
    :goto_5
    if-eqz v18, :cond_2

    .line 488
    :try_start_9
    invoke-virtual/range {v18 .. v18}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1

    goto :goto_1

    .line 489
    :catch_1
    move-exception v5

    goto :goto_1

    .line 482
    .end local v19           #ioe:Ljava/io/IOException;
    .restart local v5       #attachmentUri:Landroid/net/Uri;
    :catchall_1
    move-exception v4

    .end local v5           #attachmentUri:Landroid/net/Uri;
    :goto_6
    if-eqz v20, :cond_8

    .line 484
    :try_start_a
    invoke-virtual/range {v20 .. v20}, Ljava/io/FileOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_7

    .line 486
    :cond_8
    :goto_7
    if-eqz v18, :cond_9

    .line 488
    :try_start_b
    invoke-virtual/range {v18 .. v18}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_8

    .line 489
    :cond_9
    :goto_8
    throw v4

    .line 496
    .end local v11           #c:Landroid/database/Cursor;
    .end local v12           #dir:Ljava/io/File;
    .end local v13           #file:Ljava/io/File;
    .end local v14           #filename:Ljava/lang/String;
    .end local v16           #height:I
    .end local v18           #in:Ljava/io/InputStream;
    .end local v20           #out:Ljava/io/FileOutputStream;
    .end local v24           #type:Ljava/lang/String;
    .end local v25           #width:I
    .restart local p1
    :cond_a
    new-instance v4, Ljava/io/File;

    invoke-virtual/range {p0 .. p0}, Lcom/android/email/provider/AttachmentProvider;->getContext()Landroid/content/Context;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".db_att"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    move-object v0, v4

    move-object v1, v5

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/high16 v5, 0x1000

    invoke-static {v4, v5}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v4

    goto/16 :goto_1

    .line 485
    .end local p1
    .restart local v5       #attachmentUri:Landroid/net/Uri;
    .restart local v11       #c:Landroid/database/Cursor;
    .restart local v12       #dir:Ljava/io/File;
    .restart local v13       #file:Ljava/io/File;
    .restart local v14       #filename:Ljava/lang/String;
    .restart local v16       #height:I
    .restart local v18       #in:Ljava/io/InputStream;
    .restart local v20       #out:Ljava/io/FileOutputStream;
    .restart local v23       #thumbnail:Landroid/graphics/Bitmap;
    .restart local v24       #type:Ljava/lang/String;
    .restart local v25       #width:I
    :catch_2
    move-exception v5

    goto/16 :goto_0

    .line 489
    .end local v5           #attachmentUri:Landroid/net/Uri;
    :catch_3
    move-exception v5

    goto/16 :goto_1

    .line 485
    .end local v20           #out:Ljava/io/FileOutputStream;
    .restart local v21       #out:Ljava/io/FileOutputStream;
    :catch_4
    move-exception v4

    goto :goto_2

    .line 489
    :catch_5
    move-exception v4

    goto :goto_3

    .line 485
    .end local v21           #out:Ljava/io/FileOutputStream;
    .end local v23           #thumbnail:Landroid/graphics/Bitmap;
    .restart local v19       #ioe:Ljava/io/IOException;
    .restart local v20       #out:Ljava/io/FileOutputStream;
    :catch_6
    move-exception v5

    goto :goto_5

    .end local v19           #ioe:Ljava/io/IOException;
    :catch_7
    move-exception v5

    goto :goto_7

    .line 489
    :catch_8
    move-exception v5

    goto :goto_8

    .line 482
    .end local v20           #out:Ljava/io/FileOutputStream;
    .restart local v21       #out:Ljava/io/FileOutputStream;
    .restart local v23       #thumbnail:Landroid/graphics/Bitmap;
    :catchall_2
    move-exception v4

    move-object/from16 v20, v21

    .end local v21           #out:Ljava/io/FileOutputStream;
    .restart local v20       #out:Ljava/io/FileOutputStream;
    goto :goto_6

    .line 478
    .end local v20           #out:Ljava/io/FileOutputStream;
    .restart local v21       #out:Ljava/io/FileOutputStream;
    :catch_9
    move-exception v4

    move-object/from16 v19, v4

    move-object/from16 v20, v21

    .end local v21           #out:Ljava/io/FileOutputStream;
    .restart local v20       #out:Ljava/io/FileOutputStream;
    goto :goto_4
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 21
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    .line 522
    if-nez p2, :cond_0

    .line 523
    const/4 v2, 0x2

    move v0, v2

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 p2, v0

    .end local p2
    const/4 v2, 0x0

    const-string v3, "_id"

    aput-object v3, p2, v2

    const/4 v2, 0x1

    const-string v3, "_data"

    aput-object v3, p2, v2

    .line 530
    .restart local p2
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v18

    .line 531
    .local v18, segments:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, 0x0

    move-object/from16 v0, v18

    move v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 532
    .local v8, accountId:Ljava/lang/String;
    const/4 v2, 0x1

    move-object/from16 v0, v18

    move v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 533
    .local v15, id:Ljava/lang/String;
    const/4 v2, 0x2

    move-object/from16 v0, v18

    move v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 534
    .local v13, format:Ljava/lang/String;
    const/16 v16, 0x0

    .line 535
    .local v16, name:Ljava/lang/String;
    const/16 v19, -0x1

    .line 536
    .local v19, size:I
    const/4 v11, 0x0

    .line 538
    .local v11, contentUri:Ljava/lang/String;
    sget-object v2, Lcom/android/email/provider/EmailContent$Attachment;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v15}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p1

    .line 539
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/provider/AttachmentProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v4, Lcom/android/email/provider/AttachmentProvider;->PROJECTION_QUERY:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 542
    .local v9, c:Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 543
    const/4 v2, 0x0

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 544
    const/4 v2, 0x1

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    .line 545
    const/4 v2, 0x2

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v11

    .line 550
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 553
    new-instance v17, Landroid/database/MatrixCursor;

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 554
    .local v17, ret:Landroid/database/MatrixCursor;
    move-object/from16 v0, p2

    array-length v0, v0

    move v2, v0

    move v0, v2

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    .line 555
    .local v20, values:[Ljava/lang/Object;
    const/4 v14, 0x0

    .local v14, i:I
    move-object/from16 v0, p2

    array-length v0, v0

    move v12, v0

    .local v12, count:I
    :goto_0
    if-ge v14, v12, :cond_6

    .line 556
    aget-object v10, p2, v14

    .line 557
    .local v10, column:Ljava/lang/String;
    const-string v2, "_id"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 558
    aput-object v15, v20, v14

    .line 555
    :cond_1
    :goto_1
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 547
    .end local v10           #column:Ljava/lang/String;
    .end local v12           #count:I
    .end local v14           #i:I
    .end local v17           #ret:Landroid/database/MatrixCursor;
    .end local v20           #values:[Ljava/lang/Object;
    :cond_2
    const/4 v2, 0x0

    .line 550
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 571
    :goto_2
    return-object v2

    .line 550
    :catchall_0
    move-exception v2

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v2

    .line 560
    .restart local v10       #column:Ljava/lang/String;
    .restart local v12       #count:I
    .restart local v14       #i:I
    .restart local v17       #ret:Landroid/database/MatrixCursor;
    .restart local v20       #values:[Ljava/lang/Object;
    :cond_3
    const-string v2, "_data"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 561
    aput-object v11, v20, v14

    goto :goto_1

    .line 563
    :cond_4
    const-string v2, "_display_name"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 564
    aput-object v16, v20, v14

    goto :goto_1

    .line 566
    :cond_5
    const-string v2, "_size"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 567
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v20, v14

    goto :goto_1

    .line 570
    .end local v10           #column:Ljava/lang/String;
    :cond_6
    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    move-object/from16 v2, v17

    .line 571
    goto :goto_2
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .parameter "uri"
    .parameter "values"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 576
    const/4 v0, 0x0

    return v0
.end method
