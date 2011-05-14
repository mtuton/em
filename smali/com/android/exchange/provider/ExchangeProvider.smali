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
.field private static final EMAIL_SEARCH_FILTER:I = 0x1

.field public static final EMAIL_SEARCH_URI:Landroid/net/Uri; = null

.field public static final EXCHANGE_AUTHORITY:Ljava/lang/String; = "com.android.exchange.provider"

.field public static final EXTRAS_TOTAL_RESULTS:Ljava/lang/String; = "com.android.exchange.provider.TOTAL_RESULTS"

.field private static final GAL_BASE:I = 0x0

.field public static final GAL_COLUMN_ALIAS:I = 0x7

.field public static final GAL_COLUMN_COMPANY:I = 0x6

.field public static final GAL_COLUMN_DISPLAYNAME:I = 0x1

.field public static final GAL_COLUMN_EMAIL_ADDRESS:I = 0x2

.field public static final GAL_COLUMN_FIRSTNAME:I = 0x8

.field public static final GAL_COLUMN_HOME_PHONE:I = 0xa

.field public static final GAL_COLUMN_ID:I = 0x0

.field public static final GAL_COLUMN_LASTNAME:I = 0x9

.field public static final GAL_COLUMN_MOBILE_PHONE:I = 0xb

.field public static final GAL_COLUMN_OFFICE:I = 0x4

.field public static final GAL_COLUMN_PHONE:I = 0x3

.field public static final GAL_COLUMN_TITLE:I = 0x5

.field private static final GAL_FILTER:I

.field public static final GAL_PROJECTION:[Ljava/lang/String;

.field public static final GAL_URI:Landroid/net/Uri;

.field private static final sURIMatcher:Landroid/content/UriMatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v6, "com.android.exchange.provider"

    .line 63
    const-string v1, "content://com.android.exchange.provider/gal/"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sput-object v1, Lcom/android/exchange/provider/ExchangeProvider;->GAL_URI:Landroid/net/Uri;

    .line 66
    const-string v1, "content://com.android.exchange.provider/emailsearch/"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sput-object v1, Lcom/android/exchange/provider/ExchangeProvider;->EMAIL_SEARCH_URI:Landroid/net/Uri;

    .line 78
    const/16 v1, 0xc

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "_id"

    aput-object v2, v1, v4

    const-string v2, "displayName"

    aput-object v2, v1, v5

    const/4 v2, 0x2

    const-string v3, "phone"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "office"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "title"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "company"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "alias"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "emailAddress"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "firstName"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "lastName"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "homePhone"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string v3, "mobilePhone"

    aput-object v3, v1, v2

    sput-object v1, Lcom/android/exchange/provider/ExchangeProvider;->GAL_PROJECTION:[Ljava/lang/String;

    .line 100
    new-instance v1, Landroid/content/UriMatcher;

    const/4 v2, -0x1

    invoke-direct {v1, v2}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v1, Lcom/android/exchange/provider/ExchangeProvider;->sURIMatcher:Landroid/content/UriMatcher;

    .line 104
    sget-object v0, Lcom/android/exchange/provider/ExchangeProvider;->sURIMatcher:Landroid/content/UriMatcher;

    .line 108
    .local v0, matcher:Landroid/content/UriMatcher;
    const-string v1, "com.android.exchange.provider"

    const-string v1, "gal/*/*"

    invoke-virtual {v0, v6, v1, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 110
    const-string v1, "com.android.exchange.provider"

    const-string v1, "emailsearch/*/*/*/*/*/*/*"

    invoke-virtual {v0, v6, v1, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 112
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 256
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
    .line 122
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

    .line 123
    return-void
.end method

.method private buildSearchRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/exchange/SearchRequest;
    .locals 15
    .parameter "accountIdString"
    .parameter "searchTextString"
    .parameter "greaterThanDateString"
    .parameter "lessThanDateString"
    .parameter "mailboxIdString"
    .parameter "optionsDeepTraversalStr"

    .prologue
    .line 278
    new-instance v5, Lcom/android/exchange/SearchRequest$Builder;

    invoke-direct {v5}, Lcom/android/exchange/SearchRequest$Builder;-><init>()V

    .line 279
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

    .line 282
    const/4 v2, 0x0

    .line 283
    .local v2, a:Lcom/android/email/provider/EmailContent$Account;
    const-wide/16 v3, -0x1

    .line 284
    .local v3, accId:J
    const/4 v10, 0x0

    .line 285
    .local v10, truncation_size:I
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 286
    invoke-virtual {p0}, Lcom/android/exchange/provider/ExchangeProvider;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11, v3, v4}, Lcom/android/email/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Account;

    move-result-object v2

    .line 288
    if-eqz v2, :cond_5

    .line 290
    invoke-virtual {v2}, Lcom/android/email/provider/EmailContent$Account;->getEmailSize()B

    move-result v11

    invoke-static {v11}, Lcom/android/exchange/Eas$EmailDataSize;->parse(B)Lcom/android/exchange/Eas$EmailDataSize;

    move-result-object v11

    sget-object v12, Lcom/android/exchange/Eas$EmailDataSize;->ALL:Lcom/android/exchange/Eas$EmailDataSize;

    if-eq v11, v12, :cond_4

    .line 292
    invoke-virtual {v2}, Lcom/android/email/provider/EmailContent$Account;->getEmailSize()B

    move-result v11

    invoke-static {v11}, Lcom/android/exchange/Eas$EmailDataSize;->parse(B)Lcom/android/exchange/Eas$EmailDataSize;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/exchange/Eas$EmailDataSize;->toEas12Value()I

    move-result v10

    .line 294
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

    .line 305
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

    .line 318
    invoke-virtual/range {p6 .. p6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    const-string v12, "True"

    invoke-virtual {v11, v12}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v11

    if-nez v11, :cond_0

    .line 320
    invoke-virtual {v5}, Lcom/android/exchange/SearchRequest$Builder;->optionsDeepTraversal()Lcom/android/exchange/SearchRequest$Builder;

    .line 322
    :cond_0
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    const-string v12, "NoneDate"

    invoke-virtual {v11, v12}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v11

    if-eqz v11, :cond_1

    .line 323
    new-instance v8, Ljava/text/SimpleDateFormat;

    const-string v11, "dd/MM/yyyy hh:mm:ss a"

    invoke-direct {v8, v11}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    .line 324
    .local v8, formatter:Ljava/text/SimpleDateFormat;
    const/4 v6, 0x0

    .line 327
    .local v6, date:Ljava/util/Date;
    :try_start_1
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v6

    .line 328
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

    .line 333
    :try_start_2
    invoke-virtual {v5, v6}, Lcom/android/exchange/SearchRequest$Builder;->queryGreaterThan(Ljava/util/Date;)Lcom/android/exchange/SearchRequest$Builder;

    .line 335
    .end local v6           #date:Ljava/util/Date;
    .end local v8           #formatter:Ljava/text/SimpleDateFormat;
    :cond_1
    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    const-string v12, "NoneDate"

    invoke-virtual {v11, v12}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v11

    if-eqz v11, :cond_2

    .line 336
    new-instance v8, Ljava/text/SimpleDateFormat;

    const-string v11, "dd/MM/yyyy hh:mm:ss a"

    invoke-direct {v8, v11}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1

    .line 337
    .restart local v8       #formatter:Ljava/text/SimpleDateFormat;
    const/4 v6, 0x0

    .line 340
    .restart local v6       #date:Ljava/util/Date;
    :try_start_3
    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v6

    .line 341
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

    .line 342
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

    .line 343
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

    .line 348
    :try_start_4
    invoke-virtual {v5, v6}, Lcom/android/exchange/SearchRequest$Builder;->queryLessThan(Ljava/util/Date;)Lcom/android/exchange/SearchRequest$Builder;

    .line 350
    .end local v6           #date:Ljava/util/Date;
    .end local v8           #formatter:Ljava/text/SimpleDateFormat;
    :cond_2
    invoke-virtual/range {p5 .. p5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    const-string v12, "NoneId"

    invoke-virtual {v11, v12}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v11

    if-eqz v11, :cond_3

    .line 351
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

    .line 352
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

    .line 358
    :cond_3
    invoke-virtual {v5}, Lcom/android/exchange/SearchRequest$Builder;->build()Lcom/android/exchange/SearchRequest;

    move-result-object v9

    .line 359
    .local v9, searchRequest:Lcom/android/exchange/SearchRequest;
    return-object v9

    .line 298
    .end local v9           #searchRequest:Lcom/android/exchange/SearchRequest;
    :cond_4
    const/4 v10, -0x1

    goto/16 :goto_0

    .line 301
    :cond_5
    const/16 v10, 0x400

    goto/16 :goto_0

    .line 329
    .restart local v6       #date:Ljava/util/Date;
    .restart local v8       #formatter:Ljava/text/SimpleDateFormat;
    :catch_0
    move-exception v11

    move-object v7, v11

    .line 330
    .local v7, e:Ljava/lang/Exception;
    :try_start_5
    new-instance v11, Ljava/lang/IllegalArgumentException;

    const-string v12, "Illegal value in Uri Date"

    invoke-direct {v11, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v11
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_1

    .line 354
    .end local v6           #date:Ljava/util/Date;
    .end local v7           #e:Ljava/lang/Exception;
    .end local v8           #formatter:Ljava/text/SimpleDateFormat;
    :catch_1
    move-exception v11

    move-object v7, v11

    .line 355
    .local v7, e:Ljava/lang/NumberFormatException;
    new-instance v11, Ljava/lang/IllegalArgumentException;

    const-string v12, "Illegal value in URI"

    invoke-direct {v11, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 344
    .end local v7           #e:Ljava/lang/NumberFormatException;
    .restart local v6       #date:Ljava/util/Date;
    .restart local v8       #formatter:Ljava/text/SimpleDateFormat;
    :catch_2
    move-exception v11

    move-object v7, v11

    .line 345
    .local v7, e:Ljava/lang/Exception;
    :try_start_6
    new-instance v11, Ljava/lang/IllegalArgumentException;

    const-string v12, "Illegal value in Uri Date"

    invoke-direct {v11, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v11
    :try_end_6
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_6} :catch_1
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .parameter "uri"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 230
    const/4 v0, -0x1

    return v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .parameter "uri"

    .prologue
    .line 235
    const-string v0, "vnd.android.cursor.dir/gal-entry"

    return-object v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 1
    .parameter "uri"
    .parameter "values"

    .prologue
    .line 240
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()Z
    .locals 1

    .prologue
    .line 245
    const/4 v0, 0x0

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 46
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    .line 130
    sget-object v4, Lcom/android/exchange/provider/ExchangeProvider;->sURIMatcher:Landroid/content/UriMatcher;

    move-object v0, v4

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v45

    .line 131
    .local v45, match:I
    packed-switch v45, :pswitch_data_0

    .line 224
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown URI "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 134
    :pswitch_0
    const-string v4, "ExchangeProvider"

    const-string v5, "enter email search."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    const-wide/16 v12, -0x1

    .line 136
    .local v12, accId:J
    const-wide/16 v14, -0x1

    .line 137
    .local v14, mailboxId:J
    const-wide/16 v16, -0x1

    .line 138
    .local v16, foldId:J
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 139
    .local v5, accountIdStr:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    const/4 v6, 0x2

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 140
    .local v6, searchTextString:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    const/4 v7, 0x3

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 141
    .local v7, greaterThanDateString:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    const/4 v8, 0x4

    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 142
    .local v8, lessThanDateString:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    const/4 v9, 0x5

    invoke-interface {v4, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 143
    .local v9, mailboxIdString:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    const/4 v10, 0x6

    invoke-interface {v4, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v41

    check-cast v41, Ljava/lang/String;

    .line 144
    .local v41, foldIdString:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    const/4 v10, 0x7

    invoke-interface {v4, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 146
    .local v10, optionsDeepTraversalStr:Ljava/lang/String;
    :try_start_0
    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v12

    .line 151
    :try_start_1
    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-wide v14

    .line 157
    :try_start_2
    invoke-static/range {v41 .. v41}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-wide v16

    .line 162
    const-string v4, "ExchangeProvider"

    const-string v11, "before buildSearchRequest"

    invoke-static {v4, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v4, p0

    .line 163
    invoke-direct/range {v4 .. v10}, Lcom/android/exchange/provider/ExchangeProvider;->buildSearchRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/exchange/SearchRequest;

    move-result-object v18

    .line 164
    .local v18, request:Lcom/android/exchange/SearchRequest;
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/provider/ExchangeProvider;->getContext()Landroid/content/Context;

    move-result-object v11

    .line 165
    .local v11, context:Landroid/content/Context;
    const-string v4, "ExchangeProvider"

    const-string v5, "after buildSearchRequest"

    .end local v5           #accountIdStr:Ljava/lang/String;
    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    invoke-static/range {v11 .. v18}, Lcom/android/exchange/EasSyncService;->searchEmail(Landroid/content/Context;JJJLcom/android/exchange/SearchRequest;)Lcom/android/exchange/provider/EmailResult;

    move-result-object v39

    .line 167
    .local v39, emailResult:Lcom/android/exchange/provider/EmailResult;
    const-string v4, "ExchangeProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "after searchEmail , mailbox id = "

    .end local v6           #searchTextString:Ljava/lang/String;
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    new-instance v44, Landroid/content/Intent;

    const-string v4, "android.intent.action.EMAILSEARCH_COMPLETED"

    move-object/from16 v0, v44

    move-object v1, v4

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 171
    .local v44, intent:Landroid/content/Intent;
    if-eqz v39, :cond_0

    .line 172
    const-string v4, "SearchResult"

    move-object/from16 v0, v39

    iget v0, v0, Lcom/android/exchange/provider/EmailResult;->result:I

    move v5, v0

    move-object/from16 v0, v44

    move-object v1, v4

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 173
    const-string v4, "Total"

    move-object/from16 v0, v39

    iget v0, v0, Lcom/android/exchange/provider/EmailResult;->total:I

    move v5, v0

    move-object/from16 v0, v44

    move-object v1, v4

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 174
    const-string v4, "StartRange"

    move-object/from16 v0, v39

    iget v0, v0, Lcom/android/exchange/provider/EmailResult;->startRange:I

    move v5, v0

    move-object/from16 v0, v44

    move-object v1, v4

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 175
    const-string v4, "EndRange"

    move-object/from16 v0, v39

    iget v0, v0, Lcom/android/exchange/provider/EmailResult;->endRange:I

    move v5, v0

    move-object/from16 v0, v44

    move-object v1, v4

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 179
    :cond_0
    :try_start_3
    move-object v0, v11

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 183
    :goto_0
    const/4 v4, 0x0

    .line 222
    .end local v7           #greaterThanDateString:Ljava/lang/String;
    .end local v8           #lessThanDateString:Ljava/lang/String;
    .end local v9           #mailboxIdString:Ljava/lang/String;
    .end local v10           #optionsDeepTraversalStr:Ljava/lang/String;
    .end local v11           #context:Landroid/content/Context;
    .end local v12           #accId:J
    .end local v14           #mailboxId:J
    .end local v16           #foldId:J
    .end local v18           #request:Lcom/android/exchange/SearchRequest;
    .end local v39           #emailResult:Lcom/android/exchange/provider/EmailResult;
    .end local v41           #foldIdString:Ljava/lang/String;
    .end local v44           #intent:Landroid/content/Intent;
    :goto_1
    return-object v4

    .line 147
    .restart local v5       #accountIdStr:Ljava/lang/String;
    .restart local v6       #searchTextString:Ljava/lang/String;
    .restart local v7       #greaterThanDateString:Ljava/lang/String;
    .restart local v8       #lessThanDateString:Ljava/lang/String;
    .restart local v9       #mailboxIdString:Ljava/lang/String;
    .restart local v10       #optionsDeepTraversalStr:Ljava/lang/String;
    .restart local v12       #accId:J
    .restart local v14       #mailboxId:J
    .restart local v16       #foldId:J
    .restart local v41       #foldIdString:Ljava/lang/String;
    :catch_0
    move-exception v38

    .line 148
    .local v38, e:Ljava/lang/NumberFormatException;
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Illegal value in URI"

    .end local v5           #accountIdStr:Ljava/lang/String;
    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 152
    .end local v38           #e:Ljava/lang/NumberFormatException;
    .restart local v5       #accountIdStr:Ljava/lang/String;
    :catch_1
    move-exception v38

    .line 153
    .restart local v38       #e:Ljava/lang/NumberFormatException;
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Illegal value in URI"

    .end local v5           #accountIdStr:Ljava/lang/String;
    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 158
    .end local v38           #e:Ljava/lang/NumberFormatException;
    .restart local v5       #accountIdStr:Ljava/lang/String;
    :catch_2
    move-exception v38

    .line 159
    .restart local v38       #e:Ljava/lang/NumberFormatException;
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Illegal value in URI"

    .end local v5           #accountIdStr:Ljava/lang/String;
    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 180
    .end local v6           #searchTextString:Ljava/lang/String;
    .end local v38           #e:Ljava/lang/NumberFormatException;
    .restart local v11       #context:Landroid/content/Context;
    .restart local v18       #request:Lcom/android/exchange/SearchRequest;
    .restart local v39       #emailResult:Lcom/android/exchange/provider/EmailResult;
    .restart local v44       #intent:Landroid/content/Intent;
    :catch_3
    move-exception v38

    .line 181
    .local v38, e:Ljava/lang/Exception;
    const-string v4, "ExchangeProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "exception = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v38 .. v38}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 187
    .end local v7           #greaterThanDateString:Ljava/lang/String;
    .end local v8           #lessThanDateString:Ljava/lang/String;
    .end local v9           #mailboxIdString:Ljava/lang/String;
    .end local v10           #optionsDeepTraversalStr:Ljava/lang/String;
    .end local v11           #context:Landroid/content/Context;
    .end local v12           #accId:J
    .end local v14           #mailboxId:J
    .end local v16           #foldId:J
    .end local v18           #request:Lcom/android/exchange/SearchRequest;
    .end local v38           #e:Ljava/lang/Exception;
    .end local v39           #emailResult:Lcom/android/exchange/provider/EmailResult;
    .end local v41           #foldIdString:Ljava/lang/String;
    .end local v44           #intent:Landroid/content/Intent;
    :pswitch_1
    const-wide/16 v33, -0x1

    .line 189
    .local v33, accountId:J
    new-instance v19, Lcom/android/exchange/provider/ExchangeProvider$MatrixCursorExtras;

    sget-object v4, Lcom/android/exchange/provider/ExchangeProvider;->GAL_PROJECTION:[Ljava/lang/String;

    move-object/from16 v0, v19

    move-object v1, v4

    invoke-direct {v0, v1}, Lcom/android/exchange/provider/ExchangeProvider$MatrixCursorExtras;-><init>([Ljava/lang/String;)V

    .line 190
    .local v19, c:Lcom/android/exchange/provider/ExchangeProvider$MatrixCursorExtras;
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Ljava/lang/String;

    .line 191
    .local v35, accountIdString:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x2

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Ljava/lang/String;

    .line 194
    .local v40, filter:Ljava/lang/String;
    :try_start_4
    invoke-static/range {v35 .. v35}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_4

    move-result-wide v33

    .line 199
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/provider/ExchangeProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    move-object v0, v4

    move-wide/from16 v1, v33

    move-object/from16 v3, v40

    invoke-static {v0, v1, v2, v3}, Lcom/android/exchange/EasSyncService;->searchGal(Landroid/content/Context;JLjava/lang/String;)Lcom/android/exchange/provider/GalResult;

    move-result-object v42

    .line 200
    .local v42, galResult:Lcom/android/exchange/provider/GalResult;
    if-eqz v42, :cond_2

    .line 201
    move-object/from16 v0, v42

    iget-object v0, v0, Lcom/android/exchange/provider/GalResult;->galData:Ljava/util/ArrayList;

    move-object v4, v0

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v43

    .local v43, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface/range {v43 .. v43}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface/range {v43 .. v43}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Lcom/android/exchange/provider/GalResult$GalData;

    .line 204
    .local v37, data:Lcom/android/exchange/provider/GalResult$GalData;
    const-string v4, "ExchangeProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " id = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v37

    iget-wide v0, v0, Lcom/android/exchange/provider/GalResult$GalData;->_id:J

    move-wide/from16 v20, v0

    move-object v0, v5

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " displayName = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v37

    iget-object v0, v0, Lcom/android/exchange/provider/GalResult$GalData;->displayName:Ljava/lang/String;

    move-object v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n emailAddress = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v37

    iget-object v0, v0, Lcom/android/exchange/provider/GalResult$GalData;->emailAddress:Ljava/lang/String;

    move-object v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " alias = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v37

    iget-object v0, v0, Lcom/android/exchange/provider/GalResult$GalData;->mAlias:Ljava/lang/String;

    move-object v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " company = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v37

    iget-object v0, v0, Lcom/android/exchange/provider/GalResult$GalData;->mCompany:Ljava/lang/String;

    move-object v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n firstName = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v37

    iget-object v0, v0, Lcom/android/exchange/provider/GalResult$GalData;->mFirstName:Ljava/lang/String;

    move-object v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " lastName = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v37

    iget-object v0, v0, Lcom/android/exchange/provider/GalResult$GalData;->mLastName:Ljava/lang/String;

    move-object v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\nhomePhone = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v37

    iget-object v0, v0, Lcom/android/exchange/provider/GalResult$GalData;->mHomePhone:Ljava/lang/String;

    move-object v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " mobilePhone = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v37

    iget-object v0, v0, Lcom/android/exchange/provider/GalResult$GalData;->mMobilePhone:Ljava/lang/String;

    move-object v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\noffice = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v37

    iget-object v0, v0, Lcom/android/exchange/provider/GalResult$GalData;->mOffice:Ljava/lang/String;

    move-object v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " phone = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v37

    iget-object v0, v0, Lcom/android/exchange/provider/GalResult$GalData;->mPhone:Ljava/lang/String;

    move-object v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " title = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v37

    iget-object v0, v0, Lcom/android/exchange/provider/GalResult$GalData;->mTitle:Ljava/lang/String;

    move-object v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    move-object/from16 v0, v37

    iget-wide v0, v0, Lcom/android/exchange/provider/GalResult$GalData;->_id:J

    move-wide/from16 v20, v0

    move-object/from16 v0, v37

    iget-object v0, v0, Lcom/android/exchange/provider/GalResult$GalData;->displayName:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v37

    iget-object v0, v0, Lcom/android/exchange/provider/GalResult$GalData;->mPhone:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v37

    iget-object v0, v0, Lcom/android/exchange/provider/GalResult$GalData;->mOffice:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, v37

    iget-object v0, v0, Lcom/android/exchange/provider/GalResult$GalData;->mTitle:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, v37

    iget-object v0, v0, Lcom/android/exchange/provider/GalResult$GalData;->mCompany:Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, v37

    iget-object v0, v0, Lcom/android/exchange/provider/GalResult$GalData;->mAlias:Ljava/lang/String;

    move-object/from16 v27, v0

    move-object/from16 v0, v37

    iget-object v0, v0, Lcom/android/exchange/provider/GalResult$GalData;->emailAddress:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, v37

    iget-object v0, v0, Lcom/android/exchange/provider/GalResult$GalData;->mFirstName:Ljava/lang/String;

    move-object/from16 v29, v0

    move-object/from16 v0, v37

    iget-object v0, v0, Lcom/android/exchange/provider/GalResult$GalData;->mLastName:Ljava/lang/String;

    move-object/from16 v30, v0

    move-object/from16 v0, v37

    iget-object v0, v0, Lcom/android/exchange/provider/GalResult$GalData;->mHomePhone:Ljava/lang/String;

    move-object/from16 v31, v0

    move-object/from16 v0, v37

    iget-object v0, v0, Lcom/android/exchange/provider/GalResult$GalData;->mMobilePhone:Ljava/lang/String;

    move-object/from16 v32, v0

    invoke-static/range {v19 .. v32}, Lcom/android/exchange/provider/ExchangeProvider;->addGalDataRow(Landroid/database/MatrixCursor;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 195
    .end local v37           #data:Lcom/android/exchange/provider/GalResult$GalData;
    .end local v42           #galResult:Lcom/android/exchange/provider/GalResult;
    .end local v43           #i$:Ljava/util/Iterator;
    :catch_4
    move-exception v38

    .line 196
    .local v38, e:Ljava/lang/NumberFormatException;
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Illegal value in URI"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 218
    .end local v38           #e:Ljava/lang/NumberFormatException;
    .restart local v42       #galResult:Lcom/android/exchange/provider/GalResult;
    .restart local v43       #i$:Ljava/util/Iterator;
    :cond_1
    new-instance v36, Landroid/os/Bundle;

    invoke-direct/range {v36 .. v36}, Landroid/os/Bundle;-><init>()V

    .line 219
    .local v36, bundle:Landroid/os/Bundle;
    const-string v4, "com.android.exchange.provider.TOTAL_RESULTS"

    move-object/from16 v0, v42

    iget v0, v0, Lcom/android/exchange/provider/GalResult;->total:I

    move v5, v0

    move-object/from16 v0, v36

    move-object v1, v4

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 220
    move-object/from16 v0, v19

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/android/exchange/provider/ExchangeProvider$MatrixCursorExtras;->setExtras(Landroid/os/Bundle;)V

    .end local v36           #bundle:Landroid/os/Bundle;
    .end local v43           #i$:Ljava/util/Iterator;
    :cond_2
    move-object/from16 v4, v19

    .line 222
    goto/16 :goto_1

    .line 131
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .parameter "uri"
    .parameter "values"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 250
    const/4 v0, -0x1

    return v0
.end method
