.class public Lcom/android/email/mail/Address;
.super Ljava/lang/Object;
.source "Address.java"


# static fields
.field private static final EMPTY_ADDRESS_ARRAY:[Lcom/android/email/mail/Address; = null

.field private static final LIST_DELIMITER_EMAIL:C = '\u0001'

.field private static final LIST_DELIMITER_PERSONAL:C = '\u0002'

.field private static final REMOVE_OPTIONAL_BRACKET:Ljava/util/regex/Pattern;

.field private static final REMOVE_OPTIONAL_DQUOTE:Ljava/util/regex/Pattern;

.field private static final UNQUOTE:Ljava/util/regex/Pattern;


# instance fields
.field mAddress:Ljava/lang/String;

.field mPersonal:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 57
    const-string v0, "^<?([^>]+)>?$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/email/mail/Address;->REMOVE_OPTIONAL_BRACKET:Ljava/util/regex/Pattern;

    .line 59
    const-string v0, "^\"?([^\"]*)\"?$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/email/mail/Address;->REMOVE_OPTIONAL_DQUOTE:Ljava/util/regex/Pattern;

    .line 61
    const-string v0, "\\\\([\\\\\"])"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/email/mail/Address;->UNQUOTE:Ljava/util/regex/Pattern;

    .line 63
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/android/email/mail/Address;

    sput-object v0, Lcom/android/email/mail/Address;->EMPTY_ADDRESS_ARRAY:[Lcom/android/email/mail/Address;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "address"

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    invoke-virtual {p0, p1}, Lcom/android/email/mail/Address;->setAddress(Ljava/lang/String;)V

    .line 76
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "address"
    .parameter "personal"

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    invoke-virtual {p0, p1}, Lcom/android/email/mail/Address;->setAddress(Ljava/lang/String;)V

    .line 71
    invoke-virtual {p0, p2}, Lcom/android/email/mail/Address;->setPersonal(Ljava/lang/String;)V

    .line 72
    return-void
.end method

.method public static isAllValid(Ljava/lang/String;)Z
    .locals 6
    .parameter "addressList"

    .prologue
    .line 120
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_1

    .line 121
    invoke-static {p0}, Landroid/text/util/Rfc822Tokenizer;->tokenize(Ljava/lang/CharSequence;)[Landroid/text/util/Rfc822Token;

    move-result-object v4

    .line 122
    .local v4, tokens:[Landroid/text/util/Rfc822Token;
    const/4 v1, 0x0

    .local v1, i:I
    array-length v2, v4

    .local v2, length:I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 123
    aget-object v3, v4, v1

    .line 124
    .local v3, token:Landroid/text/util/Rfc822Token;
    invoke-virtual {v3}, Landroid/text/util/Rfc822Token;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 125
    .local v0, address:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {v0}, Lcom/android/email/mail/Address;->isValidAddress(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 126
    const/4 v5, 0x0

    .line 130
    .end local v0           #address:Ljava/lang/String;
    .end local v1           #i:I
    .end local v2           #length:I
    .end local v3           #token:Landroid/text/util/Rfc822Token;
    .end local v4           #tokens:[Landroid/text/util/Rfc822Token;
    :goto_1
    return v5

    .line 122
    .restart local v0       #address:Ljava/lang/String;
    .restart local v1       #i:I
    .restart local v2       #length:I
    .restart local v3       #token:Landroid/text/util/Rfc822Token;
    .restart local v4       #tokens:[Landroid/text/util/Rfc822Token;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 130
    .end local v0           #address:Ljava/lang/String;
    .end local v1           #i:I
    .end local v2           #length:I
    .end local v3           #token:Landroid/text/util/Rfc822Token;
    .end local v4           #tokens:[Landroid/text/util/Rfc822Token;
    :cond_1
    const/4 v5, 0x1

    goto :goto_1
.end method

.method static isValidAddress(Ljava/lang/String;)Z
    .locals 8
    .parameter "address"

    .prologue
    const/16 v5, 0x40

    const/16 v7, 0x2e

    const/4 v6, 0x1

    .line 210
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    .line 211
    .local v4, len:I
    invoke-virtual {p0, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 212
    .local v0, firstAt:I
    invoke-virtual {p0, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    .line 213
    .local v2, lastAt:I
    add-int/lit8 v5, v2, 0x1

    invoke-virtual {p0, v7, v5}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    .line 214
    .local v1, firstDot:I
    invoke-virtual {p0, v7}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    .line 215
    .local v3, lastDot:I
    if-lez v0, :cond_0

    if-ne v0, v2, :cond_0

    add-int/lit8 v5, v2, 0x1

    if-ge v5, v1, :cond_0

    if-gt v1, v3, :cond_0

    sub-int v5, v4, v6

    if-ge v3, v5, :cond_0

    move v5, v6

    :goto_0
    return v5

    :cond_0
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public static legacyPack([Lcom/android/email/mail/Address;)Ljava/lang/String;
    .locals 8
    .parameter "addresses"

    .prologue
    const/4 v7, 0x0

    const-string v5, "UTF-8"

    .line 542
    if-nez p0, :cond_0

    move-object v5, v7

    .line 564
    :goto_0
    return-object v5

    .line 544
    :cond_0
    array-length v5, p0

    if-nez v5, :cond_1

    .line 545
    const-string v5, ""

    goto :goto_0

    .line 547
    :cond_1
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 548
    .local v3, sb:Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    .local v2, i:I
    array-length v1, p0

    .local v1, count:I
    :goto_1
    if-ge v2, v1, :cond_4

    .line 549
    aget-object v0, p0, v2

    .line 551
    .local v0, address:Lcom/android/email/mail/Address;
    :try_start_0
    invoke-virtual {v0}, Lcom/android/email/mail/Address;->getAddress()Ljava/lang/String;

    move-result-object v5

    const-string v6, "UTF-8"

    invoke-static {v5, v6}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 552
    invoke-virtual {v0}, Lcom/android/email/mail/Address;->getPersonal()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 553
    const/16 v5, 0x3b

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 554
    invoke-virtual {v0}, Lcom/android/email/mail/Address;->getPersonal()Ljava/lang/String;

    move-result-object v5

    const-string v6, "UTF-8"

    invoke-static {v5, v6}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 556
    :cond_2
    const/4 v5, 0x1

    sub-int v5, v1, v5

    if-ge v2, v5, :cond_3

    .line 557
    const/16 v5, 0x2c

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 548
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 560
    :catch_0
    move-exception v5

    move-object v4, v5

    .local v4, uee:Ljava/io/UnsupportedEncodingException;
    move-object v5, v7

    .line 561
    goto :goto_0

    .line 564
    .end local v0           #address:Lcom/android/email/mail/Address;
    .end local v4           #uee:Ljava/io/UnsupportedEncodingException;
    :cond_4
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0
.end method

.method public static legacyUnpack(Ljava/lang/String;)[Lcom/android/email/mail/Address;
    .locals 10
    .parameter "addressList"

    .prologue
    const/4 v9, 0x0

    const/4 v8, -0x1

    .line 504
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_1

    .line 505
    :cond_0
    new-array v7, v9, [Lcom/android/email/mail/Address;

    .line 533
    .end local p0
    :goto_0
    return-object v7

    .line 507
    .restart local p0
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 508
    .local v2, addresses:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/email/mail/Address;>;"
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 509
    .local v3, length:I
    const/4 v5, 0x0

    .line 510
    .local v5, pairStartIndex:I
    const/4 v4, 0x0

    .line 511
    .local v4, pairEndIndex:I
    const/4 v1, 0x0

    .line 512
    .local v1, addressEndIndex:I
    :goto_1
    if-ge v5, v3, :cond_5

    .line 513
    const/16 v7, 0x2c

    invoke-virtual {p0, v7, v5}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    .line 514
    if-ne v4, v8, :cond_2

    .line 515
    move v4, v3

    .line 517
    :cond_2
    const/16 v7, 0x3b

    invoke-virtual {p0, v7, v5}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    .line 518
    const/4 v0, 0x0

    .line 519
    .local v0, address:Ljava/lang/String;
    const/4 v6, 0x0

    .line 520
    .local v6, personal:Ljava/lang/String;
    if-eq v1, v8, :cond_3

    if-le v1, v4, :cond_4

    .line 521
    :cond_3
    invoke-virtual {p0, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/email/Utility;->fastUrlDecode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 530
    :goto_2
    new-instance v7, Lcom/android/email/mail/Address;

    invoke-direct {v7, v0, v6}, Lcom/android/email/mail/Address;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 531
    add-int/lit8 v5, v4, 0x1

    .line 532
    goto :goto_1

    .line 525
    :cond_4
    invoke-virtual {p0, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/email/Utility;->fastUrlDecode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 527
    add-int/lit8 v7, v1, 0x1

    invoke-virtual {p0, v7, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/email/Utility;->fastUrlDecode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_2

    .line 533
    .end local v0           #address:Ljava/lang/String;
    .end local v6           #personal:Ljava/lang/String;
    :cond_5
    new-array v7, v9, [Lcom/android/email/mail/Address;

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, [Lcom/android/email/mail/Address;

    move-object v7, p0

    goto :goto_0
.end method

.method public static pack([Lcom/android/email/mail/Address;)Ljava/lang/String;
    .locals 8
    .parameter "addresses"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 456
    if-nez p0, :cond_0

    .line 457
    const/4 v5, 0x0

    .line 482
    :goto_0
    return-object v5

    .line 459
    :cond_0
    array-length v3, p0

    .line 460
    .local v3, nAddr:I
    if-nez v3, :cond_1

    .line 461
    const-string v5, ""

    goto :goto_0

    .line 465
    :cond_1
    if-ne v3, v7, :cond_2

    aget-object v5, p0, v6

    invoke-virtual {v5}, Lcom/android/email/mail/Address;->getPersonal()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_2

    .line 466
    aget-object v5, p0, v6

    invoke-virtual {v5}, Lcom/android/email/mail/Address;->getAddress()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 469
    :cond_2
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 470
    .local v4, sb:Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v3, :cond_5

    .line 471
    if-eqz v2, :cond_3

    .line 472
    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 474
    :cond_3
    aget-object v0, p0, v2

    .line 475
    .local v0, address:Lcom/android/email/mail/Address;
    invoke-virtual {v0}, Lcom/android/email/mail/Address;->getAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 476
    invoke-virtual {v0}, Lcom/android/email/mail/Address;->getPersonal()Ljava/lang/String;

    move-result-object v1

    .line 477
    .local v1, displayName:Ljava/lang/String;
    if-eqz v1, :cond_4

    .line 478
    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 479
    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 470
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 482
    .end local v0           #address:Lcom/android/email/mail/Address;
    .end local v1           #displayName:Ljava/lang/String;
    :cond_5
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0
.end method

.method public static packedToHeader(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "packedList"

    .prologue
    .line 397
    invoke-static {p0}, Lcom/android/email/mail/Address;->unpack(Ljava/lang/String;)[Lcom/android/email/mail/Address;

    move-result-object v0

    invoke-static {v0}, Lcom/android/email/mail/Address;->toHeader([Lcom/android/email/mail/Address;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static parse(Ljava/lang/String;)[Lcom/android/email/mail/Address;
    .locals 8
    .parameter "addressList"

    .prologue
    .line 141
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_1

    .line 142
    :cond_0
    sget-object v7, Lcom/android/email/mail/Address;->EMPTY_ADDRESS_ARRAY:[Lcom/android/email/mail/Address;

    .line 172
    .end local p0
    :goto_0
    return-object v7

    .line 145
    .restart local p0
    :cond_1
    const/4 v6, 0x0

    .line 147
    .local v6, tokens:[Landroid/text/util/Rfc822Token;
    :try_start_0
    invoke-static {p0}, Landroid/text/util/Rfc822Tokenizer;->tokenize(Ljava/lang/CharSequence;)[Landroid/text/util/Rfc822Token;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 151
    :goto_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 152
    .local v1, addresses:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/email/mail/Address;>;"
    const/4 v2, 0x0

    .local v2, i:I
    array-length v3, v6

    .local v3, length:I
    :goto_2
    if-ge v2, v3, :cond_4

    .line 153
    aget-object v5, v6, v2

    .line 154
    .local v5, token:Landroid/text/util/Rfc822Token;
    invoke-virtual {v5}, Landroid/text/util/Rfc822Token;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 155
    .local v0, address:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 156
    invoke-static {v0}, Lcom/android/email/mail/Address;->isValidAddress(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 157
    invoke-virtual {v5}, Landroid/text/util/Rfc822Token;->getName()Ljava/lang/String;

    move-result-object v4

    .line 158
    .local v4, name:Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 159
    const/4 v4, 0x0

    .line 165
    :cond_2
    invoke-static {v4}, Lorg/apache/james/mime4j/decoder/DecoderUtil;->decodeGeneric(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 168
    new-instance v7, Lcom/android/email/mail/Address;

    invoke-direct {v7, v0, v4}, Lcom/android/email/mail/Address;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 152
    .end local v4           #name:Ljava/lang/String;
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 172
    .end local v0           #address:Ljava/lang/String;
    .end local v5           #token:Landroid/text/util/Rfc822Token;
    :cond_4
    const/4 v7, 0x0

    new-array v7, v7, [Lcom/android/email/mail/Address;

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, [Lcom/android/email/mail/Address;

    move-object v7, p0

    goto :goto_0

    .line 148
    .end local v1           #addresses:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/email/mail/Address;>;"
    .end local v2           #i:I
    .end local v3           #length:I
    .restart local p0
    :catch_0
    move-exception v7

    goto :goto_1
.end method

.method public static parse2(Ljava/lang/String;)[Lcom/android/email/mail/Address;
    .locals 8
    .parameter "addressList"

    .prologue
    .line 179
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_1

    .line 180
    :cond_0
    sget-object v7, Lcom/android/email/mail/Address;->EMPTY_ADDRESS_ARRAY:[Lcom/android/email/mail/Address;

    .line 198
    .end local p0
    :goto_0
    return-object v7

    .line 182
    .restart local p0
    :cond_1
    invoke-static {p0}, Landroid/text/util/Rfc822Tokenizer;->tokenize(Ljava/lang/CharSequence;)[Landroid/text/util/Rfc822Token;

    move-result-object v6

    .line 183
    .local v6, tokens:[Landroid/text/util/Rfc822Token;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 184
    .local v1, addresses:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/email/mail/Address;>;"
    const/4 v2, 0x0

    .local v2, i:I
    array-length v3, v6

    .local v3, length:I
    :goto_1
    if-ge v2, v3, :cond_4

    .line 185
    aget-object v5, v6, v2

    .line 186
    .local v5, token:Landroid/text/util/Rfc822Token;
    invoke-virtual {v5}, Landroid/text/util/Rfc822Token;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 187
    .local v0, address:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 188
    invoke-static {v0}, Lcom/android/email/mail/Address;->isValidAddress(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 189
    invoke-virtual {v5}, Landroid/text/util/Rfc822Token;->getName()Ljava/lang/String;

    move-result-object v4

    .line 190
    .local v4, name:Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 191
    const/4 v4, 0x0

    .line 194
    :cond_2
    new-instance v7, Lcom/android/email/mail/Address;

    invoke-direct {v7, v0, v4}, Lcom/android/email/mail/Address;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 184
    .end local v4           #name:Ljava/lang/String;
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 198
    .end local v0           #address:Ljava/lang/String;
    .end local v5           #token:Landroid/text/util/Rfc822Token;
    :cond_4
    const/4 v7, 0x0

    new-array v7, v7, [Lcom/android/email/mail/Address;

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, [Lcom/android/email/mail/Address;

    move-object v7, p0

    goto :goto_0
.end method

.method public static parseAndPack(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "textList"

    .prologue
    .line 378
    invoke-static {p0}, Lcom/android/email/mail/Address;->parse(Ljava/lang/String;)[Lcom/android/email/mail/Address;

    move-result-object v0

    invoke-static {v0}, Lcom/android/email/mail/Address;->pack([Lcom/android/email/mail/Address;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toFriendly([Lcom/android/email/mail/Address;)Ljava/lang/String;
    .locals 5
    .parameter "addresses"

    .prologue
    const/4 v4, 0x0

    .line 337
    if-eqz p0, :cond_0

    array-length v2, p0

    if-nez v2, :cond_1

    .line 338
    :cond_0
    const/4 v2, 0x0

    .line 348
    :goto_0
    return-object v2

    .line 340
    :cond_1
    array-length v2, p0

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 341
    aget-object v2, p0, v4

    invoke-virtual {v2}, Lcom/android/email/mail/Address;->toFriendly()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 343
    :cond_2
    new-instance v1, Ljava/lang/StringBuffer;

    aget-object v2, p0, v4

    invoke-virtual {v2}, Lcom/android/email/mail/Address;->toFriendly()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 344
    .local v1, sb:Ljava/lang/StringBuffer;
    const/4 v0, 0x1

    .local v0, i:I
    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_3

    .line 345
    const/16 v2, 0x2c

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 346
    aget-object v2, p0, v0

    invoke-virtual {v2}, Lcom/android/email/mail/Address;->toFriendly()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 344
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 348
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static toFriendly1([Lcom/android/email/mail/Address;)I
    .locals 1
    .parameter "addresses"

    .prologue
    .line 365
    array-length v0, p0

    return v0
.end method

.method public static toFriendlyAddress([Lcom/android/email/mail/Address;)Ljava/lang/String;
    .locals 5
    .parameter "addresses"

    .prologue
    const/4 v4, 0x0

    .line 351
    if-eqz p0, :cond_0

    array-length v2, p0

    if-nez v2, :cond_1

    .line 352
    :cond_0
    const/4 v2, 0x0

    .line 362
    :goto_0
    return-object v2

    .line 354
    :cond_1
    array-length v2, p0

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 355
    aget-object v2, p0, v4

    invoke-virtual {v2}, Lcom/android/email/mail/Address;->toFriendlyAddress()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 357
    :cond_2
    new-instance v1, Ljava/lang/StringBuffer;

    aget-object v2, p0, v4

    invoke-virtual {v2}, Lcom/android/email/mail/Address;->toFriendlyAddress()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 358
    .local v1, sb:Ljava/lang/StringBuffer;
    const/4 v0, 0x1

    .local v0, i:I
    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_3

    .line 359
    const/16 v2, 0x2c

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 360
    aget-object v2, p0, v0

    invoke-virtual {v2}, Lcom/android/email/mail/Address;->toFriendlyAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 358
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 362
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static toHeader([Lcom/android/email/mail/Address;)Ljava/lang/String;
    .locals 5
    .parameter "addresses"

    .prologue
    const/4 v4, 0x0

    .line 296
    if-eqz p0, :cond_0

    array-length v2, p0

    if-nez v2, :cond_1

    .line 297
    :cond_0
    const/4 v2, 0x0

    .line 308
    :goto_0
    return-object v2

    .line 299
    :cond_1
    array-length v2, p0

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 300
    aget-object v2, p0, v4

    invoke-virtual {v2}, Lcom/android/email/mail/Address;->toHeader()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 302
    :cond_2
    new-instance v1, Ljava/lang/StringBuffer;

    aget-object v2, p0, v4

    invoke-virtual {v2}, Lcom/android/email/mail/Address;->toHeader()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 303
    .local v1, sb:Ljava/lang/StringBuffer;
    const/4 v0, 0x1

    .local v0, i:I
    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_3

    .line 305
    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 306
    aget-object v2, p0, v0

    invoke-virtual {v2}, Lcom/android/email/mail/Address;->toHeader()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 303
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 308
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static toString([Lcom/android/email/mail/Address;)Ljava/lang/String;
    .locals 5
    .parameter "addresses"

    .prologue
    const/4 v4, 0x0

    .line 260
    if-eqz p0, :cond_0

    array-length v2, p0

    if-nez v2, :cond_1

    .line 261
    :cond_0
    const/4 v2, 0x0

    .line 271
    :goto_0
    return-object v2

    .line 263
    :cond_1
    array-length v2, p0

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 264
    aget-object v2, p0, v4

    invoke-virtual {v2}, Lcom/android/email/mail/Address;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 266
    :cond_2
    new-instance v1, Ljava/lang/StringBuffer;

    aget-object v2, p0, v4

    invoke-virtual {v2}, Lcom/android/email/mail/Address;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 267
    .local v1, sb:Ljava/lang/StringBuffer;
    const/4 v0, 0x1

    .local v0, i:I
    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_3

    .line 268
    const/16 v2, 0x2c

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 269
    aget-object v2, p0, v0

    invoke-virtual {v2}, Lcom/android/email/mail/Address;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 267
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 271
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static unpack(Ljava/lang/String;)[Lcom/android/email/mail/Address;
    .locals 10
    .parameter "addressList"

    .prologue
    const/4 v9, 0x2

    const/4 v8, -0x1

    .line 406
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_1

    .line 407
    :cond_0
    sget-object v6, Lcom/android/email/mail/Address;->EMPTY_ADDRESS_ARRAY:[Lcom/android/email/mail/Address;

    .line 440
    .end local p0
    :goto_0
    return-object v6

    .line 409
    .restart local p0
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 410
    .local v2, addresses:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/email/mail/Address;>;"
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 411
    .local v3, length:I
    const/4 v5, 0x0

    .line 412
    .local v5, pairStartIndex:I
    const/4 v4, 0x0

    .line 419
    .local v4, pairEndIndex:I
    invoke-virtual {p0, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 421
    .local v1, addressEndIndex:I
    :goto_1
    if-ge v5, v3, :cond_5

    .line 422
    const/4 v6, 0x1

    invoke-virtual {p0, v6, v5}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    .line 423
    if-ne v4, v8, :cond_2

    .line 424
    move v4, v3

    .line 427
    :cond_2
    if-eq v1, v8, :cond_3

    if-gt v4, v1, :cond_4

    .line 430
    :cond_3
    new-instance v0, Lcom/android/email/mail/Address;

    invoke-virtual {p0, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-direct {v0, v6, v7}, Lcom/android/email/mail/Address;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    .local v0, address:Lcom/android/email/mail/Address;
    :goto_2
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 438
    add-int/lit8 v5, v4, 0x1

    .line 439
    goto :goto_1

    .line 432
    .end local v0           #address:Lcom/android/email/mail/Address;
    :cond_4
    new-instance v0, Lcom/android/email/mail/Address;

    invoke-virtual {p0, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    add-int/lit8 v7, v1, 0x1

    invoke-virtual {p0, v7, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v6, v7}, Lcom/android/email/mail/Address;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 435
    .restart local v0       #address:Lcom/android/email/mail/Address;
    add-int/lit8 v6, v4, 0x1

    invoke-virtual {p0, v9, v6}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    goto :goto_2

    .line 440
    .end local v0           #address:Lcom/android/email/mail/Address;
    :cond_5
    sget-object v6, Lcom/android/email/mail/Address;->EMPTY_ADDRESS_ARRAY:[Lcom/android/email/mail/Address;

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, [Lcom/android/email/mail/Address;

    move-object v6, p0

    goto :goto_0
.end method

.method public static unpackFirst(Ljava/lang/String;)Lcom/android/email/mail/Address;
    .locals 2
    .parameter "packedList"

    .prologue
    .line 387
    invoke-static {p0}, Lcom/android/email/mail/Address;->unpack(Ljava/lang/String;)[Lcom/android/email/mail/Address;

    move-result-object v0

    .line 388
    .local v0, array:[Lcom/android/email/mail/Address;
    array-length v1, v0

    if-lez v1, :cond_0

    const/4 v1, 0x0

    aget-object v1, v0, v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static unpackToString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "packedList"

    .prologue
    .line 371
    invoke-static {p0}, Lcom/android/email/mail/Address;->unpack(Ljava/lang/String;)[Lcom/android/email/mail/Address;

    move-result-object v0

    invoke-static {v0}, Lcom/android/email/mail/Address;->toString([Lcom/android/email/mail/Address;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .parameter "o"

    .prologue
    .line 221
    instance-of v0, p1, Lcom/android/email/mail/Address;

    if-eqz v0, :cond_0

    .line 230
    invoke-virtual {p0}, Lcom/android/email/mail/Address;->getAddress()Ljava/lang/String;

    move-result-object v0

    check-cast p1, Lcom/android/email/mail/Address;

    .end local p1
    invoke-virtual {p1}, Lcom/android/email/mail/Address;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 232
    :goto_0
    return v0

    .restart local p1
    :cond_0
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public getAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/email/mail/Address;->mAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getPersonal()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/email/mail/Address;->mPersonal:Ljava/lang/String;

    return-object v0
.end method

.method public pack()Ljava/lang/String;
    .locals 4

    .prologue
    .line 489
    invoke-virtual {p0}, Lcom/android/email/mail/Address;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 490
    .local v0, address:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/email/mail/Address;->getPersonal()Ljava/lang/String;

    move-result-object v1

    .line 491
    .local v1, personal:Ljava/lang/String;
    if-nez v1, :cond_0

    move-object v2, v0

    .line 494
    :goto_0
    return-object v2

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public setAddress(Ljava/lang/String;)V
    .locals 2
    .parameter "address"

    .prologue
    .line 83
    sget-object v0, Lcom/android/email/mail/Address;->REMOVE_OPTIONAL_BRACKET:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    const-string v1, "$1"

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/mail/Address;->mAddress:Ljava/lang/String;

    .line 84
    return-void
.end method

.method public setPersonal(Ljava/lang/String;)V
    .locals 3
    .parameter "personal"

    .prologue
    const-string v2, "$1"

    .line 102
    if-eqz p1, :cond_0

    .line 103
    sget-object v0, Lcom/android/email/mail/Address;->REMOVE_OPTIONAL_DQUOTE:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    const-string v1, "$1"

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 104
    sget-object v0, Lcom/android/email/mail/Address;->UNQUOTE:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    const-string v1, "$1"

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 105
    invoke-static {p1}, Lorg/apache/james/mime4j/decoder/DecoderUtil;->decodeEncodedWords(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 106
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 107
    const/4 p1, 0x0

    .line 110
    :cond_0
    iput-object p1, p0, Lcom/android/email/mail/Address;->mPersonal:Ljava/lang/String;

    .line 111
    return-void
.end method

.method public toFriendly()Ljava/lang/String;
    .locals 1

    .prologue
    .line 318
    iget-object v0, p0, Lcom/android/email/mail/Address;->mPersonal:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/email/mail/Address;->mPersonal:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 319
    iget-object v0, p0, Lcom/android/email/mail/Address;->mPersonal:Ljava/lang/String;

    .line 321
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/email/mail/Address;->mAddress:Ljava/lang/String;

    goto :goto_0
.end method

.method public toFriendlyAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 326
    iget-object v0, p0, Lcom/android/email/mail/Address;->mAddress:Ljava/lang/String;

    return-object v0
.end method

.method public toHeader()Ljava/lang/String;
    .locals 2

    .prologue
    .line 281
    iget-object v0, p0, Lcom/android/email/mail/Address;->mPersonal:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 282
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/email/mail/Address;->mPersonal:Ljava/lang/String;

    invoke-static {v1}, Lorg/apache/james/mime4j/codec/EncoderUtil;->encodeAddressDisplayName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " <"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/mail/Address;->mAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 284
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/email/mail/Address;->mAddress:Ljava/lang/String;

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    const-string v3, ">"

    const-string v2, " <"

    .line 242
    iget-object v0, p0, Lcom/android/email/mail/Address;->mPersonal:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 243
    iget-object v0, p0, Lcom/android/email/mail/Address;->mPersonal:Ljava/lang/String;

    const-string v1, ".*[\\(\\)<>@,;:\\\\\".\\[\\]].*"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 244
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/email/mail/Address;->mPersonal:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/email/Utility;->quoteString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " <"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/mail/Address;->mAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 249
    :goto_0
    return-object v0

    .line 246
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/email/mail/Address;->mPersonal:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " <"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/mail/Address;->mAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 249
    :cond_1
    iget-object v0, p0, Lcom/android/email/mail/Address;->mAddress:Ljava/lang/String;

    goto :goto_0
.end method
