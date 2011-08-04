.class Lcom/android/exchange/adapter/TasksSyncAdapter$TaskOperations;
.super Ljava/util/ArrayList;
.source "TasksSyncAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exchange/adapter/TasksSyncAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TaskOperations"
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
.field private mCount:I

.field private mResults:[Landroid/content/ContentProviderResult;

.field private mTaskIndexCount:I

.field final synthetic this$0:Lcom/android/exchange/adapter/TasksSyncAdapter;


# direct methods
.method private constructor <init>(Lcom/android/exchange/adapter/TasksSyncAdapter;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 1539
    iput-object p1, p0, Lcom/android/exchange/adapter/TasksSyncAdapter$TaskOperations;->this$0:Lcom/android/exchange/adapter/TasksSyncAdapter;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 1541
    iput v0, p0, Lcom/android/exchange/adapter/TasksSyncAdapter$TaskOperations;->mCount:I

    .line 1543
    iput v0, p0, Lcom/android/exchange/adapter/TasksSyncAdapter$TaskOperations;->mTaskIndexCount:I

    .line 1544
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/exchange/adapter/TasksSyncAdapter$TaskOperations;->mResults:[Landroid/content/ContentProviderResult;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/exchange/adapter/TasksSyncAdapter;Lcom/android/exchange/adapter/TasksSyncAdapter$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1539
    invoke-direct {p0, p1}, Lcom/android/exchange/adapter/TasksSyncAdapter$TaskOperations;-><init>(Lcom/android/exchange/adapter/TasksSyncAdapter;)V

    return-void
.end method


# virtual methods
.method public add(Landroid/content/ContentProviderOperation;)Z
    .locals 1
    .parameter "op"

    .prologue
    .line 1548
    invoke-super {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1549
    iget v0, p0, Lcom/android/exchange/adapter/TasksSyncAdapter$TaskOperations;->mCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/exchange/adapter/TasksSyncAdapter$TaskOperations;->mCount:I

    .line 1550
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic add(Ljava/lang/Object;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 1539
    check-cast p1, Landroid/content/ContentProviderOperation;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/exchange/adapter/TasksSyncAdapter$TaskOperations;->add(Landroid/content/ContentProviderOperation;)Z

    move-result v0

    return v0
.end method

.method public addReminder(J)V
    .locals 5
    .parameter "mins"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1566
    iget-object v0, p0, Lcom/android/exchange/adapter/TasksSyncAdapter$TaskOperations;->this$0:Lcom/android/exchange/adapter/TasksSyncAdapter;

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "Inside addreminder and going to insert a reminder "

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/TasksSyncAdapter;->userLog([Ljava/lang/String;)V

    .line 1567
    sget-object v0, Landroid/provider/Tasks$TaskReminderAlerts;->REMINDER_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v1, "reminder_time"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v1, "task_id"

    iget v2, p0, Lcom/android/exchange/adapter/TasksSyncAdapter$TaskOperations;->mTaskIndexCount:I

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/exchange/adapter/TasksSyncAdapter$TaskOperations;->add(Landroid/content/ContentProviderOperation;)Z

    .line 1573
    iget-object v0, p0, Lcom/android/exchange/adapter/TasksSyncAdapter$TaskOperations;->this$0:Lcom/android/exchange/adapter/TasksSyncAdapter;

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "Have to check whether task_id is inserted or taken properly from the tasks table"

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/TasksSyncAdapter;->userLog([Ljava/lang/String;)V

    .line 1574
    return-void
.end method

.method public delete(J)V
    .locals 3
    .parameter "id"

    .prologue
    .line 1589
    sget-object v0, Landroid/provider/Tasks$TasksTbl;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "caller_is_syncadapter"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/exchange/adapter/TasksSyncAdapter$TaskOperations;->add(Landroid/content/ContentProviderOperation;)Z

    .line 1595
    return-void
.end method

.method public execute()V
    .locals 6

    .prologue
    const-string v1, "problem inserting task during server update"

    const-string v1, "ExchTasksSyncAdapter"

    .line 1599
    iget-object v1, p0, Lcom/android/exchange/adapter/TasksSyncAdapter$TaskOperations;->this$0:Lcom/android/exchange/adapter/TasksSyncAdapter;

    iget-object v1, v1, Lcom/android/exchange/adapter/TasksSyncAdapter;->mService:Lcom/android/exchange/EasSyncService;

    invoke-virtual {v1}, Lcom/android/exchange/EasSyncService;->getSynchronizer()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1600
    :try_start_0
    iget-object v2, p0, Lcom/android/exchange/adapter/TasksSyncAdapter$TaskOperations;->this$0:Lcom/android/exchange/adapter/TasksSyncAdapter;

    iget-object v2, v2, Lcom/android/exchange/adapter/TasksSyncAdapter;->mService:Lcom/android/exchange/EasSyncService;

    invoke-virtual {v2}, Lcom/android/exchange/EasSyncService;->isStopped()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_0

    .line 1602
    :try_start_1
    invoke-virtual {p0}, Lcom/android/exchange/adapter/TasksSyncAdapter$TaskOperations;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1603
    iget-object v2, p0, Lcom/android/exchange/adapter/TasksSyncAdapter$TaskOperations;->this$0:Lcom/android/exchange/adapter/TasksSyncAdapter;

    iget-object v2, v2, Lcom/android/exchange/adapter/TasksSyncAdapter;->mService:Lcom/android/exchange/EasSyncService;

    const-string v3, "Executing "

    invoke-virtual {p0}, Lcom/android/exchange/adapter/TasksSyncAdapter$TaskOperations;->size()I

    move-result v4

    const-string v5, " CPO\'s"

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/exchange/EasSyncService;->userLog(Ljava/lang/String;ILjava/lang/String;)V

    .line 1604
    iget-object v2, p0, Lcom/android/exchange/adapter/TasksSyncAdapter$TaskOperations;->this$0:Lcom/android/exchange/adapter/TasksSyncAdapter;

    iget-object v2, v2, Lcom/android/exchange/adapter/TasksSyncAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "tasks"

    invoke-virtual {v2, v3, p0}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object v2

    iput-object v2, p0, Lcom/android/exchange/adapter/TasksSyncAdapter$TaskOperations;->mResults:[Landroid/content/ContentProviderResult;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1616
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1617
    return-void

    .line 1607
    :cond_1
    :try_start_3
    iget-object v2, p0, Lcom/android/exchange/adapter/TasksSyncAdapter$TaskOperations;->this$0:Lcom/android/exchange/adapter/TasksSyncAdapter;

    iget-object v2, v2, Lcom/android/exchange/adapter/TasksSyncAdapter;->mService:Lcom/android/exchange/EasSyncService;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "Nothing to execute. isEmpty = true"

    aput-object v5, v3, v4

    invoke-virtual {v2, v3}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 1608
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 1610
    .local v0, e:Landroid/os/RemoteException;
    :try_start_4
    const-string v2, "ExchTasksSyncAdapter"

    const-string v3, "problem inserting task during server update"

    invoke-static {v2, v3, v0}, Lcom/android/exchange/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1616
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v2

    .line 1611
    :catch_1
    move-exception v2

    move-object v0, v2

    .line 1613
    .local v0, e:Landroid/content/OperationApplicationException;
    :try_start_5
    const-string v2, "ExchTasksSyncAdapter"

    const-string v3, "problem inserting task during server update"

    invoke-static {v2, v3, v0}, Lcom/android/exchange/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0
.end method

.method public newTask(Landroid/content/ContentProviderOperation;)I
    .locals 1
    .parameter "op"

    .prologue
    .line 1554
    iget v0, p0, Lcom/android/exchange/adapter/TasksSyncAdapter$TaskOperations;->mCount:I

    iput v0, p0, Lcom/android/exchange/adapter/TasksSyncAdapter$TaskOperations;->mTaskIndexCount:I

    .line 1555
    invoke-virtual {p0, p1}, Lcom/android/exchange/adapter/TasksSyncAdapter$TaskOperations;->add(Landroid/content/ContentProviderOperation;)Z

    .line 1556
    iget v0, p0, Lcom/android/exchange/adapter/TasksSyncAdapter$TaskOperations;->mTaskIndexCount:I

    return v0
.end method
