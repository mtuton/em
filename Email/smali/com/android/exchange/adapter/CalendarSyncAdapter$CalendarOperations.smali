.class Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;
.super Ljava/util/ArrayList;
.source "CalendarSyncAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exchange/adapter/CalendarSyncAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CalendarOperations"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList",
        "<",
        "Landroid/content/ContentProviderOperation;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public mCount:I

.field private mEventStart:I

.field private mResults:[Landroid/content/ContentProviderResult;

.field final synthetic this$0:Lcom/android/exchange/adapter/CalendarSyncAdapter;


# direct methods
.method private constructor <init>(Lcom/android/exchange/adapter/CalendarSyncAdapter;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 1486
    iput-object p1, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->this$0:Lcom/android/exchange/adapter/CalendarSyncAdapter;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 1488
    iput v1, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->mCount:I

    .line 1489
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->mResults:[Landroid/content/ContentProviderResult;

    .line 1490
    iput v1, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->mEventStart:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/exchange/adapter/CalendarSyncAdapter;Lcom/android/exchange/adapter/CalendarSyncAdapter$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1486
    invoke-direct {p0, p1}, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;-><init>(Lcom/android/exchange/adapter/CalendarSyncAdapter;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;)[Landroid/content/ContentProviderResult;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1486
    iget-object v0, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->mResults:[Landroid/content/ContentProviderResult;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;[Landroid/content/ContentProviderResult;)[Landroid/content/ContentProviderResult;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1486
    iput-object p1, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->mResults:[Landroid/content/ContentProviderResult;

    return-object p1
.end method

.method static synthetic access$1502(Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1486
    iput p1, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->mEventStart:I

    return p1
.end method


# virtual methods
.method public add(Landroid/content/ContentProviderOperation;)Z
    .locals 1
    .parameter "op"

    .prologue
    .line 1494
    invoke-super {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1495
    iget v0, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->mCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->mCount:I

    .line 1496
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic add(Ljava/lang/Object;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 1486
    check-cast p1, Landroid/content/ContentProviderOperation;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->add(Landroid/content/ContentProviderOperation;)Z

    move-result v0

    return v0
.end method

.method public delete(JLjava/lang/String;)V
    .locals 4
    .parameter "id"
    .parameter "syncId"

    .prologue
    .line 1583
    invoke-static {}, Lcom/android/exchange/adapter/CalendarSyncAdapter;->access$700()Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->add(Landroid/content/ContentProviderOperation;)Z

    .line 1586
    invoke-static {}, Lcom/android/exchange/adapter/CalendarSyncAdapter;->access$700()Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v1, "originalEvent=?"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p3, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->add(Landroid/content/ContentProviderOperation;)Z

    .line 1589
    return-void
.end method

.method public execute()V
    .locals 6

    .prologue
    const-string v1, "problem inserting event during server update"

    const-string v1, "EasCalendarSyncAdapter"

    .line 1592
    iget-object v1, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->this$0:Lcom/android/exchange/adapter/CalendarSyncAdapter;

    iget-object v1, v1, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mService:Lcom/android/exchange/EasSyncService;

    invoke-virtual {v1}, Lcom/android/exchange/EasSyncService;->getSynchronizer()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1593
    :try_start_0
    iget-object v2, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->this$0:Lcom/android/exchange/adapter/CalendarSyncAdapter;

    iget-object v2, v2, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mService:Lcom/android/exchange/EasSyncService;

    invoke-virtual {v2}, Lcom/android/exchange/EasSyncService;->isStopped()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_0

    .line 1595
    :try_start_1
    invoke-virtual {p0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1596
    iget-object v2, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->this$0:Lcom/android/exchange/adapter/CalendarSyncAdapter;

    iget-object v2, v2, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mService:Lcom/android/exchange/EasSyncService;

    const-string v3, "Executing "

    invoke-virtual {p0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->size()I

    move-result v4

    const-string v5, " CPO\'s"

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/exchange/EasSyncService;->userLog(Ljava/lang/String;ILjava/lang/String;)V

    .line 1597
    iget-object v2, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->this$0:Lcom/android/exchange/adapter/CalendarSyncAdapter;

    iget-object v2, v2, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "com.android.calendar"

    invoke-virtual {v2, v3, p0}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object v2

    iput-object v2, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->mResults:[Landroid/content/ContentProviderResult;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1608
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v1

    .line 1609
    return-void

    .line 1600
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 1602
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "EasCalendarSyncAdapter"

    const-string v3, "problem inserting event during server update"

    invoke-static {v2, v3, v0}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 1608
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 1603
    :catch_1
    move-exception v2

    move-object v0, v2

    .line 1605
    .local v0, e:Landroid/content/OperationApplicationException;
    :try_start_3
    const-string v2, "EasCalendarSyncAdapter"

    const-string v3, "problem inserting event during server update"

    invoke-static {v2, v3, v0}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public newAttendee(Landroid/content/ContentValues;)V
    .locals 1
    .parameter "cv"

    .prologue
    .line 1512
    iget v0, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->mEventStart:I

    invoke-virtual {p0, p1, v0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->newAttendee(Landroid/content/ContentValues;I)V

    .line 1513
    return-void
.end method

.method public newAttendee(Landroid/content/ContentValues;I)V
    .locals 2
    .parameter "cv"
    .parameter "eventStart"

    .prologue
    .line 1516
    invoke-static {}, Lcom/android/exchange/adapter/CalendarSyncAdapter;->access$500()Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v1, "event_id"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->add(Landroid/content/ContentProviderOperation;)Z

    .line 1521
    return-void
.end method

.method public newDelete(JLjava/lang/String;)I
    .locals 1
    .parameter "id"
    .parameter "serverId"

    .prologue
    .line 1506
    iget v0, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->mCount:I

    .line 1507
    .local v0, offset:I
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->delete(JLjava/lang/String;)V

    .line 1508
    return v0
.end method

.method public newEvent(Landroid/content/ContentProviderOperation;)I
    .locals 1
    .parameter "op"

    .prologue
    .line 1500
    iget v0, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->mCount:I

    iput v0, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->mEventStart:I

    .line 1501
    invoke-virtual {p0, p1}, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->add(Landroid/content/ContentProviderOperation;)Z

    .line 1502
    iget v0, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->mEventStart:I

    return v0
.end method

.method public newException(Landroid/content/ContentValues;)V
    .locals 1
    .parameter "cv"

    .prologue
    .line 1529
    invoke-static {}, Lcom/android/exchange/adapter/CalendarSyncAdapter;->access$700()Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->add(Landroid/content/ContentProviderOperation;)Z

    .line 1530
    return-void
.end method

.method public newExtendedProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "name"
    .parameter "value"

    .prologue
    .line 1533
    invoke-static {}, Lcom/android/exchange/adapter/CalendarSyncAdapter;->access$1600()Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v1, "name"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v1, "value"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v1, "event_id"

    iget v2, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->mEventStart:I

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->add(Landroid/content/ContentProviderOperation;)Z

    .line 1539
    return-void
.end method

.method public newReminder(I)V
    .locals 1
    .parameter "mins"

    .prologue
    .line 1579
    iget v0, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->mEventStart:I

    invoke-virtual {p0, p1, v0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->newReminder(II)V

    .line 1580
    return-void
.end method

.method public newReminder(II)V
    .locals 3
    .parameter "mins"
    .parameter "eventStart"

    .prologue
    .line 1570
    invoke-static {}, Lcom/android/exchange/adapter/CalendarSyncAdapter;->access$1800()Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v1, "minutes"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v1, "method"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v1, "event_id"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->add(Landroid/content/ContentProviderOperation;)Z

    .line 1576
    return-void
.end method

.method public updatedAttendee(Landroid/content/ContentValues;J)V
    .locals 2
    .parameter "cv"
    .parameter "id"

    .prologue
    .line 1524
    const-string v0, "event_id"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1525
    invoke-static {}, Lcom/android/exchange/adapter/CalendarSyncAdapter;->access$500()Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->add(Landroid/content/ContentProviderOperation;)Z

    .line 1526
    return-void
.end method

.method public updatedExtendedProperty(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 10
    .parameter "name"
    .parameter "value"
    .parameter "id"

    .prologue
    const/4 v9, 0x0

    .line 1543
    iget-object v0, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->this$0:Lcom/android/exchange/adapter/CalendarSyncAdapter;

    iget-object v0, v0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mService:Lcom/android/exchange/EasSyncService;

    iget-object v0, v0, Lcom/android/exchange/EasSyncService;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/Calendar$ExtendedProperties;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {}, Lcom/android/exchange/adapter/CalendarSyncAdapter;->access$1700()[Ljava/lang/String;

    move-result-object v2

    const-string v3, "event_id=? AND name=?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v9

    const/4 v5, 0x1

    aput-object p1, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1546
    .local v6, c:Landroid/database/Cursor;
    const-wide/16 v7, -0x1

    .line 1548
    .local v7, extendedPropertyId:J
    if-eqz v6, :cond_1

    .line 1550
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1551
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v7

    .line 1554
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1558
    :cond_1
    const-wide/16 v0, 0x0

    cmp-long v0, v7, v0

    if-ltz v0, :cond_2

    .line 1559
    invoke-static {}, Lcom/android/exchange/adapter/CalendarSyncAdapter;->access$1600()Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0, v7, v8}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v1, "value"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->add(Landroid/content/ContentProviderOperation;)Z

    .line 1567
    :goto_0
    return-void

    .line 1554
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    .line 1565
    :cond_2
    invoke-virtual {p0, p1, p2}, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->newExtendedProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
