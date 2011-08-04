.class public Lcom/android/exchange/provider/ExchangeProvider;
.super Landroid/content/ContentProvider;
.source "ExchangeProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/exchange/provider/ExchangeProvider$MatrixCursorExtras;
    }
.end annotation


# static fields
.field public static final EMAIL_SEARCH_URI:Landroid/net/Uri;

.field public static final GAL_PROJECTION:[Ljava/lang/String;

.field public static final GAL_URI:Landroid/net/Uri;

.field public static final RESOLVERECIPIENTS_PROJECTION:[Ljava/lang/String;

.field public static final RESOLVERECIPIENTS_URI:Landroid/net/Uri;

.field public static final VALIDATE_CERT_URI:Landroid/net/Uri;

.field private static final sURIMatcher:Landroid/content/UriMatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v3, "com.android.exchange.provider"

    .line 78
    const-string v0, "content://com.android.exchange.provider/gal/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/exchange/provider/ExchangeProvider;->GAL_URI:Landroid/net/Uri;

    .line 80
    const-string v0, "content://com.android.exchange.provider/resolverecipients/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/exchange/provider/ExchangeProvider;->RESOLVERECIPIENTS_URI:Landroid/net/Uri;

    .line 83
    const-string v0, "content://com.android.exchange.provider/emailsearch/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/exchange/provider/ExchangeProvider;->EMAIL_SEARCH_URI:Landroid/net/Uri;

    .line 94
    const-string v0, "content://com.android.exchange.provider/validatecert/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/exchange/provider/ExchangeProvider;->VALIDATE_CERT_URI:Landroid/net/Uri;

    .line 109
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v4

    const-string v1, "displayName"

    aput-object v1, v0, v5

    const-string v1, "phone"

    aput-object v1, v0, v6

    const-string v1, "office"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "title"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "company"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "alias"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "emailAddress"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "firstName"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "lastName"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "homePhone"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "mobilePhone"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/exchange/provider/ExchangeProvider;->GAL_PROJECTION:[Ljava/lang/String;

    .line 136
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v4

    const-string v1, "accoundId"

    aput-object v1, v0, v5

    const-string v1, "to"

    aput-object v1, v0, v6

    const-string v1, "responseStatus"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "displayName"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "email"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "certificateStatus"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "certificate"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "miniCertificate"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "availabilityStatus"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "mergedFreeBusy"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/exchange/provider/ExchangeProvider;->RESOLVERECIPIENTS_PROJECTION:[Ljava/lang/String;

    .line 155
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/android/exchange/provider/ExchangeProvider;->sURIMatcher:Landroid/content/UriMatcher;

    .line 159
    sget-object v0, Lcom/android/exchange/provider/ExchangeProvider;->sURIMatcher:Landroid/content/UriMatcher;

    .line 164
    const-string v1, "com.android.exchange.provider"

    const-string v1, "gal/*/*/*"

    invoke-virtual {v0, v3, v1, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 168
    const-string v1, "com.android.exchange.provider"

    const-string v1, "resolverecipients"

    const/16 v2, 0x64

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 174
    const-string v1, "com.android.exchange.provider"

    const-string v1, "validatecert"

    const/16 v2, 0xc8

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 178
    const-string v1, "com.android.exchange.provider"

    const-string v1, "resolverecipients"

    const/16 v2, 0x64

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 183
    const-string v1, "com.android.exchange.provider"

    const-string v1, "emailsearch/*/*/*/*/*/*/*/*"

    invoke-virtual {v0, v3, v1, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 185
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 76
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 816
    return-void
.end method

.method private static addGalDataRow(Landroid/database/MatrixCursor;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "mc"
    .parameter "id"
    .parameter "name"
    .parameter "phone"
    .parameter "office"
    .parameter "title"
    .parameter "company"
    .parameter "alias"
    .parameter "emailAddress"
    .parameter "firstName"
    .parameter "lastName"
    .parameter "homePhone"
    .parameter "mobilePhone"

    .prologue
    .line 195
    invoke-virtual {p0}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v0

    invoke-virtual {v0, p9}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v0

    invoke-virtual {v0, p6}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v0

    invoke-virtual {v0, p7}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v0

    invoke-virtual {v0, p8}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v0

    invoke-virtual {v0, p10}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v0

    invoke-virtual {v0, p11}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v0

    invoke-virtual {v0, p12}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v0

    invoke-virtual {v0, p13}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 196
    return-void
.end method

.method private static addR2DataRow(Landroid/database/MatrixCursor;JLjava/lang/String;Ljava/lang/String;BLjava/lang/String;Ljava/lang/String;BLjava/lang/String;Ljava/lang/String;ILjava/lang/String;ZZZZZZZZZZZ)V
    .locals 0
    .parameter "mc"
    .parameter "id"
    .parameter "accountId"
    .parameter "to"
    .parameter "responseStatus"
    .parameter "displayName"
    .parameter "email"
    .parameter "certificateStatus"
    .parameter "certificate"
    .parameter "miniCertificate"
    .parameter "availabilityStatus"
    .parameter "mergedFreeBusy"
    .parameter "idFlag"
    .parameter "accountIdFlag"
    .parameter "toFlag"
    .parameter "responseStatusFlag"
    .parameter "displayNameFlag"
    .parameter "emailFlag"
    .parameter "certificateStatusFlag"
    .parameter "certificateFlag"
    .parameter "miniCertificateFlag"
    .parameter "availabilityStatusFlag"
    .parameter "mergedFreeBusyFlag"

    .prologue
    .line 228
    invoke-virtual {p0}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;

    move-result-object p0

    .line 229
    .local p0, rb:Landroid/database/MatrixCursor$RowBuilder;
    if-eqz p13, :cond_0

    .line 230
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    .end local p1
    invoke-virtual {p0, p1}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 231
    :cond_0
    if-eqz p14, :cond_1

    .line 232
    invoke-virtual {p0, p3}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 233
    :cond_1
    if-eqz p15, :cond_2

    .line 234
    invoke-virtual {p0, p4}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 235
    :cond_2
    if-eqz p16, :cond_3

    .line 236
    invoke-static {p5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 237
    :cond_3
    if-eqz p17, :cond_4

    .line 238
    invoke-virtual {p0, p6}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 239
    :cond_4
    if-eqz p18, :cond_5

    .line 240
    invoke-virtual {p0, p7}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 241
    :cond_5
    if-eqz p19, :cond_6

    .line 242
    invoke-static {p8}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 249
    :cond_6
    if-eqz p20, :cond_7

    .line 250
    invoke-virtual {p0, p9}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 251
    :cond_7
    if-eqz p21, :cond_8

    .line 252
    invoke-virtual {p0, p10}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 253
    :cond_8
    if-eqz p22, :cond_9

    .line 254
    invoke-static {p11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 255
    :cond_9
    if-eqz p23, :cond_a

    .line 256
    invoke-virtual {p0, p12}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 257
    :cond_a
    return-void
.end method

.method private buildSearchRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/exchange/SearchRequest;
    .locals 15
    .parameter "accountIdString"
    .parameter "searchTextString"
    .parameter "greaterThanDateString"
    .parameter "lessThanDateString"
    .parameter "mailboxIdString"
    .parameter "optionsDeepTraversalStr"
    .parameter "conversationIdStr"

    .prologue
    .line 840
    new-instance v5, Lcom/android/exchange/SearchRequest$Builder;

    invoke-direct {v5}, Lcom/android/exchange/SearchRequest$Builder;-><init>()V

    .line 841
    .local v5, builder:Lcom/android/exchange/SearchRequest$Builder;
    const-string v11, "ExchangeProvider"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, " MailboxString ="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object v0, v12

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 844
    const/4 v2, 0x0

    .line 845
    .local v2, a:Lcom/android/email/provider/EmailContent$Account;
    const-wide/16 v3, -0x1

    .line 846
    .local v3, accId:J
    const/4 v10, 0x0

    .line 847
    .local v10, truncation_size:I
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 848
    invoke-virtual {p0}, Lcom/android/exchange/provider/ExchangeProvider;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11, v3, v4}, Lcom/android/email/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Account;

    move-result-object v2

    .line 850
    if-eqz v2, :cond_5

    .line 852
    invoke-virtual {v2}, Lcom/android/email/provider/EmailContent$Account;->getEmailSize()B

    move-result v11

    invoke-static {v11}, Lcom/android/exchange/Eas$EmailDataSize;->parse(B)Lcom/android/exchange/Eas$EmailDataSize;

    move-result-object v11

    sget-object v12, Lcom/android/exchange/Eas$EmailDataSize;->ALL:Lcom/android/exchange/Eas$EmailDataSize;

    if-eq v11, v12, :cond_4

    .line 854
    invoke-virtual {v2}, Lcom/android/email/provider/EmailContent$Account;->getEmailSize()B

    move-result v11

    invoke-static {v11}, Lcom/android/exchange/Eas$EmailDataSize;->parse(B)Lcom/android/exchange/Eas$EmailDataSize;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/exchange/Eas$EmailDataSize;->toEas12Value()I

    move-result v10

    .line 856
    const-string v11, "ExchangeProvider"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Jane: Email Size = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v2}, Lcom/android/email/provider/EmailContent$Account;->getEmailSize()B

    move-result v13

    invoke-static {v13}, Lcom/android/exchange/Eas$EmailDataSize;->parse(B)Lcom/android/exchange/Eas$EmailDataSize;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/exchange/Eas$EmailDataSize;->toEas12Text()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 867
    :goto_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v11

    invoke-virtual {v5, v11, v12}, Lcom/android/exchange/SearchRequest$Builder;->accountId(J)Lcom/android/exchange/SearchRequest$Builder;

    move-result-object v11

    sget-object v12, Lcom/android/exchange/SearchRequest$StoreName;->MAILBOX:Lcom/android/exchange/SearchRequest$StoreName;

    invoke-virtual {v11, v12}, Lcom/android/exchange/SearchRequest$Builder;->storeName(Lcom/android/exchange/SearchRequest$StoreName;)Lcom/android/exchange/SearchRequest$Builder;

    move-result-object v11

    sget-object v12, Lcom/android/exchange/SearchRequest$QueryClass;->EMAIL:Lcom/android/exchange/SearchRequest$QueryClass;

    invoke-virtual {v11, v12}, Lcom/android/exchange/SearchRequest$Builder;->queryClass(Lcom/android/exchange/SearchRequest$QueryClass;)Lcom/android/exchange/SearchRequest$Builder;

    move-result-object v11

    move-object v0, v11

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/exchange/SearchRequest$Builder;->queryFreeText(Ljava/lang/String;)Lcom/android/exchange/SearchRequest$Builder;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/exchange/SearchRequest$Builder;->optionsRebuildResults()Lcom/android/exchange/SearchRequest$Builder;

    move-result-object v11

    const/4 v12, 0x0

    const/16 v13, 0x3e7

    invoke-virtual {v11, v12, v13}, Lcom/android/exchange/SearchRequest$Builder;->optionsRange(II)Lcom/android/exchange/SearchRequest$Builder;

    move-result-object v11

    sget-object v12, Lcom/android/exchange/SearchRequest$BodyPreferenceType;->PLAIN_TEXT:Lcom/android/exchange/SearchRequest$BodyPreferenceType;

    invoke-virtual {v11, v12}, Lcom/android/exchange/SearchRequest$Builder;->optionsBodyPreferenceType(Lcom/android/exchange/SearchRequest$BodyPreferenceType;)Lcom/android/exchange/SearchRequest$Builder;

    move-result-object v11

    invoke-virtual {v11, v10}, Lcom/android/exchange/SearchRequest$Builder;->optionsBodyPreferenceTruncationSize(I)Lcom/android/exchange/SearchRequest$Builder;

    move-result-object v11

    sget-object v12, Lcom/android/exchange/SearchRequest$OptionsMIMESupport;->SEND_DATA_FOR_ALL_MSGS:Lcom/android/exchange/SearchRequest$OptionsMIMESupport;

    invoke-virtual {v11, v12}, Lcom/android/exchange/SearchRequest$Builder;->optionsMIMESupport(Lcom/android/exchange/SearchRequest$OptionsMIMESupport;)Lcom/android/exchange/SearchRequest$Builder;

    move-result-object v11

    move-object v0, v11

    move-object/from16 v1, p7

    invoke-virtual {v0, v1}, Lcom/android/exchange/SearchRequest$Builder;->queryConvId(Ljava/lang/String;)Lcom/android/exchange/SearchRequest$Builder;

    .line 883
    invoke-virtual/range {p6 .. p6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    const-string v12, "True"

    invoke-virtual {v11, v12}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v11

    if-nez v11, :cond_0

    .line 885
    invoke-virtual {v5}, Lcom/android/exchange/SearchRequest$Builder;->optionsDeepTraversal()Lcom/android/exchange/SearchRequest$Builder;

    .line 887
    :cond_0
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    const-string v12, "NoneDate"

    invoke-virtual {v11, v12}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v11

    if-eqz v11, :cond_1

    .line 888
    new-instance v8, Ljava/text/SimpleDateFormat;

    const-string v11, "dd/MM/yyyy hh:mm:ss a"

    invoke-direct {v8, v11}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    .line 889
    .local v8, formatter:Ljava/text/SimpleDateFormat;
    const/4 v6, 0x0

    .line 892
    .local v6, date:Ljava/util/Date;
    :try_start_1
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v6

    .line 893
    const-string v11, "ExchangeProvider"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "reaterThanDate = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object v0, v12

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 898
    :try_start_2
    invoke-virtual {v5, v6}, Lcom/android/exchange/SearchRequest$Builder;->queryGreaterThan(Ljava/util/Date;)Lcom/android/exchange/SearchRequest$Builder;

    .line 900
    .end local v6           #date:Ljava/util/Date;
    .end local v8           #formatter:Ljava/text/SimpleDateFormat;
    :cond_1
    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    const-string v12, "NoneDate"

    invoke-virtual {v11, v12}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v11

    if-eqz v11, :cond_2

    .line 901
    new-instance v8, Ljava/text/SimpleDateFormat;

    const-string v11, "dd/MM/yyyy hh:mm:ss a"

    invoke-direct {v8, v11}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1

    .line 902
    .restart local v8       #formatter:Ljava/text/SimpleDateFormat;
    const/4 v6, 0x0

    .line 905
    .restart local v6       #date:Ljava/util/Date;
    :try_start_3
    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v6

    .line 906
    sget-object v11, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, " LESS Hours "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v6}, Ljava/util/Date;->getHours()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 907
    sget-object v11, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, " LESS mIN "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v6}, Ljava/util/Date;->getMinutes()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 908
    const-string v11, "ExchangeProvider"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "lessThanDate = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object v0, v12

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_1

    .line 913
    :try_start_4
    invoke-virtual {v5, v6}, Lcom/android/exchange/SearchRequest$Builder;->queryLessThan(Ljava/util/Date;)Lcom/android/exchange/SearchRequest$Builder;

    .line 915
    .end local v6           #date:Ljava/util/Date;
    .end local v8           #formatter:Ljava/text/SimpleDateFormat;
    :cond_2
    invoke-virtual/range {p5 .. p5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    const-string v12, "NoneId"

    invoke-virtual {v11, v12}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v11

    if-eqz v11, :cond_3

    .line 916
    const-string v11, "ExchangeProvider"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, " MailboxString ="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object v0, v12

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 917
    const/4 v11, 0x1

    new-array v11, v11, [J

    const/4 v12, 0x0

    invoke-virtual/range {p5 .. p5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v13

    aput-wide v13, v11, v12

    invoke-virtual {v5, v11}, Lcom/android/exchange/SearchRequest$Builder;->queryCollectionIds([J)Lcom/android/exchange/SearchRequest$Builder;
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_1

    .line 923
    :cond_3
    invoke-virtual {v5}, Lcom/android/exchange/SearchRequest$Builder;->build()Lcom/android/exchange/SearchRequest;

    move-result-object v9

    .line 924
    .local v9, searchRequest:Lcom/android/exchange/SearchRequest;
    return-object v9

    .line 860
    .end local v9           #searchRequest:Lcom/android/exchange/SearchRequest;
    :cond_4
    const/4 v10, -0x1

    goto/16 :goto_0

    .line 863
    :cond_5
    const/16 v10, 0x400

    goto/16 :goto_0

    .line 894
    .restart local v6       #date:Ljava/util/Date;
    .restart local v8       #formatter:Ljava/text/SimpleDateFormat;
    :catch_0
    move-exception v11

    move-object v7, v11

    .line 895
    .local v7, e:Ljava/lang/Exception;
    :try_start_5
    new-instance v11, Ljava/lang/IllegalArgumentException;

    const-string v12, "Illegal value in Uri Date"

    invoke-direct {v11, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v11
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_1

    .line 919
    .end local v6           #date:Ljava/util/Date;
    .end local v7           #e:Ljava/lang/Exception;
    .end local v8           #formatter:Ljava/text/SimpleDateFormat;
    :catch_1
    move-exception v11

    move-object v7, v11

    .line 920
    .local v7, e:Ljava/lang/NumberFormatException;
    new-instance v11, Ljava/lang/IllegalArgumentException;

    const-string v12, "Illegal value in URI"

    invoke-direct {v11, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 909
    .end local v7           #e:Ljava/lang/NumberFormatException;
    .restart local v6       #date:Ljava/util/Date;
    .restart local v8       #formatter:Ljava/text/SimpleDateFormat;
    :catch_2
    move-exception v11

    move-object v7, v11

    .line 910
    .local v7, e:Ljava/lang/Exception;
    :try_start_6
    new-instance v11, Ljava/lang/IllegalArgumentException;

    const-string v12, "Illegal value in Uri Date"

    invoke-direct {v11, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v11
    :try_end_6
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_6} :catch_1
.end method

.method private normalizeValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "inVal"

    .prologue
    const/16 v4, 0x27

    const/4 v3, 0x1

    .line 802
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 803
    .local v0, len:I
    move-object v1, p1

    .line 805
    .local v1, retVal:Ljava/lang/String;
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v4, :cond_0

    sub-int v2, v0, v3

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v4, :cond_0

    .line 806
    sub-int v2, v0, v3

    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 809
    :cond_0
    return-object v1
.end method

.method private validateCert(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 19
    .parameter "selection"
    .parameter "selectionArgs"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/email/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 932
    const/4 v10, 0x0

    .line 933
    .local v10, cursor:Landroid/database/MatrixCursor;
    const-wide/16 v3, 0x0

    .line 934
    .local v3, accountId:J
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 935
    .local v8, certChain:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 936
    .local v9, certs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v7, 0x0

    .line 939
    .local v7, isCheckCLR:Z
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    move-object/from16 v0, p2

    array-length v0, v0

    move v2, v0

    if-nez v2, :cond_1

    :cond_0
    move-object v11, v10

    .line 1001
    .end local v10           #cursor:Landroid/database/MatrixCursor;
    .local v11, cursor:Landroid/database/MatrixCursor;
    :goto_0
    return-object v11

    .line 942
    .end local v11           #cursor:Landroid/database/MatrixCursor;
    .restart local v10       #cursor:Landroid/database/MatrixCursor;
    :cond_1
    const-string v2, "certificates"

    move-object/from16 v0, p1

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 943
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Certificate is not specified."

    .end local v3           #accountId:J
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 945
    .restart local v3       #accountId:J
    :cond_2
    const-string v2, "accountId"

    move-object/from16 v0, p1

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 946
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Account ID is not specified."

    .end local v3           #accountId:J
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 949
    .restart local v3       #accountId:J
    :cond_3
    const-string v2, "accountId"

    move-object/from16 v0, p1

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    const/4 v5, 0x2

    if-le v2, v5, :cond_4

    .line 950
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Account ID is not defined."

    .end local v3           #accountId:J
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 953
    .restart local v3       #accountId:J
    :cond_4
    const-string v2, "checkCRL"

    move-object/from16 v0, p1

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    const/4 v5, 0x2

    if-le v2, v5, :cond_5

    .line 954
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "CheckCLR is not defined."

    .end local v3           #accountId:J
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 957
    .restart local v3       #accountId:J
    :cond_5
    const-string v2, "OR"

    move-object/from16 v0, p1

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v5, -0x1

    if-eq v2, v5, :cond_6

    .line 958
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Selection has OR statement."

    .end local v3           #accountId:J
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 961
    .restart local v3       #accountId:J
    :cond_6
    const-string v2, "="

    move-object/from16 v0, p1

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    .line 963
    .local v14, params:[Ljava/lang/String;
    if-eqz v14, :cond_d

    array-length v2, v14

    const/4 v5, 0x1

    if-le v2, v5, :cond_d

    move-object/from16 v0, p2

    array-length v0, v0

    move v2, v0

    array-length v5, v14

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    if-ne v2, v5, :cond_d

    .line 964
    const/4 v12, 0x0

    .local v12, i:I
    :goto_1
    move-object/from16 v0, p2

    array-length v0, v0

    move v2, v0

    if-ge v12, v2, :cond_e

    .line 965
    aget-object v2, v14, v12

    const-string v5, "certificates"

    invoke-virtual {v2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 966
    aget-object v2, p2, v12

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 964
    :goto_2
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 967
    :cond_7
    aget-object v2, v14, v12

    const-string v5, "certificateChain"

    invoke-virtual {v2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 968
    aget-object v2, p2, v12

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 969
    :cond_8
    aget-object v2, v14, v12

    const-string v5, "checkCRL"

    invoke-virtual {v2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 970
    const-string v2, "true"

    aget-object v5, p2, v12

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    const-string v2, "1"

    aget-object v5, p2, v12

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    :cond_9
    const/4 v2, 0x1

    move v7, v2

    :goto_3
    goto :goto_2

    :cond_a
    const/4 v2, 0x0

    move v7, v2

    goto :goto_3

    .line 972
    :cond_b
    aget-object v2, v14, v12

    const-string v3, "accountId"

    .end local v3           #accountId:J
    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 973
    aget-object v2, p2, v12

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    .restart local v3       #accountId:J
    goto :goto_2

    .line 975
    .end local v3           #accountId:J
    :cond_c
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Can\'t parse statement."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 979
    .end local v12           #i:I
    .restart local v3       #accountId:J
    :cond_d
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Wrong selection in query."

    .end local v3           #accountId:J
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 982
    .restart local v3       #accountId:J
    .restart local v12       #i:I
    :cond_e
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v6, v2, [Ljava/lang/String;

    .line 983
    .local v6, certChainArray:[Ljava/lang/String;
    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 984
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v5, v2, [Ljava/lang/String;

    .line 985
    .local v5, certArray:[Ljava/lang/String;
    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 987
    const-wide/16 v17, 0x0

    cmp-long v2, v3, v17

    if-gtz v2, :cond_f

    array-length v2, v5

    if-nez v2, :cond_f

    .line 988
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Account ID or certificate is not specified."

    .end local v3           #accountId:J
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 990
    .restart local v3       #accountId:J
    :cond_f
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/provider/ExchangeProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static/range {v2 .. v7}, Lcom/android/exchange/EasSyncService;->doValidateCert(Landroid/content/Context;J[Ljava/lang/String;[Ljava/lang/String;Z)Ljava/util/ArrayList;

    move-result-object v15

    .line 996
    .local v15, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-eqz v15, :cond_10

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_10

    .line 997
    new-instance v10, Landroid/database/MatrixCursor;

    .end local v10           #cursor:Landroid/database/MatrixCursor;
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "status"

    .end local v5           #certArray:[Ljava/lang/String;
    .end local v6           #certChainArray:[Ljava/lang/String;
    aput-object v6, v2, v5

    invoke-direct {v10, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 998
    .restart local v10       #cursor:Landroid/database/MatrixCursor;
    invoke-virtual {v15}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, i$:Ljava/util/Iterator;
    :goto_4
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_10

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Integer;

    .line 999
    .local v16, status:Ljava/lang/Integer;
    invoke-virtual {v10}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v2

    move-object v0, v2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    goto :goto_4

    .end local v13           #i$:Ljava/util/Iterator;
    .end local v16           #status:Ljava/lang/Integer;
    :cond_10
    move-object v11, v10

    .line 1001
    .end local v10           #cursor:Landroid/database/MatrixCursor;
    .restart local v11       #cursor:Landroid/database/MatrixCursor;
    goto/16 :goto_0
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .parameter "uri"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 774
    const/4 v0, -0x1

    return v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .parameter "uri"

    .prologue
    .line 780
    sget-object v0, Lcom/android/exchange/provider/ExchangeProvider;->RESOLVERECIPIENTS_URI:Landroid/net/Uri;

    if-ne p1, v0, :cond_0

    .line 781
    const-string v0, "vnd.android.cursor.dir/resolverecipients-entry"

    .line 783
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "vnd.android.cursor.dir/gal-entry"

    goto :goto_0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 1
    .parameter "uri"
    .parameter "values"

    .prologue
    .line 788
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()Z
    .locals 1

    .prologue
    .line 793
    const/4 v0, 0x0

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 118
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    .line 284
    sget-object v3, Lcom/android/exchange/provider/ExchangeProvider;->sURIMatcher:Landroid/content/UriMatcher;

    move-object v0, v3

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v102

    .line 285
    .local v102, match:I
    sparse-switch v102, :sswitch_data_0

    .line 768
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown URI "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 289
    :sswitch_0
    const-string v3, "ExchangeProvider"

    const-string v4, "enter email search."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    const-wide/16 v12, -0x1

    .line 291
    .local v12, accId:J
    const-wide/16 v14, -0x1

    .line 292
    .local v14, mailboxId:J
    const-wide/16 v16, -0x1

    .line 293
    .local v16, foldId:J
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 294
    .local v4, accountIdStr:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    const/4 v5, 0x2

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 295
    .local v5, searchTextString:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    const/4 v6, 0x3

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 296
    .local v6, greaterThanDateString:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    const/4 v7, 0x4

    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 297
    .local v7, lessThanDateString:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    const/4 v8, 0x5

    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 298
    .local v8, mailboxIdString:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    const/4 v9, 0x6

    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v92

    check-cast v92, Ljava/lang/String;

    .line 299
    .local v92, foldIdString:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    const/4 v9, 0x7

    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 301
    .local v9, optionsDeepTraversalStr:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    const/16 v10, 0x8

    invoke-interface {v3, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 304
    .local v10, conversationIdStr:Ljava/lang/String;
    const-string v3, "null"

    invoke-virtual {v10, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_0

    .line 305
    const/4 v10, 0x0

    .line 309
    :cond_0
    :try_start_0
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v12

    .line 314
    :try_start_1
    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-wide v14

    .line 320
    :try_start_2
    invoke-static/range {v92 .. v92}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-wide v16

    .line 325
    const-string v3, "ExchangeProvider"

    const-string v11, "before buildSearchRequest"

    invoke-static {v3, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v3, p0

    .line 328
    invoke-direct/range {v3 .. v10}, Lcom/android/exchange/provider/ExchangeProvider;->buildSearchRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/exchange/SearchRequest;

    move-result-object v18

    .line 329
    .local v18, request:Lcom/android/exchange/SearchRequest;
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/provider/ExchangeProvider;->getContext()Landroid/content/Context;

    move-result-object v11

    .line 330
    .local v11, context:Landroid/content/Context;
    const-string v3, "ExchangeProvider"

    const-string v4, "after buildSearchRequest"

    .end local v4           #accountIdStr:Ljava/lang/String;
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    invoke-static/range {v11 .. v18}, Lcom/android/exchange/EasSyncService;->searchEmail(Landroid/content/Context;JJJLcom/android/exchange/SearchRequest;)Lcom/android/exchange/provider/EmailResult;

    move-result-object v90

    .line 332
    .local v90, emailResult:Lcom/android/exchange/provider/EmailResult;
    const-string v3, "ExchangeProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "after searchEmail , mailbox id = "

    .end local v5           #searchTextString:Ljava/lang/String;
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    new-instance v97, Landroid/content/Intent;

    const-string v3, "android.intent.action.EMAILSEARCH_COMPLETED"

    move-object/from16 v0, v97

    move-object v1, v3

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 336
    .local v97, intent:Landroid/content/Intent;
    if-eqz v90, :cond_1

    .line 337
    const-string v3, "SearchResult"

    move-object/from16 v0, v90

    iget v0, v0, Lcom/android/exchange/provider/EmailResult;->result:I

    move v4, v0

    move-object/from16 v0, v97

    move-object v1, v3

    move v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 338
    const-string v3, "Total"

    move-object/from16 v0, v90

    iget v0, v0, Lcom/android/exchange/provider/EmailResult;->total:I

    move v4, v0

    move-object/from16 v0, v97

    move-object v1, v3

    move v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 339
    const-string v3, "StartRange"

    move-object/from16 v0, v90

    iget v0, v0, Lcom/android/exchange/provider/EmailResult;->startRange:I

    move v4, v0

    move-object/from16 v0, v97

    move-object v1, v3

    move v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 340
    const-string v3, "EndRange"

    move-object/from16 v0, v90

    iget v0, v0, Lcom/android/exchange/provider/EmailResult;->endRange:I

    move v4, v0

    move-object/from16 v0, v97

    move-object v1, v3

    move v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 344
    :cond_1
    :try_start_3
    move-object v0, v11

    move-object/from16 v1, v97

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 348
    :goto_0
    const/4 v3, 0x0

    .line 764
    .end local v6           #greaterThanDateString:Ljava/lang/String;
    .end local v7           #lessThanDateString:Ljava/lang/String;
    .end local v8           #mailboxIdString:Ljava/lang/String;
    .end local v9           #optionsDeepTraversalStr:Ljava/lang/String;
    .end local v10           #conversationIdStr:Ljava/lang/String;
    .end local v11           #context:Landroid/content/Context;
    .end local v12           #accId:J
    .end local v14           #mailboxId:J
    .end local v16           #foldId:J
    .end local v18           #request:Lcom/android/exchange/SearchRequest;
    .end local v90           #emailResult:Lcom/android/exchange/provider/EmailResult;
    .end local v92           #foldIdString:Ljava/lang/String;
    .end local v97           #intent:Landroid/content/Intent;
    .end local p1
    :goto_1
    return-object v3

    .line 310
    .restart local v4       #accountIdStr:Ljava/lang/String;
    .restart local v5       #searchTextString:Ljava/lang/String;
    .restart local v6       #greaterThanDateString:Ljava/lang/String;
    .restart local v7       #lessThanDateString:Ljava/lang/String;
    .restart local v8       #mailboxIdString:Ljava/lang/String;
    .restart local v9       #optionsDeepTraversalStr:Ljava/lang/String;
    .restart local v10       #conversationIdStr:Ljava/lang/String;
    .restart local v12       #accId:J
    .restart local v14       #mailboxId:J
    .restart local v16       #foldId:J
    .restart local v92       #foldIdString:Ljava/lang/String;
    .restart local p1
    :catch_0
    move-exception v88

    .line 311
    .local v88, e:Ljava/lang/NumberFormatException;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Illegal value in URI"

    .end local v4           #accountIdStr:Ljava/lang/String;
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 315
    .end local v88           #e:Ljava/lang/NumberFormatException;
    .restart local v4       #accountIdStr:Ljava/lang/String;
    :catch_1
    move-exception v88

    .line 316
    .restart local v88       #e:Ljava/lang/NumberFormatException;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Illegal value in URI"

    .end local v4           #accountIdStr:Ljava/lang/String;
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 321
    .end local v88           #e:Ljava/lang/NumberFormatException;
    .restart local v4       #accountIdStr:Ljava/lang/String;
    :catch_2
    move-exception v88

    .line 322
    .restart local v88       #e:Ljava/lang/NumberFormatException;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Illegal value in URI"

    .end local v4           #accountIdStr:Ljava/lang/String;
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 345
    .end local v5           #searchTextString:Ljava/lang/String;
    .end local v88           #e:Ljava/lang/NumberFormatException;
    .restart local v11       #context:Landroid/content/Context;
    .restart local v18       #request:Lcom/android/exchange/SearchRequest;
    .restart local v90       #emailResult:Lcom/android/exchange/provider/EmailResult;
    .restart local v97       #intent:Landroid/content/Intent;
    :catch_3
    move-exception v88

    .line 346
    .local v88, e:Ljava/lang/Exception;
    const-string v3, "ExchangeProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "exception = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v88 .. v88}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 353
    .end local v6           #greaterThanDateString:Ljava/lang/String;
    .end local v7           #lessThanDateString:Ljava/lang/String;
    .end local v8           #mailboxIdString:Ljava/lang/String;
    .end local v9           #optionsDeepTraversalStr:Ljava/lang/String;
    .end local v10           #conversationIdStr:Ljava/lang/String;
    .end local v11           #context:Landroid/content/Context;
    .end local v12           #accId:J
    .end local v14           #mailboxId:J
    .end local v16           #foldId:J
    .end local v18           #request:Lcom/android/exchange/SearchRequest;
    .end local v88           #e:Ljava/lang/Exception;
    .end local v90           #emailResult:Lcom/android/exchange/provider/EmailResult;
    .end local v92           #foldIdString:Ljava/lang/String;
    .end local v97           #intent:Landroid/content/Intent;
    :sswitch_1
    const-wide/16 v20, -0x1

    .line 355
    .local v20, accountId:J
    new-instance v84, Lcom/android/exchange/provider/ExchangeProvider$MatrixCursorExtras;

    sget-object v3, Lcom/android/exchange/provider/ExchangeProvider;->GAL_PROJECTION:[Ljava/lang/String;

    move-object/from16 v0, v84

    move-object v1, v3

    invoke-direct {v0, v1}, Lcom/android/exchange/provider/ExchangeProvider$MatrixCursorExtras;-><init>([Ljava/lang/String;)V

    .line 356
    .local v84, c:Lcom/android/exchange/provider/ExchangeProvider$MatrixCursorExtras;
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v80

    check-cast v80, Ljava/lang/String;

    .line 357
    .local v80, accountIdString:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x2

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    .line 359
    .local v22, filter:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x3

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, Ljava/lang/String;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v24

    .line 363
    .local v24, nextRange:I
    :try_start_4
    invoke-static/range {v80 .. v80}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_4

    move-result-wide v20

    .line 368
    const/16 v93, 0x0

    .line 369
    .local v93, galResult:Lcom/android/exchange/provider/GalResult;
    if-eqz p3, :cond_3

    const-string v3, "fetchNext"

    move-object/from16 v0, p3

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 372
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/provider/ExchangeProvider;->getContext()Landroid/content/Context;

    move-result-object v19

    const/16 v23, 0x1

    invoke-static/range {v19 .. v24}, Lcom/android/exchange/EasSyncService;->searchGal(Landroid/content/Context;JLjava/lang/String;ZI)Lcom/android/exchange/provider/GalResult;

    move-result-object v93

    .line 381
    :goto_2
    if-eqz v93, :cond_6

    .line 382
    move-object/from16 v0, v93

    iget-object v0, v0, Lcom/android/exchange/provider/GalResult;->galData:Ljava/util/ArrayList;

    move-object v3, v0

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v94

    .local v94, i$:Ljava/util/Iterator;
    :goto_3
    invoke-interface/range {v94 .. v94}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface/range {v94 .. v94}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v87

    check-cast v87, Lcom/android/exchange/provider/GalResult$GalData;

    .line 385
    .local v87, data:Lcom/android/exchange/provider/GalResult$GalData;
    sget-boolean v3, Lcom/android/exchange/Eas;->USER_LOG:Z

    if-eqz v3, :cond_2

    .line 386
    const-string v3, "ExchangeProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " id = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v87

    iget-wide v0, v0, Lcom/android/exchange/provider/GalResult$GalData;->_id:J

    move-wide/from16 v25, v0

    move-object v0, v4

    move-wide/from16 v1, v25

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " displayName = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v87

    iget-object v0, v0, Lcom/android/exchange/provider/GalResult$GalData;->displayName:Ljava/lang/String;

    move-object v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n emailAddress = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v87

    iget-object v0, v0, Lcom/android/exchange/provider/GalResult$GalData;->emailAddress:Ljava/lang/String;

    move-object v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " alias = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v87

    iget-object v0, v0, Lcom/android/exchange/provider/GalResult$GalData;->mAlias:Ljava/lang/String;

    move-object v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " company = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v87

    iget-object v0, v0, Lcom/android/exchange/provider/GalResult$GalData;->mCompany:Ljava/lang/String;

    move-object v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n firstName = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v87

    iget-object v0, v0, Lcom/android/exchange/provider/GalResult$GalData;->mFirstName:Ljava/lang/String;

    move-object v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " lastName = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v87

    iget-object v0, v0, Lcom/android/exchange/provider/GalResult$GalData;->mLastName:Ljava/lang/String;

    move-object v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\nhomePhone = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v87

    iget-object v0, v0, Lcom/android/exchange/provider/GalResult$GalData;->mHomePhone:Ljava/lang/String;

    move-object v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mobilePhone = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v87

    iget-object v0, v0, Lcom/android/exchange/provider/GalResult$GalData;->mMobilePhone:Ljava/lang/String;

    move-object v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\noffice = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v87

    iget-object v0, v0, Lcom/android/exchange/provider/GalResult$GalData;->mOffice:Ljava/lang/String;

    move-object v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " phone = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v87

    iget-object v0, v0, Lcom/android/exchange/provider/GalResult$GalData;->mPhone:Ljava/lang/String;

    move-object v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " title = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v87

    iget-object v0, v0, Lcom/android/exchange/provider/GalResult$GalData;->mTitle:Ljava/lang/String;

    move-object v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    :cond_2
    move-object/from16 v0, v87

    iget-wide v0, v0, Lcom/android/exchange/provider/GalResult$GalData;->_id:J

    move-wide/from16 v26, v0

    move-object/from16 v0, v87

    iget-object v0, v0, Lcom/android/exchange/provider/GalResult$GalData;->displayName:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, v87

    iget-object v0, v0, Lcom/android/exchange/provider/GalResult$GalData;->mPhone:Ljava/lang/String;

    move-object/from16 v29, v0

    move-object/from16 v0, v87

    iget-object v0, v0, Lcom/android/exchange/provider/GalResult$GalData;->mOffice:Ljava/lang/String;

    move-object/from16 v30, v0

    move-object/from16 v0, v87

    iget-object v0, v0, Lcom/android/exchange/provider/GalResult$GalData;->mTitle:Ljava/lang/String;

    move-object/from16 v31, v0

    move-object/from16 v0, v87

    iget-object v0, v0, Lcom/android/exchange/provider/GalResult$GalData;->mCompany:Ljava/lang/String;

    move-object/from16 v32, v0

    move-object/from16 v0, v87

    iget-object v0, v0, Lcom/android/exchange/provider/GalResult$GalData;->mAlias:Ljava/lang/String;

    move-object/from16 v33, v0

    move-object/from16 v0, v87

    iget-object v0, v0, Lcom/android/exchange/provider/GalResult$GalData;->emailAddress:Ljava/lang/String;

    move-object/from16 v34, v0

    move-object/from16 v0, v87

    iget-object v0, v0, Lcom/android/exchange/provider/GalResult$GalData;->mFirstName:Ljava/lang/String;

    move-object/from16 v35, v0

    move-object/from16 v0, v87

    iget-object v0, v0, Lcom/android/exchange/provider/GalResult$GalData;->mLastName:Ljava/lang/String;

    move-object/from16 v36, v0

    move-object/from16 v0, v87

    iget-object v0, v0, Lcom/android/exchange/provider/GalResult$GalData;->mHomePhone:Ljava/lang/String;

    move-object/from16 v37, v0

    move-object/from16 v0, v87

    iget-object v0, v0, Lcom/android/exchange/provider/GalResult$GalData;->mMobilePhone:Ljava/lang/String;

    move-object/from16 v38, v0

    move-object/from16 v25, v84

    invoke-static/range {v25 .. v38}, Lcom/android/exchange/provider/ExchangeProvider;->addGalDataRow(Landroid/database/MatrixCursor;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 364
    .end local v87           #data:Lcom/android/exchange/provider/GalResult$GalData;
    .end local v93           #galResult:Lcom/android/exchange/provider/GalResult;
    .end local v94           #i$:Ljava/util/Iterator;
    :catch_4
    move-exception v88

    .line 365
    .local v88, e:Ljava/lang/NumberFormatException;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Illegal value in URI"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 377
    .end local v88           #e:Ljava/lang/NumberFormatException;
    .restart local v93       #galResult:Lcom/android/exchange/provider/GalResult;
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/provider/ExchangeProvider;->getContext()Landroid/content/Context;

    move-result-object v25

    const/16 v29, 0x0

    const/16 v30, 0x0

    move-wide/from16 v26, v20

    move-object/from16 v28, v22

    invoke-static/range {v25 .. v30}, Lcom/android/exchange/EasSyncService;->searchGal(Landroid/content/Context;JLjava/lang/String;ZI)Lcom/android/exchange/provider/GalResult;

    move-result-object v93

    goto/16 :goto_2

    .line 401
    .restart local v94       #i$:Ljava/util/Iterator;
    :cond_4
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "galResult.endRange="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v93

    iget v0, v0, Lcom/android/exchange/provider/GalResult;->endRange:I

    move v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ";galResult.total="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v93

    iget v0, v0, Lcom/android/exchange/provider/GalResult;->total:I

    move v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ";c.getCount()="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v84 .. v84}, Lcom/android/exchange/provider/ExchangeProvider$MatrixCursorExtras;->getCount()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 403
    move-object/from16 v0, v93

    iget v0, v0, Lcom/android/exchange/provider/GalResult;->endRange:I

    move v3, v0

    move-object/from16 v0, v93

    iget v0, v0, Lcom/android/exchange/provider/GalResult;->total:I

    move v4, v0

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    if-ge v3, v4, :cond_5

    move-object/from16 v0, v93

    iget-wide v0, v0, Lcom/android/exchange/provider/GalResult;->protocolVerison:D

    move-wide/from16 v25, v0

    const-wide/high16 v27, 0x4028

    cmpl-double v3, v25, v27

    if-ltz v3, :cond_5

    .line 405
    const-string v3, "Emails"

    move-object v0, v3

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_5

    .line 406
    const-wide v26, 0x7fffffffffffffffL

    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/provider/ExchangeProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0802ce

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v28

    const-string v29, ""

    const-string v30, ""

    const-string v31, ""

    const-string v32, ""

    const-string v33, ""

    const-string v34, ""

    const-string v35, ""

    const-string v36, ""

    const-string v37, ""

    const-string v38, ""

    move-object/from16 v25, v84

    invoke-static/range {v25 .. v38}, Lcom/android/exchange/provider/ExchangeProvider;->addGalDataRow(Landroid/database/MatrixCursor;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 407
    const-string v3, "Emails"

    const-string v4, "gal search by email"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    :cond_5
    new-instance v83, Landroid/os/Bundle;

    invoke-direct/range {v83 .. v83}, Landroid/os/Bundle;-><init>()V

    .line 413
    .local v83, bundle:Landroid/os/Bundle;
    const-string v3, "com.android.exchange.provider.TOTAL_RESULTS"

    move-object/from16 v0, v93

    iget v0, v0, Lcom/android/exchange/provider/GalResult;->total:I

    move v4, v0

    move-object/from16 v0, v83

    move-object v1, v3

    move v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 414
    move-object/from16 v0, v84

    move-object/from16 v1, v83

    invoke-virtual {v0, v1}, Lcom/android/exchange/provider/ExchangeProvider$MatrixCursorExtras;->setExtras(Landroid/os/Bundle;)V

    .end local v83           #bundle:Landroid/os/Bundle;
    .end local v94           #i$:Ljava/util/Iterator;
    :cond_6
    move-object/from16 v3, v84

    .line 416
    goto/16 :goto_1

    .line 422
    .end local v20           #accountId:J
    .end local v22           #filter:Ljava/lang/String;
    .end local v24           #nextRange:I
    .end local v80           #accountIdString:Ljava/lang/String;
    .end local v84           #c:Lcom/android/exchange/provider/ExchangeProvider$MatrixCursorExtras;
    .end local v93           #galResult:Lcom/android/exchange/provider/GalResult;
    .restart local p1
    :sswitch_2
    :try_start_5
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    invoke-direct {v0, v1, v2}, Lcom/android/exchange/provider/ExchangeProvider;->validateCert(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_5
    .catch Lcom/android/email/mail/MessagingException; {:try_start_5 .. :try_end_5} :catch_5

    move-result-object v3

    goto/16 :goto_1

    .line 423
    :catch_5
    move-exception v89

    .line 425
    .local v89, e1:Lcom/android/email/mail/MessagingException;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MessagingException: type:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v89 .. v89}, Lcom/android/email/mail/MessagingException;->getExceptionType()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 439
    .end local v89           #e1:Lcom/android/email/mail/MessagingException;
    :sswitch_3
    if-nez p3, :cond_7

    .line 440
    const/4 v3, 0x0

    goto/16 :goto_1

    .line 446
    :cond_7
    const-wide/16 v20, -0x1

    .line 447
    .restart local v20       #accountId:J
    const/16 v29, 0x1

    .line 448
    .local v29, certificateRetrieval:I
    const/4 v4, 0x0

    .line 449
    .restart local v4       #accountIdStr:Ljava/lang/String;
    new-instance v116, Ljava/util/ArrayList;

    invoke-direct/range {v116 .. v116}, Ljava/util/ArrayList;-><init>()V

    .line 450
    .local v116, toList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/16 v30, 0x0

    .line 451
    .local v30, startTimeStr:Ljava/lang/String;
    const/16 v31, 0x0

    .line 452
    .local v31, endTimeStr:Ljava/lang/String;
    const/16 v98, 0x1

    .line 455
    .local v98, isValidWhereClause:Z
    const/16 v45, 0x0

    .line 456
    .local v45, idFlag:Z
    const/16 v46, 0x0

    .line 457
    .local v46, accountIdFlag:Z
    const/16 v47, 0x0

    .line 458
    .local v47, toFlag:Z
    const/16 v48, 0x0

    .line 459
    .local v48, responseStatusFlag:Z
    const/16 v49, 0x0

    .line 460
    .local v49, displayNameFlag:Z
    const/16 v50, 0x0

    .line 461
    .local v50, emailFlag:Z
    const/16 v51, 0x0

    .line 464
    .local v51, certificateStatusFlag:Z
    const/16 v52, 0x0

    .line 465
    .local v52, certificateFlag:Z
    const/16 v53, 0x0

    .line 466
    .local v53, miniCertificateFlag:Z
    const/16 v54, 0x0

    .line 467
    .local v54, availabilityStatusFlag:Z
    const/16 v55, 0x0

    .line 469
    .local v55, mergedFreeBusyFlag:Z
    new-instance v109, Ljava/util/ArrayList;

    invoke-direct/range {v109 .. v109}, Ljava/util/ArrayList;-><init>()V

    .line 470
    .local v109, projectionStrs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static/range {p2 .. p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v108

    .line 471
    .local v108, projectionList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-string v3, "_id"

    move-object/from16 v0, v108

    move-object v1, v3

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 473
    const/16 v45, 0x1

    .line 474
    const-string v3, "_id"

    move-object/from16 v0, v109

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 476
    :cond_8
    const-string v3, "accountId"

    move-object/from16 v0, v108

    move-object v1, v3

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 478
    const/16 v46, 0x1

    .line 479
    const-string v3, "accountId"

    move-object/from16 v0, v109

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 481
    :cond_9
    const-string v3, "to"

    move-object/from16 v0, v108

    move-object v1, v3

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 483
    const/16 v47, 0x1

    .line 484
    const-string v3, "to"

    move-object/from16 v0, v109

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 486
    :cond_a
    const-string v3, "responseStatus"

    move-object/from16 v0, v108

    move-object v1, v3

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 488
    const/16 v48, 0x1

    .line 489
    const-string v3, "responseStatus"

    move-object/from16 v0, v109

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 491
    :cond_b
    const-string v3, "displayName"

    move-object/from16 v0, v108

    move-object v1, v3

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 493
    const/16 v49, 0x1

    .line 494
    const-string v3, "displayName"

    move-object/from16 v0, v109

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 496
    :cond_c
    const-string v3, "email"

    move-object/from16 v0, v108

    move-object v1, v3

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 498
    const/16 v50, 0x1

    .line 499
    const-string v3, "email"

    move-object/from16 v0, v109

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 501
    :cond_d
    const-string v3, "certificateStatus"

    move-object/from16 v0, v108

    move-object v1, v3

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 503
    const/16 v51, 0x1

    .line 504
    const-string v3, "certificateStatus"

    move-object/from16 v0, v109

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 506
    :cond_e
    const-string v3, "certificate"

    move-object/from16 v0, v108

    move-object v1, v3

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 508
    const/16 v52, 0x1

    .line 509
    const-string v3, "certificate"

    move-object/from16 v0, v109

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 511
    const/16 v29, 0x2

    .line 513
    :cond_f
    const-string v3, "miniCertificate"

    move-object/from16 v0, v108

    move-object v1, v3

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 515
    const/16 v53, 0x1

    .line 516
    const-string v3, "miniCertificate"

    move-object/from16 v0, v109

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 518
    const/4 v3, 0x2

    move/from16 v0, v29

    move v1, v3

    if-eq v0, v1, :cond_10

    .line 519
    const/16 v29, 0x3

    .line 522
    :cond_10
    const-string v3, "availabilityStatus"

    move-object/from16 v0, v108

    move-object v1, v3

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 524
    const/16 v54, 0x1

    .line 525
    const-string v3, "availabilityStatus"

    move-object/from16 v0, v109

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 527
    :cond_11
    const-string v3, "mergedFreeBusy"

    move-object/from16 v0, v108

    move-object v1, v3

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 529
    const/16 v55, 0x1

    .line 530
    const-string v3, "mergedFreeBusy"

    move-object/from16 v0, v109

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 537
    :cond_12
    if-eqz p4, :cond_14

    .line 538
    const-string v3, "?"

    move-object/from16 v0, p3

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v96

    .line 539
    .local v96, index:I
    const/16 v85, 0x0

    .line 540
    .local v85, countReplace:I
    move-object/from16 v0, p4

    array-length v0, v0

    move/from16 v82, v0

    .line 541
    .local v82, argLength:I
    :goto_4
    if-ltz v96, :cond_14

    if-eqz v98, :cond_14

    .line 542
    move/from16 v0, v85

    move/from16 v1, v82

    if-ge v0, v1, :cond_13

    .line 543
    const-string v3, "\\?"

    aget-object v5, p4, v85

    move-object/from16 v0, p3

    move-object v1, v3

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 544
    add-int/lit8 v85, v85, 0x1

    .line 545
    const-string v3, "?"

    move-object/from16 v0, p3

    move-object v1, v3

    move/from16 v2, v96

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v96

    goto :goto_4

    .line 547
    :cond_13
    const/16 v98, 0x0

    goto :goto_4

    .line 556
    .end local v82           #argLength:I
    .end local v85           #countReplace:I
    .end local v96           #index:I
    :cond_14
    const-string v3, "("

    move-object/from16 v0, p3

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v91

    .line 557
    .local v91, firstRoundBracket:I
    const-string v3, ")"

    move-object/from16 v0, p3

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v114

    .line 558
    .local v114, secondRoundBracket:I
    if-gez v91, :cond_15

    if-ltz v114, :cond_1b

    if-eqz v98, :cond_1b

    .line 559
    :cond_15
    if-ltz v91, :cond_1a

    if-lez v114, :cond_1a

    move/from16 v0, v114

    move/from16 v1, v91

    if-le v0, v1, :cond_1a

    .line 560
    add-int/lit8 v3, v91, 0x1

    move-object/from16 v0, p3

    move v1, v3

    move/from16 v2, v114

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v115

    .line 561
    .local v115, substr:Ljava/lang/String;
    const-string v3, "("

    move-object/from16 v0, v115

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_19

    const-string v3, ")"

    move-object/from16 v0, v115

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_19

    const-string v3, "OR"

    move-object/from16 v0, p3

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    move v0, v3

    move/from16 v1, v91

    if-le v0, v1, :cond_19

    const-string v3, "OR"

    move-object/from16 v0, p3

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    move v0, v3

    move/from16 v1, v114

    if-ge v0, v1, :cond_19

    .line 565
    const-string v3, "AND"

    move-object/from16 v0, v115

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_16

    .line 566
    const/16 v98, 0x0

    .line 579
    .end local v115           #substr:Ljava/lang/String;
    :cond_16
    :goto_5
    const-string v3, "AND"

    move-object/from16 v0, p3

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v81

    .line 580
    .local v81, andTokens:[Ljava/lang/String;
    move-object/from16 v0, v81

    array-length v0, v0

    move/from16 v100, v0

    .line 581
    .local v100, lengthAnd:I
    :cond_17
    :goto_6
    add-int/lit8 v100, v100, -0x1

    if-ltz v100, :cond_23

    if-eqz v98, :cond_23

    .line 582
    aget-object v106, v81, v100

    .line 585
    .local v106, paramAnd:Ljava/lang/String;
    invoke-virtual/range {v106 .. v106}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v106

    .line 586
    const-string v3, "("

    move-object/from16 v0, v106

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 587
    const-string v3, ")"

    move-object/from16 v0, v106

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 588
    const/4 v3, 0x1

    invoke-virtual/range {v106 .. v106}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    move-object/from16 v0, v106

    move v1, v3

    move v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v103

    .line 589
    .local v103, orParse:Ljava/lang/String;
    const-string v3, "OR"

    move-object/from16 v0, v103

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v104

    .line 590
    .local v104, orTokens:[Ljava/lang/String;
    move-object/from16 v0, v104

    array-length v0, v0

    move/from16 v101, v0

    .line 591
    .local v101, lengthOr:I
    :goto_7
    add-int/lit8 v101, v101, -0x1

    if-ltz v101, :cond_17

    if-eqz v98, :cond_17

    .line 592
    aget-object v107, v104, v101

    .line 593
    .local v107, paramOr:Ljava/lang/String;
    const-string v3, "="

    move-object/from16 v0, v107

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v105

    .line 595
    .local v105, pair:[Ljava/lang/String;
    move-object/from16 v0, v105

    array-length v0, v0

    move v3, v0

    const/4 v5, 0x2

    if-eq v3, v5, :cond_18

    .line 596
    const/16 v98, 0x0

    .line 599
    :cond_18
    const/4 v3, 0x0

    aget-object v3, v105, v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v99

    .line 600
    .local v99, key:Ljava/lang/String;
    const/4 v3, 0x1

    aget-object v3, v105, v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v117

    .line 602
    .local v117, val:Ljava/lang/String;
    const-string v3, "to"

    move-object v0, v3

    move-object/from16 v1, v99

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 603
    move-object/from16 v0, p0

    move-object/from16 v1, v117

    invoke-direct {v0, v1}, Lcom/android/exchange/provider/ExchangeProvider;->normalizeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v116

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 569
    .end local v81           #andTokens:[Ljava/lang/String;
    .end local v99           #key:Ljava/lang/String;
    .end local v100           #lengthAnd:I
    .end local v101           #lengthOr:I
    .end local v103           #orParse:Ljava/lang/String;
    .end local v104           #orTokens:[Ljava/lang/String;
    .end local v105           #pair:[Ljava/lang/String;
    .end local v106           #paramAnd:Ljava/lang/String;
    .end local v107           #paramOr:Ljava/lang/String;
    .end local v117           #val:Ljava/lang/String;
    .restart local v115       #substr:Ljava/lang/String;
    :cond_19
    const/16 v98, 0x0

    goto/16 :goto_5

    .line 572
    .end local v115           #substr:Ljava/lang/String;
    :cond_1a
    const/16 v98, 0x0

    goto/16 :goto_5

    .line 574
    :cond_1b
    const-string v3, "AND"

    move-object/from16 v0, p3

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_16

    const-string v3, "OR"

    move-object/from16 v0, p3

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_16

    .line 575
    const/16 v98, 0x0

    goto/16 :goto_5

    .line 606
    .restart local v81       #andTokens:[Ljava/lang/String;
    .restart local v99       #key:Ljava/lang/String;
    .restart local v100       #lengthAnd:I
    .restart local v101       #lengthOr:I
    .restart local v103       #orParse:Ljava/lang/String;
    .restart local v104       #orTokens:[Ljava/lang/String;
    .restart local v105       #pair:[Ljava/lang/String;
    .restart local v106       #paramAnd:Ljava/lang/String;
    .restart local v107       #paramOr:Ljava/lang/String;
    .restart local v117       #val:Ljava/lang/String;
    :cond_1c
    const/16 v98, 0x0

    goto :goto_7

    .line 610
    .end local v99           #key:Ljava/lang/String;
    .end local v101           #lengthOr:I
    .end local v103           #orParse:Ljava/lang/String;
    .end local v104           #orTokens:[Ljava/lang/String;
    .end local v105           #pair:[Ljava/lang/String;
    .end local v107           #paramOr:Ljava/lang/String;
    .end local v117           #val:Ljava/lang/String;
    :cond_1d
    const/16 v98, 0x0

    goto/16 :goto_6

    .line 615
    :cond_1e
    const-string v3, "="

    move-object/from16 v0, v106

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v105

    .line 617
    .restart local v105       #pair:[Ljava/lang/String;
    move-object/from16 v0, v105

    array-length v0, v0

    move v3, v0

    const/4 v5, 0x2

    if-eq v3, v5, :cond_1f

    .line 618
    const/16 v98, 0x0

    .line 621
    :cond_1f
    const/4 v3, 0x0

    aget-object v3, v105, v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v99

    .line 622
    .restart local v99       #key:Ljava/lang/String;
    const/4 v3, 0x1

    aget-object v3, v105, v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v117

    .line 624
    .restart local v117       #val:Ljava/lang/String;
    const-string v3, "accoundId"

    move-object v0, v3

    move-object/from16 v1, v99

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_20

    .line 625
    move-object/from16 v0, p0

    move-object/from16 v1, v117

    invoke-direct {v0, v1}, Lcom/android/exchange/provider/ExchangeProvider;->normalizeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_6

    .line 626
    :cond_20
    const-string v3, "to"

    move-object v0, v3

    move-object/from16 v1, v99

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_21

    .line 627
    move-object/from16 v0, p0

    move-object/from16 v1, v117

    invoke-direct {v0, v1}, Lcom/android/exchange/provider/ExchangeProvider;->normalizeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v116

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6

    .line 628
    :cond_21
    const-string v3, "startTime"

    move-object v0, v3

    move-object/from16 v1, v99

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_22

    .line 629
    move-object/from16 v0, p0

    move-object/from16 v1, v117

    invoke-direct {v0, v1}, Lcom/android/exchange/provider/ExchangeProvider;->normalizeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    goto/16 :goto_6

    .line 630
    :cond_22
    const-string v3, "endTime"

    move-object v0, v3

    move-object/from16 v1, v99

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17

    .line 631
    move-object/from16 v0, p0

    move-object/from16 v1, v117

    invoke-direct {v0, v1}, Lcom/android/exchange/provider/ExchangeProvider;->normalizeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    goto/16 :goto_6

    .line 640
    .end local v99           #key:Ljava/lang/String;
    .end local v105           #pair:[Ljava/lang/String;
    .end local v106           #paramAnd:Ljava/lang/String;
    .end local v117           #val:Ljava/lang/String;
    :cond_23
    if-eqz v98, :cond_26

    if-nez v30, :cond_24

    if-nez v31, :cond_26

    :cond_24
    if-nez v31, :cond_25

    if-nez v30, :cond_26

    :cond_25
    if-nez v4, :cond_27

    .line 644
    :cond_26
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Illegal where clause string"

    .end local v4           #accountIdStr:Ljava/lang/String;
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 649
    .restart local v4       #accountIdStr:Ljava/lang/String;
    :cond_27
    invoke-virtual/range {v109 .. v109}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v0, v3

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v110, v0

    .line 650
    .local v110, projs:[Ljava/lang/String;
    invoke-virtual/range {v109 .. v110}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 651
    new-instance v32, Lcom/android/exchange/provider/ExchangeProvider$MatrixCursorExtras;

    move-object/from16 v0, v32

    move-object/from16 v1, v110

    invoke-direct {v0, v1}, Lcom/android/exchange/provider/ExchangeProvider$MatrixCursorExtras;-><init>([Ljava/lang/String;)V

    .line 655
    .local v32, c:Lcom/android/exchange/provider/ExchangeProvider$MatrixCursorExtras;
    :try_start_6
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_6
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_6} :catch_6

    move-result-wide v20

    .line 660
    invoke-virtual/range {v116 .. v116}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v0, v3

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v28, v0

    .line 661
    .local v28, toArray:[Ljava/lang/String;
    move-object/from16 v0, v116

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 663
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/provider/ExchangeProvider;->getContext()Landroid/content/Context;

    move-result-object v25

    move-wide/from16 v26, v20

    invoke-static/range {v25 .. v31}, Lcom/android/exchange/EasSyncService;->doResolveRecipients(Landroid/content/Context;J[Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v111

    .line 670
    .local v111, r2Result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/exchange/provider/RRResponse;>;"
    if-eqz v111, :cond_2c

    .line 671
    const/16 v40, 0x0

    .line 674
    .local v40, certStatus:B
    const/16 v41, 0x0

    .line 675
    .local v41, certificate:Ljava/lang/String;
    const/16 v42, 0x0

    .line 676
    .local v42, miniCertificate:Ljava/lang/String;
    const/16 v86, 0x0

    .line 679
    .local v86, counter:I
    invoke-virtual/range {v111 .. v111}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v94

    :cond_28
    :goto_8
    invoke-interface/range {v94 .. v94}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2b

    invoke-interface/range {v94 .. v94}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v113

    check-cast v113, Lcom/android/exchange/provider/RRResponse;

    .line 680
    .local v113, responseData:Lcom/android/exchange/provider/RRResponse;
    move-object/from16 v0, v113

    iget-byte v0, v0, Lcom/android/exchange/provider/RRResponse;->status:B

    move v3, v0

    const/4 v5, 0x4

    if-eq v3, v5, :cond_2a

    .line 681
    move-object/from16 v0, v113

    iget-object v0, v0, Lcom/android/exchange/provider/RRResponse;->recipientData:Ljava/util/ArrayList;

    move-object v3, v0

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v95

    .local v95, i$:Ljava/util/Iterator;
    :goto_9
    invoke-interface/range {v95 .. v95}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_28

    invoke-interface/range {v95 .. v95}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v112

    check-cast v112, Lcom/android/exchange/provider/RRResponse$RecipientData;

    .line 683
    .local v112, recipientData:Lcom/android/exchange/provider/RRResponse$RecipientData;
    move-object/from16 v0, v112

    iget-object v0, v0, Lcom/android/exchange/provider/RRResponse$RecipientData;->mCertificates:Lcom/android/exchange/provider/RecipientCertificates;

    move-object v3, v0

    if-eqz v3, :cond_29

    .line 684
    move-object/from16 v0, v112

    iget-object v0, v0, Lcom/android/exchange/provider/RRResponse$RecipientData;->mCertificates:Lcom/android/exchange/provider/RecipientCertificates;

    move-object v3, v0

    move-object v0, v3

    iget-byte v0, v0, Lcom/android/exchange/provider/RecipientCertificates;->mStatus:B

    move/from16 v40, v0

    .line 687
    move-object/from16 v0, v112

    iget-object v0, v0, Lcom/android/exchange/provider/RRResponse$RecipientData;->mCertificates:Lcom/android/exchange/provider/RecipientCertificates;

    move-object v3, v0

    move-object v0, v3

    iget-object v0, v0, Lcom/android/exchange/provider/RecipientCertificates;->mCertificate:Ljava/lang/String;

    move-object/from16 v41, v0

    .line 688
    move-object/from16 v0, v112

    iget-object v0, v0, Lcom/android/exchange/provider/RRResponse$RecipientData;->mCertificates:Lcom/android/exchange/provider/RecipientCertificates;

    move-object v3, v0

    move-object v0, v3

    iget-object v0, v0, Lcom/android/exchange/provider/RecipientCertificates;->mMiniCertificate:Ljava/lang/String;

    move-object/from16 v42, v0

    .line 697
    :goto_a
    move/from16 v0, v86

    int-to-long v0, v0

    move-wide/from16 v33, v0

    move-object/from16 v0, v113

    iget-object v0, v0, Lcom/android/exchange/provider/RRResponse;->to:Ljava/lang/String;

    move-object/from16 v36, v0

    move-object/from16 v0, v113

    iget-byte v0, v0, Lcom/android/exchange/provider/RRResponse;->status:B

    move/from16 v37, v0

    move-object/from16 v0, v112

    iget-object v0, v0, Lcom/android/exchange/provider/RRResponse$RecipientData;->mDisplayName:Ljava/lang/String;

    move-object/from16 v38, v0

    move-object/from16 v0, v112

    iget-object v0, v0, Lcom/android/exchange/provider/RRResponse$RecipientData;->mEmail:Ljava/lang/String;

    move-object/from16 v39, v0

    move-object/from16 v0, v112

    iget v0, v0, Lcom/android/exchange/provider/RRResponse$RecipientData;->mAvailabilityStatus:I

    move/from16 v43, v0

    move-object/from16 v0, v112

    iget-object v0, v0, Lcom/android/exchange/provider/RRResponse$RecipientData;->mMergedFreeBusy:Ljava/lang/String;

    move-object/from16 v44, v0

    move-object/from16 v35, v4

    invoke-static/range {v32 .. v55}, Lcom/android/exchange/provider/ExchangeProvider;->addR2DataRow(Landroid/database/MatrixCursor;JLjava/lang/String;Ljava/lang/String;BLjava/lang/String;Ljava/lang/String;BLjava/lang/String;Ljava/lang/String;ILjava/lang/String;ZZZZZZZZZZZ)V

    .line 723
    add-int/lit8 v86, v86, 0x1

    goto :goto_9

    .line 656
    .end local v28           #toArray:[Ljava/lang/String;
    .end local v40           #certStatus:B
    .end local v41           #certificate:Ljava/lang/String;
    .end local v42           #miniCertificate:Ljava/lang/String;
    .end local v86           #counter:I
    .end local v95           #i$:Ljava/util/Iterator;
    .end local v111           #r2Result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/exchange/provider/RRResponse;>;"
    .end local v112           #recipientData:Lcom/android/exchange/provider/RRResponse$RecipientData;
    .end local v113           #responseData:Lcom/android/exchange/provider/RRResponse;
    :catch_6
    move-exception v88

    .line 657
    .restart local v88       #e:Ljava/lang/NumberFormatException;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Illegal value in where clause"

    .end local v4           #accountIdStr:Ljava/lang/String;
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 690
    .end local v88           #e:Ljava/lang/NumberFormatException;
    .restart local v4       #accountIdStr:Ljava/lang/String;
    .restart local v28       #toArray:[Ljava/lang/String;
    .restart local v40       #certStatus:B
    .restart local v41       #certificate:Ljava/lang/String;
    .restart local v42       #miniCertificate:Ljava/lang/String;
    .restart local v86       #counter:I
    .restart local v95       #i$:Ljava/util/Iterator;
    .restart local v111       #r2Result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/exchange/provider/RRResponse;>;"
    .restart local v112       #recipientData:Lcom/android/exchange/provider/RRResponse$RecipientData;
    .restart local v113       #responseData:Lcom/android/exchange/provider/RRResponse;
    :cond_29
    const/16 v40, 0x0

    .line 693
    const/16 v41, 0x0

    .line 694
    const/16 v42, 0x0

    goto :goto_a

    .line 727
    .end local v95           #i$:Ljava/util/Iterator;
    .end local v112           #recipientData:Lcom/android/exchange/provider/RRResponse$RecipientData;
    :cond_2a
    move/from16 v0, v86

    int-to-long v0, v0

    move-wide/from16 v57, v0

    move-object/from16 v0, v113

    iget-object v0, v0, Lcom/android/exchange/provider/RRResponse;->to:Ljava/lang/String;

    move-object/from16 v60, v0

    move-object/from16 v0, v113

    iget-byte v0, v0, Lcom/android/exchange/provider/RRResponse;->status:B

    move/from16 v61, v0

    const/16 v62, 0x0

    const/16 v63, 0x0

    const/16 v64, 0x0

    const/16 v65, 0x0

    const/16 v66, 0x0

    const/16 v67, 0x0

    const/16 v68, 0x0

    move-object/from16 v56, v32

    move-object/from16 v59, v4

    move/from16 v69, v45

    move/from16 v70, v46

    move/from16 v71, v47

    move/from16 v72, v48

    move/from16 v73, v49

    move/from16 v74, v50

    move/from16 v75, v51

    move/from16 v76, v52

    move/from16 v77, v53

    move/from16 v78, v54

    move/from16 v79, v55

    invoke-static/range {v56 .. v79}, Lcom/android/exchange/provider/ExchangeProvider;->addR2DataRow(Landroid/database/MatrixCursor;JLjava/lang/String;Ljava/lang/String;BLjava/lang/String;Ljava/lang/String;BLjava/lang/String;Ljava/lang/String;ILjava/lang/String;ZZZZZZZZZZZ)V

    .line 753
    add-int/lit8 v86, v86, 0x1

    goto/16 :goto_8

    .line 759
    .end local v113           #responseData:Lcom/android/exchange/provider/RRResponse;
    :cond_2b
    new-instance v83, Landroid/os/Bundle;

    invoke-direct/range {v83 .. v83}, Landroid/os/Bundle;-><init>()V

    .line 760
    .restart local v83       #bundle:Landroid/os/Bundle;
    const-string v3, "com.android.exchange.provider.TOTAL_RESULTS"

    move-object/from16 v0, v83

    move-object v1, v3

    move/from16 v2, v86

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 761
    move-object/from16 v0, v32

    move-object/from16 v1, v83

    invoke-virtual {v0, v1}, Lcom/android/exchange/provider/ExchangeProvider$MatrixCursorExtras;->setExtras(Landroid/os/Bundle;)V

    .end local v40           #certStatus:B
    .end local v41           #certificate:Ljava/lang/String;
    .end local v42           #miniCertificate:Ljava/lang/String;
    .end local v83           #bundle:Landroid/os/Bundle;
    .end local v86           #counter:I
    :cond_2c
    move-object/from16 v3, v32

    .line 764
    goto/16 :goto_1

    .line 285
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x1 -> :sswitch_0
        0x64 -> :sswitch_3
        0xc8 -> :sswitch_2
    .end sparse-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .parameter "uri"
    .parameter "values"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 798
    const/4 v0, -0x1

    return v0
.end method
