.class public Lcom/android/email/mail/internet/MimeUtility;
.super Ljava/lang/Object;
.source "MimeUtility.java"


# static fields
.field private static final PATTERN_CR_OR_LF:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    const-string v0, "\r|\n"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/email/mail/internet/MimeUtility;->PATTERN_CR_OR_LF:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static collectParts(Lcom/android/email/mail/Part;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 9
    .parameter "part"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/email/mail/Part;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/email/mail/Part;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/email/mail/Part;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/email/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 396
    .local p1, viewables:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/email/mail/Part;>;"
    .local p2, attachments:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/email/mail/Part;>;"
    invoke-interface {p0}, Lcom/android/email/mail/Part;->getDisposition()Ljava/lang/String;

    move-result-object v1

    .line 397
    .local v1, disposition:Ljava/lang/String;
    const/4 v3, 0x0

    .line 398
    .local v3, dispositionType:Ljava/lang/String;
    const/4 v2, 0x0

    .line 399
    .local v2, dispositionFilename:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 400
    const/4 v7, 0x0

    invoke-static {v1, v7}, Lcom/android/email/mail/internet/MimeUtility;->getHeaderParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 401
    const-string v7, "filename"

    invoke-static {v1, v7}, Lcom/android/email/mail/internet/MimeUtility;->getHeaderParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 407
    :cond_0
    const-string v7, "attachment"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    if-eqz v2, :cond_2

    const-string v7, "inline"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_2

    :cond_1
    const/4 v7, 0x1

    move v0, v7

    .line 416
    .local v0, attachment:Z
    :goto_0
    invoke-interface {p0}, Lcom/android/email/mail/Part;->getBody()Lcom/android/email/mail/Body;

    move-result-object v7

    instance-of v7, v7, Lcom/android/email/mail/Multipart;

    if-eqz v7, :cond_3

    .line 417
    invoke-interface {p0}, Lcom/android/email/mail/Part;->getBody()Lcom/android/email/mail/Body;

    move-result-object v6

    check-cast v6, Lcom/android/email/mail/Multipart;

    .line 418
    .local v6, mp:Lcom/android/email/mail/Multipart;
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    invoke-virtual {v6}, Lcom/android/email/mail/Multipart;->getCount()I

    move-result v7

    if-ge v4, v7, :cond_4

    .line 419
    invoke-virtual {v6, v4}, Lcom/android/email/mail/Multipart;->getBodyPart(I)Lcom/android/email/mail/BodyPart;

    move-result-object v7

    invoke-static {v7, p1, p2}, Lcom/android/email/mail/internet/MimeUtility;->collectParts(Lcom/android/email/mail/Part;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 418
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 407
    .end local v0           #attachment:Z
    .end local v4           #i:I
    .end local v6           #mp:Lcom/android/email/mail/Multipart;
    :cond_2
    const/4 v7, 0x0

    move v0, v7

    goto :goto_0

    .line 426
    .restart local v0       #attachment:Z
    :cond_3
    invoke-interface {p0}, Lcom/android/email/mail/Part;->getBody()Lcom/android/email/mail/Body;

    move-result-object v7

    instance-of v7, v7, Lcom/android/email/mail/Message;

    if-eqz v7, :cond_5

    .line 427
    invoke-interface {p0}, Lcom/android/email/mail/Part;->getBody()Lcom/android/email/mail/Body;

    move-result-object v5

    check-cast v5, Lcom/android/email/mail/Message;

    .line 428
    .local v5, message:Lcom/android/email/mail/Message;
    invoke-static {v5, p1, p2}, Lcom/android/email/mail/internet/MimeUtility;->collectParts(Lcom/android/email/mail/Part;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 450
    .end local v5           #message:Lcom/android/email/mail/Message;
    :cond_4
    :goto_2
    return-void

    .line 434
    :cond_5
    if-nez v0, :cond_6

    invoke-interface {p0}, Lcom/android/email/mail/Part;->getMimeType()Ljava/lang/String;

    move-result-object v7

    const-string v8, "text/html"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 435
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 441
    :cond_6
    if-nez v0, :cond_7

    invoke-interface {p0}, Lcom/android/email/mail/Part;->getMimeType()Ljava/lang/String;

    move-result-object v7

    const-string v8, "text/plain"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 442
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 448
    :cond_7
    invoke-virtual {p2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method

.method public static decode(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "s"

    .prologue
    .line 67
    if-nez p0, :cond_0

    .line 68
    const/4 v0, 0x0

    .line 72
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lorg/apache/james/mime4j/decoder/DecoderUtil;->decodeGeneric(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static decodeBody(Ljava/io/InputStream;Ljava/lang/String;)Lcom/android/email/mail/Body;
    .locals 4
    .parameter "in"
    .parameter "contentTransferEncoding"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 364
    if-eqz p1, :cond_0

    .line 365
    const/4 v3, 0x0

    invoke-static {p1, v3}, Lcom/android/email/mail/internet/MimeUtility;->getHeaderParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 367
    const-string v3, "quoted-printable"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 368
    new-instance v0, Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;

    invoke-direct {v0, p0}, Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;-><init>(Ljava/io/InputStream;)V

    .end local p0
    .local v0, in:Ljava/io/InputStream;
    move-object p0, v0

    .line 375
    .end local v0           #in:Ljava/io/InputStream;
    .restart local p0
    :cond_0
    :goto_0
    new-instance v2, Lcom/android/email/mail/internet/BinaryTempFileBody;

    invoke-direct {v2}, Lcom/android/email/mail/internet/BinaryTempFileBody;-><init>()V

    .line 376
    .local v2, tempBody:Lcom/android/email/mail/internet/BinaryTempFileBody;
    invoke-virtual {v2}, Lcom/android/email/mail/internet/BinaryTempFileBody;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    .line 377
    .local v1, out:Ljava/io/OutputStream;
    invoke-static {p0, v1}, Lorg/apache/commons/io/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I

    .line 380
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 381
    return-object v2

    .line 370
    .end local v1           #out:Ljava/io/OutputStream;
    .end local v2           #tempBody:Lcom/android/email/mail/internet/BinaryTempFileBody;
    :cond_1
    const-string v3, "base64"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 371
    new-instance v0, Lorg/apache/james/mime4j/decoder/Base64InputStream;

    invoke-direct {v0, p0}, Lorg/apache/james/mime4j/decoder/Base64InputStream;-><init>(Ljava/io/InputStream;)V

    .end local p0
    .restart local v0       #in:Ljava/io/InputStream;
    move-object p0, v0

    .end local v0           #in:Ljava/io/InputStream;
    .restart local p0
    goto :goto_0
.end method

.method public static findFirstPartByMimeType(Lcom/android/email/mail/Part;Ljava/lang/String;)Lcom/android/email/mail/Part;
    .locals 6
    .parameter "part"
    .parameter "mimeType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/email/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 216
    invoke-interface {p0}, Lcom/android/email/mail/Part;->getBody()Lcom/android/email/mail/Body;

    move-result-object v5

    instance-of v5, v5, Lcom/android/email/mail/Multipart;

    if-eqz v5, :cond_1

    .line 217
    invoke-interface {p0}, Lcom/android/email/mail/Part;->getBody()Lcom/android/email/mail/Body;

    move-result-object v3

    check-cast v3, Lcom/android/email/mail/Multipart;

    .line 218
    .local v3, multipart:Lcom/android/email/mail/Multipart;
    const/4 v2, 0x0

    .local v2, i:I
    invoke-virtual {v3}, Lcom/android/email/mail/Multipart;->getCount()I

    move-result v1

    .local v1, count:I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 219
    invoke-virtual {v3, v2}, Lcom/android/email/mail/Multipart;->getBodyPart(I)Lcom/android/email/mail/BodyPart;

    move-result-object v0

    .line 220
    .local v0, bodyPart:Lcom/android/email/mail/BodyPart;
    invoke-static {v0, p1}, Lcom/android/email/mail/internet/MimeUtility;->findFirstPartByMimeType(Lcom/android/email/mail/Part;Ljava/lang/String;)Lcom/android/email/mail/Part;

    move-result-object v4

    .line 221
    .local v4, ret:Lcom/android/email/mail/Part;
    if-eqz v4, :cond_0

    move-object v5, v4

    .line 229
    .end local v0           #bodyPart:Lcom/android/email/mail/BodyPart;
    .end local v1           #count:I
    .end local v2           #i:I
    .end local v3           #multipart:Lcom/android/email/mail/Multipart;
    .end local v4           #ret:Lcom/android/email/mail/Part;
    :goto_1
    return-object v5

    .line 218
    .restart local v0       #bodyPart:Lcom/android/email/mail/BodyPart;
    .restart local v1       #count:I
    .restart local v2       #i:I
    .restart local v3       #multipart:Lcom/android/email/mail/Multipart;
    .restart local v4       #ret:Lcom/android/email/mail/Part;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 226
    .end local v0           #bodyPart:Lcom/android/email/mail/BodyPart;
    .end local v1           #count:I
    .end local v2           #i:I
    .end local v3           #multipart:Lcom/android/email/mail/Multipart;
    .end local v4           #ret:Lcom/android/email/mail/Part;
    :cond_1
    invoke-interface {p0}, Lcom/android/email/mail/Part;->getMimeType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    move-object v5, p0

    .line 227
    goto :goto_1

    .line 229
    :cond_2
    const/4 v5, 0x0

    goto :goto_1
.end method

.method public static findPartByContentId(Lcom/android/email/mail/Part;Ljava/lang/String;)Lcom/android/email/mail/Part;
    .locals 7
    .parameter "part"
    .parameter "contentId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 233
    invoke-interface {p0}, Lcom/android/email/mail/Part;->getBody()Lcom/android/email/mail/Body;

    move-result-object v6

    instance-of v6, v6, Lcom/android/email/mail/Multipart;

    if-eqz v6, :cond_1

    .line 234
    invoke-interface {p0}, Lcom/android/email/mail/Part;->getBody()Lcom/android/email/mail/Body;

    move-result-object v4

    check-cast v4, Lcom/android/email/mail/Multipart;

    .line 235
    .local v4, multipart:Lcom/android/email/mail/Multipart;
    const/4 v3, 0x0

    .local v3, i:I
    invoke-virtual {v4}, Lcom/android/email/mail/Multipart;->getCount()I

    move-result v2

    .local v2, count:I
    :goto_0
    if-ge v3, v2, :cond_1

    .line 236
    invoke-virtual {v4, v3}, Lcom/android/email/mail/Multipart;->getBodyPart(I)Lcom/android/email/mail/BodyPart;

    move-result-object v0

    .line 237
    .local v0, bodyPart:Lcom/android/email/mail/BodyPart;
    invoke-static {v0, p1}, Lcom/android/email/mail/internet/MimeUtility;->findPartByContentId(Lcom/android/email/mail/Part;Ljava/lang/String;)Lcom/android/email/mail/Part;

    move-result-object v5

    .line 238
    .local v5, ret:Lcom/android/email/mail/Part;
    if-eqz v5, :cond_0

    move-object v6, v5

    .line 247
    .end local v0           #bodyPart:Lcom/android/email/mail/BodyPart;
    .end local v2           #count:I
    .end local v3           #i:I
    .end local v4           #multipart:Lcom/android/email/mail/Multipart;
    .end local v5           #ret:Lcom/android/email/mail/Part;
    :goto_1
    return-object v6

    .line 235
    .restart local v0       #bodyPart:Lcom/android/email/mail/BodyPart;
    .restart local v2       #count:I
    .restart local v3       #i:I
    .restart local v4       #multipart:Lcom/android/email/mail/Multipart;
    .restart local v5       #ret:Lcom/android/email/mail/Part;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 243
    .end local v0           #bodyPart:Lcom/android/email/mail/BodyPart;
    .end local v2           #count:I
    .end local v3           #i:I
    .end local v4           #multipart:Lcom/android/email/mail/Multipart;
    .end local v5           #ret:Lcom/android/email/mail/Part;
    :cond_1
    invoke-interface {p0}, Lcom/android/email/mail/Part;->getContentId()Ljava/lang/String;

    move-result-object v1

    .line 244
    .local v1, cid:Ljava/lang/String;
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    move-object v6, p0

    .line 245
    goto :goto_1

    .line 247
    :cond_2
    const/4 v6, 0x0

    goto :goto_1
.end method

.method public static fold(Ljava/lang/String;I)Ljava/lang/String;
    .locals 9
    .parameter "s"
    .parameter "usedCharacters"

    .prologue
    const/16 v8, 0x4c

    const/4 v7, 0x0

    .line 131
    const/16 v2, 0x4c

    .line 133
    .local v2, maxCharacters:I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 134
    .local v1, length:I
    add-int v6, p1, v1

    if-gt v6, v8, :cond_0

    move-object v6, p0

    .line 144
    :goto_0
    return-object v6

    .line 137
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 139
    .local v4, sb:Ljava/lang/StringBuilder;
    neg-int v0, p1

    .line 140
    .local v0, lastLineBreak:I
    invoke-static {p0, v7}, Lcom/android/email/mail/internet/MimeUtility;->indexOfWsp(Ljava/lang/String;I)I

    move-result v5

    .line 142
    .local v5, wspIdx:I
    :goto_1
    if-ne v5, v1, :cond_1

    .line 143
    invoke-static {v7, v0}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-virtual {p0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 147
    :cond_1
    add-int/lit8 v6, v5, 0x1

    invoke-static {p0, v6}, Lcom/android/email/mail/internet/MimeUtility;->indexOfWsp(Ljava/lang/String;I)I

    move-result v3

    .line 149
    .local v3, nextWspIdx:I
    sub-int v6, v3, v0

    if-le v6, v8, :cond_2

    .line 150
    invoke-static {v7, v0}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-virtual {p0, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    const-string v6, "\r\n"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    move v0, v5

    .line 155
    :cond_2
    move v5, v3

    .line 156
    goto :goto_1
.end method

.method public static foldAndEncode(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "s"

    .prologue
    .line 84
    return-object p0
.end method

.method public static foldAndEncode2(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2
    .parameter "s"
    .parameter "usedCharacters"

    .prologue
    .line 105
    sget-object v1, Lorg/apache/james/mime4j/codec/EncoderUtil$Usage;->TEXT_TOKEN:Lorg/apache/james/mime4j/codec/EncoderUtil$Usage;

    invoke-static {p0, v1, p1}, Lorg/apache/james/mime4j/codec/EncoderUtil;->encodeIfNecessary(Ljava/lang/String;Lorg/apache/james/mime4j/codec/EncoderUtil$Usage;I)Ljava/lang/String;

    move-result-object v0

    .line 108
    .local v0, encoded:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/android/email/mail/internet/MimeUtility;->fold(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getHeaderParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .parameter "header"
    .parameter "name"

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    const-string v11, "\""

    .line 192
    if-nez p0, :cond_0

    move-object v7, v10

    .line 211
    :goto_0
    return-object v7

    .line 195
    :cond_0
    invoke-static {p0}, Lcom/android/email/mail/internet/MimeUtility;->unfold(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, ";"

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 196
    .local v6, parts:[Ljava/lang/String;
    if-nez p1, :cond_1

    .line 197
    const/4 v7, 0x0

    aget-object v7, v6, v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    .line 199
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 200
    .local v3, lowerCaseName:Ljava/lang/String;
    move-object v0, v6

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_1
    if-ge v1, v2, :cond_4

    aget-object v5, v0, v1

    .line 201
    .local v5, part:Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 202
    const-string v7, "="

    const/4 v8, 0x2

    invoke-virtual {v5, v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v7

    aget-object v7, v7, v9

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 203
    .local v4, parameter:Ljava/lang/String;
    const-string v7, "\""

    invoke-virtual {v4, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    const-string v7, "\""

    invoke-virtual {v4, v11}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 204
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    sub-int/2addr v7, v9

    invoke-virtual {v4, v9, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    :cond_2
    move-object v7, v4

    .line 207
    goto :goto_0

    .line 200
    .end local v4           #parameter:Ljava/lang/String;
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v5           #part:Ljava/lang/String;
    :cond_4
    move-object v7, v10

    .line 211
    goto :goto_0
.end method

.method public static getTextFromPart(Lcom/android/email/mail/Part;)Ljava/lang/String;
    .locals 11
    .parameter "part"

    .prologue
    const-string v10, "Unable to getTextFromPart "

    const-string v9, "Email"

    .line 259
    if-eqz p0, :cond_2

    :try_start_0
    invoke-interface {p0}, Lcom/android/email/mail/Part;->getBody()Lcom/android/email/mail/Body;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 260
    invoke-interface {p0}, Lcom/android/email/mail/Part;->getBody()Lcom/android/email/mail/Body;

    move-result-object v7

    invoke-interface {v7}, Lcom/android/email/mail/Body;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    .line 261
    .local v2, in:Ljava/io/InputStream;
    invoke-interface {p0}, Lcom/android/email/mail/Part;->getMimeType()Ljava/lang/String;

    move-result-object v3

    .line 262
    .local v3, mimeType:Ljava/lang/String;
    if-eqz v3, :cond_2

    const-string v7, "text/*"

    invoke-static {v3, v7}, Lcom/android/email/mail/internet/MimeUtility;->mimeTypeMatches(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 267
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 268
    .local v5, out:Ljava/io/ByteArrayOutputStream;
    invoke-static {v2, v5}, Lorg/apache/commons/io/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I

    .line 269
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 270
    const/4 v2, 0x0

    .line 275
    invoke-interface {p0}, Lcom/android/email/mail/Part;->getContentType()Ljava/lang/String;

    move-result-object v7

    const-string v8, "charset"

    invoke-static {v7, v8}, Lcom/android/email/mail/internet/MimeUtility;->getHeaderParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 276
    .local v0, charset:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 280
    invoke-static {v0}, Lorg/apache/james/mime4j/util/CharsetUtil;->toJavaCharset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 285
    :cond_0
    if-nez v0, :cond_1

    .line 293
    const-string v0, "EUC-KR"

    .line 300
    :cond_1
    invoke-virtual {v5, v0}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 301
    .local v6, result:Ljava/lang/String;
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-object v7, v6

    .line 321
    .end local v0           #charset:Ljava/lang/String;
    .end local v2           #in:Ljava/io/InputStream;
    .end local v3           #mimeType:Ljava/lang/String;
    .end local v5           #out:Ljava/io/ByteArrayOutputStream;
    .end local v6           #result:Ljava/lang/String;
    :goto_0
    return-object v7

    .line 307
    :catch_0
    move-exception v7

    move-object v4, v7

    .line 312
    .local v4, oom:Ljava/lang/OutOfMemoryError;
    const-string v7, "Email"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unable to getTextFromPart "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4}, Ljava/lang/OutOfMemoryError;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v9, v7}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    .end local v4           #oom:Ljava/lang/OutOfMemoryError;
    :cond_2
    :goto_1
    const/4 v7, 0x0

    goto :goto_0

    .line 314
    :catch_1
    move-exception v7

    move-object v1, v7

    .line 319
    .local v1, e:Ljava/lang/Exception;
    const-string v7, "Email"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unable to getTextFromPart "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v9, v7}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private static indexOfWsp(Ljava/lang/String;I)I
    .locals 4
    .parameter "s"
    .parameter "fromIndex"

    .prologue
    .line 166
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 167
    .local v2, len:I
    move v1, p1

    .local v1, index:I
    :goto_0
    if-ge v1, v2, :cond_2

    .line 168
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 169
    .local v0, c:C
    const/16 v3, 0x20

    if-eq v0, v3, :cond_0

    const/16 v3, 0x9

    if-ne v0, v3, :cond_1

    :cond_0
    move v3, v1

    .line 172
    .end local v0           #c:C
    :goto_1
    return v3

    .line 167
    .restart local v0       #c:C
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v0           #c:C
    :cond_2
    move v3, v2

    .line 172
    goto :goto_1
.end method

.method public static mimeTypeMatches(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .parameter "mimeType"
    .parameter "matchAgainst"

    .prologue
    .line 333
    const-string v1, "\\*"

    const-string v2, "\\.\\*"

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v1, v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 335
    .local v0, p:Ljava/util/regex/Pattern;
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    return v1
.end method

.method public static mimeTypeMatches(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 5
    .parameter "mimeType"
    .parameter "matchAgainst"

    .prologue
    .line 348
    move-object v0, p1

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 349
    .local v3, matchType:Ljava/lang/String;
    invoke-static {p0, v3}, Lcom/android/email/mail/internet/MimeUtility;->mimeTypeMatches(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 350
    const/4 v4, 0x1

    .line 353
    .end local v3           #matchType:Ljava/lang/String;
    :goto_1
    return v4

    .line 348
    .restart local v3       #matchType:Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 353
    .end local v3           #matchType:Ljava/lang/String;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public static unfold(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "s"

    .prologue
    .line 55
    if-nez p0, :cond_0

    .line 56
    const/4 v1, 0x0

    .line 63
    :goto_0
    return-object v1

    .line 58
    :cond_0
    sget-object v1, Lcom/android/email/mail/internet/MimeUtility;->PATTERN_CR_OR_LF:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 59
    .local v0, patternMatcher:Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 60
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->reset()Ljava/util/regex/Matcher;

    .line 61
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_1
    move-object v1, p0

    .line 63
    goto :goto_0
.end method

.method public static unfoldAndDecode(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "s"

    .prologue
    .line 77
    invoke-static {p0}, Lcom/android/email/mail/internet/MimeUtility;->unfold(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/email/mail/internet/MimeUtility;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
