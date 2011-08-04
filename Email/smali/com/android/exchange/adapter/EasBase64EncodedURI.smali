.class public Lcom/android/exchange/adapter/EasBase64EncodedURI;
.super Ljava/lang/Object;
.source "EasBase64EncodedURI.java"


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

    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-array v0, v4, [B

    const/16 v1, 0x79

    aput-byte v1, v0, v3

    iput-object v0, p0, Lcom/android/exchange/adapter/EasBase64EncodedURI;->mProtocol:[B

    .line 20
    iput-object v2, p0, Lcom/android/exchange/adapter/EasBase64EncodedURI;->mDeviceId:Ljava/lang/String;

    .line 21
    const-string v0, "Android"

    iput-object v0, p0, Lcom/android/exchange/adapter/EasBase64EncodedURI;->mDeviceType:Ljava/lang/String;

    .line 22
    new-array v0, v4, [B

    const/16 v1, 0x17

    aput-byte v1, v0, v3

    iput-object v0, p0, Lcom/android/exchange/adapter/EasBase64EncodedURI;->mCmd:[B

    .line 23
    iput-object v2, p0, Lcom/android/exchange/adapter/EasBase64EncodedURI;->mExtraCmd:Ljava/lang/String;

    .line 24
    iput-object v2, p0, Lcom/android/exchange/adapter/EasBase64EncodedURI;->mExtra:Ljava/lang/String;

    .line 25
    iput-object v2, p0, Lcom/android/exchange/adapter/EasBase64EncodedURI;->mPolicyKey:Ljava/lang/String;

    .line 28
    const/4 v0, 0x2

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/exchange/adapter/EasBase64EncodedURI;->mLocale:[B

    .line 155
    iput-boolean p1, p0, Lcom/android/exchange/adapter/EasBase64EncodedURI;->mSsl:Z

    .line 156
    iput-boolean p2, p0, Lcom/android/exchange/adapter/EasBase64EncodedURI;->mTrustSsl:Z

    .line 157
    iput-object p3, p0, Lcom/android/exchange/adapter/EasBase64EncodedURI;->mHostAddress:Ljava/lang/String;

    .line 158
    iput-object p4, p0, Lcom/android/exchange/adapter/EasBase64EncodedURI;->mUserName:Ljava/lang/String;

    .line 159
    iput-object v2, p0, Lcom/android/exchange/adapter/EasBase64EncodedURI;->mExtraCmd:Ljava/lang/String;

    .line 160
    iput-object v2, p0, Lcom/android/exchange/adapter/EasBase64EncodedURI;->mExtra:Ljava/lang/String;

    .line 161
    return-void

    .line 28
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
    .line 222
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 224
    .local v4, buf:Ljava/io/ByteArrayOutputStream;
    const/16 v19, 0x5

    move/from16 v0, v19

    new-array v0, v0, [B

    move-object v12, v0

    .line 225
    .local v12, policyByte:[B
    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [B

    move-object v11, v0

    const/16 v19, 0x0

    const/16 v20, 0x0

    aput-byte v20, v11, v19

    .line 226
    .local v11, optionsByte:[B
    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [B

    move-object v9, v0

    const/16 v19, 0x0

    const/16 v20, 0x1

    aput-byte v20, v9, v19

    .line 229
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

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/exchange/adapter/EasBase64EncodedURI;->mSsl:Z

    move/from16 v20, v0

    if-eqz v20, :cond_3

    const-string v20, ":443"

    :goto_1
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "/Microsoft-Server-ActiveSync"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 234
    .local v17, us:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/adapter/EasBase64EncodedURI;->mProtocol:[B

    move-object/from16 v19, v0

    move-object v0, v4

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 236
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/adapter/EasBase64EncodedURI;->mCmd:[B

    move-object/from16 v19, v0

    move-object v0, v4

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 238
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/adapter/EasBase64EncodedURI;->mLocale:[B

    move-object/from16 v19, v0

    move-object v0, v4

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 240
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/adapter/EasBase64EncodedURI;->mDeviceId:Ljava/lang/String;

    move-object/from16 v19, v0

    if-nez v19, :cond_4

    .line 242
    const/16 v19, 0x0

    move-object v0, v4

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 255
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/adapter/EasBase64EncodedURI;->mPolicyKey:Ljava/lang/String;

    move-object/from16 v19, v0

    if-nez v19, :cond_6

    .line 257
    const/16 v19, 0x0

    move-object v0, v4

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 288
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/adapter/EasBase64EncodedURI;->mDeviceType:Ljava/lang/String;

    move-object/from16 v19, v0

    if-nez v19, :cond_b

    .line 290
    const/16 v19, 0x0

    move-object v0, v4

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 303
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/adapter/EasBase64EncodedURI;->mExtraCmd:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object v1, v4

    move-object v2, v11

    move-object/from16 v3, v19

    invoke-direct {v0, v1, v2, v3}, Lcom/android/exchange/adapter/EasBase64EncodedURI;->writeCmdParams(Ljava/io/OutputStream;[BLjava/lang/String;)V

    .line 305
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/adapter/EasBase64EncodedURI;->mExtra:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object v1, v4

    move-object v2, v11

    move-object/from16 v3, v19

    invoke-direct {v0, v1, v2, v3}, Lcom/android/exchange/adapter/EasBase64EncodedURI;->writeCmdParams(Ljava/io/OutputStream;[BLjava/lang/String;)V

    .line 308
    const/16 v19, 0x0

    aget-byte v19, v11, v19

    if-eqz v19, :cond_0

    .line 310
    const/16 v19, 0x7

    move-object v0, v4

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 312
    const/16 v19, 0x1

    move-object v0, v4

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 314
    const/16 v19, 0x0

    aget-byte v19, v11, v19

    move-object v0, v4

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 321
    :cond_0
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    .line 323
    .local v5, byteData:[B
    new-instance v6, Ljava/lang/String;

    invoke-static {v5}, Lcom/android/email/codec/binary/Base64;->encodeBase64([B)[B

    move-result-object v19

    move-object v0, v6

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    .line 324
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

    .line 325
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

    .line 326
    return-object v17

    .line 229
    .end local v5           #byteData:[B
    .end local v6           #encoded:Ljava/lang/String;
    .end local v17           #us:Ljava/lang/String;
    :cond_1
    const-string v20, "https"

    goto/16 :goto_0

    :cond_2
    const-string v20, "http"

    goto/16 :goto_0

    :cond_3
    const-string v20, ""

    goto/16 :goto_1

    .line 244
    .restart local v17       #us:Ljava/lang/String;
    :cond_4
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

    .line 246
    const/16 v19, 0x0

    aget-byte v19, v9, v19

    const/16 v20, 0x10

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_5

    .line 247
    const/16 v19, 0x0

    aget-byte v19, v9, v19

    const/16 v20, 0x10

    sub-int v10, v19, v20

    .line 248
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

    .line 249
    const/16 v19, 0x0

    const/16 v20, 0x10

    aput-byte v20, v9, v19

    .line 251
    .end local v10           #lengthExtra:I
    :cond_5
    invoke-virtual {v4, v9}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 252
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/adapter/EasBase64EncodedURI;->mDeviceId:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object v1, v4

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/android/exchange/adapter/EasBase64EncodedURI;->writeLiteralString(Ljava/io/OutputStream;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 259
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/adapter/EasBase64EncodedURI;->mPolicyKey:Ljava/lang/String;

    move-object/from16 v19, v0

    const-string v20, "0"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    .line 260
    .local v18, zeroPolicy:Z
    if-eqz v18, :cond_8

    .line 261
    const/4 v8, 0x1

    .local v8, i:I
    :goto_5
    const/16 v19, 0x5

    move v0, v8

    move/from16 v1, v19

    if-ge v0, v1, :cond_7

    .line 262
    const/16 v19, 0x0

    aput-byte v19, v12, v8

    .line 261
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    .line 264
    :cond_7
    const/16 v19, 0x0

    const/16 v20, 0x4

    aput-byte v20, v12, v19

    .line 265
    invoke-virtual {v4, v12}, Ljava/io/ByteArrayOutputStream;->write([B)V

    goto/16 :goto_3

    .line 267
    .end local v8           #i:I
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/adapter/EasBase64EncodedURI;->mPolicyKey:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    .line 268
    .local v14, policyKeyValue:J
    invoke-static {v14, v15}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v13

    .line 269
    .local v13, policyKeyString:Ljava/lang/String;
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v16

    .line 271
    .local v16, size:I
    const/16 v19, 0x8

    move/from16 v0, v16

    move/from16 v1, v19

    if-eq v0, v1, :cond_9

    .line 273
    const/16 v19, 0x0

    move-object v0, v4

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto/16 :goto_3

    .line 275
    :cond_9
    const/4 v8, 0x0

    .restart local v8       #i:I
    :goto_6
    const/16 v19, 0x4

    move v0, v8

    move/from16 v1, v19

    if-ge v0, v1, :cond_a

    .line 276
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

    .line 275
    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    .line 280
    :cond_a
    const/16 v19, 0x0

    const/16 v20, 0x4

    aput-byte v20, v12, v19

    .line 281
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

    .line 283
    invoke-virtual {v4, v12}, Ljava/io/ByteArrayOutputStream;->write([B)V

    goto/16 :goto_3

    .line 292
    .end local v8           #i:I
    .end local v13           #policyKeyString:Ljava/lang/String;
    .end local v14           #policyKeyValue:J
    .end local v16           #size:I
    .end local v18           #zeroPolicy:Z
    :cond_b
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

    .line 294
    const/16 v19, 0x0

    aget-byte v19, v9, v19

    const/16 v20, 0x10

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_c

    .line 295
    const/16 v19, 0x0

    aget-byte v19, v9, v19

    const/16 v20, 0x10

    sub-int v7, v19, v20

    .line 296
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

    .line 297
    const/16 v19, 0x0

    const/16 v20, 0x10

    aput-byte v20, v9, v19

    .line 299
    .end local v7           #extra:I
    :cond_c
    invoke-virtual {v4, v9}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 300
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/adapter/EasBase64EncodedURI;->mDeviceType:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object v1, v4

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/android/exchange/adapter/EasBase64EncodedURI;->writeLiteralString(Ljava/io/OutputStream;Ljava/lang/String;)V

    goto/16 :goto_4
.end method

.method private getCommandCode(Ljava/lang/String;)B
    .locals 2
    .parameter "command"

    .prologue
    .line 58
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 59
    .local v0, cmd:Ljava/lang/String;
    const-string v1, "sync"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 60
    const/4 v1, 0x0

    .line 107
    :goto_0
    return v1

    .line 61
    :cond_0
    const-string v1, "sendmail"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 62
    const/4 v1, 0x1

    goto :goto_0

    .line 63
    :cond_1
    const-string v1, "smartforward"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 64
    const/4 v1, 0x2

    goto :goto_0

    .line 65
    :cond_2
    const-string v1, "smartreply"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 66
    const/4 v1, 0x3

    goto :goto_0

    .line 67
    :cond_3
    const-string v1, "getattachment"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 68
    const/4 v1, 0x4

    goto :goto_0

    .line 69
    :cond_4
    const-string v1, "gethierarchy"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 70
    const/4 v1, 0x5

    goto :goto_0

    .line 71
    :cond_5
    const-string v1, "createcollection"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 72
    const/4 v1, 0x6

    goto :goto_0

    .line 73
    :cond_6
    const-string v1, "deletecollection"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 74
    const/4 v1, 0x7

    goto :goto_0

    .line 75
    :cond_7
    const-string v1, "movecollection"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 76
    const/16 v1, 0x8

    goto :goto_0

    .line 77
    :cond_8
    const-string v1, "foldersync"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 78
    const/16 v1, 0x9

    goto :goto_0

    .line 79
    :cond_9
    const-string v1, "foldercreate"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 80
    const/16 v1, 0xa

    goto :goto_0

    .line 81
    :cond_a
    const-string v1, "folderdelete"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 82
    const/16 v1, 0xb

    goto :goto_0

    .line 83
    :cond_b
    const-string v1, "folderupdate"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 84
    const/16 v1, 0xc

    goto :goto_0

    .line 85
    :cond_c
    const-string v1, "moveitems"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 86
    const/16 v1, 0xd

    goto/16 :goto_0

    .line 87
    :cond_d
    const-string v1, "getitemestimate"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 88
    const/16 v1, 0xe

    goto/16 :goto_0

    .line 89
    :cond_e
    const-string v1, "meetingresponse"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 90
    const/16 v1, 0xf

    goto/16 :goto_0

    .line 91
    :cond_f
    const-string v1, "search"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 92
    const/16 v1, 0x10

    goto/16 :goto_0

    .line 93
    :cond_10
    const-string v1, "settings"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 94
    const/16 v1, 0x11

    goto/16 :goto_0

    .line 95
    :cond_11
    const-string v1, "ping"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 96
    const/16 v1, 0x12

    goto/16 :goto_0

    .line 97
    :cond_12
    const-string v1, "itemoperations"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 98
    const/16 v1, 0x13

    goto/16 :goto_0

    .line 99
    :cond_13
    const-string v1, "provision"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 100
    const/16 v1, 0x14

    goto/16 :goto_0

    .line 101
    :cond_14
    const-string v1, "resolverecipients"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 102
    const/16 v1, 0x15

    goto/16 :goto_0

    .line 103
    :cond_15
    const-string v1, "validatecert"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 104
    const/16 v1, 0x16

    goto/16 :goto_0

    .line 107
    :cond_16
    const/16 v1, 0x17

    goto/16 :goto_0
.end method

.method private getParameterTag(Ljava/lang/String;)B
    .locals 2
    .parameter "parameters"

    .prologue
    .line 124
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 125
    .local v0, paramName:Ljava/lang/String;
    const-string v1, "attachmentname"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 126
    const/4 v1, 0x0

    .line 149
    :goto_0
    return v1

    .line 127
    :cond_0
    const-string v1, "collectionid"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 128
    const/4 v1, 0x1

    goto :goto_0

    .line 129
    :cond_1
    const-string v1, "collectionname"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 130
    const/4 v1, 0x2

    goto :goto_0

    .line 131
    :cond_2
    const-string v1, "itemid"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 132
    const/4 v1, 0x3

    goto :goto_0

    .line 133
    :cond_3
    const-string v1, "longid"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 134
    const/4 v1, 0x4

    goto :goto_0

    .line 135
    :cond_4
    const-string v1, "parentid"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 136
    const/4 v1, 0x5

    goto :goto_0

    .line 137
    :cond_5
    const-string v1, "occurrence"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 138
    const/4 v1, 0x6

    goto :goto_0

    .line 139
    :cond_6
    const-string v1, "options"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 140
    const/4 v1, 0x7

    goto :goto_0

    .line 141
    :cond_7
    const-string v1, "roundtripid"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 142
    const/16 v1, 0x8

    goto :goto_0

    .line 143
    :cond_8
    const-string v1, "saveinsent"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 144
    const/16 v1, 0x17

    goto :goto_0

    .line 145
    :cond_9
    const-string v1, "acceptmultipart"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 146
    const/16 v1, 0x27

    goto :goto_0

    .line 149
    :cond_a
    const/16 v1, 0x3f

    goto :goto_0
.end method

.method public static hex2int(C)C
    .locals 2
    .parameter "b"

    .prologue
    .line 205
    const/16 v1, 0x61

    if-lt p0, v1, :cond_0

    .line 206
    const/16 v1, 0x57

    sub-int v1, p0, v1

    int-to-char v0, v1

    .line 210
    .local v0, num:C
    :goto_0
    and-int/lit8 v1, v0, 0xf

    int-to-char v0, v1

    .line 211
    return v0

    .line 208
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
    .line 331
    if-nez p3, :cond_1

    .line 392
    :cond_0
    return-void

    .line 335
    :cond_1
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    .line 336
    .local v0, extraLen:I
    const/4 v10, 0x1

    new-array v1, v10, [B

    const/4 v10, 0x0

    const/4 v11, 0x1

    aput-byte v11, v1, v10

    .line 338
    .local v1, length:[B
    const/4 v10, 0x1

    invoke-virtual {p3, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p3

    .line 339
    :goto_0
    if-lez v0, :cond_0

    .line 342
    const/16 v10, 0x26

    invoke-virtual {p3, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 343
    .local v3, myLength:I
    const/4 v10, -0x1

    if-eq v3, v10, :cond_4

    .line 344
    const/4 v10, 0x0

    invoke-virtual {p3, v10, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 346
    .local v2, myExtra:Ljava/lang/String;
    add-int/lit8 v10, v3, 0x1

    invoke-virtual {p3, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p3

    .line 352
    :goto_1
    const/16 v10, 0x3d

    invoke-virtual {v2, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v9

    .line 353
    .local v9, tagLength:I
    const/4 v10, -0x1

    if-ne v9, v10, :cond_2

    .line 356
    :cond_2
    const/4 v10, 0x0

    invoke-virtual {v2, v10, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 357
    .local v5, paramsTag:Ljava/lang/String;
    add-int/lit8 v10, v9, 0x1

    invoke-virtual {v2, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 360
    .local v7, paramsValue:Ljava/lang/String;
    const/4 v10, 0x1

    new-array v8, v10, [B

    const/4 v10, 0x0

    const/16 v11, 0x3f

    aput-byte v11, v8, v10

    .line 361
    .local v8, tag:[B
    invoke-direct {p0, v5}, Lcom/android/exchange/adapter/EasBase64EncodedURI;->getParameterTag(Ljava/lang/String;)B

    move-result v6

    .line 362
    .local v6, paramsTagByte:I
    const/4 v10, 0x0

    aget-byte v10, v8, v10

    const/16 v11, 0x3f

    if-ne v10, v11, :cond_3

    .line 365
    :cond_3
    const/4 v10, 0x0

    and-int/lit8 v11, v6, 0xf

    int-to-byte v11, v11

    aput-byte v11, v8, v10

    .line 366
    const/4 v10, 0x0

    aget-byte v10, v8, v10

    const/4 v11, 0x7

    if-ne v10, v11, :cond_5

    .line 369
    and-int/lit8 v10, v6, 0x30

    shr-int/lit8 v10, v10, 0x4

    int-to-byte v4, v10

    .line 370
    .local v4, optionValueByte:B
    const/4 v10, 0x0

    aget-byte v11, p2, v10

    or-int/2addr v11, v4

    int-to-byte v11, v11

    aput-byte v11, p2, v10

    .line 387
    .end local v4           #optionValueByte:B
    :goto_2
    if-eqz p3, :cond_0

    .line 390
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    .line 391
    goto :goto_0

    .line 348
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

    .line 349
    .restart local v2       #myExtra:Ljava/lang/String;
    const/4 p3, 0x0

    goto :goto_1

    .line 374
    .restart local v5       #paramsTag:Ljava/lang/String;
    .restart local v6       #paramsTagByte:I
    .restart local v7       #paramsValue:Ljava/lang/String;
    .restart local v8       #tag:[B
    .restart local v9       #tagLength:I
    :cond_5
    invoke-virtual {p1, v8}, Ljava/io/OutputStream;->write([B)V

    .line 376
    if-nez v7, :cond_6

    .line 378
    const/4 v10, 0x0

    invoke-virtual {p1, v10}, Ljava/io/OutputStream;->write(I)V

    goto :goto_2

    .line 380
    :cond_6
    const/4 v10, 0x0

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v11

    int-to-byte v11, v11

    aput-byte v11, v1, v10

    .line 382
    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    .line 383
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
    .line 215
    if-eqz p2, :cond_0

    .line 216
    const-string v1, "UTF-8"

    invoke-virtual {p2, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 217
    .local v0, data:[B
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 219
    .end local v0           #data:[B
    :cond_0
    return-void
.end method


# virtual methods
.method public getUriString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .parameter "protocolVersion"
    .parameter "cmd"
    .parameter "extra"
    .parameter "deviceId"
    .parameter "policyKey"
    .parameter "deviceType"

    .prologue
    .line 166
    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v7

    .line 167
    .local v7, version:D
    const-wide/high16 v9, 0x402c

    cmpl-double v9, v7, v9

    if-ltz v9, :cond_2

    .line 169
    iget-object v9, p0, Lcom/android/exchange/adapter/EasBase64EncodedURI;->mProtocol:[B

    const/4 v10, 0x0

    const/16 v11, -0x74

    aput-byte v11, v9, v10

    .line 174
    :goto_0
    const/16 v9, 0x26

    invoke-virtual {p2, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 175
    .local v2, cmdLength:I
    const/4 v9, -0x1

    if-eq v2, v9, :cond_0

    .line 176
    invoke-virtual {p2, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/android/exchange/adapter/EasBase64EncodedURI;->mExtraCmd:Ljava/lang/String;

    .line 177
    const/4 v9, 0x0

    invoke-virtual {p2, v9, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    .line 179
    :cond_0
    iget-object v9, p0, Lcom/android/exchange/adapter/EasBase64EncodedURI;->mCmd:[B

    const/4 v10, 0x0

    invoke-direct {p0, p2}, Lcom/android/exchange/adapter/EasBase64EncodedURI;->getCommandCode(Ljava/lang/String;)B

    move-result v11

    aput-byte v11, v9, v10

    .line 180
    iput-object p3, p0, Lcom/android/exchange/adapter/EasBase64EncodedURI;->mExtra:Ljava/lang/String;

    .line 181
    move-object/from16 v0, p4

    move-object v1, p0

    iput-object v0, v1, Lcom/android/exchange/adapter/EasBase64EncodedURI;->mDeviceId:Ljava/lang/String;

    .line 182
    move-object/from16 v0, p5

    move-object v1, p0

    iput-object v0, v1, Lcom/android/exchange/adapter/EasBase64EncodedURI;->mPolicyKey:Ljava/lang/String;

    .line 183
    move-object/from16 v0, p6

    move-object v1, p0

    iput-object v0, v1, Lcom/android/exchange/adapter/EasBase64EncodedURI;->mDeviceType:Ljava/lang/String;

    .line 186
    iget-object v9, p0, Lcom/android/exchange/adapter/EasBase64EncodedURI;->mDeviceId:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v5

    .line 187
    .local v5, idLength:I
    const/16 v9, 0x10

    if-le v5, v9, :cond_1

    .line 188
    const/16 v9, 0x10

    sub-int v6, v5, v9

    .line 189
    .local v6, index:I
    iget-object v9, p0, Lcom/android/exchange/adapter/EasBase64EncodedURI;->mDeviceId:Ljava/lang/String;

    invoke-virtual {v9, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/android/exchange/adapter/EasBase64EncodedURI;->mDeviceId:Ljava/lang/String;

    .line 193
    .end local v6           #index:I
    :cond_1
    const/4 v4, 0x0

    .line 195
    .local v4, encodedURI:Ljava/lang/String;
    :try_start_0
    invoke-direct {p0}, Lcom/android/exchange/adapter/EasBase64EncodedURI;->encodeUriString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 200
    :goto_1
    return-object v4

    .line 171
    .end local v2           #cmdLength:I
    .end local v4           #encodedURI:Ljava/lang/String;
    .end local v5           #idLength:I
    :cond_2
    iget-object v9, p0, Lcom/android/exchange/adapter/EasBase64EncodedURI;->mProtocol:[B

    const/4 v10, 0x0

    const/16 v11, 0x79

    aput-byte v11, v9, v10

    goto :goto_0

    .line 196
    .restart local v2       #cmdLength:I
    .restart local v4       #encodedURI:Ljava/lang/String;
    .restart local v5       #idLength:I
    :catch_0
    move-exception v3

    .line 198
    .local v3, e:Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method
