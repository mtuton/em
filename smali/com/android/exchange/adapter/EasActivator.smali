.class public Lcom/android/exchange/adapter/EasActivator;
.super Ljava/lang/Object;
.source "EasActivator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/exchange/adapter/EasActivator$ASAPullParser;,
        Lcom/android/exchange/adapter/EasActivator$ASABaseParser;,
        Lcom/android/exchange/adapter/EasActivator$IASAParser;
    }
.end annotation


# static fields
.field static final LicenseKeyTag:Ljava/lang/String; = "activationResult"

.field private static final TAG:Ljava/lang/String; = "ExchangeActivation"

.field static final Xmlreq_elem:[Ljava/lang/String; = null

.field private static final keyValue:Ljava/lang/String; = "procuring nay end happiness allowance assurance frankness"

.field private static mChecksum:Ljava/lang/String; = null

.field private static mCountryCode:Ljava/lang/String; = null

.field private static mDeviceModelName:Ljava/lang/String; = null

.field private static final mEmail:Ljava/lang/String; = "user@companyx.com"

.field private static mImei:Ljava/lang/String; = null

.field private static final mLive:Ljava/lang/String; = "Y"

.field private static mMsisdnNumber:Ljava/lang/String; = null

.field private static mTeleohonyManager:Landroid/telephony/TelephonyManager; = null

.field private static mUTCTimestamp:Ljava/lang/String; = null

.field private static final serverURL:Ljava/lang/String; = "https://service.ssl.samsungmobile.com:443/activate/activesync"

.field private static xmlReqBuffer:Ljava/lang/StringBuffer;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 336
    const/16 v0, 0x14

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "<?xml version=\"1.0\" ?>\n"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "<methodCall>\n"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "<methodName>activesync.activate</methodName>\n"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "<params>\n"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "<param>\n"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "<value>\n"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "<struct>\n"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "<name>imei</name>\n"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "<name>msisdn</name>\n"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "<name>mcc</name>\n"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "<name>model_name</name>\n"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "<name>timestamp</name>\n"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "<name>email</name>\n"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "<name>live</name>\n"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "<name>checksum</name>\n"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "</struct>\n"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "</value>\n"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "</param>\n"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "</params>\n"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "</methodCall>"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/exchange/adapter/EasActivator;->Xmlreq_elem:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/exchange/adapter/EasActivator;->mContext:Landroid/content/Context;

    .line 73
    iput-object p1, p0, Lcom/android/exchange/adapter/EasActivator;->mContext:Landroid/content/Context;

    .line 74
    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/telephony/TelephonyManager;

    sput-object p0, Lcom/android/exchange/adapter/EasActivator;->mTeleohonyManager:Landroid/telephony/TelephonyManager;

    .line 75
    return-void
.end method

.method static buffer_append_elem(ILjava/lang/String;)V
    .locals 2
    .parameter "i"
    .parameter "a"

    .prologue
    .line 360
    sget-object v0, Lcom/android/exchange/adapter/EasActivator;->xmlReqBuffer:Ljava/lang/StringBuffer;

    const-string v1, "<member>\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 361
    sget-object v0, Lcom/android/exchange/adapter/EasActivator;->xmlReqBuffer:Ljava/lang/StringBuffer;

    sget-object v1, Lcom/android/exchange/adapter/EasActivator;->Xmlreq_elem:[Ljava/lang/String;

    aget-object v1, v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 362
    sget-object v0, Lcom/android/exchange/adapter/EasActivator;->xmlReqBuffer:Ljava/lang/StringBuffer;

    const-string v1, "<value>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 363
    sget-object v0, Lcom/android/exchange/adapter/EasActivator;->xmlReqBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 364
    sget-object v0, Lcom/android/exchange/adapter/EasActivator;->xmlReqBuffer:Ljava/lang/StringBuffer;

    const-string v1, "</value>\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 365
    sget-object v0, Lcom/android/exchange/adapter/EasActivator;->xmlReqBuffer:Ljava/lang/StringBuffer;

    const-string v1, "</member>\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 366
    return-void
.end method

.method static byteToHex(B)Ljava/lang/String;
    .locals 4
    .parameter "b"

    .prologue
    .line 252
    const/16 v2, 0x10

    new-array v1, v2, [C

    fill-array-data v1, :array_0

    .line 256
    .local v1, hexDigit:[C
    const/4 v2, 0x2

    new-array v0, v2, [C

    const/4 v2, 0x0

    shr-int/lit8 v3, p0, 0x4

    and-int/lit8 v3, v3, 0xf

    aget-char v3, v1, v3

    aput-char v3, v0, v2

    const/4 v2, 0x1

    and-int/lit8 v3, p0, 0xf

    aget-char v3, v1, v3

    aput-char v3, v0, v2

    .line 257
    .local v0, array:[C
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([C)V

    return-object v2

    .line 252
    :array_0
    .array-data 0x2
        0x30t 0x0t
        0x31t 0x0t
        0x32t 0x0t
        0x33t 0x0t
        0x34t 0x0t
        0x35t 0x0t
        0x36t 0x0t
        0x37t 0x0t
        0x38t 0x0t
        0x39t 0x0t
        0x41t 0x0t
        0x42t 0x0t
        0x43t 0x0t
        0x44t 0x0t
        0x45t 0x0t
        0x46t 0x0t
    .end array-data
.end method

.method static bytesToHex([B)Ljava/lang/String;
    .locals 3
    .parameter "b"

    .prologue
    .line 244
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v2, ""

    invoke-direct {v0, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 245
    .local v0, buf:Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 246
    aget-byte v2, p0, v1

    invoke-static {v2}, Lcom/android/exchange/adapter/EasActivator;->byteToHex(B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 245
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 247
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method static computeHmacSha1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .parameter "key"
    .parameter "message"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .prologue
    const-string v9, "UTF8"

    const-string v10, "ExchangeActivation"

    .line 268
    const/4 v1, 0x0

    .line 269
    .local v1, digest:Ljava/lang/String;
    const-string v0, "HmacSha1"

    .line 270
    .local v0, algorithm:Ljava/lang/String;
    const/4 v3, 0x0

    .line 273
    .local v3, digestByteArray:[B
    :try_start_0
    const-string v9, "UTF8"

    invoke-virtual {p0, v9}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 281
    .local v5, keyByteArray:[B
    :try_start_1
    const-string v9, "UTF8"

    invoke-virtual {p1, v9}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v7

    .line 289
    .local v7, messageByteArray:[B
    new-instance v8, Ljavax/crypto/spec/SecretKeySpec;

    invoke-direct {v8, v5, v0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 292
    .local v8, secretkey:Ljavax/crypto/spec/SecretKeySpec;
    invoke-static {v0}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v6

    .line 293
    .local v6, mac:Ljavax/crypto/Mac;
    invoke-virtual {v6, v8}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 295
    invoke-virtual {v6, v7}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object v3

    .line 296
    invoke-static {v3}, Lcom/android/exchange/adapter/EasActivator;->bytesToHex([B)Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    .line 298
    .end local v1           #digest:Ljava/lang/String;
    .end local v5           #keyByteArray:[B
    .end local v6           #mac:Ljavax/crypto/Mac;
    .end local v7           #messageByteArray:[B
    .end local v8           #secretkey:Ljavax/crypto/spec/SecretKeySpec;
    .local v2, digest:Ljava/lang/String;
    :goto_0
    return-object v2

    .line 274
    .end local v2           #digest:Ljava/lang/String;
    .restart local v1       #digest:Ljava/lang/String;
    :catch_0
    move-exception v9

    move-object v4, v9

    .line 275
    .local v4, e:Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v4}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 276
    const-string v9, "ExchangeActivation"

    const-string v9, "computeHmacSha1 cannot get key byte"

    invoke-static {v10, v9}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v1

    .line 277
    .end local v1           #digest:Ljava/lang/String;
    .restart local v2       #digest:Ljava/lang/String;
    goto :goto_0

    .line 282
    .end local v2           #digest:Ljava/lang/String;
    .end local v4           #e:Ljava/io/UnsupportedEncodingException;
    .restart local v1       #digest:Ljava/lang/String;
    .restart local v5       #keyByteArray:[B
    :catch_1
    move-exception v9

    move-object v4, v9

    .line 283
    .restart local v4       #e:Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v4}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 284
    const-string v9, "ExchangeActivation"

    const-string v9, "computeHmacSha1 cannot get message byte"

    invoke-static {v10, v9}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v1

    .line 285
    .end local v1           #digest:Ljava/lang/String;
    .restart local v2       #digest:Ljava/lang/String;
    goto :goto_0
.end method


# virtual methods
.method public actionActivateDevice()Ljava/lang/String;
    .locals 4

    .prologue
    .line 86
    const-string v1, "https://service.ssl.samsungmobile.com:443/activate/activesync"

    .line 87
    .local v1, urlServerToConnect:Ljava/lang/String;
    const/4 v0, 0x0

    .line 90
    .local v0, license:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/exchange/adapter/EasActivator;->getDeviceInfo()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 91
    invoke-virtual {p0}, Lcom/android/exchange/adapter/EasActivator;->getChecksum()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 93
    invoke-virtual {p0}, Lcom/android/exchange/adapter/EasActivator;->xmlReqBuffer_setup()Ljava/lang/String;

    move-result-object v2

    .line 94
    .local v2, xmlContentToSend:Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 95
    invoke-virtual {p0, v1, v2}, Lcom/android/exchange/adapter/EasActivator;->getLicenseKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 99
    .end local v2           #xmlContentToSend:Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method getChecksum()Z
    .locals 7

    .prologue
    const-string v6, "ExchangeActivation"

    .line 307
    const/4 v3, 0x0

    .line 308
    .local v3, noError:Z
    const/4 v4, 0x0

    sput-object v4, Lcom/android/exchange/adapter/EasActivator;->mChecksum:Ljava/lang/String;

    .line 316
    new-instance v1, Ljava/lang/StringBuffer;

    sget-object v4, Lcom/android/exchange/adapter/EasActivator;->mImei:Ljava/lang/String;

    invoke-direct {v1, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 317
    .local v1, messageBuffer:Ljava/lang/StringBuffer;
    sget-object v4, Lcom/android/exchange/adapter/EasActivator;->mMsisdnNumber:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 318
    sget-object v4, Lcom/android/exchange/adapter/EasActivator;->mCountryCode:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 319
    sget-object v4, Lcom/android/exchange/adapter/EasActivator;->mDeviceModelName:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 320
    sget-object v4, Lcom/android/exchange/adapter/EasActivator;->mUTCTimestamp:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 321
    const-string v4, "user@companyx.com"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 322
    const-string v4, "Y"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 323
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    .line 326
    .local v2, messageValue:Ljava/lang/String;
    :try_start_0
    const-string v4, "procuring nay end happiness allowance assurance frankness"

    invoke-static {v4, v2}, Lcom/android/exchange/adapter/EasActivator;->computeHmacSha1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/android/exchange/adapter/EasActivator;->mChecksum:Ljava/lang/String;

    .line 327
    const-string v4, "ExchangeActivation"

    sget-object v5, Lcom/android/exchange/adapter/EasActivator;->mChecksum:Ljava/lang/String;

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    sget-object v4, Lcom/android/exchange/adapter/EasActivator;->mChecksum:Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v4, :cond_0

    .line 329
    const/4 v3, 0x1

    .line 333
    :cond_0
    :goto_0
    return v3

    .line 330
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 331
    .local v0, e:Ljava/security/GeneralSecurityException;
    const-string v4, "ExchangeActivation"

    const-string v4, "getChecksum cannot complete"

    invoke-static {v6, v4}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method getDate()V
    .locals 3

    .prologue
    .line 236
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 237
    .local v1, lv_localDate:Ljava/util/Date;
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v2, "yyMMddHHmmss"

    invoke-direct {v0, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 238
    .local v0, lv_formatter_UTC:Ljava/text/SimpleDateFormat;
    const-string v2, "UTC"

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 239
    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/exchange/adapter/EasActivator;->mUTCTimestamp:Ljava/lang/String;

    .line 240
    return-void
.end method

.method getDeviceInfo()Z
    .locals 7

    .prologue
    const/4 v5, 0x1

    const-string v6, "ExchangeActivation"

    .line 108
    const/4 v1, 0x0

    .line 110
    .local v1, noError:Z
    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sput-object v3, Lcom/android/exchange/adapter/EasActivator;->mDeviceModelName:Ljava/lang/String;

    .line 111
    invoke-virtual {p0}, Lcom/android/exchange/adapter/EasActivator;->getDate()V

    .line 112
    sget-object v3, Lcom/android/exchange/adapter/EasActivator;->mTeleohonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/android/exchange/adapter/EasActivator;->mImei:Ljava/lang/String;

    .line 113
    sget-object v3, Lcom/android/exchange/adapter/EasActivator;->mTeleohonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/android/exchange/adapter/EasActivator;->mMsisdnNumber:Ljava/lang/String;

    .line 116
    sget-object v3, Lcom/android/exchange/adapter/EasActivator;->mMsisdnNumber:Ljava/lang/String;

    if-nez v3, :cond_0

    .line 117
    const-string v3, "000000000000"

    sput-object v3, Lcom/android/exchange/adapter/EasActivator;->mMsisdnNumber:Ljava/lang/String;

    .line 120
    :cond_0
    sget-object v3, Lcom/android/exchange/adapter/EasActivator;->mImei:Ljava/lang/String;

    if-eqz v3, :cond_1

    sget-object v3, Lcom/android/exchange/adapter/EasActivator;->mMsisdnNumber:Ljava/lang/String;

    if-nez v3, :cond_2

    .line 121
    :cond_1
    const-string v3, "ExchangeActivation"

    const-string v3, "getDeviceInfo - Can not get device info imei or isdn"

    invoke-static {v6, v3}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    move v3, v1

    .line 142
    :goto_0
    return v3

    .line 125
    :cond_2
    :try_start_0
    sget-object v3, Lcom/android/exchange/adapter/EasActivator;->mTeleohonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v2

    .line 126
    .local v2, operatorInfo:Ljava/lang/String;
    if-eqz v2, :cond_3

    .line 131
    const/4 v3, 0x0

    const/4 v4, 0x3

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/android/exchange/adapter/EasActivator;->mCountryCode:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    move v3, v5

    .line 142
    goto :goto_0

    .line 133
    .end local v2           #operatorInfo:Ljava/lang/String;
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 134
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "ExchangeActivation"

    const-string v3, "getDeviceInfo - Can not get country code!"

    invoke-static {v6, v3}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    const-string v3, "000"

    sput-object v3, Lcom/android/exchange/adapter/EasActivator;->mCountryCode:Ljava/lang/String;

    move v3, v5

    .line 137
    goto :goto_0
.end method

.method getLicenseKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 20
    .parameter "urlServerToConnect"
    .parameter "xmlContentToSend"

    .prologue
    .line 153
    const/4 v12, 0x0

    .line 155
    .local v12, noError:Z
    new-instance v8, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v8}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 156
    .local v8, httpclient:Lorg/apache/http/client/HttpClient;
    new-instance v9, Lorg/apache/http/client/methods/HttpPost;

    move-object v0, v9

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 158
    .local v9, httppost:Lorg/apache/http/client/methods/HttpPost;
    const/4 v14, 0x0

    .line 159
    .local v14, response:Lorg/apache/http/HttpResponse;
    const/4 v10, 0x0

    .line 160
    .local v10, instream:Ljava/io/InputStream;
    const-string v11, "unknown"

    .line 162
    .local v11, license_key:Ljava/lang/String;
    const-string v17, "content-type"

    const-string v18, "application/x-www-form-urlencoded"

    move-object v0, v9

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    const-string v17, "user-agent"

    const-string v18, "text/xml"

    move-object v0, v9

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    const-string v17, "accept"

    const-string v18, "text/xml"

    move-object v0, v9

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    :try_start_0
    new-instance v7, Lorg/apache/http/entity/StringEntity;

    const-string v17, "UTF-8"

    move-object v0, v7

    move-object/from16 v1, p2

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    .local v7, entity:Lorg/apache/http/entity/StringEntity;
    const-string v17, "application/xml"

    move-object v0, v7

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/apache/http/entity/StringEntity;->setContentType(Ljava/lang/String;)V

    .line 169
    invoke-virtual {v9, v7}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 173
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/adapter/EasActivator;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object v1, v8

    move-object v2, v9

    invoke-static {v0, v1, v2}, Lcom/android/exchange/EasSyncService;->addProxyParamsIfProxySet(Landroid/content/Context;Lorg/apache/http/client/HttpClient;Lorg/apache/http/client/methods/HttpRequestBase;)V

    .line 177
    invoke-interface {v8, v9}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    :try_end_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v14

    .line 186
    .end local v7           #entity:Lorg/apache/http/entity/StringEntity;
    :goto_0
    if-eqz v14, :cond_2

    .line 187
    invoke-interface {v14}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v16

    .line 188
    .local v16, statusInfo:Ljava/lang/String;
    const-string v17, "ExchangeActivation"

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    invoke-interface {v14}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v4

    .line 190
    .local v4, code:I
    const-string v17, "ExchangeActivation"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Device activation response: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    const/16 v17, 0xc8

    move v0, v4

    move/from16 v1, v17

    if-ne v0, v1, :cond_4

    .line 193
    const-string v17, "Content-Length"

    move-object v0, v14

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v5

    .line 194
    .local v5, content_len:Lorg/apache/http/Header;
    if-eqz v5, :cond_0

    invoke-interface {v5}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v17

    const-string v18, "0"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_1

    .line 195
    :cond_0
    const-string v17, "ExchangeActivation"

    const-string v18, "getLicenseKey - http response has no content"

    invoke-static/range {v17 .. v18}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    const/16 v17, 0x0

    .line 231
    .end local v4           #code:I
    .end local v5           #content_len:Lorg/apache/http/Header;
    .end local v16           #statusInfo:Ljava/lang/String;
    :goto_1
    return-object v17

    .line 178
    :catch_0
    move-exception v17

    move-object/from16 v6, v17

    .line 179
    .local v6, e:Lorg/apache/http/client/ClientProtocolException;
    invoke-virtual {v9}, Lorg/apache/http/client/methods/HttpPost;->abort()V

    .line 180
    const-string v17, "ExchangeActivation"

    const-string v18, "getLicenseKey - http post ClientProtocolException"

    invoke-static/range {v17 .. v18}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 181
    .end local v6           #e:Lorg/apache/http/client/ClientProtocolException;
    :catch_1
    move-exception v17

    move-object/from16 v6, v17

    .line 182
    .local v6, e:Ljava/io/IOException;
    invoke-virtual {v9}, Lorg/apache/http/client/methods/HttpPost;->abort()V

    .line 183
    const-string v17, "ExchangeActivation"

    const-string v18, "getLicenseKey - http post IOException"

    invoke-static/range {v17 .. v18}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 198
    .end local v6           #e:Ljava/io/IOException;
    .restart local v4       #code:I
    .restart local v5       #content_len:Lorg/apache/http/Header;
    .restart local v16       #statusInfo:Ljava/lang/String;
    :cond_1
    const-string v17, "ExchangeActivation"

    const-string v18, "getLicenseKey - http response status = 200"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    :try_start_1
    invoke-interface {v14}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v7

    .line 201
    .local v7, entity:Lorg/apache/http/HttpEntity;
    invoke-interface {v7}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v10

    .line 202
    new-instance v13, Lcom/android/exchange/adapter/EasActivator$ASAPullParser;

    move-object v0, v13

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/exchange/adapter/EasActivator$ASAPullParser;-><init>(Lcom/android/exchange/adapter/EasActivator;)V

    .line 204
    .local v13, parser:Lcom/android/exchange/adapter/EasActivator$ASAPullParser;
    invoke-virtual {v13, v10}, Lcom/android/exchange/adapter/EasActivator$ASAPullParser;->parse(Ljava/io/InputStream;)Ljava/util/List;

    move-result-object v15

    .line 205
    .local v15, responseString:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/16 v17, 0x0

    move-object v0, v15

    move/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    .end local v13           #parser:Lcom/android/exchange/adapter/EasActivator$ASAPullParser;
    move-object v0, v13

    check-cast v0, Ljava/lang/String;

    move-object v11, v0

    .line 206
    const/16 v17, 0x1

    move-object v0, v15

    move/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 207
    .local v3, checksum:Ljava/lang/String;
    const-string v17, "ExchangeActivation"

    move-object/from16 v0, v17

    move-object v1, v11

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    const-string v17, "ExchangeActivation"

    move-object/from16 v0, v17

    move-object v1, v3

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    move-object/from16 v0, p0

    move-object v1, v11

    move-object v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/adapter/EasActivator;->verify_licensekey(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_3

    .line 210
    const-string v17, "ExchangeActivation"

    const-string v18, "getLicenseKey - Licensekey verification success."

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 211
    const/4 v12, 0x1

    .line 227
    .end local v3           #checksum:Ljava/lang/String;
    .end local v4           #code:I
    .end local v5           #content_len:Lorg/apache/http/Header;
    .end local v7           #entity:Lorg/apache/http/HttpEntity;
    .end local v15           #responseString:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v16           #statusInfo:Ljava/lang/String;
    :cond_2
    :goto_2
    invoke-interface {v8}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 228
    if-eqz v12, :cond_5

    move-object/from16 v17, v11

    .line 229
    goto :goto_1

    .line 214
    .restart local v3       #checksum:Ljava/lang/String;
    .restart local v4       #code:I
    .restart local v5       #content_len:Lorg/apache/http/Header;
    .restart local v7       #entity:Lorg/apache/http/HttpEntity;
    .restart local v15       #responseString:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .restart local v16       #statusInfo:Ljava/lang/String;
    :cond_3
    :try_start_2
    const-string v17, "ExchangeActivation"

    const-string v18, "getLicenseKey - Licensekey verification failed."

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    .line 216
    .end local v3           #checksum:Ljava/lang/String;
    .end local v7           #entity:Lorg/apache/http/HttpEntity;
    .end local v15           #responseString:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :catch_2
    move-exception v17

    move-object/from16 v6, v17

    .line 217
    .local v6, e:Ljava/lang/Exception;
    const-string v17, "ExchangeActivation"

    const-string v18, "getLicenseKey - http response has no license"

    invoke-static/range {v17 .. v18}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 221
    .end local v5           #content_len:Lorg/apache/http/Header;
    .end local v6           #e:Ljava/lang/Exception;
    :cond_4
    const-string v17, "ExchangeActivation"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "getLicenseKey - http response status "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 231
    .end local v4           #code:I
    .end local v16           #statusInfo:Ljava/lang/String;
    :cond_5
    const/16 v17, 0x0

    goto/16 :goto_1
.end method

.method verify_licensekey(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 9
    .parameter "licensekeyStr"
    .parameter "checksumStr"

    .prologue
    const-string v8, "ExchangeActivation"

    .line 511
    const/4 v3, 0x0

    .line 513
    .local v3, noError:Z
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    move v4, v3

    .line 538
    .end local v3           #noError:Z
    .local v4, noError:I
    :goto_0
    return v4

    .line 516
    .end local v4           #noError:I
    .restart local v3       #noError:Z
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 519
    .local v1, licensekey:[B
    if-eqz v1, :cond_2

    .line 522
    :try_start_0
    const-string v5, "procuring nay end happiness allowance assurance frankness"

    invoke-static {v5, p1}, Lcom/android/exchange/adapter/EasActivator;->computeHmacSha1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 523
    .local v2, myChecksum:Ljava/lang/String;
    const-string v5, "ExchangeActivation"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "server "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    const-string v5, "ExchangeActivation"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "device "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 530
    invoke-virtual {p2, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 531
    const-string v5, "ExchangeActivation"

    const-string v5, "verify_licensekey - verify license key success"

    invoke-static {v8, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    const/4 v3, 0x1

    .end local v2           #myChecksum:Ljava/lang/String;
    :cond_2
    :goto_1
    move v4, v3

    .line 538
    .restart local v4       #noError:I
    goto :goto_0

    .line 525
    .end local v4           #noError:I
    :catch_0
    move-exception v5

    move-object v0, v5

    .line 526
    .local v0, e:Ljava/security/GeneralSecurityException;
    const-string v5, "ExchangeActivation"

    const-string v5, "verify_licensekey - can not complete computeHmacSha1"

    invoke-static {v8, v5}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    move v4, v3

    .line 527
    .restart local v4       #noError:I
    goto :goto_0

    .line 535
    .end local v0           #e:Ljava/security/GeneralSecurityException;
    .end local v4           #noError:I
    .restart local v2       #myChecksum:Ljava/lang/String;
    :cond_3
    const-string v5, "ExchangeActivation"

    const-string v5, "verify_licensekey - verify license key fail"

    invoke-static {v8, v5}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method xmlReqBuffer_setup()Ljava/lang/String;
    .locals 3

    .prologue
    .line 374
    new-instance v0, Ljava/lang/StringBuffer;

    sget-object v1, Lcom/android/exchange/adapter/EasActivator;->Xmlreq_elem:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/exchange/adapter/EasActivator;->xmlReqBuffer:Ljava/lang/StringBuffer;

    .line 375
    sget-object v0, Lcom/android/exchange/adapter/EasActivator;->xmlReqBuffer:Ljava/lang/StringBuffer;

    sget-object v1, Lcom/android/exchange/adapter/EasActivator;->Xmlreq_elem:[Ljava/lang/String;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 376
    sget-object v0, Lcom/android/exchange/adapter/EasActivator;->xmlReqBuffer:Ljava/lang/StringBuffer;

    sget-object v1, Lcom/android/exchange/adapter/EasActivator;->Xmlreq_elem:[Ljava/lang/String;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 377
    sget-object v0, Lcom/android/exchange/adapter/EasActivator;->xmlReqBuffer:Ljava/lang/StringBuffer;

    sget-object v1, Lcom/android/exchange/adapter/EasActivator;->Xmlreq_elem:[Ljava/lang/String;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 378
    sget-object v0, Lcom/android/exchange/adapter/EasActivator;->xmlReqBuffer:Ljava/lang/StringBuffer;

    sget-object v1, Lcom/android/exchange/adapter/EasActivator;->Xmlreq_elem:[Ljava/lang/String;

    const/4 v2, 0x4

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 379
    sget-object v0, Lcom/android/exchange/adapter/EasActivator;->xmlReqBuffer:Ljava/lang/StringBuffer;

    sget-object v1, Lcom/android/exchange/adapter/EasActivator;->Xmlreq_elem:[Ljava/lang/String;

    const/4 v2, 0x5

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 380
    sget-object v0, Lcom/android/exchange/adapter/EasActivator;->xmlReqBuffer:Ljava/lang/StringBuffer;

    sget-object v1, Lcom/android/exchange/adapter/EasActivator;->Xmlreq_elem:[Ljava/lang/String;

    const/4 v2, 0x6

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 381
    const/4 v0, 0x7

    sget-object v1, Lcom/android/exchange/adapter/EasActivator;->mImei:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/exchange/adapter/EasActivator;->buffer_append_elem(ILjava/lang/String;)V

    .line 382
    const/16 v0, 0x8

    sget-object v1, Lcom/android/exchange/adapter/EasActivator;->mMsisdnNumber:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/exchange/adapter/EasActivator;->buffer_append_elem(ILjava/lang/String;)V

    .line 383
    const/16 v0, 0x9

    sget-object v1, Lcom/android/exchange/adapter/EasActivator;->mCountryCode:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/exchange/adapter/EasActivator;->buffer_append_elem(ILjava/lang/String;)V

    .line 384
    const/16 v0, 0xa

    sget-object v1, Lcom/android/exchange/adapter/EasActivator;->mDeviceModelName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/exchange/adapter/EasActivator;->buffer_append_elem(ILjava/lang/String;)V

    .line 385
    const/16 v0, 0xb

    sget-object v1, Lcom/android/exchange/adapter/EasActivator;->mUTCTimestamp:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/exchange/adapter/EasActivator;->buffer_append_elem(ILjava/lang/String;)V

    .line 386
    const/16 v0, 0xc

    const-string v1, "user@companyx.com"

    invoke-static {v0, v1}, Lcom/android/exchange/adapter/EasActivator;->buffer_append_elem(ILjava/lang/String;)V

    .line 387
    const/16 v0, 0xd

    const-string v1, "Y"

    invoke-static {v0, v1}, Lcom/android/exchange/adapter/EasActivator;->buffer_append_elem(ILjava/lang/String;)V

    .line 388
    const/16 v0, 0xe

    sget-object v1, Lcom/android/exchange/adapter/EasActivator;->mChecksum:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/exchange/adapter/EasActivator;->buffer_append_elem(ILjava/lang/String;)V

    .line 389
    sget-object v0, Lcom/android/exchange/adapter/EasActivator;->xmlReqBuffer:Ljava/lang/StringBuffer;

    sget-object v1, Lcom/android/exchange/adapter/EasActivator;->Xmlreq_elem:[Ljava/lang/String;

    const/16 v2, 0xf

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 390
    sget-object v0, Lcom/android/exchange/adapter/EasActivator;->xmlReqBuffer:Ljava/lang/StringBuffer;

    sget-object v1, Lcom/android/exchange/adapter/EasActivator;->Xmlreq_elem:[Ljava/lang/String;

    const/16 v2, 0x10

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 391
    sget-object v0, Lcom/android/exchange/adapter/EasActivator;->xmlReqBuffer:Ljava/lang/StringBuffer;

    sget-object v1, Lcom/android/exchange/adapter/EasActivator;->Xmlreq_elem:[Ljava/lang/String;

    const/16 v2, 0x11

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 392
    sget-object v0, Lcom/android/exchange/adapter/EasActivator;->xmlReqBuffer:Ljava/lang/StringBuffer;

    sget-object v1, Lcom/android/exchange/adapter/EasActivator;->Xmlreq_elem:[Ljava/lang/String;

    const/16 v2, 0x12

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 393
    sget-object v0, Lcom/android/exchange/adapter/EasActivator;->xmlReqBuffer:Ljava/lang/StringBuffer;

    sget-object v1, Lcom/android/exchange/adapter/EasActivator;->Xmlreq_elem:[Ljava/lang/String;

    const/16 v2, 0x13

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 395
    sget-object v0, Lcom/android/exchange/adapter/EasActivator;->xmlReqBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
