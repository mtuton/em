.class public Lorg/apache/james/mime4j/decoder/DecoderUtil;
.super Ljava/lang/Object;
.source "DecoderUtil.java"


# static fields
.field private static log:Lorg/apache/james/mime4j/Log;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    const-class v0, Lorg/apache/james/mime4j/decoder/DecoderUtil;

    invoke-static {v0}, Lorg/apache/james/mime4j/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/james/mime4j/Log;

    move-result-object v0

    sput-object v0, Lorg/apache/james/mime4j/decoder/DecoderUtil;->log:Lorg/apache/james/mime4j/Log;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lorg/apache/james/mime4j/Log;
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lorg/apache/james/mime4j/decoder/DecoderUtil;->log:Lorg/apache/james/mime4j/Log;

    return-object v0
.end method

.method public static chardet(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "s"

    .prologue
    .line 52
    if-nez p0, :cond_0

    .line 119
    .end local p0
    :goto_0
    return-object p0

    .line 56
    .restart local p0
    :cond_0
    const/4 v0, 0x0

    .line 57
    .local v0, lang:I
    new-instance v2, Lorg/mozilla/intl/chardet/nsDetector;

    invoke-direct {v2, v0}, Lorg/mozilla/intl/chardet/nsDetector;-><init>(I)V

    .line 61
    .local v2, det:Lorg/mozilla/intl/chardet/nsDetector;
    new-instance v0, Lorg/apache/james/mime4j/decoder/DecoderUtil$1;

    .end local v0           #lang:I
    invoke-direct {v0}, Lorg/apache/james/mime4j/decoder/DecoderUtil$1;-><init>()V

    invoke-virtual {v2, v0}, Lorg/mozilla/intl/chardet/nsDetector;->Init(Lorg/mozilla/intl/chardet/nsICharsetDetectionObserver;)V

    .line 70
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 72
    .local v3, imp:Ljava/io/ByteArrayOutputStream;
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    .line 73
    .local p0, chars:[C
    move-object p0, p0

    .local p0, arr$:[C
    array-length v4, p0

    .local v4, len$:I
    const/4 v0, 0x0

    .local v0, i$:I
    move v1, v0

    .end local v0           #i$:I
    .local v1, i$:I
    :goto_1
    if-ge v1, v4, :cond_1

    aget-char v0, p0, v1

    .line 74
    .local v0, c:C
    invoke-virtual {v3, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 73
    add-int/lit8 v0, v1, 0x1

    .end local v1           #i$:I
    .local v0, i$:I
    move v1, v0

    .end local v0           #i$:I
    .restart local v1       #i$:I
    goto :goto_1

    .line 76
    :cond_1
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    .line 77
    .local p0, buf:[B
    const/4 v0, 0x1

    .line 80
    .local v0, isAscii:Z
    array-length v0, p0

    .end local v0           #isAscii:Z
    invoke-virtual {v2, p0, v0}, Lorg/mozilla/intl/chardet/nsDetector;->isAscii([BI)Z

    move-result v0

    .line 83
    .restart local v0       #isAscii:Z
    if-nez v0, :cond_2

    .line 84
    array-length v1, p0

    .end local v1           #i$:I
    const/4 v3, 0x0

    invoke-virtual {v2, p0, v1, v3}, Lorg/mozilla/intl/chardet/nsDetector;->DoIt([BIZ)Z

    .line 86
    .end local v3           #imp:Ljava/io/ByteArrayOutputStream;
    :cond_2
    invoke-virtual {v2}, Lorg/mozilla/intl/chardet/nsDetector;->DataEnd()V

    .line 88
    const/4 v4, 0x0

    .line 89
    .local v4, result:Ljava/lang/String;
    invoke-static {}, Lorg/apache/james/mime4j/decoder/DecoderUtil;->getDefaultCharset()Ljava/lang/String;

    move-result-object v1

    .line 91
    .local v1, defaultCharset:Ljava/lang/String;
    if-eqz v0, :cond_3

    .line 94
    move-object p0, v1

    .end local v4           #result:Ljava/lang/String;
    .local p0, result:Ljava/lang/String;
    goto :goto_0

    .line 97
    .restart local v4       #result:Ljava/lang/String;
    .local p0, buf:[B
    :cond_3
    invoke-virtual {v2}, Lorg/mozilla/intl/chardet/nsDetector;->getProbableCharsets()[Ljava/lang/String;

    move-result-object p0

    .line 99
    .local p0, prob:[Ljava/lang/String;
    move-object p0, p0

    .local p0, arr$:[Ljava/lang/String;
    array-length v3, p0

    .local v3, len$:I
    const/4 v0, 0x0

    .local v0, i$:I
    move v2, v0

    .end local v0           #i$:I
    .local v2, i$:I
    :goto_2
    if-ge v2, v3, :cond_5

    aget-object v0, p0, v2

    .line 100
    .local v0, charset:Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .end local v0           #charset:Ljava/lang/String;
    if-eqz v0, :cond_4

    .line 101
    move-object p0, v1

    .line 102
    .end local v4           #result:Ljava/lang/String;
    .local p0, result:Ljava/lang/String;
    goto :goto_0

    .line 99
    .restart local v4       #result:Ljava/lang/String;
    .local p0, arr$:[Ljava/lang/String;
    :cond_4
    add-int/lit8 v0, v2, 0x1

    .end local v2           #i$:I
    .local v0, i$:I
    move v2, v0

    .end local v0           #i$:I
    .restart local v2       #i$:I
    goto :goto_2

    :cond_5
    move-object p0, v4

    .end local v4           #result:Ljava/lang/String;
    .local p0, result:Ljava/lang/String;
    goto :goto_0
.end method

.method public static decodeB(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "encodedWord"
    .parameter "charset"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 275
    new-instance v0, Ljava/lang/String;

    invoke-static {p0}, Lorg/apache/james/mime4j/decoder/DecoderUtil;->decodeBase64(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v0
.end method

.method public static decodeBase64(Ljava/lang/String;)[B
    .locals 6
    .parameter "s"

    .prologue
    .line 240
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 243
    .local v1, baos:Ljava/io/ByteArrayOutputStream;
    :try_start_0
    const-string v5, "US-ASCII"

    invoke-virtual {p0, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    .line 245
    .local v2, bytes:[B
    new-instance v4, Lorg/apache/james/mime4j/decoder/Base64InputStream;

    new-instance v5, Ljava/io/ByteArrayInputStream;

    invoke-direct {v5, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v4, v5}, Lorg/apache/james/mime4j/decoder/Base64InputStream;-><init>(Ljava/io/InputStream;)V

    .line 248
    .local v4, is:Lorg/apache/james/mime4j/decoder/Base64InputStream;
    const/4 v0, 0x0

    .line 249
    .local v0, b:I
    :goto_0
    invoke-virtual {v4}, Lorg/apache/james/mime4j/decoder/Base64InputStream;->read()I

    move-result v0

    const/4 v5, -0x1

    if-eq v0, v5, :cond_0

    .line 250
    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 252
    .end local v0           #b:I
    .end local v2           #bytes:[B
    .end local v4           #is:Lorg/apache/james/mime4j/decoder/Base64InputStream;
    :catch_0
    move-exception v5

    move-object v3, v5

    .line 256
    .local v3, e:Ljava/io/IOException;
    sget-object v5, Lorg/apache/james/mime4j/decoder/DecoderUtil;->log:Lorg/apache/james/mime4j/Log;

    invoke-virtual {v5, v3}, Lorg/apache/james/mime4j/Log;->error(Ljava/lang/Object;)V

    .line 259
    .end local v3           #e:Ljava/io/IOException;
    :cond_0
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    return-object v5
.end method

.method public static decodeBaseQuotedPrintable(Ljava/lang/String;)[B
    .locals 6
    .parameter "s"

    .prologue
    .line 211
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 214
    .local v1, baos:Ljava/io/ByteArrayOutputStream;
    :try_start_0
    const-string v5, "US-ASCII"

    invoke-virtual {p0, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    .line 216
    .local v2, bytes:[B
    new-instance v4, Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;

    new-instance v5, Ljava/io/ByteArrayInputStream;

    invoke-direct {v5, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v4, v5}, Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;-><init>(Ljava/io/InputStream;)V

    .line 219
    .local v4, is:Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;
    const/4 v0, 0x0

    .line 220
    .local v0, b:I
    :goto_0
    invoke-virtual {v4}, Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;->read()I

    move-result v0

    const/4 v5, -0x1

    if-eq v0, v5, :cond_0

    .line 221
    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 223
    .end local v0           #b:I
    .end local v2           #bytes:[B
    .end local v4           #is:Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;
    :catch_0
    move-exception v5

    move-object v3, v5

    .line 227
    .local v3, e:Ljava/io/IOException;
    sget-object v5, Lorg/apache/james/mime4j/decoder/DecoderUtil;->log:Lorg/apache/james/mime4j/Log;

    invoke-virtual {v5, v3}, Lorg/apache/james/mime4j/Log;->error(Ljava/lang/Object;)V

    .line 230
    .end local v3           #e:Ljava/io/IOException;
    :cond_0
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    return-object v5
.end method

.method private static decodeEncodedWord(Ljava/lang/String;II)Ljava/lang/String;
    .locals 13
    .parameter "body"
    .parameter "begin"
    .parameter "end"

    .prologue
    const/16 v9, 0x3f

    const/4 v8, 0x2

    const/4 v10, 0x0

    const-string v12, "\' in encoded word \'"

    const-string v11, "\'"

    .line 376
    add-int/lit8 v7, p1, 0x2

    invoke-virtual {p0, v9, v7}, Ljava/lang/String;->indexOf(II)I

    move-result v5

    .line 377
    .local v5, qm1:I
    sub-int v7, p2, v8

    if-ne v5, v7, :cond_0

    move-object v7, v10

    .line 438
    :goto_0
    return-object v7

    .line 380
    :cond_0
    add-int/lit8 v7, v5, 0x1

    invoke-virtual {p0, v9, v7}, Ljava/lang/String;->indexOf(II)I

    move-result v6

    .line 381
    .local v6, qm2:I
    sub-int v7, p2, v8

    if-ne v6, v7, :cond_1

    move-object v7, v10

    .line 382
    goto :goto_0

    .line 384
    :cond_1
    add-int/lit8 v7, p1, 0x2

    invoke-virtual {p0, v7, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 385
    .local v4, mimeCharset:Ljava/lang/String;
    add-int/lit8 v7, v5, 0x1

    invoke-virtual {p0, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 386
    .local v3, encoding:Ljava/lang/String;
    add-int/lit8 v7, v6, 0x1

    sub-int v8, p2, v8

    invoke-virtual {p0, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 388
    .local v2, encodedText:Ljava/lang/String;
    invoke-static {v4}, Lorg/apache/james/mime4j/util/CharsetUtil;->toJavaCharset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 389
    .local v0, charset:Ljava/lang/String;
    if-nez v0, :cond_3

    .line 390
    sget-object v7, Lorg/apache/james/mime4j/decoder/DecoderUtil;->log:Lorg/apache/james/mime4j/Log;

    invoke-virtual {v7}, Lorg/apache/james/mime4j/Log;->isWarnEnabled()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 391
    sget-object v7, Lorg/apache/james/mime4j/decoder/DecoderUtil;->log:Lorg/apache/james/mime4j/Log;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "MIME charset \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\' in encoded word \'"

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\' doesn\'t have a "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "corresponding Java charset"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/apache/james/mime4j/Log;->warn(Ljava/lang/Object;)V

    :cond_2
    move-object v7, v10

    .line 395
    goto :goto_0

    .line 396
    :cond_3
    invoke-static {v0}, Lorg/apache/james/mime4j/util/CharsetUtil;->isDecodingSupported(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 397
    sget-object v7, Lorg/apache/james/mime4j/decoder/DecoderUtil;->log:Lorg/apache/james/mime4j/Log;

    invoke-virtual {v7}, Lorg/apache/james/mime4j/Log;->isWarnEnabled()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 398
    sget-object v7, Lorg/apache/james/mime4j/decoder/DecoderUtil;->log:Lorg/apache/james/mime4j/Log;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Current JDK doesn\'t support decoding of charset \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\' (MIME charset \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\' in encoded word \'"

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\')"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/apache/james/mime4j/Log;->warn(Ljava/lang/Object;)V

    :cond_4
    move-object v7, v10

    .line 403
    goto/16 :goto_0

    .line 406
    :cond_5
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_7

    .line 407
    sget-object v7, Lorg/apache/james/mime4j/decoder/DecoderUtil;->log:Lorg/apache/james/mime4j/Log;

    invoke-virtual {v7}, Lorg/apache/james/mime4j/Log;->isWarnEnabled()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 408
    sget-object v7, Lorg/apache/james/mime4j/decoder/DecoderUtil;->log:Lorg/apache/james/mime4j/Log;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Missing encoded text in encoded word: \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\'"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/apache/james/mime4j/Log;->warn(Ljava/lang/Object;)V

    :cond_6
    move-object v7, v10

    .line 411
    goto/16 :goto_0

    .line 415
    :cond_7
    :try_start_0
    const-string v7, "Q"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 416
    invoke-static {v2, v0}, Lorg/apache/james/mime4j/decoder/DecoderUtil;->decodeQ(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_0

    .line 417
    :cond_8
    const-string v7, "B"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 418
    invoke-static {v2, v0}, Lorg/apache/james/mime4j/decoder/DecoderUtil;->decodeB(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_0

    .line 420
    :cond_9
    sget-object v7, Lorg/apache/james/mime4j/decoder/DecoderUtil;->log:Lorg/apache/james/mime4j/Log;

    invoke-virtual {v7}, Lorg/apache/james/mime4j/Log;->isWarnEnabled()Z

    move-result v7

    if-eqz v7, :cond_a

    .line 421
    sget-object v7, Lorg/apache/james/mime4j/decoder/DecoderUtil;->log:Lorg/apache/james/mime4j/Log;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Warning: Unknown encoding in encoded word \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/apache/james/mime4j/Log;->warn(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_a
    move-object v7, v10

    .line 424
    goto/16 :goto_0

    .line 426
    :catch_0
    move-exception v7

    move-object v1, v7

    .line 428
    .local v1, e:Ljava/io/UnsupportedEncodingException;
    sget-object v7, Lorg/apache/james/mime4j/decoder/DecoderUtil;->log:Lorg/apache/james/mime4j/Log;

    invoke-virtual {v7}, Lorg/apache/james/mime4j/Log;->isWarnEnabled()Z

    move-result v7

    if-eqz v7, :cond_b

    .line 429
    sget-object v7, Lorg/apache/james/mime4j/decoder/DecoderUtil;->log:Lorg/apache/james/mime4j/Log;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unsupported encoding in encoded word \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\'"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8, v1}, Lorg/apache/james/mime4j/Log;->warn(Ljava/lang/Object;Ljava/lang/Throwable;)V

    :cond_b
    move-object v7, v10

    .line 432
    goto/16 :goto_0

    .line 433
    .end local v1           #e:Ljava/io/UnsupportedEncodingException;
    :catch_1
    move-exception v7

    move-object v1, v7

    .line 434
    .local v1, e:Ljava/lang/RuntimeException;
    sget-object v7, Lorg/apache/james/mime4j/decoder/DecoderUtil;->log:Lorg/apache/james/mime4j/Log;

    invoke-virtual {v7}, Lorg/apache/james/mime4j/Log;->isWarnEnabled()Z

    move-result v7

    if-eqz v7, :cond_c

    .line 435
    sget-object v7, Lorg/apache/james/mime4j/decoder/DecoderUtil;->log:Lorg/apache/james/mime4j/Log;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Could not decode encoded word \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\'"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8, v1}, Lorg/apache/james/mime4j/Log;->warn(Ljava/lang/Object;Ljava/lang/Throwable;)V

    :cond_c
    move-object v7, v10

    .line 438
    goto/16 :goto_0
.end method

.method public static decodeEncodedWords(Ljava/lang/String;)Ljava/lang/String;
    .locals 14
    .parameter "body"

    .prologue
    const/16 v12, 0x3f

    const/4 v11, -0x1

    const-string v13, "=?"

    .line 322
    const-string v10, "=?"

    invoke-virtual {p0, v13}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    if-ne v10, v11, :cond_0

    move-object v10, p0

    .line 352
    :goto_0
    return-object v10

    .line 326
    :cond_0
    const/4 v4, 0x0

    .line 327
    .local v4, previousEnd:I
    const/4 v5, 0x0

    .line 329
    .local v5, previousWasEncoded:Z
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 332
    .local v8, sb:Ljava/lang/StringBuilder;
    :goto_1
    const-string v10, "=?"

    invoke-virtual {p0, v13, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    .line 337
    .local v0, begin:I
    add-int/lit8 v3, v0, 0x2

    .line 338
    .local v3, endScan:I
    if-eq v0, v11, :cond_1

    .line 339
    add-int/lit8 v10, v3, 0x2

    invoke-virtual {p0, v12, v10}, Ljava/lang/String;->indexOf(II)I

    move-result v6

    .line 340
    .local v6, qm1:I
    add-int/lit8 v10, v6, 0x1

    invoke-virtual {p0, v12, v10}, Ljava/lang/String;->indexOf(II)I

    move-result v7

    .line 341
    .local v7, qm2:I
    if-eq v7, v11, :cond_1

    .line 342
    add-int/lit8 v3, v7, 0x1

    .line 346
    .end local v6           #qm1:I
    .end local v7           #qm2:I
    :cond_1
    if-ne v0, v11, :cond_2

    move v2, v11

    .line 347
    .local v2, end:I
    :goto_2
    if-ne v2, v11, :cond_4

    .line 348
    if-nez v4, :cond_3

    move-object v10, p0

    .line 349
    goto :goto_0

    .line 346
    .end local v2           #end:I
    :cond_2
    const-string v10, "?="

    invoke-virtual {p0, v10, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v10

    move v2, v10

    goto :goto_2

    .line 351
    .restart local v2       #end:I
    :cond_3
    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 352
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto :goto_0

    .line 354
    :cond_4
    add-int/lit8 v2, v2, 0x2

    .line 356
    invoke-virtual {p0, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 358
    .local v9, sep:Ljava/lang/String;
    invoke-static {p0, v0, v2}, Lorg/apache/james/mime4j/decoder/DecoderUtil;->decodeEncodedWord(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v1

    .line 359
    .local v1, decoded:Ljava/lang/String;
    if-nez v1, :cond_5

    .line 360
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 361
    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 369
    :goto_3
    move v4, v2

    .line 370
    if-eqz v1, :cond_8

    const/4 v10, 0x1

    move v5, v10

    .line 371
    :goto_4
    goto :goto_1

    .line 363
    :cond_5
    if-eqz v5, :cond_6

    invoke-static {v9}, Lorg/apache/james/mime4j/util/CharsetUtil;->isWhitespace(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_7

    .line 364
    :cond_6
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 366
    :cond_7
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 370
    :cond_8
    const/4 v10, 0x0

    move v5, v10

    goto :goto_4
.end method

.method public static decodeGeneric(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "s"

    .prologue
    .line 182
    if-nez p0, :cond_0

    move-object v2, p0

    .line 199
    :goto_0
    return-object v2

    .line 186
    :cond_0
    const-string v2, "=?"

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_2

    .line 188
    invoke-static {p0}, Lorg/apache/james/mime4j/decoder/DecoderUtil;->chardet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 190
    .local v0, charset:Ljava/lang/String;
    if-nez v0, :cond_1

    .line 191
    move-object v1, p0

    .end local v0           #charset:Ljava/lang/String;
    .local v1, result:Ljava/lang/String;
    :goto_1
    move-object v2, v1

    .line 199
    goto :goto_0

    .line 193
    .end local v1           #result:Ljava/lang/String;
    .restart local v0       #charset:Ljava/lang/String;
    :cond_1
    invoke-static {p0, v0}, Lorg/apache/james/mime4j/decoder/DecoderUtil;->justDecode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .restart local v1       #result:Ljava/lang/String;
    goto :goto_1

    .line 196
    .end local v0           #charset:Ljava/lang/String;
    .end local v1           #result:Ljava/lang/String;
    :cond_2
    invoke-static {p0}, Lorg/apache/james/mime4j/decoder/DecoderUtil;->decodeEncodedWords(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .restart local v1       #result:Ljava/lang/String;
    goto :goto_1
.end method

.method public static decodeQ(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "encodedWord"
    .parameter "charset"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 294
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 295
    .local v2, sb:Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 296
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 297
    .local v0, c:C
    const/16 v3, 0x5f

    if-ne v0, v3, :cond_0

    .line 298
    const-string v3, "=20"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 295
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 300
    :cond_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 304
    .end local v0           #c:C
    :cond_1
    new-instance v3, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/apache/james/mime4j/decoder/DecoderUtil;->decodeBaseQuotedPrintable(Ljava/lang/String;)[B

    move-result-object v4

    invoke-direct {v3, v4, p1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v3
.end method

.method public static getDefaultCharset()Ljava/lang/String;
    .locals 3

    .prologue
    .line 124
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 125
    .local v0, currentLocale:Ljava/util/Locale;
    const/4 v1, 0x0

    .line 127
    .local v1, defaultCharset:Ljava/lang/String;
    sget-object v2, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-virtual {v0, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    invoke-virtual {v0, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 128
    :cond_0
    new-instance v1, Ljava/lang/String;

    .end local v1           #defaultCharset:Ljava/lang/String;
    const-string v2, "GB2312"

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 134
    .restart local v1       #defaultCharset:Ljava/lang/String;
    :cond_1
    :goto_0
    return-object v1

    .line 130
    :cond_2
    sget-object v2, Ljava/util/Locale;->KOREA:Ljava/util/Locale;

    invoke-virtual {v0, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    sget-object v2, Ljava/util/Locale;->KOREAN:Ljava/util/Locale;

    invoke-virtual {v0, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 131
    :cond_3
    new-instance v1, Ljava/lang/String;

    .end local v1           #defaultCharset:Ljava/lang/String;
    const-string v2, "EUC-KR"

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .restart local v1       #defaultCharset:Ljava/lang/String;
    goto :goto_0
.end method

.method public static justDecode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .parameter "s"
    .parameter "charset"

    .prologue
    .line 148
    if-eqz p0, :cond_0

    const-string v8, "=?"

    invoke-virtual {p0, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    const/4 v9, -0x1

    if-eq v8, v9, :cond_1

    :cond_0
    move-object v8, p0

    .line 168
    :goto_0
    return-object v8

    .line 152
    :cond_1
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 156
    .local v1, baos:Ljava/io/ByteArrayOutputStream;
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    .line 158
    .local v3, chars:[C
    move-object v0, v3

    .local v0, arr$:[C
    array-length v6, v0

    .local v6, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_1
    if-ge v5, v6, :cond_2

    aget-char v2, v0, v5

    .line 159
    .local v2, c:C
    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 158
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 162
    .end local v2           #c:C
    :cond_2
    new-instance v7, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v8

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lorg/apache/james/mime4j/util/CharsetUtil;->toJavaCharset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0           #arr$:[C
    .end local v3           #chars:[C
    .end local v5           #i$:I
    .end local v6           #len$:I
    .local v7, result:Ljava/lang/String;
    :goto_2
    move-object v8, v7

    .line 168
    goto :goto_0

    .line 164
    .end local v7           #result:Ljava/lang/String;
    :catch_0
    move-exception v8

    move-object v4, v8

    .line 165
    .local v4, e:Ljava/io/UnsupportedEncodingException;
    move-object v7, p0

    .restart local v7       #result:Ljava/lang/String;
    goto :goto_2
.end method
