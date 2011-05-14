.class public Lcom/android/exchange/adapter/FolderSyncParser;
.super Lcom/android/exchange/adapter/AbstractSyncParser;
.source "FolderSyncParser.java"


# static fields
.field public static final ALL_BUT_ACCOUNT_MAILBOX:Ljava/lang/String; = "accountKey=? and type!=68"

.field public static final CALENDAR_TYPE:I = 0x8

.field public static final CONTACTS_TYPE:I = 0x9

.field public static final DELETED_TYPE:I = 0x4

.field public static final DRAFTS_TYPE:I = 0x3

.field public static final INBOX_TYPE:I = 0x2

.field public static final JOURNAL_TYPE:I = 0xb

.field private static final MAILBOX_ID_COLUMNS_PROJECTION:[Ljava/lang/String; = null

.field public static final NOTES_TYPE:I = 0xa

.field public static final OUTBOX_TYPE:I = 0x6

.field public static final SENT_TYPE:I = 0x5

.field public static final TAG:Ljava/lang/String; = "FolderSyncParser"

.field public static final TASKS_TYPE:I = 0x7

.field public static final USER_FOLDER_TYPE:I = 0x1

.field public static final USER_MAILBOX_TYPE:I = 0xc

.field private static final WHERE_DISPLAY_NAME_AND_ACCOUNT:Ljava/lang/String; = "displayName=? and accountKey=?"

.field private static final WHERE_PARENT_SERVER_ID_AND_ACCOUNT:Ljava/lang/String; = "parentServerId=? and accountKey=?"

.field private static final WHERE_SERVER_ID_AND_ACCOUNT:Ljava/lang/String; = "serverId=? and accountKey=?"

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

    .line 68
    const/16 v0, 0x8

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

    const/16 v2, 0x9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/exchange/adapter/FolderSyncParser;->mValidFolderTypes:Ljava/util/List;

    .line 83
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
    .line 92
    invoke-direct {p0, p1, p2}, Lcom/android/exchange/adapter/AbstractSyncParser;-><init>(Ljava/io/InputStream;Lcom/android/exchange/adapter/AbstractSyncAdapter;)V

    .line 88
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mMock:Lcom/android/exchange/MockParserStream;

    .line 89
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mBindArguments:[Ljava/lang/String;

    .line 93
    iget-object v0, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-wide v0, v0, Lcom/android/email/provider/EmailContent$Account;->mId:J

    iput-wide v0, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mAccountId:J

    .line 94
    iget-wide v0, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mAccountId:J

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mAccountIdAsString:Ljava/lang/String;

    .line 95
    instance-of v0, p1, Lcom/android/exchange/MockParserStream;

    if-eqz v0, :cond_0

    .line 96
    check-cast p1, Lcom/android/exchange/MockParserStream;

    .end local p1
    iput-object p1, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mMock:Lcom/android/exchange/MockParserStream;

    .line 98
    :cond_0
    return-void
.end method

.method private getServerIdCursor(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6
    .parameter "serverId"

    .prologue
    .line 155
    iget-object v0, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mBindArguments:[Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 156
    iget-object v0, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mBindArguments:[Ljava/lang/String;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mAccountIdAsString:Ljava/lang/String;

    aput-object v2, v0, v1

    .line 157
    iget-object v0, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mContentResolver:Landroid/content/ContentResolver;

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
    .locals 10
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
    const/4 v9, 0x3

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 188
    const/4 v1, 0x0

    .line 189
    .local v1, name:Ljava/lang/String;
    const/4 v3, 0x0

    .line 190
    .local v3, serverId:Ljava/lang/String;
    const/4 v2, 0x0

    .line 191
    .local v2, parentId:Ljava/lang/String;
    const/4 v4, 0x0

    .line 193
    .local v4, type:I
    :goto_0
    const/16 v5, 0x1cf

    invoke-virtual {p0, v5}, Lcom/android/exchange/adapter/FolderSyncParser;->nextTag(I)I

    move-result v5

    if-eq v5, v9, :cond_0

    .line 194
    iget v5, p0, Lcom/android/exchange/adapter/FolderSyncParser;->tag:I

    packed-switch v5, :pswitch_data_0

    .line 212
    invoke-virtual {p0}, Lcom/android/exchange/adapter/FolderSyncParser;->skipTag()V

    goto :goto_0

    .line 196
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/exchange/adapter/FolderSyncParser;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 197
    goto :goto_0

    .line 200
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/exchange/adapter/FolderSyncParser;->getValueInt()I

    move-result v4

    .line 201
    goto :goto_0

    .line 204
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/exchange/adapter/FolderSyncParser;->getValue()Ljava/lang/String;

    move-result-object v2

    .line 205
    goto :goto_0

    .line 208
    :pswitch_3
    invoke-virtual {p0}, Lcom/android/exchange/adapter/FolderSyncParser;->getValue()Ljava/lang/String;

    move-result-object v3

    .line 209
    goto :goto_0

    .line 215
    :cond_0
    sget-object v5, Lcom/android/exchange/adapter/FolderSyncParser;->mValidFolderTypes:Ljava/util/List;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 216
    new-instance v0, Lcom/android/email/provider/EmailContent$Mailbox;

    invoke-direct {v0}, Lcom/android/email/provider/EmailContent$Mailbox;-><init>()V

    .line 217
    .local v0, m:Lcom/android/email/provider/EmailContent$Mailbox;
    iput-object v1, v0, Lcom/android/email/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    .line 218
    iput-object v3, v0, Lcom/android/email/provider/EmailContent$Mailbox;->mServerId:Ljava/lang/String;

    .line 219
    iget-wide v5, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mAccountId:J

    iput-wide v5, v0, Lcom/android/email/provider/EmailContent$Mailbox;->mAccountKey:J

    .line 220
    iput v8, v0, Lcom/android/email/provider/EmailContent$Mailbox;->mType:I

    .line 223
    const/4 v5, -0x1

    iput v5, v0, Lcom/android/email/provider/EmailContent$Mailbox;->mSyncInterval:I

    .line 224
    packed-switch v4, :pswitch_data_1

    .line 254
    :goto_1
    :pswitch_4
    iget v5, v0, Lcom/android/email/provider/EmailContent$Mailbox;->mType:I

    const/16 v6, 0x40

    if-ge v5, v6, :cond_3

    move v5, v8

    :goto_2
    iput-boolean v5, v0, Lcom/android/email/provider/EmailContent$Mailbox;->mFlagVisible:Z

    .line 256
    const-string v5, "0"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 257
    iput-object v2, v0, Lcom/android/email/provider/EmailContent$Mailbox;->mParentServerId:Ljava/lang/String;

    .line 260
    :cond_1
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const-string v6, "Adding mailbox: "

    aput-object v6, v5, v7

    iget-object v6, v0, Lcom/android/email/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    aput-object v6, v5, v8

    invoke-virtual {p0, v5}, Lcom/android/exchange/adapter/FolderSyncParser;->userLog([Ljava/lang/String;)V

    .line 261
    sget-object v5, Lcom/android/email/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v5}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/android/email/provider/EmailContent$Mailbox;->toContentValues()Landroid/content/ContentValues;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 265
    .end local v0           #m:Lcom/android/email/provider/EmailContent$Mailbox;
    :cond_2
    return-void

    .line 226
    .restart local v0       #m:Lcom/android/email/provider/EmailContent$Mailbox;
    :pswitch_5
    iput v7, v0, Lcom/android/email/provider/EmailContent$Mailbox;->mType:I

    .line 227
    iget-object v5, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget v5, v5, Lcom/android/email/provider/EmailContent$Account;->mSyncInterval:I

    iput v5, v0, Lcom/android/email/provider/EmailContent$Mailbox;->mSyncInterval:I

    goto :goto_1

    .line 230
    :pswitch_6
    const/16 v5, 0x42

    iput v5, v0, Lcom/android/email/provider/EmailContent$Mailbox;->mType:I

    .line 231
    iget-object v5, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget v5, v5, Lcom/android/email/provider/EmailContent$Account;->mSyncInterval:I

    iput v5, v0, Lcom/android/email/provider/EmailContent$Mailbox;->mSyncInterval:I

    goto :goto_1

    .line 236
    :pswitch_7
    const/4 v5, 0x4

    iput v5, v0, Lcom/android/email/provider/EmailContent$Mailbox;->mType:I

    goto :goto_1

    .line 239
    :pswitch_8
    const/4 v5, 0x5

    iput v5, v0, Lcom/android/email/provider/EmailContent$Mailbox;->mType:I

    goto :goto_1

    .line 242
    :pswitch_9
    iput v9, v0, Lcom/android/email/provider/EmailContent$Mailbox;->mType:I

    goto :goto_1

    .line 245
    :pswitch_a
    const/4 v5, 0x6

    iput v5, v0, Lcom/android/email/provider/EmailContent$Mailbox;->mType:I

    goto :goto_1

    .line 248
    :pswitch_b
    const/16 v5, 0x41

    iput v5, v0, Lcom/android/email/provider/EmailContent$Mailbox;->mType:I

    .line 249
    iget-object v5, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget v5, v5, Lcom/android/email/provider/EmailContent$Account;->mSyncInterval:I

    iput v5, v0, Lcom/android/email/provider/EmailContent$Mailbox;->mSyncInterval:I

    goto :goto_1

    :cond_3
    move v5, v7

    .line 254
    goto :goto_2

    .line 194
    :pswitch_data_0
    .packed-switch 0x1c7
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch

    .line 224
    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_5
        :pswitch_9
        :pswitch_a
        :pswitch_8
        :pswitch_7
        :pswitch_4
        :pswitch_b
        :pswitch_6
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

    .line 315
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 317
    .local v9, ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    :goto_0
    const/16 v0, 0x1ce

    invoke-virtual {p0, v0}, Lcom/android/exchange/adapter/FolderSyncParser;->nextTag(I)I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_4

    .line 318
    iget v0, p0, Lcom/android/exchange/adapter/FolderSyncParser;->tag:I

    const/16 v1, 0x1cf

    if-ne v0, v1, :cond_0

    .line 319
    invoke-virtual {p0, v9}, Lcom/android/exchange/adapter/FolderSyncParser;->addParser(Ljava/util/ArrayList;)V

    goto :goto_0

    .line 320
    :cond_0
    iget v0, p0, Lcom/android/exchange/adapter/FolderSyncParser;->tag:I

    const/16 v1, 0x1d0

    if-ne v0, v1, :cond_1

    .line 321
    invoke-virtual {p0, v9}, Lcom/android/exchange/adapter/FolderSyncParser;->deleteParser(Ljava/util/ArrayList;)V

    goto :goto_0

    .line 322
    :cond_1
    iget v0, p0, Lcom/android/exchange/adapter/FolderSyncParser;->tag:I

    const/16 v1, 0x1d1

    if-ne v0, v1, :cond_2

    .line 323
    invoke-virtual {p0, v9}, Lcom/android/exchange/adapter/FolderSyncParser;->updateParser(Ljava/util/ArrayList;)V

    goto :goto_0

    .line 324
    :cond_2
    iget v0, p0, Lcom/android/exchange/adapter/FolderSyncParser;->tag:I

    const/16 v1, 0x1d7

    if-ne v0, v1, :cond_3

    .line 325
    invoke-virtual {p0}, Lcom/android/exchange/adapter/FolderSyncParser;->getValueInt()I

    goto :goto_0

    .line 327
    :cond_3
    invoke-virtual {p0}, Lcom/android/exchange/adapter/FolderSyncParser;->skipTag()V

    goto :goto_0

    .line 333
    :cond_4
    iget-object v0, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mMock:Lcom/android/exchange/MockParserStream;

    if-eqz v0, :cond_5

    .line 334
    iget-object v0, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mMock:Lcom/android/exchange/MockParserStream;

    invoke-virtual {v0, v2}, Lcom/android/exchange/MockParserStream;->setResult(Ljava/lang/Object;)V

    .line 385
    :goto_1
    return-void

    .line 340
    :cond_5
    iget-object v0, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mService:Lcom/android/exchange/EasSyncService;

    invoke-virtual {v0}, Lcom/android/exchange/EasSyncService;->getSynchronizer()Ljava/lang/Object;

    move-result-object v11

    monitor-enter v11

    .line 341
    :try_start_0
    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mService:Lcom/android/exchange/EasSyncService;

    invoke-virtual {v0}, Lcom/android/exchange/EasSyncService;->isStopped()Z

    move-result v0

    if-nez v0, :cond_7

    .line 342
    const-string v0, "Applying "

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v1

    const-string v2, " mailbox operations."

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/exchange/adapter/FolderSyncParser;->userLog(Ljava/lang/String;ILjava/lang/String;)V

    .line 345
    sget-object v0, Lcom/android/email/provider/EmailContent$Account;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v1, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mAccountId:J

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    invoke-virtual {v1}, Lcom/android/email/provider/EmailContent$Account;->toContentValues()Landroid/content/ContentValues;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 351
    :try_start_1
    iget-object v0, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "com.android.email.provider"

    invoke-virtual {v0, v1, v9}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    .line 352
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "New Account SyncKey: "

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-object v2, v2, Lcom/android/email/provider/EmailContent$Account;->mSyncKey:Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/android/exchange/adapter/FolderSyncParser;->userLog([Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/content/OperationApplicationException; {:try_start_1 .. :try_end_1} :catch_0

    .line 361
    :goto_2
    :try_start_2
    iget-object v0, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mBindArguments:[Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "Sync Issues"

    aput-object v2, v0, v1

    .line 362
    iget-object v0, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mBindArguments:[Ljava/lang/String;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mAccountIdAsString:Ljava/lang/String;

    aput-object v2, v0, v1

    .line 363
    iget-object v0, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/email/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/exchange/adapter/FolderSyncParser;->MAILBOX_ID_COLUMNS_PROJECTION:[Ljava/lang/String;

    const-string v3, "displayName=? and accountKey=?"

    iget-object v4, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mBindArguments:[Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v6

    .line 366
    .local v6, c:Landroid/database/Cursor;
    const/4 v10, 0x0

    .line 367
    .local v10, parentServerId:Ljava/lang/String;
    const-wide/16 v7, 0x0

    .line 369
    .local v7, id:J
    :try_start_3
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 370
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 371
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v10

    .line 374
    :cond_6
    :try_start_4
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 376
    if-eqz v10, :cond_7

    .line 377
    iget-object v0, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/email/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, v7, v8}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 379
    iget-object v0, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mBindArguments:[Ljava/lang/String;

    const/4 v1, 0x0

    aput-object v10, v0, v1

    .line 380
    iget-object v0, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/email/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    const-string v2, "parentServerId=? and accountKey=?"

    iget-object v3, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mBindArguments:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 384
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

    .line 374
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

    .line 355
    .end local v6           #c:Landroid/database/Cursor;
    .end local v7           #id:J
    .end local v10           #parentServerId:Ljava/lang/String;
    :catch_0
    move-exception v0

    goto :goto_2

    .line 353
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
    .line 392
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
    .line 400
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
    .line 162
    .local p1, ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    :goto_0
    const/16 v2, 0x1d0

    invoke-virtual {p0, v2}, Lcom/android/exchange/adapter/FolderSyncParser;->nextTag(I)I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_1

    .line 163
    iget v2, p0, Lcom/android/exchange/adapter/FolderSyncParser;->tag:I

    packed-switch v2, :pswitch_data_0

    .line 182
    invoke-virtual {p0}, Lcom/android/exchange/adapter/FolderSyncParser;->skipTag()V

    goto :goto_0

    .line 165
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/exchange/adapter/FolderSyncParser;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 167
    .local v1, serverId:Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/android/exchange/adapter/FolderSyncParser;->getServerIdCursor(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 169
    .local v0, c:Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 170
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "Deleting "

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object v1, v2, v3

    invoke-virtual {p0, v2}, Lcom/android/exchange/adapter/FolderSyncParser;->userLog([Ljava/lang/String;)V

    .line 171
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

    .line 174
    iget-object v2, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mContext:Landroid/content/Context;

    iget-wide v3, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mAccountId:J

    iget-object v5, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    iget-wide v5, v5, Lcom/android/email/provider/EmailContent$Mailbox;->mId:J

    invoke-static {v2, v3, v4, v5, v6}, Lcom/android/email/provider/AttachmentProvider;->deleteAllMailboxAttachmentFiles(Landroid/content/Context;JJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 178
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v2

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v2

    .line 185
    .end local v0           #c:Landroid/database/Cursor;
    .end local v1           #serverId:Ljava/lang/String;
    :cond_1
    return-void

    .line 163
    nop

    :pswitch_data_0
    .packed-switch 0x1c8
        :pswitch_0
    .end packed-switch
.end method

.method public moveResponseParser()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 411
    return-void
.end method

.method public parse()Z
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v13, 0x2

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 103
    const/4 v1, 0x0

    .line 104
    .local v1, res:Z
    const/4 v2, 0x0

    .line 105
    .local v2, resetFolders:Z
    invoke-virtual {p0, v11}, Lcom/android/exchange/adapter/FolderSyncParser;->nextTag(I)I

    move-result v5

    const/16 v6, 0x1d6

    if-eq v5, v6, :cond_0

    .line 106
    new-instance v5, Lcom/android/exchange/adapter/Parser$EasParserException;

    invoke-direct {v5, p0}, Lcom/android/exchange/adapter/Parser$EasParserException;-><init>(Lcom/android/exchange/adapter/Parser;)V

    throw v5

    .line 107
    :cond_0
    :goto_0
    invoke-virtual {p0, v11}, Lcom/android/exchange/adapter/FolderSyncParser;->nextTag(I)I

    move-result v5

    const/4 v6, 0x3

    if-eq v5, v6, :cond_5

    .line 108
    iget v5, p0, Lcom/android/exchange/adapter/FolderSyncParser;->tag:I

    const/16 v6, 0x1cc

    if-ne v5, v6, :cond_2

    .line 109
    invoke-virtual {p0}, Lcom/android/exchange/adapter/FolderSyncParser;->getValueInt()I

    move-result v4

    .line 110
    .local v4, status:I
    if-eq v4, v12, :cond_0

    .line 114
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 115
    .local v3, sb:Ljava/lang/StringBuffer;
    const-string v5, "FolderSync failed: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 116
    iget-object v5, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mService:Lcom/android/exchange/EasSyncService;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/exchange/EasSyncService;->errorLog(Ljava/lang/String;)V

    .line 119
    const/16 v5, 0x9

    if-ne v4, v5, :cond_1

    .line 120
    iget-object v5, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    const-string v6, "0"

    iput-object v6, v5, Lcom/android/email/provider/EmailContent$Account;->mSyncKey:Ljava/lang/String;

    .line 121
    iget-object v5, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mService:Lcom/android/exchange/EasSyncService;

    const-string v6, "Bad sync key; RESET and delete all folders"

    invoke-virtual {v5, v6}, Lcom/android/exchange/EasSyncService;->errorLog(Ljava/lang/String;)V

    .line 122
    iget-object v5, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v6, Lcom/android/email/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    const-string v7, "accountKey=? and type!=68"

    new-array v8, v12, [Ljava/lang/String;

    iget-wide v9, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mAccountId:J

    invoke-static {v9, v10}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v11

    invoke-virtual {v5, v6, v7, v8}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 125
    iget-wide v5, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mAccountId:J

    invoke-static {v5, v6}, Lcom/android/exchange/SyncManager;->folderListReloaded(J)V

    .line 126
    const/4 v1, 0x1

    .line 127
    const/4 v2, 0x1

    goto :goto_0

    .line 131
    :cond_1
    iget-object v5, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mService:Lcom/android/exchange/EasSyncService;

    const-string v6, "Throwing IOException; will retry later"

    invoke-virtual {v5, v6}, Lcom/android/exchange/EasSyncService;->errorLog(Ljava/lang/String;)V

    .line 132
    new-instance v5, Lcom/android/exchange/adapter/Parser$EasParserException;

    const-string v6, "Folder status error"

    invoke-direct {v5, p0, v6}, Lcom/android/exchange/adapter/Parser$EasParserException;-><init>(Lcom/android/exchange/adapter/Parser;Ljava/lang/String;)V

    throw v5

    .line 135
    .end local v3           #sb:Ljava/lang/StringBuffer;
    .end local v4           #status:I
    :cond_2
    iget v5, p0, Lcom/android/exchange/adapter/FolderSyncParser;->tag:I

    const/16 v6, 0x1d2

    if-ne v5, v6, :cond_3

    .line 136
    iget-object v5, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    invoke-virtual {p0}, Lcom/android/exchange/adapter/FolderSyncParser;->getValue()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/android/email/provider/EmailContent$Account;->mSyncKey:Ljava/lang/String;

    .line 137
    new-array v5, v13, [Ljava/lang/String;

    const-string v6, "New Account SyncKey: "

    aput-object v6, v5, v11

    iget-object v6, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-object v6, v6, Lcom/android/email/provider/EmailContent$Account;->mSyncKey:Ljava/lang/String;

    aput-object v6, v5, v12

    invoke-virtual {p0, v5}, Lcom/android/exchange/adapter/FolderSyncParser;->userLog([Ljava/lang/String;)V

    goto/16 :goto_0

    .line 138
    :cond_3
    iget v5, p0, Lcom/android/exchange/adapter/FolderSyncParser;->tag:I

    const/16 v6, 0x1ce

    if-ne v5, v6, :cond_4

    .line 139
    invoke-virtual {p0}, Lcom/android/exchange/adapter/FolderSyncParser;->changesParser()V

    goto/16 :goto_0

    .line 141
    :cond_4
    invoke-virtual {p0}, Lcom/android/exchange/adapter/FolderSyncParser;->skipTag()V

    goto/16 :goto_0

    .line 143
    :cond_5
    iget-object v5, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mService:Lcom/android/exchange/EasSyncService;

    invoke-virtual {v5}, Lcom/android/exchange/EasSyncService;->getSynchronizer()Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    .line 144
    :try_start_0
    iget-object v6, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mService:Lcom/android/exchange/EasSyncService;

    invoke-virtual {v6}, Lcom/android/exchange/EasSyncService;->isStopped()Z

    move-result v6

    if-eqz v6, :cond_6

    if-eqz v2, :cond_7

    .line 145
    :cond_6
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 146
    .local v0, cv:Landroid/content/ContentValues;
    const-string v6, "syncKey"

    iget-object v7, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-object v7, v7, Lcom/android/email/provider/EmailContent$Account;->mSyncKey:Ljava/lang/String;

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    iget-object v6, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-object v7, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v7, v0}, Lcom/android/email/provider/EmailContent$Account;->update(Landroid/content/Context;Landroid/content/ContentValues;)I

    .line 148
    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "Leaving FolderSyncParser with Account syncKey="

    aput-object v8, v6, v7

    const/4 v7, 0x1

    iget-object v8, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-object v8, v8, Lcom/android/email/provider/EmailContent$Account;->mSyncKey:Ljava/lang/String;

    aput-object v8, v6, v7

    invoke-virtual {p0, v6}, Lcom/android/exchange/adapter/FolderSyncParser;->userLog([Ljava/lang/String;)V

    .line 150
    .end local v0           #cv:Landroid/content/ContentValues;
    :cond_7
    monitor-exit v5

    .line 151
    return v1

    .line 150
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
    .line 408
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
    .line 269
    .local p1, ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const/4 v4, 0x0

    .line 270
    .local v4, serverId:Ljava/lang/String;
    const/4 v2, 0x0

    .line 271
    .local v2, displayName:Ljava/lang/String;
    const/4 v3, 0x0

    .line 272
    .local v3, parentId:Ljava/lang/String;
    :goto_0
    const/16 v5, 0x1d1

    invoke-virtual {p0, v5}, Lcom/android/exchange/adapter/FolderSyncParser;->nextTag(I)I

    move-result v5

    const/4 v6, 0x3

    if-eq v5, v6, :cond_0

    .line 273
    iget v5, p0, Lcom/android/exchange/adapter/FolderSyncParser;->tag:I

    packed-switch v5, :pswitch_data_0

    .line 284
    invoke-virtual {p0}, Lcom/android/exchange/adapter/FolderSyncParser;->skipTag()V

    goto :goto_0

    .line 275
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/exchange/adapter/FolderSyncParser;->getValue()Ljava/lang/String;

    move-result-object v4

    .line 276
    goto :goto_0

    .line 278
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/exchange/adapter/FolderSyncParser;->getValue()Ljava/lang/String;

    move-result-object v2

    .line 279
    goto :goto_0

    .line 281
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/exchange/adapter/FolderSyncParser;->getValue()Ljava/lang/String;

    move-result-object v3

    .line 282
    goto :goto_0

    .line 290
    :cond_0
    if-eqz v4, :cond_5

    if-nez v2, :cond_1

    if-eqz v3, :cond_5

    .line 291
    :cond_1
    invoke-direct {p0, v4}, Lcom/android/exchange/adapter/FolderSyncParser;->getServerIdCursor(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 294
    .local v0, c:Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 295
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "Updating "

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object v4, v5, v6

    invoke-virtual {p0, v5}, Lcom/android/exchange/adapter/FolderSyncParser;->userLog([Ljava/lang/String;)V

    .line 296
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 297
    .local v1, cv:Landroid/content/ContentValues;
    if-eqz v2, :cond_2

    .line 298
    const-string v5, "displayName"

    invoke-virtual {v1, v5, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    :cond_2
    if-eqz v3, :cond_3

    .line 301
    const-string v5, "parentServerId"

    invoke-virtual {v1, v5, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
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

    .line 308
    .end local v1           #cv:Landroid/content/ContentValues;
    :cond_4
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 311
    .end local v0           #c:Landroid/database/Cursor;
    :cond_5
    return-void

    .line 308
    .restart local v0       #c:Landroid/database/Cursor;
    :catchall_0
    move-exception v5

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v5

    .line 273
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
    .line 404
    return-void
.end method
