.class public Lcom/android/exchange/adapter/FolderSyncParser;
.super Lcom/android/exchange/adapter/AbstractSyncParser;
.source "FolderSyncParser.java"


# static fields
.field private static final MAILBOX_ID_COLUMNS_PROJECTION:[Ljava/lang/String;

.field public static final mValidFolderTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAccountId:J

.field private mAccountIdAsString:Ljava/lang/String;

.field private mBindArguments:[Ljava/lang/String;

.field private mMock:Lcom/android/exchange/MockParserStream;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v2, 0x3

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x2

    .line 85
    const/16 v0, 0x11

    new-array v0, v0, [Ljava/lang/Integer;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v5

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v6

    const/4 v1, 0x5

    const/16 v2, 0xc

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const/16 v2, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const/16 v2, 0xa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const/16 v2, 0x9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const/4 v2, 0x7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const/16 v2, 0xd

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const/16 v2, 0xe

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const/16 v2, 0xf

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const/16 v2, 0x10

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const/16 v2, 0x11

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const/16 v2, 0x12

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const/16 v2, 0x13

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/exchange/adapter/FolderSyncParser;->mValidFolderTypes:Ljava/util/List;

    .line 105
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v4

    const-string v1, "serverId"

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/exchange/adapter/FolderSyncParser;->MAILBOX_ID_COLUMNS_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Lcom/android/exchange/adapter/AbstractSyncAdapter;)V
    .locals 2
    .parameter "in"
    .parameter "adapter"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 114
    invoke-direct {p0, p1, p2}, Lcom/android/exchange/adapter/AbstractSyncParser;-><init>(Ljava/io/InputStream;Lcom/android/exchange/adapter/AbstractSyncAdapter;)V

    .line 110
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mMock:Lcom/android/exchange/MockParserStream;

    .line 111
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mBindArguments:[Ljava/lang/String;

    .line 115
    iget-object v0, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-wide v0, v0, Lcom/android/email/provider/EmailContent;->mId:J

    iput-wide v0, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mAccountId:J

    .line 116
    iget-wide v0, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mAccountId:J

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mAccountIdAsString:Ljava/lang/String;

    .line 117
    instance-of v0, p1, Lcom/android/exchange/MockParserStream;

    if-eqz v0, :cond_0

    .line 118
    check-cast p1, Lcom/android/exchange/MockParserStream;

    .end local p1
    iput-object p1, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mMock:Lcom/android/exchange/MockParserStream;

    .line 120
    :cond_0
    return-void
.end method

.method private getServerIdCursor(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6
    .parameter "serverId"

    .prologue
    .line 190
    iget-object v0, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mBindArguments:[Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 191
    iget-object v0, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mBindArguments:[Ljava/lang/String;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mAccountIdAsString:Ljava/lang/String;

    aput-object v2, v0, v1

    .line 192
    iget-object v0, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/email/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/email/provider/EmailContent;->ID_PROJECTION:[Ljava/lang/String;

    const-string v3, "serverId=? and accountKey=?"

    iget-object v4, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mBindArguments:[Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public addParser(Ljava/util/ArrayList;)V
    .locals 14
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .local p1, ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const/4 v10, 0x3

    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 223
    const/4 v2, 0x0

    .line 224
    .local v2, name:Ljava/lang/String;
    const/4 v6, 0x0

    .line 225
    .local v6, serverId:Ljava/lang/String;
    const/4 v5, 0x0

    .line 226
    .local v5, parentId:Ljava/lang/String;
    const/4 v7, 0x0

    .line 228
    .local v7, type:I
    :goto_0
    const/16 v8, 0x1cf

    invoke-virtual {p0, v8}, Lcom/android/exchange/adapter/FolderSyncParser;->nextTag(I)I

    move-result v8

    if-eq v8, v10, :cond_0

    .line 229
    iget v8, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    packed-switch v8, :pswitch_data_0

    .line 247
    invoke-virtual {p0}, Lcom/android/exchange/adapter/FolderSyncParser;->skipTag()V

    goto :goto_0

    .line 231
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/exchange/adapter/FolderSyncParser;->getValue()Ljava/lang/String;

    move-result-object v2

    .line 232
    goto :goto_0

    .line 235
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/exchange/adapter/FolderSyncParser;->getValueInt()I

    move-result v7

    .line 236
    goto :goto_0

    .line 239
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/exchange/adapter/FolderSyncParser;->getValue()Ljava/lang/String;

    move-result-object v5

    .line 240
    goto :goto_0

    .line 243
    :pswitch_3
    invoke-virtual {p0}, Lcom/android/exchange/adapter/FolderSyncParser;->getValue()Ljava/lang/String;

    move-result-object v6

    .line 244
    goto :goto_0

    .line 250
    :cond_0
    sget-object v8, Lcom/android/exchange/adapter/FolderSyncParser;->mValidFolderTypes:Ljava/util/List;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 251
    new-instance v1, Lcom/android/email/provider/EmailContent$Mailbox;

    invoke-direct {v1}, Lcom/android/email/provider/EmailContent$Mailbox;-><init>()V

    .line 252
    .local v1, m:Lcom/android/email/provider/EmailContent$Mailbox;
    iput-object v2, v1, Lcom/android/email/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    .line 253
    iput-object v6, v1, Lcom/android/email/provider/EmailContent$Mailbox;->mServerId:Ljava/lang/String;

    .line 254
    iget-wide v8, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mAccountId:J

    iput-wide v8, v1, Lcom/android/email/provider/EmailContent$Mailbox;->mAccountKey:J

    .line 255
    iput v13, v1, Lcom/android/email/provider/EmailContent$Mailbox;->mType:I

    .line 258
    const/4 v8, -0x1

    iput v8, v1, Lcom/android/email/provider/EmailContent$Mailbox;->mSyncInterval:I

    .line 259
    packed-switch v7, :pswitch_data_1

    .line 345
    :cond_1
    :goto_1
    :pswitch_4
    iget v8, v1, Lcom/android/email/provider/EmailContent$Mailbox;->mType:I

    const/16 v9, 0x40

    if-ge v8, v9, :cond_4

    move v8, v13

    :goto_2
    iput-boolean v8, v1, Lcom/android/email/provider/EmailContent$Mailbox;->mFlagVisible:Z

    .line 347
    const-string v8, "0"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 348
    iput-object v5, v1, Lcom/android/email/provider/EmailContent$Mailbox;->mParentServerId:Ljava/lang/String;

    .line 351
    :cond_2
    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/String;

    const-string v9, "Adding mailbox: "

    aput-object v9, v8, v12

    iget-object v9, v1, Lcom/android/email/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    aput-object v9, v8, v13

    invoke-virtual {p0, v8}, Lcom/android/exchange/adapter/FolderSyncParser;->userLog([Ljava/lang/String;)V

    .line 352
    sget-object v8, Lcom/android/email/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v8}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v8

    invoke-virtual {v1}, Lcom/android/email/provider/EmailContent$Mailbox;->toContentValues()Landroid/content/ContentValues;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 356
    .end local v1           #m:Lcom/android/email/provider/EmailContent$Mailbox;
    :cond_3
    return-void

    .line 261
    .restart local v1       #m:Lcom/android/email/provider/EmailContent$Mailbox;
    :pswitch_5
    iput v12, v1, Lcom/android/email/provider/EmailContent$Mailbox;->mType:I

    .line 262
    iget-object v8, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget v8, v8, Lcom/android/email/provider/EmailContent$Account;->mSyncInterval:I

    iput v8, v1, Lcom/android/email/provider/EmailContent$Mailbox;->mSyncInterval:I

    goto :goto_1

    .line 265
    :pswitch_6
    const/16 v8, 0x42

    iput v8, v1, Lcom/android/email/provider/EmailContent$Mailbox;->mType:I

    .line 266
    iget-object v8, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget v8, v8, Lcom/android/email/provider/EmailContent$Account;->mSyncInterval:I

    iput v8, v1, Lcom/android/email/provider/EmailContent$Mailbox;->mSyncInterval:I

    goto :goto_1

    .line 271
    :pswitch_7
    const/4 v8, 0x4

    iput v8, v1, Lcom/android/email/provider/EmailContent$Mailbox;->mType:I

    .line 274
    :try_start_0
    iget-object v8, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-object v8, v8, Lcom/android/email/provider/EmailContent$Account;->mProtocolVersion:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v8

    const-wide v10, 0x4028333333333333L

    cmpl-double v8, v8, v10

    if-lez v8, :cond_1

    .line 275
    iget-object v8, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget v8, v8, Lcom/android/email/provider/EmailContent$Account;->mSyncInterval:I

    iput v8, v1, Lcom/android/email/provider/EmailContent$Mailbox;->mSyncInterval:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 277
    :catch_0
    move-exception v8

    move-object v3, v8

    .line 278
    .local v3, nfe:Ljava/lang/NumberFormatException;
    invoke-virtual {v3}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_1

    .line 279
    .end local v3           #nfe:Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v8

    move-object v4, v8

    .line 280
    .local v4, npe:Ljava/lang/NullPointerException;
    invoke-virtual {v4}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_1

    .line 285
    .end local v4           #npe:Ljava/lang/NullPointerException;
    :pswitch_8
    const/4 v8, 0x5

    iput v8, v1, Lcom/android/email/provider/EmailContent$Mailbox;->mType:I

    goto :goto_1

    .line 288
    :pswitch_9
    iput v10, v1, Lcom/android/email/provider/EmailContent$Mailbox;->mType:I

    goto :goto_1

    .line 291
    :pswitch_a
    const/4 v8, 0x6

    iput v8, v1, Lcom/android/email/provider/EmailContent$Mailbox;->mType:I

    goto :goto_1

    .line 294
    :pswitch_b
    const/16 v8, 0x41

    iput v8, v1, Lcom/android/email/provider/EmailContent$Mailbox;->mType:I

    .line 295
    iget-object v8, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget v8, v8, Lcom/android/email/provider/EmailContent$Account;->mSyncInterval:I

    iput v8, v1, Lcom/android/email/provider/EmailContent$Mailbox;->mSyncInterval:I

    goto/16 :goto_1

    .line 299
    :pswitch_c
    iget-object v8, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mContext:Landroid/content/Context;

    iget-wide v9, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mAccountId:J

    invoke-static {v8, v9, v10}, Lcom/android/email/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Account;

    move-result-object v0

    .line 300
    .local v0, acc:Lcom/android/email/provider/EmailContent$Account;
    iget-object v8, v0, Lcom/android/email/provider/EmailContent$Account;->mProtocolVersion:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v8

    const-wide/high16 v10, 0x402c

    cmpg-double v8, v8, v10

    if-ltz v8, :cond_3

    .line 305
    const/16 v8, 0x45

    iput v8, v1, Lcom/android/email/provider/EmailContent$Mailbox;->mType:I

    .line 306
    iget-object v8, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget v8, v8, Lcom/android/email/provider/EmailContent$Account;->mSyncInterval:I

    iput v8, v1, Lcom/android/email/provider/EmailContent$Mailbox;->mSyncInterval:I

    goto/16 :goto_1

    .line 311
    .end local v0           #acc:Lcom/android/email/provider/EmailContent$Account;
    :pswitch_d
    const/16 v8, 0x43

    iput v8, v1, Lcom/android/email/provider/EmailContent$Mailbox;->mType:I

    .line 312
    iget-object v8, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget v8, v8, Lcom/android/email/provider/EmailContent$Account;->mSyncInterval:I

    iput v8, v1, Lcom/android/email/provider/EmailContent$Mailbox;->mSyncInterval:I

    goto/16 :goto_1

    .line 317
    :pswitch_e
    const/16 v8, 0xc

    iput v8, v1, Lcom/android/email/provider/EmailContent$Mailbox;->mType:I

    goto/16 :goto_1

    .line 320
    :pswitch_f
    const/16 v8, 0x52

    iput v8, v1, Lcom/android/email/provider/EmailContent$Mailbox;->mType:I

    goto/16 :goto_1

    .line 323
    :pswitch_10
    const/16 v8, 0x53

    iput v8, v1, Lcom/android/email/provider/EmailContent$Mailbox;->mType:I

    goto/16 :goto_1

    .line 326
    :pswitch_11
    const/16 v8, 0x51

    iput v8, v1, Lcom/android/email/provider/EmailContent$Mailbox;->mType:I

    goto/16 :goto_1

    .line 329
    :pswitch_12
    const/16 v8, 0x55

    iput v8, v1, Lcom/android/email/provider/EmailContent$Mailbox;->mType:I

    goto/16 :goto_1

    .line 332
    :pswitch_13
    const/16 v8, 0x54

    iput v8, v1, Lcom/android/email/provider/EmailContent$Mailbox;->mType:I

    goto/16 :goto_1

    .line 335
    :pswitch_14
    const/16 v8, 0x60

    iput v8, v1, Lcom/android/email/provider/EmailContent$Mailbox;->mType:I

    goto/16 :goto_1

    .line 338
    :pswitch_15
    const/16 v8, 0x61

    iput v8, v1, Lcom/android/email/provider/EmailContent$Mailbox;->mType:I

    goto/16 :goto_1

    :cond_4
    move v8, v12

    .line 345
    goto/16 :goto_2

    .line 229
    nop

    :pswitch_data_0
    .packed-switch 0x1c7
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch

    .line 259
    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_5
        :pswitch_9
        :pswitch_a
        :pswitch_8
        :pswitch_7
        :pswitch_d
        :pswitch_b
        :pswitch_6
        :pswitch_c
        :pswitch_4
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
    .end packed-switch
.end method

.method public changesParser()V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 406
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 408
    .local v9, ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    :goto_0
    const/16 v0, 0x1ce

    invoke-virtual {p0, v0}, Lcom/android/exchange/adapter/FolderSyncParser;->nextTag(I)I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_4

    .line 409
    iget v0, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    const/16 v1, 0x1cf

    if-ne v0, v1, :cond_0

    .line 410
    invoke-virtual {p0, v9}, Lcom/android/exchange/adapter/FolderSyncParser;->addParser(Ljava/util/ArrayList;)V

    goto :goto_0

    .line 411
    :cond_0
    iget v0, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    const/16 v1, 0x1d0

    if-ne v0, v1, :cond_1

    .line 412
    invoke-virtual {p0, v9}, Lcom/android/exchange/adapter/FolderSyncParser;->deleteParser(Ljava/util/ArrayList;)V

    goto :goto_0

    .line 413
    :cond_1
    iget v0, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    const/16 v1, 0x1d1

    if-ne v0, v1, :cond_2

    .line 414
    invoke-virtual {p0, v9}, Lcom/android/exchange/adapter/FolderSyncParser;->updateParser(Ljava/util/ArrayList;)V

    goto :goto_0

    .line 415
    :cond_2
    iget v0, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    const/16 v1, 0x1d7

    if-ne v0, v1, :cond_3

    .line 416
    invoke-virtual {p0}, Lcom/android/exchange/adapter/FolderSyncParser;->getValueInt()I

    goto :goto_0

    .line 418
    :cond_3
    invoke-virtual {p0}, Lcom/android/exchange/adapter/FolderSyncParser;->skipTag()V

    goto :goto_0

    .line 424
    :cond_4
    iget-object v0, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mMock:Lcom/android/exchange/MockParserStream;

    if-eqz v0, :cond_5

    .line 425
    iget-object v0, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mMock:Lcom/android/exchange/MockParserStream;

    invoke-virtual {v0, v2}, Lcom/android/exchange/MockParserStream;->setResult(Ljava/lang/Object;)V

    .line 476
    :goto_1
    return-void

    .line 431
    :cond_5
    iget-object v0, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mService:Lcom/android/exchange/EasSyncService;

    invoke-virtual {v0}, Lcom/android/exchange/EasSyncService;->getSynchronizer()Ljava/lang/Object;

    move-result-object v11

    monitor-enter v11

    .line 432
    :try_start_0
    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mService:Lcom/android/exchange/EasSyncService;

    invoke-virtual {v0}, Lcom/android/exchange/EasSyncService;->isStopped()Z

    move-result v0

    if-nez v0, :cond_7

    .line 433
    const-string v0, "Applying "

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v1

    const-string v2, " mailbox operations."

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/exchange/adapter/FolderSyncParser;->userLog(Ljava/lang/String;ILjava/lang/String;)V

    .line 436
    sget-object v0, Lcom/android/email/provider/EmailContent$Account;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v1, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mAccountId:J

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    invoke-virtual {v1}, Lcom/android/email/provider/EmailContent$Account;->toContentValues()Landroid/content/ContentValues;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 442
    :try_start_1
    iget-object v0, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "com.android.email.provider"

    invoke-virtual {v0, v1, v9}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    .line 443
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "New Account SyncKey: "

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-object v2, v2, Lcom/android/email/provider/EmailContent$Account;->mSyncKey:Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/android/exchange/adapter/FolderSyncParser;->userLog([Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/content/OperationApplicationException; {:try_start_1 .. :try_end_1} :catch_0

    .line 452
    :goto_2
    :try_start_2
    iget-object v0, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mBindArguments:[Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "Sync Issues"

    aput-object v2, v0, v1

    .line 453
    iget-object v0, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mBindArguments:[Ljava/lang/String;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mAccountIdAsString:Ljava/lang/String;

    aput-object v2, v0, v1

    .line 454
    iget-object v0, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/email/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/exchange/adapter/FolderSyncParser;->MAILBOX_ID_COLUMNS_PROJECTION:[Ljava/lang/String;

    const-string v3, "displayName=? and accountKey=?"

    iget-object v4, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mBindArguments:[Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v6

    .line 457
    .local v6, c:Landroid/database/Cursor;
    const/4 v10, 0x0

    .line 458
    .local v10, parentServerId:Ljava/lang/String;
    const-wide/16 v7, 0x0

    .line 460
    .local v7, id:J
    :try_start_3
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 461
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 462
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v10

    .line 465
    :cond_6
    :try_start_4
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 467
    if-eqz v10, :cond_7

    .line 468
    iget-object v0, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/email/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, v7, v8}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 470
    iget-object v0, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mBindArguments:[Ljava/lang/String;

    const/4 v1, 0x0

    aput-object v10, v0, v1

    .line 471
    iget-object v0, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/email/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    const-string v2, "parentServerId=? and accountKey=?"

    iget-object v3, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mBindArguments:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 475
    .end local v6           #c:Landroid/database/Cursor;
    .end local v7           #id:J
    .end local v10           #parentServerId:Ljava/lang/String;
    :cond_7
    monitor-exit v11

    goto/16 :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v11
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    .line 465
    .restart local v6       #c:Landroid/database/Cursor;
    .restart local v7       #id:J
    .restart local v10       #parentServerId:Ljava/lang/String;
    :catchall_1
    move-exception v0

    :try_start_5
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 446
    .end local v6           #c:Landroid/database/Cursor;
    .end local v7           #id:J
    .end local v10           #parentServerId:Ljava/lang/String;
    :catch_0
    move-exception v0

    goto :goto_2

    .line 444
    :catch_1
    move-exception v0

    goto :goto_2
.end method

.method public commandsParser()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 483
    return-void
.end method

.method public commit()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 491
    return-void
.end method

.method public deleteParser(Ljava/util/ArrayList;)V
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 197
    .local p1, ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    :goto_0
    const/16 v2, 0x1d0

    invoke-virtual {p0, v2}, Lcom/android/exchange/adapter/FolderSyncParser;->nextTag(I)I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_1

    .line 198
    iget v2, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    packed-switch v2, :pswitch_data_0

    .line 217
    invoke-virtual {p0}, Lcom/android/exchange/adapter/FolderSyncParser;->skipTag()V

    goto :goto_0

    .line 200
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/exchange/adapter/FolderSyncParser;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 202
    .local v1, serverId:Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/android/exchange/adapter/FolderSyncParser;->getServerIdCursor(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 204
    .local v0, c:Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 205
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "Deleting "

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object v1, v2, v3

    invoke-virtual {p0, v2}, Lcom/android/exchange/adapter/FolderSyncParser;->userLog([Ljava/lang/String;)V

    .line 206
    sget-object v2, Lcom/android/email/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 209
    iget-object v2, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mContext:Landroid/content/Context;

    iget-wide v3, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mAccountId:J

    iget-object v5, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    iget-wide v5, v5, Lcom/android/email/provider/EmailContent;->mId:J

    invoke-static {v2, v3, v4, v5, v6}, Lcom/android/email/provider/AttachmentProvider;->deleteAllMailboxAttachmentFiles(Landroid/content/Context;JJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 213
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v2

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v2

    .line 220
    .end local v0           #c:Landroid/database/Cursor;
    .end local v1           #serverId:Ljava/lang/String;
    :cond_1
    return-void

    .line 198
    nop

    :pswitch_data_0
    .packed-switch 0x1c8
        :pswitch_0
    .end packed-switch
.end method

.method public parse()Z
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/email/mail/DeviceAccessException;
        }
    .end annotation

    .prologue
    const/4 v13, 0x2

    const/4 v12, 0x1

    const/4 v11, 0x0

    const-string v14, "FolderSync failed: "

    .line 125
    const/4 v1, 0x0

    .line 126
    .local v1, res:Z
    const/4 v2, 0x0

    .line 127
    .local v2, resetFolders:Z
    invoke-virtual {p0, v11}, Lcom/android/exchange/adapter/FolderSyncParser;->nextTag(I)I

    move-result v5

    const/16 v6, 0x1d6

    if-eq v5, v6, :cond_0

    .line 128
    new-instance v5, Lcom/android/exchange/adapter/Parser$EasParserException;

    invoke-direct {v5, p0}, Lcom/android/exchange/adapter/Parser$EasParserException;-><init>(Lcom/android/exchange/adapter/Parser;)V

    throw v5

    .line 129
    :cond_0
    :goto_0
    invoke-virtual {p0, v11}, Lcom/android/exchange/adapter/FolderSyncParser;->nextTag(I)I

    move-result v5

    const/4 v6, 0x3

    if-eq v5, v6, :cond_7

    .line 130
    iget v5, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    const/16 v6, 0x1cc

    if-ne v5, v6, :cond_4

    .line 131
    invoke-virtual {p0}, Lcom/android/exchange/adapter/FolderSyncParser;->getValueInt()I

    move-result v4

    .line 133
    .local v4, status:I
    invoke-virtual {p0, v4}, Lcom/android/exchange/adapter/FolderSyncParser;->isProvisioningStatus(I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 134
    iget-object v5, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mService:Lcom/android/exchange/EasSyncService;

    iput-boolean v12, v5, Lcom/android/exchange/EasSyncService;->mEasNeedsProvisioning:Z

    .line 135
    const/4 v1, 0x0

    goto :goto_0

    .line 139
    :cond_1
    if-eq v4, v12, :cond_0

    .line 142
    iget-object v5, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mService:Lcom/android/exchange/EasSyncService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "FolderSync failed: "

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/exchange/EasSyncService;->errorLog(Ljava/lang/String;)V

    .line 143
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 144
    .local v3, sb:Ljava/lang/StringBuffer;
    const-string v5, "FolderSync failed: "

    invoke-virtual {v3, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 145
    iget-object v5, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mService:Lcom/android/exchange/EasSyncService;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/exchange/EasSyncService;->errorLog(Ljava/lang/String;)V

    .line 148
    const/16 v5, 0x9

    if-ne v4, v5, :cond_2

    .line 149
    iget-object v5, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    const-string v6, "0"

    iput-object v6, v5, Lcom/android/email/provider/EmailContent$Account;->mSyncKey:Ljava/lang/String;

    .line 150
    iget-object v5, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mService:Lcom/android/exchange/EasSyncService;

    const-string v6, "Bad sync key; RESET and delete all folders"

    invoke-virtual {v5, v6}, Lcom/android/exchange/EasSyncService;->errorLog(Ljava/lang/String;)V

    .line 151
    iget-object v5, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v6, Lcom/android/email/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    const-string v7, "accountKey=? and type!=68"

    new-array v8, v12, [Ljava/lang/String;

    iget-wide v9, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mAccountId:J

    invoke-static {v9, v10}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v11

    invoke-virtual {v5, v6, v7, v8}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 154
    iget-wide v5, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mAccountId:J

    invoke-static {v5, v6}, Lcom/android/exchange/SyncManager;->folderListReloaded(J)V

    .line 155
    const/4 v1, 0x1

    .line 156
    const/4 v2, 0x1

    goto :goto_0

    .line 158
    :cond_2
    const/16 v5, 0x81

    if-ne v4, v5, :cond_3

    .line 159
    new-instance v5, Lcom/android/email/mail/DeviceAccessException;

    const v6, 0x40001

    const v7, 0x7f0802cb

    invoke-direct {v5, v6, v7}, Lcom/android/email/mail/DeviceAccessException;-><init>(II)V

    throw v5

    .line 164
    :cond_3
    iget-object v5, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mService:Lcom/android/exchange/EasSyncService;

    const-string v6, "Throwing IOException; will retry later"

    invoke-virtual {v5, v6}, Lcom/android/exchange/EasSyncService;->errorLog(Ljava/lang/String;)V

    .line 165
    new-instance v5, Lcom/android/exchange/adapter/Parser$EasParserException;

    const-string v6, "Folder status error"

    invoke-direct {v5, p0, v6}, Lcom/android/exchange/adapter/Parser$EasParserException;-><init>(Lcom/android/exchange/adapter/Parser;Ljava/lang/String;)V

    throw v5

    .line 170
    .end local v3           #sb:Ljava/lang/StringBuffer;
    .end local v4           #status:I
    :cond_4
    iget v5, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    const/16 v6, 0x1d2

    if-ne v5, v6, :cond_5

    .line 171
    iget-object v5, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    invoke-virtual {p0}, Lcom/android/exchange/adapter/FolderSyncParser;->getValue()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/android/email/provider/EmailContent$Account;->mSyncKey:Ljava/lang/String;

    .line 172
    new-array v5, v13, [Ljava/lang/String;

    const-string v6, "New Account SyncKey: "

    aput-object v6, v5, v11

    iget-object v6, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-object v6, v6, Lcom/android/email/provider/EmailContent$Account;->mSyncKey:Ljava/lang/String;

    aput-object v6, v5, v12

    invoke-virtual {p0, v5}, Lcom/android/exchange/adapter/FolderSyncParser;->userLog([Ljava/lang/String;)V

    goto/16 :goto_0

    .line 173
    :cond_5
    iget v5, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    const/16 v6, 0x1ce

    if-ne v5, v6, :cond_6

    .line 174
    invoke-virtual {p0}, Lcom/android/exchange/adapter/FolderSyncParser;->changesParser()V

    goto/16 :goto_0

    .line 176
    :cond_6
    invoke-virtual {p0}, Lcom/android/exchange/adapter/FolderSyncParser;->skipTag()V

    goto/16 :goto_0

    .line 178
    :cond_7
    iget-object v5, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mService:Lcom/android/exchange/EasSyncService;

    invoke-virtual {v5}, Lcom/android/exchange/EasSyncService;->getSynchronizer()Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    .line 179
    :try_start_0
    iget-object v6, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mService:Lcom/android/exchange/EasSyncService;

    invoke-virtual {v6}, Lcom/android/exchange/EasSyncService;->isStopped()Z

    move-result v6

    if-eqz v6, :cond_8

    if-eqz v2, :cond_9

    .line 180
    :cond_8
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 181
    .local v0, cv:Landroid/content/ContentValues;
    const-string v6, "syncKey"

    iget-object v7, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-object v7, v7, Lcom/android/email/provider/EmailContent$Account;->mSyncKey:Ljava/lang/String;

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    iget-object v6, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-object v7, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v7, v0}, Lcom/android/email/provider/EmailContent$Account;->update(Landroid/content/Context;Landroid/content/ContentValues;)I

    .line 183
    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "Leaving FolderSyncParser with Account syncKey="

    aput-object v8, v6, v7

    const/4 v7, 0x1

    iget-object v8, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-object v8, v8, Lcom/android/email/provider/EmailContent$Account;->mSyncKey:Ljava/lang/String;

    aput-object v8, v6, v7

    invoke-virtual {p0, v6}, Lcom/android/exchange/adapter/FolderSyncParser;->userLog([Ljava/lang/String;)V

    .line 185
    .end local v0           #cv:Landroid/content/ContentValues;
    :cond_9
    monitor-exit v5

    .line 186
    return v1

    .line 185
    :catchall_0
    move-exception v6

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6
.end method

.method public responsesParser()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 499
    return-void
.end method

.method public updateParser(Ljava/util/ArrayList;)V
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 360
    .local p1, ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const/4 v4, 0x0

    .line 361
    .local v4, serverId:Ljava/lang/String;
    const/4 v2, 0x0

    .line 362
    .local v2, displayName:Ljava/lang/String;
    const/4 v3, 0x0

    .line 363
    .local v3, parentId:Ljava/lang/String;
    :goto_0
    const/16 v5, 0x1d1

    invoke-virtual {p0, v5}, Lcom/android/exchange/adapter/FolderSyncParser;->nextTag(I)I

    move-result v5

    const/4 v6, 0x3

    if-eq v5, v6, :cond_0

    .line 364
    iget v5, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    packed-switch v5, :pswitch_data_0

    .line 375
    invoke-virtual {p0}, Lcom/android/exchange/adapter/FolderSyncParser;->skipTag()V

    goto :goto_0

    .line 366
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/exchange/adapter/FolderSyncParser;->getValue()Ljava/lang/String;

    move-result-object v4

    .line 367
    goto :goto_0

    .line 369
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/exchange/adapter/FolderSyncParser;->getValue()Ljava/lang/String;

    move-result-object v2

    .line 370
    goto :goto_0

    .line 372
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/exchange/adapter/FolderSyncParser;->getValue()Ljava/lang/String;

    move-result-object v3

    .line 373
    goto :goto_0

    .line 381
    :cond_0
    if-eqz v4, :cond_5

    if-nez v2, :cond_1

    if-eqz v3, :cond_5

    .line 382
    :cond_1
    invoke-direct {p0, v4}, Lcom/android/exchange/adapter/FolderSyncParser;->getServerIdCursor(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 385
    .local v0, c:Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 386
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "Updating "

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object v4, v5, v6

    invoke-virtual {p0, v5}, Lcom/android/exchange/adapter/FolderSyncParser;->userLog([Ljava/lang/String;)V

    .line 387
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 388
    .local v1, cv:Landroid/content/ContentValues;
    if-eqz v2, :cond_2

    .line 389
    const-string v5, "displayName"

    invoke-virtual {v1, v5, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    :cond_2
    if-eqz v3, :cond_3

    .line 392
    const-string v5, "parentServerId"

    invoke-virtual {v1, v5, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    :cond_3
    sget-object v5, Lcom/android/email/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    const/4 v6, 0x0

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-static {v5, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    invoke-static {v5}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 399
    .end local v1           #cv:Landroid/content/ContentValues;
    :cond_4
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 402
    .end local v0           #c:Landroid/database/Cursor;
    :cond_5
    return-void

    .line 399
    .restart local v0       #c:Landroid/database/Cursor;
    :catchall_0
    move-exception v5

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v5

    .line 364
    :pswitch_data_0
    .packed-switch 0x1c7
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public wipe()V
    .locals 0

    .prologue
    .line 495
    return-void
.end method
