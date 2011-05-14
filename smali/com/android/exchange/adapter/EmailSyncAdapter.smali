.class public Lcom/android/exchange/adapter/EmailSyncAdapter;
.super Lcom/android/exchange/adapter/AbstractSyncAdapter;
.source "EmailSyncAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;
    }
.end annotation


# static fields
.field private static final MESSAGE_ID_SUBJECT_ID_COLUMN:I = 0x0

.field private static final MESSAGE_ID_SUBJECT_PROJECTION:[Ljava/lang/String; = null

.field private static final MESSAGE_ID_SUBJECT_SUBJECT_COLUMN:I = 0x1

.field private static final UPDATES_FLAG_COLUMN:I = 0x3

.field private static final UPDATES_MAILBOX_KEY_COLUMN:I = 0x1

.field private static final UPDATES_MESSAGE_ID_COLUMN:I = 0x4

.field private static final UPDATES_PROJECTION:[Ljava/lang/String; = null

.field private static final UPDATES_READ_COLUMN:I = 0x0

.field private static final UPDATES_SERVER_ID_COLUMN:I = 0x2

.field private static final WHERE_BODY_SOURCE_MESSAGE_KEY:Ljava/lang/String; = "sourceMessageKey=?"


# instance fields
.field private final TAG:Ljava/lang/String;

.field fDeletedIdList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field fUpdatedIdList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field mBindArgument:[Ljava/lang/String;

.field mBindArguments:[Ljava/lang/String;

.field mDeletedIdList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field mIsLooping:Z

.field mUpdatedIdList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 103
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "flagRead"

    aput-object v1, v0, v3

    const-string v1, "mailboxKey"

    aput-object v1, v0, v4

    const-string v1, "syncServerId"

    aput-object v1, v0, v5

    const/4 v1, 0x3

    const-string v2, "flagFavorite"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "messageId"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/exchange/adapter/EmailSyncAdapter;->UPDATES_PROJECTION:[Ljava/lang/String;

    .line 109
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "subject"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/exchange/adapter/EmailSyncAdapter;->MESSAGE_ID_SUBJECT_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/email/provider/EmailContent$Mailbox;Lcom/android/exchange/EasSyncService;)V
    .locals 1
    .parameter "mailbox"
    .parameter "service"

    .prologue
    .line 132
    invoke-direct {p0, p1, p2}, Lcom/android/exchange/adapter/AbstractSyncAdapter;-><init>(Lcom/android/email/provider/EmailContent$Mailbox;Lcom/android/exchange/EasSyncService;)V

    .line 114
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/exchange/adapter/EmailSyncAdapter;->mBindArguments:[Ljava/lang/String;

    .line 115
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/exchange/adapter/EmailSyncAdapter;->mBindArgument:[Ljava/lang/String;

    .line 117
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/exchange/adapter/EmailSyncAdapter;->mDeletedIdList:Ljava/util/ArrayList;

    .line 118
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/exchange/adapter/EmailSyncAdapter;->mUpdatedIdList:Ljava/util/ArrayList;

    .line 120
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/exchange/adapter/EmailSyncAdapter;->fUpdatedIdList:Ljava/util/ArrayList;

    .line 121
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/exchange/adapter/EmailSyncAdapter;->fDeletedIdList:Ljava/util/ArrayList;

    .line 125
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/exchange/adapter/EmailSyncAdapter;->mIsLooping:Z

    .line 128
    const-string v0, "EmailSyncAdapter"

    iput-object v0, p0, Lcom/android/exchange/adapter/EmailSyncAdapter;->TAG:Ljava/lang/String;

    .line 133
    return-void
.end method

.method static synthetic access$000()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    sget-object v0, Lcom/android/exchange/adapter/EmailSyncAdapter;->UPDATES_PROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    sget-object v0, Lcom/android/exchange/adapter/EmailSyncAdapter;->MESSAGE_ID_SUBJECT_PROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/exchange/adapter/EmailSyncAdapter;Ljava/util/ArrayList;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    invoke-direct {p0, p1}, Lcom/android/exchange/adapter/EmailSyncAdapter;->addCleanupOps(Ljava/util/ArrayList;)V

    return-void
.end method

.method private addCleanupOps(Ljava/util/ArrayList;)V
    .locals 5
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

    .prologue
    .line 1195
    .local p1, ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    iget-object v2, p0, Lcom/android/exchange/adapter/EmailSyncAdapter;->mDeletedIdList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 1196
    .local v1, id:Ljava/lang/Long;
    sget-object v2, Lcom/android/email/provider/EmailContent$Message;->DELETED_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1200
    .end local v1           #id:Ljava/lang/Long;
    :cond_0
    iget-object v2, p0, Lcom/android/exchange/adapter/EmailSyncAdapter;->mUpdatedIdList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 1201
    .restart local v1       #id:Ljava/lang/Long;
    sget-object v2, Lcom/android/email/provider/EmailContent$Message;->UPDATED_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1205
    .end local v1           #id:Ljava/lang/Long;
    :cond_1
    iget-object v2, p0, Lcom/android/exchange/adapter/EmailSyncAdapter;->fUpdatedIdList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 1206
    .restart local v1       #id:Ljava/lang/Long;
    sget-object v2, Lcom/android/email/provider/EmailContent$FollowupFlag;->UPDATED_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1209
    .end local v1           #id:Ljava/lang/Long;
    :cond_2
    iget-object v2, p0, Lcom/android/exchange/adapter/EmailSyncAdapter;->fDeletedIdList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 1210
    .restart local v1       #id:Ljava/lang/Long;
    sget-object v2, Lcom/android/email/provider/EmailContent$FollowupFlag;->DELETED_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1214
    .end local v1           #id:Ljava/lang/Long;
    :cond_3
    return-void
.end method

.method private formatTwo(I)Ljava/lang/String;
    .locals 2
    .parameter "num"

    .prologue
    .line 1235
    const/16 v0, 0xa

    if-ge p1, v0, :cond_0

    .line 1236
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    add-int/lit8 v1, p1, 0x30

    int-to-char v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1238
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getDate(J)Ljava/lang/String;
    .locals 3
    .parameter "timeval"

    .prologue
    .line 1566
    const-string v1, "GMT"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-static {v1}, Ljava/util/GregorianCalendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    .line 1567
    .local v0, calendar:Ljava/util/Calendar;
    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-lez v1, :cond_0

    .line 1568
    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1569
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/exchange/adapter/EmailSyncAdapter;->formatDateTime(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getTimeInMillis(Ljava/lang/String;)J
    .locals 2
    .parameter "tstr"

    .prologue
    .line 1555
    const-string v0, "GMT"

    invoke-static {p0, v0}, Lcom/android/exchange/adapter/EmailSyncAdapter;->getTimeInMillis(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getTimeInMillis(Ljava/lang/String;Ljava/lang/String;)J
    .locals 8
    .parameter "tstr"
    .parameter "timezone"

    .prologue
    .line 1558
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    .line 1559
    .local v0, cal:Ljava/util/GregorianCalendar;
    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x5

    const/4 v3, 0x7

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    const/16 v3, 0x8

    const/16 v4, 0xa

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/16 v4, 0xb

    const/16 v5, 0xd

    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const/16 v5, 0xe

    const/16 v6, 0x10

    invoke-virtual {p0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const/16 v6, 0x11

    const/16 v7, 0x13

    invoke-virtual {p0, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual/range {v0 .. v6}, Ljava/util/GregorianCalendar;->set(IIIIII)V

    .line 1562
    invoke-static {p1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 1563
    invoke-virtual {v0}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v1

    return-wide v1
.end method

.method private messageReferenced(Landroid/content/ContentResolver;J)Z
    .locals 7
    .parameter "cr"
    .parameter "id"

    .prologue
    .line 1270
    iget-object v0, p0, Lcom/android/exchange/adapter/EmailSyncAdapter;->mBindArgument:[Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 1272
    sget-object v1, Lcom/android/email/provider/EmailContent$Body;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/email/provider/EmailContent$Body;->ID_PROJECTION:[Ljava/lang/String;

    const-string v3, "sourceMessageKey=?"

    iget-object v4, p0, Lcom/android/exchange/adapter/EmailSyncAdapter;->mBindArgument:[Ljava/lang/String;

    const/4 v5, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1275
    .local v6, c:Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 1277
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1275
    return v0

    .line 1277
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method


# virtual methods
.method public cleanup()V
    .locals 3

    .prologue
    .line 1219
    iget-object v1, p0, Lcom/android/exchange/adapter/EmailSyncAdapter;->mDeletedIdList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/exchange/adapter/EmailSyncAdapter;->mUpdatedIdList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/exchange/adapter/EmailSyncAdapter;->fUpdatedIdList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/exchange/adapter/EmailSyncAdapter;->fDeletedIdList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1221
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1222
    .local v0, ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    invoke-direct {p0, v0}, Lcom/android/exchange/adapter/EmailSyncAdapter;->addCleanupOps(Ljava/util/ArrayList;)V

    .line 1224
    :try_start_0
    iget-object v1, p0, Lcom/android/exchange/adapter/EmailSyncAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "com.android.email.provider"

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1232
    .end local v0           #ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    :cond_1
    :goto_0
    return-void

    .line 1228
    .restart local v0       #ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    :catch_0
    move-exception v1

    goto :goto_0

    .line 1226
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method public formatDateTime(Ljava/util/Calendar;)Ljava/lang/String;
    .locals 4
    .parameter "calendar"

    .prologue
    const/16 v3, 0x3a

    const/16 v2, 0x2d

    .line 1247
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1249
    .local v0, sb:Ljava/lang/StringBuilder;
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1250
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1251
    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/exchange/adapter/EmailSyncAdapter;->formatTwo(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1252
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1253
    const/4 v1, 0x5

    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/exchange/adapter/EmailSyncAdapter;->formatTwo(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1254
    const/16 v1, 0x54

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1255
    const/16 v1, 0xb

    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/exchange/adapter/EmailSyncAdapter;->formatTwo(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1256
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1257
    const/16 v1, 0xc

    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/exchange/adapter/EmailSyncAdapter;->formatTwo(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1258
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1259
    const/16 v1, 0xd

    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/exchange/adapter/EmailSyncAdapter;->formatTwo(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1260
    const-string v1, ".000Z"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1261
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getCollectionName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1190
    const-string v0, "Email"

    return-object v0
.end method

.method public isLooping()Z
    .locals 1

    .prologue
    .line 149
    iget-boolean v0, p0, Lcom/android/exchange/adapter/EmailSyncAdapter;->mIsLooping:Z

    return v0
.end method

.method public isSyncable()Z
    .locals 1

    .prologue
    .line 154
    const/4 v0, 0x1

    return v0
.end method

.method public parse(Ljava/io/InputStream;)Z
    .locals 3
    .parameter "is"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 137
    new-instance v0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;

    invoke-direct {v0, p0, p1, p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;-><init>(Lcom/android/exchange/adapter/EmailSyncAdapter;Ljava/io/InputStream;Lcom/android/exchange/adapter/EmailSyncAdapter;)V

    .line 138
    .local v0, p:Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;
    invoke-virtual {v0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->parse()Z

    move-result v1

    .line 140
    .local v1, res:Z
    invoke-virtual {v0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->isLooping()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/exchange/adapter/EmailSyncAdapter;->mIsLooping:Z

    .line 141
    return v1
.end method

.method sendDeletedItems(Lcom/android/exchange/adapter/Serializer;Ljava/util/ArrayList;Z)Z
    .locals 12
    .parameter "s"
    .parameter
    .parameter "first"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/exchange/adapter/Serializer;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;Z)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .local p2, deletedIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const/4 v4, 0x0

    .line 1293
    iget-object v1, p0, Lcom/android/exchange/adapter/EmailSyncAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1296
    .local v0, cr:Landroid/content/ContentResolver;
    sget-object v1, Lcom/android/email/provider/EmailContent$Message;->DELETED_CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/email/provider/EmailContent$Message;->LIST_PROJECTION:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mailboxKey="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/android/exchange/adapter/EmailSyncAdapter;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    iget-wide v10, v5, Lcom/android/email/provider/EmailContent$Mailbox;->mId:J

    invoke-virtual {v3, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1298
    .local v6, c:Landroid/database/Cursor;
    iget-object v1, p0, Lcom/android/exchange/adapter/EmailSyncAdapter;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/exchange/adapter/EmailSyncAdapter;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    iget-wide v2, v2, Lcom/android/email/provider/EmailContent$Mailbox;->mAccountKey:J

    const/4 v4, 0x6

    invoke-static {v1, v2, v3, v4}, Lcom/android/email/provider/EmailContent$Mailbox;->findMailboxOfType(Landroid/content/Context;JI)J

    move-result-wide v8

    .line 1303
    .local v8, trashMailboxId:J
    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    .line 1305
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1306
    const/16 v1, 0xb

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1308
    .local v7, serverId:Ljava/lang/String;
    if-eqz v7, :cond_0

    .line 1311
    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-direct {p0, v0, v1, v2}, Lcom/android/exchange/adapter/EmailSyncAdapter;->messageReferenced(Landroid/content/ContentResolver;J)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1312
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "Postponing deletion of referenced message: "

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object v7, v1, v2

    invoke-virtual {p0, v1}, Lcom/android/exchange/adapter/EmailSyncAdapter;->userLog([Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1327
    .end local v7           #serverId:Ljava/lang/String;
    :catchall_0
    move-exception v1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v1

    .line 1314
    .restart local v7       #serverId:Ljava/lang/String;
    :cond_1
    if-eqz p3, :cond_2

    .line 1316
    const/16 v1, 0x16

    :try_start_1
    invoke-virtual {p1, v1}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    .line 1317
    const/4 p3, 0x0

    .line 1320
    :cond_2
    const/16 v1, 0x9

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    cmp-long v1, v1, v8

    if-eqz v1, :cond_0

    .line 1321
    const/16 v1, 0x9

    invoke-virtual {p1, v1}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v1

    const/16 v2, 0xd

    invoke-virtual {v1, v2, v7}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    .line 1322
    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1327
    .end local v7           #serverId:Ljava/lang/String;
    :cond_3
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1330
    return p3
.end method

.method public sendLocalChanges(Lcom/android/exchange/adapter/Serializer;)Z
    .locals 24
    .parameter "s"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1335
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/adapter/EmailSyncAdapter;->mContext:Landroid/content/Context;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 1338
    .local v4, cr:Landroid/content/ContentResolver;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/adapter/EmailSyncAdapter;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    move-object v5, v0

    iget v5, v5, Lcom/android/email/provider/EmailContent$Mailbox;->mType:I

    const/4 v6, 0x3

    if-eq v5, v6, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/adapter/EmailSyncAdapter;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    move-object v5, v0

    iget v5, v5, Lcom/android/email/provider/EmailContent$Mailbox;->mType:I

    const/4 v6, 0x4

    if-ne v5, v6, :cond_1

    .line 1339
    :cond_0
    const/4 v5, 0x0

    .line 1551
    :goto_0
    return v5

    .line 1343
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/adapter/EmailSyncAdapter;->mDeletedIdList:Ljava/util/ArrayList;

    move-object v5, v0

    const/4 v6, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v5

    move v3, v6

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/exchange/adapter/EmailSyncAdapter;->sendDeletedItems(Lcom/android/exchange/adapter/Serializer;Ljava/util/ArrayList;Z)Z

    move-result v14

    .line 1346
    .local v14, firstCommand:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/adapter/EmailSyncAdapter;->mContext:Landroid/content/Context;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/adapter/EmailSyncAdapter;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    move-object v6, v0

    iget-wide v6, v6, Lcom/android/email/provider/EmailContent$Mailbox;->mAccountKey:J

    const/4 v8, 0x6

    invoke-static {v5, v6, v7, v8}, Lcom/android/email/provider/EmailContent$Mailbox;->findMailboxOfType(Landroid/content/Context;JI)J

    move-result-wide v20

    .line 1350
    .local v20, trashMailboxId:J
    sget-object v5, Lcom/android/email/provider/EmailContent$Message;->UPDATED_CONTENT_URI:Landroid/net/Uri;

    sget-object v6, Lcom/android/email/provider/EmailContent$Message;->LIST_PROJECTION:[Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mailboxKey="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/adapter/EmailSyncAdapter;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    move-object v8, v0

    iget-wide v8, v8, Lcom/android/email/provider/EmailContent$Mailbox;->mId:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 1354
    .local v10, c:Landroid/database/Cursor;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/adapter/EmailSyncAdapter;->fUpdatedIdList:Ljava/util/ArrayList;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 1355
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/adapter/EmailSyncAdapter;->fDeletedIdList:Ljava/util/ArrayList;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 1359
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/adapter/EmailSyncAdapter;->mUpdatedIdList:Ljava/util/ArrayList;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 1361
    if-eqz v10, :cond_15

    .line 1365
    :goto_1
    :try_start_0
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_14

    .line 1367
    const/16 v19, 0x1

    .line 1369
    .local v19, syncChangeFirst:Z
    const/4 v5, 0x0

    invoke-interface {v10, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v15

    .line 1371
    .local v15, id:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/adapter/EmailSyncAdapter;->mUpdatedIdList:Ljava/util/ArrayList;

    move-object v5, v0

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1374
    sget-object v5, Lcom/android/email/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    move-object v0, v5

    move-wide v1, v15

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    sget-object v6, Lcom/android/exchange/adapter/EmailSyncAdapter;->UPDATES_PROJECTION:[Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v11

    .line 1378
    .local v11, currentCursor:Landroid/database/Cursor;
    :try_start_1
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result v5

    if-nez v5, :cond_2

    .line 1538
    :try_start_2
    invoke-interface {v11}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 1542
    .end local v11           #currentCursor:Landroid/database/Cursor;
    .end local v15           #id:J
    .end local v19           #syncChangeFirst:Z
    :catchall_0
    move-exception v5

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    throw v5

    .line 1382
    .restart local v11       #currentCursor:Landroid/database/Cursor;
    .restart local v15       #id:J
    .restart local v19       #syncChangeFirst:Z
    :cond_2
    const/4 v5, 0x2

    :try_start_3
    invoke-interface {v11, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-result-object v18

    .line 1383
    .local v18, serverId:Ljava/lang/String;
    if-nez v18, :cond_3

    .line 1538
    :try_start_4
    invoke-interface {v11}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 1387
    :cond_3
    const/4 v5, 0x1

    :try_start_5
    invoke-interface {v11, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    cmp-long v5, v5, v20

    if-nez v5, :cond_6

    .line 1388
    if-eqz v14, :cond_4

    .line 1389
    const/16 v5, 0x16

    move-object/from16 v0, p1

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    .line 1390
    const/4 v14, 0x0

    .line 1393
    :cond_4
    const/16 v5, 0x9

    move-object/from16 v0, p1

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v5

    const/16 v6, 0xd

    move-object v0, v5

    move v1, v6

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    .line 1394
    const/4 v5, 0x4

    invoke-interface {v11, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    const-wide/16 v7, 0x1

    cmp-long v5, v5, v7

    if-nez v5, :cond_5

    .line 1396
    sget-object v5, Lcom/android/email/provider/EmailContent$Message;->SYNCED_CONTENT_URI:Landroid/net/Uri;

    move-object v0, v5

    move-wide v1, v15

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v23

    .line 1397
    .local v23, uri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/adapter/EmailSyncAdapter;->mContext:Landroid/content/Context;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, v5

    move-object/from16 v1, v23

    move-object v2, v6

    move-object v3, v7

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1398
    const-string v5, "EmailSyncAdapter"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "<Delete Message in TrashMailBox : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/exchange/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 1538
    .end local v23           #uri:Landroid/net/Uri;
    :cond_5
    :try_start_6
    invoke-interface {v11}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_1

    .line 1417
    :cond_6
    const/4 v5, 0x0

    :try_start_7
    invoke-interface {v11, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    .line 1418
    .local v17, read:I
    const/4 v5, 0x4

    invoke-interface {v10, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    move/from16 v0, v17

    move v1, v5

    if-eq v0, v1, :cond_9

    .line 1419
    if-eqz v14, :cond_7

    .line 1420
    const/16 v5, 0x16

    move-object/from16 v0, p1

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    .line 1421
    const/4 v14, 0x0

    .line 1423
    :cond_7
    if-eqz v19, :cond_8

    .line 1425
    const/16 v5, 0x8

    move-object/from16 v0, p1

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v5

    const/16 v6, 0xd

    const/16 v7, 0xb

    invoke-interface {v10, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    move-result-object v5

    const/16 v6, 0x1d

    invoke-virtual {v5, v6}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    .line 1428
    const/16 v19, 0x0

    .line 1431
    :cond_8
    const/16 v5, 0x95

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p1

    move v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 1457
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/adapter/EmailSyncAdapter;->mService:Lcom/android/exchange/EasSyncService;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/exchange/EasSyncService;->mProtocolVersionDouble:Ljava/lang/Double;

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    const-wide/high16 v7, 0x4028

    cmpl-double v5, v5, v7

    if-ltz v5, :cond_10

    .line 1458
    sget-object v5, Lcom/android/email/provider/EmailContent$FollowupFlag;->CONTENT_URI:Landroid/net/Uri;

    sget-object v6, Lcom/android/email/provider/EmailContent$FollowupFlag;->CONTENT_PROJECTION:[Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "messageKey=\'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v0, v7

    move-wide v1, v15

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 1461
    .local v12, currentFFCursor:Landroid/database/Cursor;
    sget-object v5, Lcom/android/email/provider/EmailContent$FollowupFlag;->UPDATED_CONTENT_URI:Landroid/net/Uri;

    sget-object v6, Lcom/android/email/provider/EmailContent$FollowupFlag;->CONTENT_PROJECTION:[Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "messageKey=\'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v0, v7

    move-wide v1, v15

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v22

    .line 1464
    .local v22, updatedFFCursor:Landroid/database/Cursor;
    sget-object v5, Lcom/android/email/provider/EmailContent$FollowupFlag;->DELETED_CONTENT_URI:Landroid/net/Uri;

    sget-object v6, Lcom/android/email/provider/EmailContent$FollowupFlag;->CONTENT_PROJECTION:[Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "messageKey=\'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v0, v7

    move-wide v1, v15

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    move-result-object v13

    .line 1470
    .local v13, deletedFFCursor:Landroid/database/Cursor;
    :try_start_8
    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-gtz v5, :cond_a

    invoke-interface {v13}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-lez v5, :cond_f

    .line 1471
    :cond_a
    if-eqz v14, :cond_b

    .line 1472
    const/16 v5, 0x16

    move-object/from16 v0, p1

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    .line 1473
    const/4 v14, 0x0

    .line 1475
    :cond_b
    if-eqz v19, :cond_c

    .line 1477
    const/16 v5, 0x8

    move-object/from16 v0, p1

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v5

    const/16 v6, 0xd

    const/16 v7, 0xb

    invoke-interface {v10, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    move-result-object v5

    const/16 v6, 0x1d

    invoke-virtual {v5, v6}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    .line 1480
    const/16 v19, 0x0

    .line 1483
    :cond_c
    const/16 v5, 0xba

    move-object/from16 v0, p1

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    .line 1485
    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_d

    .line 1486
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/adapter/EmailSyncAdapter;->fDeletedIdList:Ljava/util/ArrayList;

    move-object v5, v0

    const/4 v6, 0x0

    invoke-interface {v13, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1489
    :cond_d
    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_e

    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_e

    .line 1491
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/adapter/EmailSyncAdapter;->fUpdatedIdList:Ljava/util/ArrayList;

    move-object v5, v0

    const/4 v6, 0x0

    move-object/from16 v0, v22

    move v1, v6

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1492
    const/4 v5, 0x6

    invoke-interface {v12, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 1526
    :cond_e
    :goto_2
    invoke-virtual/range {p1 .. p1}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 1529
    :cond_f
    :try_start_9
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 1530
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 1531
    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->close()V

    .line 1534
    .end local v12           #currentFFCursor:Landroid/database/Cursor;
    .end local v13           #deletedFFCursor:Landroid/database/Cursor;
    .end local v22           #updatedFFCursor:Landroid/database/Cursor;
    :cond_10
    if-nez v19, :cond_11

    .line 1535
    invoke-virtual/range {p1 .. p1}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 1538
    :cond_11
    :try_start_a
    invoke-interface {v11}, Landroid/database/Cursor;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto/16 :goto_1

    .line 1499
    .restart local v12       #currentFFCursor:Landroid/database/Cursor;
    .restart local v13       #deletedFFCursor:Landroid/database/Cursor;
    .restart local v22       #updatedFFCursor:Landroid/database/Cursor;
    :pswitch_0
    const/16 v5, 0xbb

    :try_start_b
    const-string v6, "1"

    move-object/from16 v0, p1

    move v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 1501
    const/16 v5, 0x24b

    const/16 v6, 0x9

    invoke-interface {v12, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    move-object/from16 v0, p0

    move-wide v1, v6

    invoke-direct {v0, v1, v2}, Lcom/android/exchange/adapter/EmailSyncAdapter;->getDate(J)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p1

    move v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 1502
    const/16 v5, 0xbe

    const/16 v6, 0x8

    invoke-interface {v12, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    move-object/from16 v0, p0

    move-wide v1, v6

    invoke-direct {v0, v1, v2}, Lcom/android/exchange/adapter/EmailSyncAdapter;->getDate(J)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p1

    move v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    goto :goto_2

    .line 1529
    :catchall_1
    move-exception v5

    :try_start_c
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 1530
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 1531
    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->close()V

    .line 1529
    throw v5
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    .line 1538
    .end local v12           #currentFFCursor:Landroid/database/Cursor;
    .end local v13           #deletedFFCursor:Landroid/database/Cursor;
    .end local v17           #read:I
    .end local v18           #serverId:Ljava/lang/String;
    .end local v22           #updatedFFCursor:Landroid/database/Cursor;
    :catchall_2
    move-exception v5

    :try_start_d
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    throw v5
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 1505
    .restart local v12       #currentFFCursor:Landroid/database/Cursor;
    .restart local v13       #deletedFFCursor:Landroid/database/Cursor;
    .restart local v17       #read:I
    .restart local v18       #serverId:Ljava/lang/String;
    .restart local v22       #updatedFFCursor:Landroid/database/Cursor;
    :pswitch_1
    const/16 v5, 0xbb

    :try_start_e
    const-string v6, "2"

    move-object/from16 v0, p1

    move v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 1507
    const/4 v5, 0x7

    invoke-interface {v12, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_12

    .line 1508
    const/16 v5, 0xbd

    const/4 v6, 0x7

    invoke-interface {v12, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p1

    move v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 1511
    :goto_3
    const/16 v5, 0x25e

    const/16 v6, 0xa

    invoke-interface {v12, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    move-object/from16 v0, p0

    move-wide v1, v6

    invoke-direct {v0, v1, v2}, Lcom/android/exchange/adapter/EmailSyncAdapter;->getDate(J)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p1

    move v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 1512
    const/16 v5, 0x25f

    const/16 v6, 0xc

    invoke-interface {v12, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    move-object/from16 v0, p0

    move-wide v1, v6

    invoke-direct {v0, v1, v2}, Lcom/android/exchange/adapter/EmailSyncAdapter;->getDate(J)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p1

    move v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 1513
    const/16 v5, 0x24c

    const/16 v6, 0xb

    invoke-interface {v12, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    move-object/from16 v0, p0

    move-wide v1, v6

    invoke-direct {v0, v1, v2}, Lcom/android/exchange/adapter/EmailSyncAdapter;->getDate(J)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p1

    move v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 1514
    const/16 v5, 0x24d

    const/16 v6, 0xd

    invoke-interface {v12, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    move-object/from16 v0, p0

    move-wide v1, v6

    invoke-direct {v0, v1, v2}, Lcom/android/exchange/adapter/EmailSyncAdapter;->getDate(J)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p1

    move v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 1515
    const/16 v5, 0x25b

    const/16 v6, 0xe

    invoke-interface {v12, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_13

    const-string v6, "1"

    :goto_4
    move-object/from16 v0, p1

    move v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 1516
    const/16 v5, 0x25c

    const/16 v6, 0xf

    invoke-interface {v12, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    move-object/from16 v0, p0

    move-wide v1, v6

    invoke-direct {v0, v1, v2}, Lcom/android/exchange/adapter/EmailSyncAdapter;->getDate(J)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p1

    move v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    goto/16 :goto_2

    .line 1510
    :cond_12
    const/16 v5, 0xbd

    const-string v6, "FollowUp"

    move-object/from16 v0, p1

    move v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    goto/16 :goto_3

    .line 1515
    :cond_13
    const-string v6, "0"
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    goto :goto_4

    .line 1542
    .end local v11           #currentCursor:Landroid/database/Cursor;
    .end local v12           #currentFFCursor:Landroid/database/Cursor;
    .end local v13           #deletedFFCursor:Landroid/database/Cursor;
    .end local v15           #id:J
    .end local v17           #read:I
    .end local v18           #serverId:Ljava/lang/String;
    .end local v19           #syncChangeFirst:Z
    .end local v22           #updatedFFCursor:Landroid/database/Cursor;
    :cond_14
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 1548
    :cond_15
    if-nez v14, :cond_16

    .line 1549
    invoke-virtual/range {p1 .. p1}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    .line 1551
    :cond_16
    const/4 v5, 0x0

    goto/16 :goto_0

    .line 1492
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
