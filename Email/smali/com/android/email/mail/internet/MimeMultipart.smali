.class public Lcom/android/email/mail/internet/MimeMultipart;
.super Lcom/android/email/mail/Multipart;
.source "MimeMultipart.java"


# instance fields
.field protected mBoundary:Ljava/lang/String;

.field protected mContentType:Ljava/lang/String;

.field protected mPreamble:Ljava/lang/String;

.field protected mSubType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/email/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/android/email/mail/Multipart;-><init>()V

    .line 73
    invoke-virtual {p0}, Lcom/android/email/mail/internet/MimeMultipart;->generateBoundary()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/mail/internet/MimeMultipart;->mBoundary:Ljava/lang/String;

    .line 74
    const-string v0, "mixed"

    invoke-virtual {p0, v0}, Lcom/android/email/mail/internet/MimeMultipart;->setSubType(Ljava/lang/String;)V

    .line 75
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 4
    .parameter "contentType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/email/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/android/email/mail/Multipart;-><init>()V

    .line 78
    iput-object p1, p0, Lcom/android/email/mail/internet/MimeMultipart;->mContentType:Ljava/lang/String;

    .line 80
    const/4 v1, 0x0

    :try_start_0
    invoke-static {p1, v1}, Lcom/android/email/mail/internet/MimeUtility;->getHeaderParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aget-object v1, v1, v2

    iput-object v1, p0, Lcom/android/email/mail/internet/MimeMultipart;->mSubType:Ljava/lang/String;

    .line 81
    const-string v1, "boundary"

    invoke-static {p1, v1}, Lcom/android/email/mail/internet/MimeUtility;->getHeaderParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/mail/internet/MimeMultipart;->mBoundary:Ljava/lang/String;

    .line 82
    iget-object v1, p0, Lcom/android/email/mail/internet/MimeMultipart;->mBoundary:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 83
    new-instance v1, Lcom/android/email/mail/MessagingException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MultiPart does not contain boundary: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/email/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 86
    .local v0, e:Ljava/lang/Exception;
    new-instance v1, Lcom/android/email/mail/MessagingException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid MultiPart Content-Type; must contain subtype and boundary. ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/android/email/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 90
    .end local v0           #e:Ljava/lang/Exception;
    :cond_0
    return-void
.end method

.method private static writeHeader(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "writer"
    .parameter "name"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 288
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 289
    invoke-virtual {p0, p1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 290
    const-string v0, ": "

    invoke-virtual {p0, v0}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 291
    invoke-virtual {p0, p2}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 292
    const-string v0, "\r\n"

    invoke-virtual {p0, v0}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 294
    :cond_0
    return-void
.end method

.method private writeOneAttachment(Landroid/content/Context;Ljava/io/Writer;Ljava/io/OutputStream;Lcom/android/email/provider/EmailContent$Attachment;)V
    .locals 15
    .parameter "context"
    .parameter "writer"
    .parameter "out"
    .parameter "attachment"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/email/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 205
    move-object/from16 v0, p4

    iget-object v0, v0, Lcom/android/email/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    move-object v11, v0

    const/4 v12, 0x0

    invoke-static {v11, v12}, Lorg/apache/james/mime4j/codec/EncoderUtil;->hasToBeEncoded(Ljava/lang/String;I)Z

    move-result v11

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    .line 207
    .local v6, ff:Ljava/lang/Boolean;
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_3

    .line 208
    move-object/from16 v0, p4

    iget-object v0, v0, Lcom/android/email/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    move-object v11, v0

    invoke-static {v11}, Lorg/apache/james/mime4j/codec/EncoderUtil;->encodeAddressDisplayName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 209
    .local v5, encFileName:Ljava/lang/String;
    const-string v11, "Content-Type"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p4

    iget-object v0, v0, Lcom/android/email/provider/EmailContent$Attachment;->mMimeType:Ljava/lang/String;

    move-object v13, v0

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ";\n name=\""

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\""

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p2

    move-object v1, v11

    move-object v2, v12

    invoke-static {v0, v1, v2}, Lcom/android/email/mail/internet/MimeMultipart;->writeHeader(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    const-string v11, "Content-Transfer-Encoding"

    const-string v12, "base64"

    move-object/from16 v0, p2

    move-object v1, v11

    move-object v2, v12

    invoke-static {v0, v1, v2}, Lcom/android/email/mail/internet/MimeMultipart;->writeHeader(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    move-object/from16 v0, p4

    iget v0, v0, Lcom/android/email/provider/EmailContent$Attachment;->mFlags:I

    move v11, v0

    and-int/lit8 v11, v11, 0x1

    if-nez v11, :cond_0

    .line 215
    const-string v11, "Content-Disposition"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "attachment;\n filename*=\""

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\";"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\n size="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p4

    iget-wide v0, v0, Lcom/android/email/provider/EmailContent$Attachment;->mSize:J

    move-wide v13, v0

    invoke-static {v13, v14}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p2

    move-object v1, v11

    move-object v2, v12

    invoke-static {v0, v1, v2}, Lcom/android/email/mail/internet/MimeMultipart;->writeHeader(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    .end local v5           #encFileName:Ljava/lang/String;
    :cond_0
    :goto_0
    const-string v11, "Content-ID"

    move-object/from16 v0, p4

    iget-object v0, v0, Lcom/android/email/provider/EmailContent$Attachment;->mContentId:Ljava/lang/String;

    move-object v12, v0

    move-object/from16 v0, p2

    move-object v1, v11

    move-object v2, v12

    invoke-static {v0, v1, v2}, Lcom/android/email/mail/internet/MimeMultipart;->writeHeader(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    const-string v11, "\r\n"

    move-object/from16 v0, p2

    move-object v1, v11

    invoke-virtual {v0, v1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 239
    const/4 v8, 0x0

    .line 240
    .local v8, inStream:Ljava/io/InputStream;
    const/4 v3, 0x0

    .line 243
    .local v3, base64Out:Landroid/util/Base64OutputStream;
    :try_start_0
    move-object/from16 v0, p4

    iget-object v0, v0, Lcom/android/email/provider/EmailContent$Attachment;->mContentBytes:[B

    move-object v11, v0

    if-eqz v11, :cond_4

    .line 244
    new-instance v9, Ljava/io/ByteArrayInputStream;

    move-object/from16 v0, p4

    iget-object v0, v0, Lcom/android/email/provider/EmailContent$Attachment;->mContentBytes:[B

    move-object v11, v0

    invoke-direct {v9, v11}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .end local v8           #inStream:Ljava/io/InputStream;
    .local v9, inStream:Ljava/io/InputStream;
    move-object v8, v9

    .line 251
    .end local v9           #inStream:Ljava/io/InputStream;
    .restart local v8       #inStream:Ljava/io/InputStream;
    :goto_1
    invoke-virtual/range {p2 .. p2}, Ljava/io/Writer;->flush()V

    .line 252
    new-instance v4, Landroid/util/Base64OutputStream;

    const/16 v11, 0x14

    move-object v0, v4

    move-object/from16 v1, p3

    move v2, v11

    invoke-direct {v0, v1, v2}, Landroid/util/Base64OutputStream;-><init>(Ljava/io/OutputStream;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 255
    .end local v3           #base64Out:Landroid/util/Base64OutputStream;
    .local v4, base64Out:Landroid/util/Base64OutputStream;
    :try_start_1
    invoke-static {v8, v4}, Lorg/apache/commons/io/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I

    .line 261
    const/16 v11, 0xd

    move-object/from16 v0, p3

    move v1, v11

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 262
    const/16 v11, 0xa

    move-object/from16 v0, p3

    move v1, v11

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 263
    invoke-virtual/range {p3 .. p3}, Ljava/io/OutputStream;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 271
    if-eqz v4, :cond_1

    .line 272
    invoke-virtual {v4}, Landroid/util/Base64OutputStream;->close()V

    .line 273
    :cond_1
    if-eqz v8, :cond_8

    .line 274
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V

    move-object v3, v4

    .line 276
    .end local v4           #base64Out:Landroid/util/Base64OutputStream;
    .restart local v3       #base64Out:Landroid/util/Base64OutputStream;
    :cond_2
    :goto_2
    return-void

    .line 222
    .end local v3           #base64Out:Landroid/util/Base64OutputStream;
    .end local v8           #inStream:Ljava/io/InputStream;
    :cond_3
    const-string v11, "Content-Type"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p4

    iget-object v0, v0, Lcom/android/email/provider/EmailContent$Attachment;->mMimeType:Ljava/lang/String;

    move-object v13, v0

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ";\n name=\""

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p4

    iget-object v0, v0, Lcom/android/email/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    move-object v13, v0

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\""

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p2

    move-object v1, v11

    move-object v2, v12

    invoke-static {v0, v1, v2}, Lcom/android/email/mail/internet/MimeMultipart;->writeHeader(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    const-string v11, "Content-Transfer-Encoding"

    const-string v12, "base64"

    move-object/from16 v0, p2

    move-object v1, v11

    move-object v2, v12

    invoke-static {v0, v1, v2}, Lcom/android/email/mail/internet/MimeMultipart;->writeHeader(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    move-object/from16 v0, p4

    iget v0, v0, Lcom/android/email/provider/EmailContent$Attachment;->mFlags:I

    move v11, v0

    and-int/lit8 v11, v11, 0x1

    if-nez v11, :cond_0

    .line 228
    const-string v11, "Content-Disposition"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "attachment;\n filename=\""

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p4

    iget-object v0, v0, Lcom/android/email/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    move-object v13, v0

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\";"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\n size="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p4

    iget-wide v0, v0, Lcom/android/email/provider/EmailContent$Attachment;->mSize:J

    move-wide v13, v0

    invoke-static {v13, v14}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p2

    move-object v1, v11

    move-object v2, v12

    invoke-static {v0, v1, v2}, Lcom/android/email/mail/internet/MimeMultipart;->writeHeader(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 247
    .restart local v3       #base64Out:Landroid/util/Base64OutputStream;
    .restart local v8       #inStream:Ljava/io/InputStream;
    :cond_4
    :try_start_2
    move-object/from16 v0, p4

    iget-object v0, v0, Lcom/android/email/provider/EmailContent$Attachment;->mContentUri:Ljava/lang/String;

    move-object v11, v0

    invoke-static {v11}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 248
    .local v7, fileUri:Landroid/net/Uri;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    invoke-virtual {v11, v7}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v8

    goto/16 :goto_1

    .line 265
    .end local v7           #fileUri:Landroid/net/Uri;
    :catch_0
    move-exception v11

    .line 271
    :goto_3
    if-eqz v3, :cond_5

    .line 272
    invoke-virtual {v3}, Landroid/util/Base64OutputStream;->close()V

    .line 273
    :cond_5
    if-eqz v8, :cond_2

    .line 274
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V

    goto/16 :goto_2

    .line 268
    :catch_1
    move-exception v11

    move-object v10, v11

    .line 269
    .local v10, ioe:Ljava/io/IOException;
    :goto_4
    :try_start_3
    new-instance v11, Lcom/android/email/mail/MessagingException;

    const-string v12, "Invalid attachment."

    invoke-direct {v11, v12, v10}, Lcom/android/email/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v11
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 271
    .end local v10           #ioe:Ljava/io/IOException;
    :catchall_0
    move-exception v11

    :goto_5
    if-eqz v3, :cond_6

    .line 272
    invoke-virtual {v3}, Landroid/util/Base64OutputStream;->close()V

    .line 273
    :cond_6
    if-eqz v8, :cond_7

    .line 274
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V

    :cond_7
    throw v11

    .line 271
    .end local v3           #base64Out:Landroid/util/Base64OutputStream;
    .restart local v4       #base64Out:Landroid/util/Base64OutputStream;
    :catchall_1
    move-exception v11

    move-object v3, v4

    .end local v4           #base64Out:Landroid/util/Base64OutputStream;
    .restart local v3       #base64Out:Landroid/util/Base64OutputStream;
    goto :goto_5

    .line 268
    .end local v3           #base64Out:Landroid/util/Base64OutputStream;
    .restart local v4       #base64Out:Landroid/util/Base64OutputStream;
    :catch_2
    move-exception v11

    move-object v10, v11

    move-object v3, v4

    .end local v4           #base64Out:Landroid/util/Base64OutputStream;
    .restart local v3       #base64Out:Landroid/util/Base64OutputStream;
    goto :goto_4

    .line 265
    .end local v3           #base64Out:Landroid/util/Base64OutputStream;
    .restart local v4       #base64Out:Landroid/util/Base64OutputStream;
    :catch_3
    move-exception v11

    move-object v3, v4

    .end local v4           #base64Out:Landroid/util/Base64OutputStream;
    .restart local v3       #base64Out:Landroid/util/Base64OutputStream;
    goto :goto_3

    .end local v3           #base64Out:Landroid/util/Base64OutputStream;
    .restart local v4       #base64Out:Landroid/util/Base64OutputStream;
    :cond_8
    move-object v3, v4

    .end local v4           #base64Out:Landroid/util/Base64OutputStream;
    .restart local v3       #base64Out:Landroid/util/Base64OutputStream;
    goto/16 :goto_2
.end method


# virtual methods
.method public generateBoundary()Ljava/lang/String;
    .locals 6

    .prologue
    .line 93
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 94
    .local v1, sb:Ljava/lang/StringBuffer;
    const-string v2, "----"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 95
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/16 v2, 0x1e

    if-ge v0, v2, :cond_0

    .line 96
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    const-wide v4, 0x4041800000000000L

    mul-double/2addr v2, v4

    double-to-int v2, v2

    const/16 v3, 0x24

    invoke-static {v2, v3}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 95
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 98
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/email/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/email/mail/internet/MimeMultipart;->mContentType:Ljava/lang/String;

    return-object v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/email/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 297
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPreamble()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/email/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/email/mail/internet/MimeMultipart;->mPreamble:Ljava/lang/String;

    return-object v0
.end method

.method public setPreamble(Ljava/lang/String;)V
    .locals 0
    .parameter "preamble"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/email/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 106
    iput-object p1, p0, Lcom/android/email/mail/internet/MimeMultipart;->mPreamble:Ljava/lang/String;

    .line 107
    return-void
.end method

.method public setSubType(Ljava/lang/String;)V
    .locals 4
    .parameter "subType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/email/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 114
    iput-object p1, p0, Lcom/android/email/mail/internet/MimeMultipart;->mSubType:Ljava/lang/String;

    .line 115
    const-string v0, "multipart/%s; boundary=\"%s\""

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/email/mail/internet/MimeMultipart;->mBoundary:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/mail/internet/MimeMultipart;->mContentType:Ljava/lang/String;

    .line 116
    return-void
.end method

.method public writeTo(Landroid/content/Context;JLjava/io/OutputStream;)V
    .locals 19
    .parameter "context"
    .parameter "messageId"
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/email/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 144
    new-instance v17, Ljava/io/BufferedOutputStream;

    const/16 v5, 0x400

    move-object/from16 v0, v17

    move-object/from16 v1, p4

    move v2, v5

    invoke-direct {v0, v1, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    .line 145
    .local v17, stream:Ljava/io/OutputStream;
    new-instance v18, Ljava/io/OutputStreamWriter;

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    .line 147
    .local v18, writer:Ljava/io/Writer;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/mail/internet/MimeMultipart;->mPreamble:Ljava/lang/String;

    move-object v5, v0

    if-eqz v5, :cond_0

    .line 148
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/mail/internet/MimeMultipart;->mPreamble:Ljava/lang/String;

    move-object v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\r\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v18

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 151
    :cond_0
    const/16 v16, 0x0

    .local v16, i:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/mail/internet/MimeMultipart;->mParts:Ljava/util/ArrayList;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v15

    .local v15, count:I
    :goto_0
    move/from16 v0, v16

    move v1, v15

    if-ge v0, v1, :cond_1

    .line 152
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/mail/internet/MimeMultipart;->mParts:Ljava/util/ArrayList;

    move-object v5, v0

    move-object v0, v5

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/email/mail/BodyPart;

    .line 153
    .local v14, bodyPart:Lcom/android/email/mail/BodyPart;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "--"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/mail/internet/MimeMultipart;->mBoundary:Ljava/lang/String;

    move-object v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\r\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v18

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 154
    invoke-virtual/range {v18 .. v18}, Ljava/io/OutputStreamWriter;->flush()V

    .line 156
    move-object v0, v14

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Lcom/android/email/mail/BodyPart;->writeTo(Ljava/io/OutputStream;)V

    .line 158
    const-string v5, "\r\n"

    move-object/from16 v0, v18

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 151
    add-int/lit8 v16, v16, 0x1

    goto :goto_0

    .line 161
    .end local v14           #bodyPart:Lcom/android/email/mail/BodyPart;
    :cond_1
    sget-object v5, Lcom/android/email/provider/EmailContent$Attachment;->MESSAGE_ID_URI:Landroid/net/Uri;

    move-object v0, v5

    move-wide/from16 v1, p2

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    .line 162
    .local v6, uri:Landroid/net/Uri;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v7, Lcom/android/email/provider/EmailContent$Attachment;->CONTENT_PROJECTION:[Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 166
    .local v13, attachmentsCursor:Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v13}, Landroid/database/Cursor;->getCount()I

    move-result v12

    .line 168
    .local v12, attachmentCount:I
    if-lez v12, :cond_3

    .line 171
    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 175
    .end local v6           #uri:Landroid/net/Uri;
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "--"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/mail/internet/MimeMultipart;->mBoundary:Ljava/lang/String;

    move-object v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\r\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v18

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 176
    invoke-virtual/range {v18 .. v18}, Ljava/io/OutputStreamWriter;->flush()V

    .line 178
    const-class v5, Lcom/android/email/provider/EmailContent$Attachment;

    invoke-static {v13, v5}, Lcom/android/email/provider/EmailContent$Attachment;->getContent(Landroid/database/Cursor;Ljava/lang/Class;)Lcom/android/email/provider/EmailContent;

    move-result-object v11

    check-cast v11, Lcom/android/email/provider/EmailContent$Attachment;

    .line 180
    .local v11, attachment:Lcom/android/email/provider/EmailContent$Attachment;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    move-object/from16 v3, v17

    move-object v4, v11

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/email/mail/internet/MimeMultipart;->writeOneAttachment(Landroid/content/Context;Ljava/io/Writer;Ljava/io/OutputStream;Lcom/android/email/provider/EmailContent$Attachment;)V

    .line 182
    const-string v5, "\r\n"

    move-object/from16 v0, v18

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 184
    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    if-nez v5, :cond_2

    .line 188
    .end local v11           #attachment:Lcom/android/email/provider/EmailContent$Attachment;
    :cond_3
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 191
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "--"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/mail/internet/MimeMultipart;->mBoundary:Ljava/lang/String;

    move-object v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "--\r\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v18

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 192
    invoke-virtual/range {v18 .. v18}, Ljava/io/OutputStreamWriter;->flush()V

    .line 194
    return-void

    .line 188
    .end local v12           #attachmentCount:I
    :catchall_0
    move-exception v5

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    throw v5
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 9
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/email/mail/MessagingException;
        }
    .end annotation

    .prologue
    const-string v8, "--"

    const-string v7, "\r\n"

    .line 119
    new-instance v3, Ljava/io/BufferedWriter;

    new-instance v5, Ljava/io/OutputStreamWriter;

    invoke-direct {v5, p1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    const/16 v6, 0x400

    invoke-direct {v3, v5, v6}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V

    .line 120
    .local v3, writer:Ljava/io/BufferedWriter;
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 122
    .local v4, writerTemp:Ljava/lang/StringBuffer;
    iget-object v5, p0, Lcom/android/email/mail/internet/MimeMultipart;->mPreamble:Ljava/lang/String;

    if-eqz v5, :cond_0

    .line 123
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/android/email/mail/internet/MimeMultipart;->mPreamble:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\r\n"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 126
    :cond_0
    const/4 v2, 0x0

    .local v2, i:I
    iget-object v5, p0, Lcom/android/email/mail/internet/MimeMultipart;->mParts:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v1

    .local v1, count:I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 127
    iget-object v5, p0, Lcom/android/email/mail/internet/MimeMultipart;->mParts:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/mail/BodyPart;

    .line 128
    .local v0, bodyPart:Lcom/android/email/mail/BodyPart;
    const-string v5, "--"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    iget-object v6, p0, Lcom/android/email/mail/internet/MimeMultipart;->mBoundary:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, "\r\n"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 129
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 130
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->flush()V

    .line 131
    invoke-virtual {v0, p1}, Lcom/android/email/mail/BodyPart;->writeTo(Ljava/io/OutputStream;)V

    .line 132
    const-string v5, "\r\n"

    invoke-virtual {v3, v7}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 133
    const/4 v5, 0x0

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->length()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 126
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 136
    .end local v0           #bodyPart:Lcom/android/email/mail/BodyPart;
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "--"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/email/mail/internet/MimeMultipart;->mBoundary:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "--\r\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 137
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->flush()V

    .line 138
    return-void
.end method
