.class public Lcom/android/exchange/adapter/EasBase64EncodedURI;
.super Ljava/lang/Object;
.source "EasBase64EncodedURI.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "EasBase64EncodedURI"

.field static final acceptMultiPart:B = 0x27t

.field static final attachmentName:B = 0x0t

.field static final collectionId:B = 0x1t

.field static final collectionName:B = 0x2t

.field static final createCollection:B = 0x6t

.field static final deleteCollection:B = 0x7t

.field static final folderCreate:B = 0xat

.field static final folderDelete:B = 0xbt

.field static final folderSync:B = 0x9t

.field static final folderUpdate:B = 0xct

.field static final getAttachment:B = 0x4t

.field static final getHierarchy:B = 0x5t

.field static final getItemEstimate:B = 0xet

.field static final itemId:B = 0x3t

.field static final itemOperations:B = 0x13t

.field static final longId:B = 0x4t

.field static final maxCommand:B = 0x17t

.field static final maxParamTag:B = 0x3ft

.field static final meetingResponse:B = 0xft

.field static final moveCollection:B = 0x8t

.field static final moveItems:B = 0xdt

.field static final occurrence:B = 0x6t

.field static final options:B = 0x7t

.field static final parentId:B = 0x5t

.field static final ping:B = 0x12t

.field static final provision:B = 0x14t

.field static final resolveRecipients:B = 0x15t

.field static final roundTripId:B = 0x8t

.field static final saveInSent:B = 0x17t

.field static final search:B = 0x10t

.field static final sendMail:B = 0x1t

.field static final settings:B = 0x11t

.field static final smartForward:B = 0x2t

.field static final smartReply:B = 0x3t

.field static final sync:B = 0x0t

.field static final validateCert:B = 0x16t


# instance fields
.field mCmd:[B

.field mDeviceId:Ljava/lang/String;

.field mDeviceType:Ljava/lang/String;

.field mExtra:Ljava/lang/String;

.field mExtraCmd:Ljava/lang/String;

.field mHostAddress:Ljava/lang/String;

.field mLocale:[B

.field mPolicyKey:Ljava/lang/String;

.field mProtocol:[B

.field mSsl:Z

.field mTrustSsl:Z

.field mUserName:Ljava/lang/String;


# direct methods
.method public constructor <init>(ZZLjava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "ssl"
    .parameter "trustSsl"
    .parameter "hostAddress"
    .parameter "userName"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-array v0, v4, [B

    const/16 v1, 0x79

    aput-byte v1, v0, v3

    iput-object v0, p0, Lcom/android/exchange/adapter/EasBase64EncodedURI;->mProtocol:[B

    .line 19
    iput-object v2, p0, Lcom/android/exchange/adapter/EasBase64EncodedURI;->mDeviceId:Ljava/lang/String;

    .line 20
    const-string v0, "Android"

    iput-object v0, p0, Lcom/android/exchange/adapter/EasBase64EncodedURI;->mDeviceType:Ljava/lang/String;

    .line 21
    new-array v0, v4, [B

    const/16 v1, 0x17

    aput-byte v1, v0, v3

    iput-object v0, p0, Lcom/android/exchange/adapter/EasBase64EncodedURI;->mCmd:[B

    .line 22
    iput-object v2, p0, Lcom/android/exchange/adapter/EasBase64EncodedURI;->mExtraCmd:Ljava/lang/String;

    .line 23
    iput-object v2, p0, Lcom/android/exchange/adapter/EasBase64EncodedURI;->mExtra:Ljava/lang/String;

    .line 24
    iput-object v2, p0, Lcom/android/exchange/adapter/EasBase64EncodedURI;->mPolicyKey:Ljava/lang/String;

    .line 27
    const/4 v0, 0x2

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/exchange/adapter/EasBase64EncodedURI;->mLocale:[B

    .line 154
    iput-boolean p1, p0, Lcom/android/exchange/adapter/EasBase64EncodedURI;->mSsl:Z

    .line 155
    iput-boolean p2, p0, Lcom/android/exchange/adapter/EasBase64EncodedURI;->mTrustSsl:Z

    .line 156
    iput-object p3, p0, Lcom/android/exchange/adapter/EasBase64EncodedURI;->mHostAddress:Ljava/lang/String;

    .line 157
    iput-object p4, p0, Lcom/android/exchange/adapter/EasBase64EncodedURI;->mUserName:Ljava/lang/String;

    .line 158
    iput-object v2, p0, Lcom/android/exchange/adapter/EasBase64EncodedURI;->mExtraCmd:Ljava/lang/String;

    .line 159
    iput-object v2, p0, Lcom/android/exchange/adapter/EasBase64EncodedURI;->mExtra:Ljava/lang/String;

    .line 160
    return-void

    .line 27
    nop

    :array_0
    .array-data 0x1
        0x9t
        0x4t
    .end array-data
.end method

.method private encodeUriString()Ljava/lang/String;
    .locals 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 218
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 220
    .local v4, buf:Ljava/io/ByteArrayOutputStream;
    const/16 v19, 0x5

    move/from16 v0, v19

    new-array v0, v0, [B

    move-object v12, v0

    .line 221
    .local v12, policyByte:[B
    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [B

    move-object v11, v0

    const/16 v19, 0x0

    const/16 v20, 0x0

    aput-byte v20, v11, v19

    .line 222
    .local v11, optionsByte:[B
    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [B

    move-object v9, v0

    const/16 v19, 0x0

    const/16 v20, 0x1

    aput-byte v20, v9, v19

    .line 223
    .local v9, length:[B
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/exchange/adapter/EasBase64EncodedURI;->mSsl:Z

    move/from16 v20, v0

    if-eqz v20, :cond_2

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/exchange/adapter/EasBase64EncodedURI;->mTrustSsl:Z

    move/from16 v20, v0

    if-eqz v20, :cond_1

    const-string v20, "httpts"

    :goto_0
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "://"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/adapter/EasBase64EncodedURI;->mHostAddress:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "/Microsoft-Server-ActiveSync?"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 227
    .local v17, us:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/adapter/EasBase64EncodedURI;->mProtocol:[B

    move-object/from16 v19, v0

    move-object v0, v4

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 229
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/adapter/EasBase64EncodedURI;->mCmd:[B

    move-object/from16 v19, v0

    move-object v0, v4

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 231
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/adapter/EasBase64EncodedURI;->mLocale:[B

    move-object/from16 v19, v0

    move-object v0, v4

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 233
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/adapter/EasBase64EncodedURI;->mDeviceId:Ljava/lang/String;

    move-object/from16 v19, v0

    if-nez v19, :cond_3

    .line 235
    const/16 v19, 0x0

    move-object v0, v4

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 248
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/adapter/EasBase64EncodedURI;->mPolicyKey:Ljava/lang/String;

    move-object/from16 v19, v0

    if-nez v19, :cond_5

    .line 250
    const/16 v19, 0x0

    move-object v0, v4

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 281
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/adapter/EasBase64EncodedURI;->mDeviceType:Ljava/lang/String;

    move-object/from16 v19, v0

    if-nez v19, :cond_a

    .line 283
    const/16 v19, 0x0

    move-object v0, v4

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 296
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/adapter/EasBase64EncodedURI;->mExtraCmd:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object v1, v4

    move-object v2, v11

    move-object/from16 v3, v19

    invoke-direct {v0, v1, v2, v3}, Lcom/android/exchange/adapter/EasBase64EncodedURI;->writeCmdParams(Ljava/io/OutputStream;[BLjava/lang/String;)V

    .line 298
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/adapter/EasBase64EncodedURI;->mExtra:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object v1, v4

    move-object v2, v11

    move-object/from16 v3, v19

    invoke-direct {v0, v1, v2, v3}, Lcom/android/exchange/adapter/EasBase64EncodedURI;->writeCmdParams(Ljava/io/OutputStream;[BLjava/lang/String;)V

    .line 301
    const/16 v19, 0x0

    aget-byte v19, v11, v19

    if-eqz v19, :cond_0

    .line 303
    const/16 v19, 0x7

    move-object v0, v4

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 305
    const/16 v19, 0x1

    move-object v0, v4

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 307
    const/16 v19, 0x0

    aget-byte v19, v11, v19

    move-object v0, v4

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 314
    :cond_0
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    .line 316
    .local v5, byteData:[B
    new-instance v6, Ljava/lang/String;

    invoke-static {v5}, Lcom/android/email/codec/binary/Base64;->encodeBase64([B)[B

    move-result-object v19

    move-object v0, v6

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    .line 317
    .local v6, encoded:Ljava/lang/String;
    const-string v19, "EasBase64EncodedURI"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "encoded: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/android/exchange/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 319
    return-object v17

    .line 223
    .end local v5           #byteData:[B
    .end local v6           #encoded:Ljava/lang/String;
    .end local v17           #us:Ljava/lang/String;
    :cond_1
    const-string v20, "https"

    goto/16 :goto_0

    :cond_2
    const-string v20, "http"

    goto/16 :goto_0

    .line 237
    .restart local v17       #us:Ljava/lang/String;
    :cond_3
    const/16 v19, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/adapter/EasBase64EncodedURI;->mDeviceId:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v20

    move/from16 v0, v20

    int-to-byte v0, v0

    move/from16 v20, v0

    aput-byte v20, v9, v19

    .line 239
    const/16 v19, 0x0

    aget-byte v19, v9, v19

    const/16 v20, 0x10

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_4

    .line 240
    const/16 v19, 0x0

    aget-byte v19, v9, v19

    const/16 v20, 0x10

    sub-int v10, v19, v20

    .line 241
    .local v10, lengthExtra:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/adapter/EasBase64EncodedURI;->mDeviceId:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exchange/adapter/EasBase64EncodedURI;->mDeviceId:Ljava/lang/String;

    .line 242
    const/16 v19, 0x0

    const/16 v20, 0x10

    aput-byte v20, v9, v19

    .line 244
    .end local v10           #lengthExtra:I
    :cond_4
    invoke-virtual {v4, v9}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 245
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/adapter/EasBase64EncodedURI;->mDeviceId:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object v1, v4

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/android/exchange/adapter/EasBase64EncodedURI;->writeLiteralString(Ljava/io/OutputStream;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 252
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/adapter/EasBase64EncodedURI;->mPolicyKey:Ljava/lang/String;

    move-object/from16 v19, v0

    const-string v20, "0"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    .line 253
    .local v18, zeroPolicy:Z
    if-eqz v18, :cond_7

    .line 254
    const/4 v8, 0x1

    .local v8, i:I
    :goto_4
    const/16 v19, 0x5

    move v0, v8

    move/from16 v1, v19

    if-ge v0, v1, :cond_6

    .line 255
    const/16 v19, 0x0

    aput-byte v19, v12, v8

    .line 254
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 257
    :cond_6
    const/16 v19, 0x0

    const/16 v20, 0x4

    aput-byte v20, v12, v19

    .line 258
    invoke-virtual {v4, v12}, Ljava/io/ByteArrayOutputStream;->write([B)V

    goto/16 :goto_2

    .line 260
    .end local v8           #i:I
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/adapter/EasBase64EncodedURI;->mPolicyKey:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    .line 261
    .local v14, policyKeyValue:J
    invoke-static {v14, v15}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v13

    .line 262
    .local v13, policyKeyString:Ljava/lang/String;
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v16

    .line 264
    .local v16, size:I
    const/16 v19, 0x8

    move/from16 v0, v16

    move/from16 v1, v19

    if-eq v0, v1, :cond_8

    .line 266
    const/16 v19, 0x0

    move-object v0, v4

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto/16 :goto_2

    .line 268
    :cond_8
    const/4 v8, 0x0

    .restart local v8       #i:I
    :goto_5
    const/16 v19, 0x4

    move v0, v8

    move/from16 v1, v19

    if-ge v0, v1, :cond_9

    .line 269
    const/16 v19, 0x4

    sub-int v19, v19, v8

    mul-int/lit8 v20, v8, 0x2

    move-object v0, v13

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v20

    invoke-static/range {v20 .. v20}, Lcom/android/exchange/adapter/EasBase64EncodedURI;->hex2int(C)C

    move-result v20

    shl-int/lit8 v20, v20, 0x4

    mul-int/lit8 v21, v8, 0x2

    add-int/lit8 v21, v21, 0x1

    move-object v0, v13

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v21

    invoke-static/range {v21 .. v21}, Lcom/android/exchange/adapter/EasBase64EncodedURI;->hex2int(C)C

    move-result v21

    or-int v20, v20, v21

    move/from16 v0, v20

    int-to-byte v0, v0

    move/from16 v20, v0

    aput-byte v20, v12, v19

    .line 268
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    .line 273
    :cond_9
    const/16 v19, 0x0

    const/16 v20, 0x4

    aput-byte v20, v12, v19

    .line 274
    const-string v19, "EasBase64EncodedURI"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "policyByte: length["

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const/16 v21, 0x0

    aget-byte v21, v12, v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "] "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const/16 v21, 0x1

    aget-byte v21, v12, v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const/16 v21, 0x2

    aget-byte v21, v12, v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const/16 v21, 0x3

    aget-byte v21, v12, v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const/16 v21, 0x4

    aget-byte v21, v12, v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/android/exchange/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    invoke-virtual {v4, v12}, Ljava/io/ByteArrayOutputStream;->write([B)V

    goto/16 :goto_2

    .line 285
    .end local v8           #i:I
    .end local v13           #policyKeyString:Ljava/lang/String;
    .end local v14           #policyKeyValue:J
    .end local v16           #size:I
    .end local v18           #zeroPolicy:Z
    :cond_a
    const/16 v19, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/adapter/EasBase64EncodedURI;->mDeviceType:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v20

    move/from16 v0, v20

    int-to-byte v0, v0

    move/from16 v20, v0

    aput-byte v20, v9, v19

    .line 287
    const/16 v19, 0x0

    aget-byte v19, v9, v19

    const/16 v20, 0x10

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_b

    .line 288
    const/16 v19, 0x0

    aget-byte v19, v9, v19

    const/16 v20, 0x10

    sub-int v7, v19, v20

    .line 289
    .local v7, extra:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/adapter/EasBase64EncodedURI;->mDeviceType:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exchange/adapter/EasBase64EncodedURI;->mDeviceType:Ljava/lang/String;

    .line 290
    const/16 v19, 0x0

    const/16 v20, 0x10

    aput-byte v20, v9, v19

    .line 292
    .end local v7           #extra:I
    :cond_b
    invoke-virtual {v4, v9}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 293
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/adapter/EasBase64EncodedURI;->mDeviceType:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object v1, v4

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/android/exchange/adapter/EasBase64EncodedURI;->writeLiteralString(Ljava/io/OutputStream;Ljava/lang/String;)V

    goto/16 :goto_3
.end method

.method private getCommandCode(Ljava/lang/String;)B
    .locals 2
    .parameter "command"

    .prologue
    .line 57
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 58
    .local v0, cmd:Ljava/lang/String;
    const-string v1, "sync"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 59
    const/4 v1, 0x0

    .line 106
    :goto_0
    return v1

    .line 60
    :cond_0
    const-string v1, "sendmail"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 61
    const/4 v1, 0x1

    goto :goto_0

    .line 62
    :cond_1
    const-string v1, "smartforward"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 63
    const/4 v1, 0x2

    goto :goto_0

    .line 64
    :cond_2
    const-string v1, "smartreply"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 65
    const/4 v1, 0x3

    goto :goto_0

    .line 66
    :cond_3
    const-string v1, "getattachment"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 67
    const/4 v1, 0x4

    goto :goto_0

    .line 68
    :cond_4
    const-string v1, "gethierarchy"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 69
    const/4 v1, 0x5

    goto :goto_0

    .line 70
    :cond_5
    const-string v1, "createcollection"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 71
    const/4 v1, 0x6

    goto :goto_0

    .line 72
    :cond_6
    const-string v1, "deletecollection"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 73
    const/4 v1, 0x7

    goto :goto_0

    .line 74
    :cond_7
    const-string v1, "movecollection"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 75
    const/16 v1, 0x8

    goto :goto_0

    .line 76
    :cond_8
    const-string v1, "foldersync"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 77
    const/16 v1, 0x9

    goto :goto_0

    .line 78
    :cond_9
    const-string v1, "foldercreate"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 79
    const/16 v1, 0xa

    goto :goto_0

    .line 80
    :cond_a
    const-string v1, "folderdelete"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 81
    const/16 v1, 0xb

    goto :goto_0

    .line 82
    :cond_b
    const-string v1, "folderupdate"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 83
    const/16 v1, 0xc

    goto :goto_0

    .line 84
    :cond_c
    const-string v1, "moveitems"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 85
    const/16 v1, 0xd

    goto/16 :goto_0

    .line 86
    :cond_d
    const-string v1, "getitemestimate"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 87
    const/16 v1, 0xe

    goto/16 :goto_0

    .line 88
    :cond_e
    const-string v1, "meetingresponse"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 89
    const/16 v1, 0xf

    goto/16 :goto_0

    .line 90
    :cond_f
    const-string v1, "search"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 91
    const/16 v1, 0x10

    goto/16 :goto_0

    .line 92
    :cond_10
    const-string v1, "settings"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 93
    const/16 v1, 0x11

    goto/16 :goto_0

    .line 94
    :cond_11
    const-string v1, "ping"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 95
    const/16 v1, 0x12

    goto/16 :goto_0

    .line 96
    :cond_12
    const-string v1, "itemoperations"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 97
    const/16 v1, 0x13

    goto/16 :goto_0

    .line 98
    :cond_13
    const-string v1, "provision"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 99
    const/16 v1, 0x14

    goto/16 :goto_0

    .line 100
    :cond_14
    const-string v1, "resolverecipients"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 101
    const/16 v1, 0x15

    goto/16 :goto_0

    .line 102
    :cond_15
    const-string v1, "validatecert"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 103
    const/16 v1, 0x16

    goto/16 :goto_0

    .line 106
    :cond_16
    const/16 v1, 0x17

    goto/16 :goto_0
.end method

.method private getParameterTag(Ljava/lang/String;)B
    .locals 2
    .parameter "parameters"

    .prologue
    .line 123
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 124
    .local v0, paramName:Ljava/lang/String;
    const-string v1, "attachmentname"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 125
    const/4 v1, 0x0

    .line 148
    :goto_0
    return v1

    .line 126
    :cond_0
    const-string v1, "collectionid"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 127
    const/4 v1, 0x1

    goto :goto_0

    .line 128
    :cond_1
    const-string v1, "collectionname"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 129
    const/4 v1, 0x2

    goto :goto_0

    .line 130
    :cond_2
    const-string v1, "itemid"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 131
    const/4 v1, 0x3

    goto :goto_0

    .line 132
    :cond_3
    const-string v1, "longid"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 133
    const/4 v1, 0x4

    goto :goto_0

    .line 134
    :cond_4
    const-string v1, "parentid"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 135
    const/4 v1, 0x5

    goto :goto_0

    .line 136
    :cond_5
    const-string v1, "occurrence"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 137
    const/4 v1, 0x6

    goto :goto_0

    .line 138
    :cond_6
    const-string v1, "options"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 139
    const/4 v1, 0x7

    goto :goto_0

    .line 140
    :cond_7
    const-string v1, "roundtripid"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 141
    const/16 v1, 0x8

    goto :goto_0

    .line 142
    :cond_8
    const-string v1, "saveinsent"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 143
    const/16 v1, 0x17

    goto :goto_0

    .line 144
    :cond_9
    const-string v1, "acceptmultipart"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 145
    const/16 v1, 0x27

    goto :goto_0

    .line 148
    :cond_a
    const/16 v1, 0x3f

    goto :goto_0
.end method

.method public static hex2int(C)C
    .locals 2
    .parameter "b"

    .prologue
    .line 201
    const/16 v1, 0x61

    if-lt p0, v1, :cond_0

    .line 202
    const/16 v1, 0x57

    sub-int v1, p0, v1

    int-to-char v0, v1

    .line 206
    .local v0, num:C
    :goto_0
    and-int/lit8 v1, v0, 0xf

    int-to-char v0, v1

    .line 207
    return v0

    .line 204
    .end local v0           #num:C
    :cond_0
    const/16 v1, 0x30

    sub-int v1, p0, v1

    int-to-char v0, v1

    .restart local v0       #num:C
    goto :goto_0
.end method

.method private writeCmdParams(Ljava/io/OutputStream;[BLjava/lang/String;)V
    .locals 12
    .parameter "buf"
    .parameter "optionsByte"
    .parameter "extra"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 324
    if-nez p3, :cond_1

    .line 385
    :cond_0
    return-void

    .line 328
    :cond_1
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    .line 329
    .local v0, extraLen:I
    const/4 v10, 0x1

    new-array v1, v10, [B

    const/4 v10, 0x0

    const/4 v11, 0x1

    aput-byte v11, v1, v10

    .line 331
    .local v1, length:[B
    const/4 v10, 0x1

    invoke-virtual {p3, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p3

    .line 332
    :goto_0
    if-lez v0, :cond_0

    .line 335
    const/16 v10, 0x26

    invoke-virtual {p3, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 336
    .local v3, myLength:I
    const/4 v10, -0x1

    if-eq v3, v10, :cond_4

    .line 337
    const/4 v10, 0x0

    invoke-virtual {p3, v10, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 339
    .local v2, myExtra:Ljava/lang/String;
    add-int/lit8 v10, v3, 0x1

    invoke-virtual {p3, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p3

    .line 345
    :goto_1
    const/16 v10, 0x3d

    invoke-virtual {v2, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v9

    .line 346
    .local v9, tagLength:I
    const/4 v10, -0x1

    if-ne v9, v10, :cond_2

    .line 349
    :cond_2
    const/4 v10, 0x0

    invoke-virtual {v2, v10, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 350
    .local v5, paramsTag:Ljava/lang/String;
    add-int/lit8 v10, v9, 0x1

    invoke-virtual {v2, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 353
    .local v7, paramsValue:Ljava/lang/String;
    const/4 v10, 0x1

    new-array v8, v10, [B

    const/4 v10, 0x0

    const/16 v11, 0x3f

    aput-byte v11, v8, v10

    .line 354
    .local v8, tag:[B
    invoke-direct {p0, v5}, Lcom/android/exchange/adapter/EasBase64EncodedURI;->getParameterTag(Ljava/lang/String;)B

    move-result v6

    .line 355
    .local v6, paramsTagByte:I
    const/4 v10, 0x0

    aget-byte v10, v8, v10

    const/16 v11, 0x3f

    if-ne v10, v11, :cond_3

    .line 358
    :cond_3
    const/4 v10, 0x0

    and-int/lit8 v11, v6, 0xf

    int-to-byte v11, v11

    aput-byte v11, v8, v10

    .line 359
    const/4 v10, 0x0

    aget-byte v10, v8, v10

    const/4 v11, 0x7

    if-ne v10, v11, :cond_5

    .line 362
    and-int/lit8 v10, v6, 0x30

    shr-int/lit8 v10, v10, 0x4

    int-to-byte v4, v10

    .line 363
    .local v4, optionValueByte:B
    const/4 v10, 0x0

    aget-byte v11, p2, v10

    or-int/2addr v11, v4

    int-to-byte v11, v11

    aput-byte v11, p2, v10

    .line 380
    .end local v4           #optionValueByte:B
    :goto_2
    if-eqz p3, :cond_0

    .line 383
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    .line 384
    goto :goto_0

    .line 341
    .end local v2           #myExtra:Ljava/lang/String;
    .end local v5           #paramsTag:Ljava/lang/String;
    .end local v6           #paramsTagByte:I
    .end local v7           #paramsValue:Ljava/lang/String;
    .end local v8           #tag:[B
    .end local v9           #tagLength:I
    :cond_4
    const/4 v10, 0x0

    invoke-virtual {p3, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 342
    .restart local v2       #myExtra:Ljava/lang/String;
    const/4 p3, 0x0

    goto :goto_1

    .line 367
    .restart local v5       #paramsTag:Ljava/lang/String;
    .restart local v6       #paramsTagByte:I
    .restart local v7       #paramsValue:Ljava/lang/String;
    .restart local v8       #tag:[B
    .restart local v9       #tagLength:I
    :cond_5
    invoke-virtual {p1, v8}, Ljava/io/OutputStream;->write([B)V

    .line 369
    if-nez v7, :cond_6

    .line 371
    const/4 v10, 0x0

    invoke-virtual {p1, v10}, Ljava/io/OutputStream;->write(I)V

    goto :goto_2

    .line 373
    :cond_6
    const/4 v10, 0x0

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v11

    int-to-byte v11, v11

    aput-byte v11, v1, v10

    .line 375
    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    .line 376
    invoke-direct {p0, p1, v7}, Lcom/android/exchange/adapter/EasBase64EncodedURI;->writeLiteralString(Ljava/io/OutputStream;Ljava/lang/String;)V

    goto :goto_2
.end method

.method private writeLiteralString(Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 2
    .parameter "out"
    .parameter "s"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 211
    if-eqz p2, :cond_0

    .line 212
    const-string v1, "UTF-8"

    invoke-virtual {p2, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 213
    .local v0, data:[B
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 215
    .end local v0           #data:[B
    :cond_0
    return-void
.end method


# virtual methods
.method public getUriString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .parameter "protocolVersion"
    .parameter "cmd"
    .parameter "extra"
    .parameter "deviceId"
    .parameter "policyKey"
    .parameter "deviceType"

    .prologue
    const/16 v8, 0x10

    const/4 v7, 0x0

    .line 164
    const-string v5, "14.0"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 165
    iget-object v5, p0, Lcom/android/exchange/adapter/EasBase64EncodedURI;->mProtocol:[B

    const/16 v6, -0x74

    aput-byte v6, v5, v7

    .line 170
    :goto_0
    const/16 v5, 0x26

    invoke-virtual {p2, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 171
    .local v0, cmdLength:I
    const/4 v5, -0x1

    if-eq v0, v5, :cond_0

    .line 172
    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/exchange/adapter/EasBase64EncodedURI;->mExtraCmd:Ljava/lang/String;

    .line 173
    invoke-virtual {p2, v7, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    .line 175
    :cond_0
    iget-object v5, p0, Lcom/android/exchange/adapter/EasBase64EncodedURI;->mCmd:[B

    invoke-direct {p0, p2}, Lcom/android/exchange/adapter/EasBase64EncodedURI;->getCommandCode(Ljava/lang/String;)B

    move-result v6

    aput-byte v6, v5, v7

    .line 176
    iput-object p3, p0, Lcom/android/exchange/adapter/EasBase64EncodedURI;->mExtra:Ljava/lang/String;

    .line 177
    iput-object p4, p0, Lcom/android/exchange/adapter/EasBase64EncodedURI;->mDeviceId:Ljava/lang/String;

    .line 178
    iput-object p5, p0, Lcom/android/exchange/adapter/EasBase64EncodedURI;->mPolicyKey:Ljava/lang/String;

    .line 179
    iput-object p6, p0, Lcom/android/exchange/adapter/EasBase64EncodedURI;->mDeviceType:Ljava/lang/String;

    .line 182
    iget-object v5, p0, Lcom/android/exchange/adapter/EasBase64EncodedURI;->mDeviceId:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v3

    .line 183
    .local v3, idLength:I
    if-le v3, v8, :cond_1

    .line 184
    sub-int v4, v3, v8

    .line 185
    .local v4, index:I
    iget-object v5, p0, Lcom/android/exchange/adapter/EasBase64EncodedURI;->mDeviceId:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/exchange/adapter/EasBase64EncodedURI;->mDeviceId:Ljava/lang/String;

    .line 189
    .end local v4           #index:I
    :cond_1
    const/4 v2, 0x0

    .line 191
    .local v2, encodedURI:Ljava/lang/String;
    :try_start_0
    invoke-direct {p0}, Lcom/android/exchange/adapter/EasBase64EncodedURI;->encodeUriString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 196
    :goto_1
    return-object v2

    .line 167
    .end local v0           #cmdLength:I
    .end local v2           #encodedURI:Ljava/lang/String;
    .end local v3           #idLength:I
    :cond_2
    iget-object v5, p0, Lcom/android/exchange/adapter/EasBase64EncodedURI;->mProtocol:[B

    const/16 v6, 0x79

    aput-byte v6, v5, v7

    goto :goto_0

    .line 192
    .restart local v0       #cmdLength:I
    .restart local v2       #encodedURI:Ljava/lang/String;
    .restart local v3       #idLength:I
    :catch_0
    move-exception v1

    .line 194
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method
