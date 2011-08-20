.class public Lcom/android/exchange/adapter/LoadMoreUtility;
.super Ljava/lang/Object;
.source "LoadMoreUtility.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static updateAttachment(Landroid/content/Context;Lcom/android/email/provider/EmailContent$Message;)V
    .locals 7
    .parameter "context"
    .parameter "msg"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 95
    new-instance v3, Ljava/io/FileInputStream;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/tempFile"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 96
    .local v3, in:Ljava/io/InputStream;
    if-nez v3, :cond_1

    .line 132
    .end local v3           #in:Ljava/io/InputStream;
    .end local p0
    .end local p1
    :cond_0
    :goto_0
    return-void

    .line 98
    .restart local v3       #in:Ljava/io/InputStream;
    .restart local p0
    .restart local p1
    :cond_1
    iget-wide v0, p1, Lcom/android/email/provider/EmailContent;->mId:J

    invoke-static {p0, v0, v1}, Lcom/android/email/provider/EmailContent$Attachment;->restoreAttachmentsWithMessageId(Landroid/content/Context;J)[Lcom/android/email/provider/EmailContent$Attachment;

    move-result-object v0

    .line 99
    .local v0, atts:[Lcom/android/email/provider/EmailContent$Attachment;
    if-eqz v0, :cond_2

    array-length v1, v0

    const/4 v2, 0x1

    if-lt v1, v2, :cond_0

    .line 101
    :cond_2
    iget-wide v1, p1, Lcom/android/email/provider/EmailContent$Message;->mAccountKey:J

    invoke-static {p0, v1, v2}, Lcom/android/email/provider/AttachmentProvider;->getAttachmentDirectory(Landroid/content/Context;J)Ljava/io/File;

    move-result-object v1

    .line 102
    .local v1, saveIn:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_3

    .line 103
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 105
    :cond_3
    iget-wide v1, p1, Lcom/android/email/provider/EmailContent$Message;->mAccountKey:J

    .end local v1           #saveIn:Ljava/io/File;
    const/4 v4, 0x0

    aget-object v4, v0, v4

    iget-wide v4, v4, Lcom/android/email/provider/EmailContent;->mId:J

    invoke-static {p0, v1, v2, v4, v5}, Lcom/android/email/provider/AttachmentProvider;->getAttachmentFilename(Landroid/content/Context;JJ)Ljava/io/File;

    move-result-object v1

    .line 107
    .local v1, saveAs:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    .line 108
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 109
    .local v4, out:Ljava/io/FileOutputStream;
    invoke-static {v3, v4}, Lorg/apache/commons/io/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I

    move-result v1

    .end local v1           #saveAs:Ljava/io/File;
    int-to-long v1, v1

    .line 110
    .local v1, copySize:J
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 111
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    .line 114
    new-instance v3, Ljava/io/File;

    .end local v3           #in:Ljava/io/InputStream;
    new-instance v4, Ljava/lang/StringBuilder;

    .end local v4           #out:Ljava/io/FileOutputStream;
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/tempFile"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 115
    .local v3, fileToDelete:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 116
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 121
    :cond_4
    iget-wide v3, p1, Lcom/android/email/provider/EmailContent$Message;->mAccountKey:J

    .end local v3           #fileToDelete:Ljava/io/File;
    const/4 p1, 0x0

    aget-object p1, v0, p1

    .end local p1
    iget-wide v5, p1, Lcom/android/email/provider/EmailContent;->mId:J

    invoke-static {v3, v4, v5, v6}, Lcom/android/email/provider/AttachmentProvider;->getAttachmentUri(JJ)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    .line 127
    .local p1, contentUriString:Ljava/lang/String;
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 128
    .local v3, cv:Landroid/content/ContentValues;
    const-string v4, "size"

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .end local v1           #copySize:J
    invoke-virtual {v3, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 129
    const-string v1, "contentUri"

    invoke-virtual {v3, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    sget-object p1, Lcom/android/email/provider/EmailContent$Attachment;->CONTENT_URI:Landroid/net/Uri;

    .end local p1           #contentUriString:Ljava/lang/String;
    const/4 v1, 0x0

    aget-object v0, v0, v1

    .end local v0           #atts:[Lcom/android/email/provider/EmailContent$Attachment;
    iget-wide v0, v0, Lcom/android/email/provider/EmailContent;->mId:J

    invoke-static {p1, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p1

    .line 131
    .local p1, uri:Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .end local p0
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v3, v0, v1}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public static updateEmail(Lcom/android/exchange/AbstractSyncService;Landroid/content/Context;Lcom/android/email/provider/EmailContent$Message;Lcom/android/email/provider/EmailContent$Body;)V
    .locals 6
    .parameter "service"
    .parameter "context"
    .parameter "msg"
    .parameter "body"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 39
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 40
    .local v2, ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 42
    .local v0, cv:Landroid/content/ContentValues;
    iget-object v1, p3, Lcom/android/email/provider/EmailContent$Body;->mHtmlContent:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p3, Lcom/android/email/provider/EmailContent$Body;->mHtmlContent:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 44
    :cond_0
    const-string v1, "htmlContent"

    iget-object v3, p3, Lcom/android/email/provider/EmailContent$Body;->mHtmlContent:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    iget-object v1, p3, Lcom/android/email/provider/EmailContent$Body;->mTextContent:Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, p3, Lcom/android/email/provider/EmailContent$Body;->mTextContent:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p3, Lcom/android/email/provider/EmailContent$Body;->mTextContent:Ljava/lang/String;

    .line 48
    iget-object v1, p3, Lcom/android/email/provider/EmailContent$Body;->mTextContent:Ljava/lang/String;

    const-string v3, "\r\n"

    iget-object v4, p3, Lcom/android/email/provider/EmailContent$Body;->mTextContent:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x2

    sub-int/2addr v4, v5

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    .line 49
    .local v1, value:I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_1

    .line 50
    iget-object v3, p3, Lcom/android/email/provider/EmailContent$Body;->mTextContent:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .end local v1           #value:I
    iput-object v1, p3, Lcom/android/email/provider/EmailContent$Body;->mTextContent:Ljava/lang/String;

    .line 53
    :cond_1
    const-string v1, "textContent"

    iget-object v3, p3, Lcom/android/email/provider/EmailContent$Body;->mTextContent:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    :goto_0
    sget-object v1, Lcom/android/email/provider/EmailContent$Body;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v3, p3, Lcom/android/email/provider/EmailContent;->mId:J

    invoke-static {v1, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p3

    .end local p3
    invoke-static {p3}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object p3

    invoke-virtual {p3, v0}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object p3

    invoke-virtual {v2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 59
    iget-wide v0, p2, Lcom/android/email/provider/EmailContent;->mId:J

    .end local v0           #cv:Landroid/content/ContentValues;
    invoke-static {p1, v0, v1}, Lcom/android/email/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Message;

    move-result-object p3

    .line 60
    .local p3, TmpMessage:Lcom/android/email/provider/EmailContent$Message;
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 61
    .local v0, cv1:Landroid/content/ContentValues;
    const-string v1, "flagLoaded"

    iget v3, p2, Lcom/android/email/provider/EmailContent$Message;->mFlagLoaded:I

    iget-byte v4, p2, Lcom/android/email/provider/EmailContent$Message;->mFlagTruncated:B

    int-to-short v4, v4

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 62
    iget-boolean v1, p2, Lcom/android/email/provider/EmailContent$Message;->mFlagAttachment:Z

    iget-boolean p3, p3, Lcom/android/email/provider/EmailContent$Message;->mFlagAttachment:Z

    .end local p3           #TmpMessage:Lcom/android/email/provider/EmailContent$Message;
    if-eq v1, p3, :cond_3

    .line 64
    iget-object p3, p2, Lcom/android/email/provider/EmailContent$Message;->mAttachments:Ljava/util/ArrayList;

    if-eqz p3, :cond_3

    .line 65
    iget-object p3, p2, Lcom/android/email/provider/EmailContent$Message;->mAttachments:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/email/provider/EmailContent$Attachment;

    .line 66
    .local p3, att:Lcom/android/email/provider/EmailContent$Attachment;
    sget-object v3, Lcom/android/email/provider/EmailContent$Attachment;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    invoke-virtual {p3}, Lcom/android/email/provider/EmailContent$Attachment;->toContentValues()Landroid/content/ContentValues;

    move-result-object p3

    .end local p3           #att:Lcom/android/email/provider/EmailContent$Attachment;
    invoke-virtual {v3, p3}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object p3

    invoke-virtual {v2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 55
    .end local v1           #i$:Ljava/util/Iterator;
    .local v0, cv:Landroid/content/ContentValues;
    .local p3, body:Lcom/android/email/provider/EmailContent$Body;
    :cond_2
    const-string v1, "htmlContent"

    iget-object v3, p3, Lcom/android/email/provider/EmailContent$Body;->mHtmlContent:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 72
    .end local p3           #body:Lcom/android/email/provider/EmailContent$Body;
    .local v0, cv1:Landroid/content/ContentValues;
    :cond_3
    const-string p3, "flagAttachment"

    iget-boolean v1, p2, Lcom/android/email/provider/EmailContent$Message;->mFlagAttachment:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 73
    sget-object p3, Lcom/android/email/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p3}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object p3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v3, p2, Lcom/android/email/provider/EmailContent;->mId:J

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p2

    .end local p2
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x0

    invoke-virtual {p3, p2, v1}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 77
    invoke-virtual {p0}, Lcom/android/exchange/AbstractSyncService;->getSynchronizer()Ljava/lang/Object;

    move-result-object p2

    monitor-enter p2

    .line 78
    :try_start_0
    invoke-virtual {p0}, Lcom/android/exchange/AbstractSyncService;->isStopped()Z

    move-result p0

    .end local p0
    if-eqz p0, :cond_4

    .line 79
    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    throw p0

    .line 88
    .end local p1
    :catchall_0
    move-exception p0

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 82
    .restart local p1
    :cond_4
    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p1, "com.android.email.provider"

    .end local p1
    invoke-virtual {p0, p1, v2}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_1 .. :try_end_1} :catch_1

    .line 88
    :try_start_2
    monitor-exit p2

    .line 89
    return-void

    .line 83
    :catch_0
    move-exception p0

    .line 84
    .local p0, e:Landroid/os/RemoteException;
    new-instance p0, Ljava/io/IOException;

    .end local p0           #e:Landroid/os/RemoteException;
    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    throw p0

    .line 85
    :catch_1
    move-exception p0

    .line 86
    .local p0, e:Landroid/content/OperationApplicationException;
    new-instance p0, Ljava/io/IOException;

    .end local p0           #e:Landroid/content/OperationApplicationException;
    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method
