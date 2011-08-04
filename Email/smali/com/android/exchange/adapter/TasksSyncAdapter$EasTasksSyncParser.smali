.class Lcom/android/exchange/adapter/TasksSyncAdapter$EasTasksSyncParser;
.super Lcom/android/exchange/adapter/AbstractSyncParser;
.source "TasksSyncAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exchange/adapter/TasksSyncAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EasTasksSyncParser"
.end annotation


# instance fields
.field mAccountUri:Landroid/net/Uri;

.field mBindArgument:[Ljava/lang/String;

.field ops:Lcom/android/exchange/adapter/TasksSyncAdapter$TaskOperations;

.field final synthetic this$0:Lcom/android/exchange/adapter/TasksSyncAdapter;


# direct methods
.method public constructor <init>(Lcom/android/exchange/adapter/TasksSyncAdapter;Ljava/io/InputStream;Lcom/android/exchange/adapter/TasksSyncAdapter;)V
    .locals 3
    .parameter
    .parameter "in"
    .parameter "adapter"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 717
    iput-object p1, p0, Lcom/android/exchange/adapter/TasksSyncAdapter$EasTasksSyncParser;->this$0:Lcom/android/exchange/adapter/TasksSyncAdapter;

    .line 718
    invoke-direct {p0, p2, p3}, Lcom/android/exchange/adapter/AbstractSyncParser;-><init>(Ljava/io/InputStream;Lcom/android/exchange/adapter/AbstractSyncAdapter;)V

    .line 711
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/exchange/adapter/TasksSyncAdapter$EasTasksSyncParser;->mBindArgument:[Ljava/lang/String;

    .line 714
    new-instance v0, Lcom/android/exchange/adapter/TasksSyncAdapter$TaskOperations;

    iget-object v1, p0, Lcom/android/exchange/adapter/TasksSyncAdapter$EasTasksSyncParser;->this$0:Lcom/android/exchange/adapter/TasksSyncAdapter;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/exchange/adapter/TasksSyncAdapter$TaskOperations;-><init>(Lcom/android/exchange/adapter/TasksSyncAdapter;Lcom/android/exchange/adapter/TasksSyncAdapter$1;)V

    iput-object v0, p0, Lcom/android/exchange/adapter/TasksSyncAdapter$EasTasksSyncParser;->ops:Lcom/android/exchange/adapter/TasksSyncAdapter$TaskOperations;

    .line 719
    sget-object v0, Landroid/provider/Tasks;->TASK_CONTENT_URI:Landroid/net/Uri;

    invoke-static {p1, v0}, Lcom/android/exchange/adapter/TasksSyncAdapter;->access$100(Lcom/android/exchange/adapter/TasksSyncAdapter;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exchange/adapter/TasksSyncAdapter$EasTasksSyncParser;->mAccountUri:Landroid/net/Uri;

    .line 721
    return-void
.end method

.method private bodyParser(Landroid/content/ContentValues;Landroid/content/Entity;)V
    .locals 4
    .parameter "cv"
    .parameter "entity"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-string v3, "EasTasksSyncParser"

    .line 947
    const/4 v0, 0x0

    .line 948
    .local v0, value:Ljava/lang/String;
    :goto_0
    const/16 v1, 0x44a

    invoke-virtual {p0, v1}, Lcom/android/exchange/adapter/TasksSyncAdapter$EasTasksSyncParser;->nextTag(I)I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    .line 949
    iget v1, p0, Lcom/android/exchange/adapter/TasksSyncAdapter$EasTasksSyncParser;->tag:I

    packed-switch v1, :pswitch_data_0

    .line 982
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/exchange/adapter/TasksSyncAdapter$EasTasksSyncParser;->skipTag()V

    goto :goto_0

    .line 955
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/exchange/adapter/TasksSyncAdapter$EasTasksSyncParser;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 956
    const-string v1, "EasTasksSyncParser"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Body type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/android/exchange/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 957
    const-string v1, "bodyType"

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0

    .line 962
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/exchange/adapter/TasksSyncAdapter$EasTasksSyncParser;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 963
    const-string v1, "EasTasksSyncParser"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Body estimated size "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/android/exchange/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 964
    const-string v1, "body_size"

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0

    .line 969
    :pswitch_3
    invoke-virtual {p0}, Lcom/android/exchange/adapter/TasksSyncAdapter$EasTasksSyncParser;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 970
    const-string v1, "EasTasksSyncParser"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Body truncated "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/android/exchange/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 971
    const-string v1, "body_truncated"

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_0

    .line 976
    :pswitch_4
    invoke-virtual {p0}, Lcom/android/exchange/adapter/TasksSyncAdapter$EasTasksSyncParser;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 977
    const-string v1, "EasTasksSyncParser"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Body data "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/android/exchange/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 978
    const-string v1, "body"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 985
    :cond_0
    return-void

    .line 949
    :pswitch_data_0
    .packed-switch 0x446
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private getClientIdCursor(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6
    .parameter "clientId"

    .prologue
    .line 846
    iget-object v0, p0, Lcom/android/exchange/adapter/TasksSyncAdapter$EasTasksSyncParser;->mBindArgument:[Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 847
    iget-object v0, p0, Lcom/android/exchange/adapter/TasksSyncAdapter$EasTasksSyncParser;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/Tasks;->TASK_CONTENT_URI:Landroid/net/Uri;

    invoke-static {}, Lcom/android/exchange/adapter/TasksSyncAdapter;->access$200()[Ljava/lang/String;

    move-result-object v2

    const-string v3, "clientId=?"

    iget-object v4, p0, Lcom/android/exchange/adapter/TasksSyncAdapter$EasTasksSyncParser;->mBindArgument:[Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private getServerIdCursor(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6
    .parameter "serverId"

    .prologue
    .line 840
    iget-object v0, p0, Lcom/android/exchange/adapter/TasksSyncAdapter$EasTasksSyncParser;->mBindArgument:[Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 841
    iget-object v0, p0, Lcom/android/exchange/adapter/TasksSyncAdapter$EasTasksSyncParser;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/exchange/adapter/TasksSyncAdapter$EasTasksSyncParser;->mAccountUri:Landroid/net/Uri;

    invoke-static {}, Lcom/android/exchange/adapter/TasksSyncAdapter;->access$200()[Ljava/lang/String;

    move-result-object v2

    const-string v3, "sourceid=?"

    iget-object v4, p0, Lcom/android/exchange/adapter/TasksSyncAdapter$EasTasksSyncParser;->mBindArgument:[Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private getTimeInMillis(Ljava/lang/String;)J
    .locals 8
    .parameter "dateTime"

    .prologue
    const-string v7, "EasTasksSyncParser"

    .line 927
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v4, "yyyy-MM-dd\'T\'HH:mm:ss.SSS\'Z\'"

    invoke-direct {v1, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 929
    .local v1, sdf:Ljava/text/SimpleDateFormat;
    const-wide/16 v2, 0x0

    .line 931
    .local v2, time_in_ms:J
    :try_start_0
    invoke-virtual {v1, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    .line 932
    const-string v4, "GMT"

    invoke-static {v4}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 933
    invoke-virtual {v1}, Ljava/text/SimpleDateFormat;->getCalendar()Ljava/util/Calendar;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    .line 935
    const-string v4, "EasTasksSyncParser"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "time_is_ms "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/exchange/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-wide v4, v2

    .line 940
    :goto_0
    return-wide v4

    .line 937
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 938
    .local v0, pe:Ljava/text/ParseException;
    const-string v4, "EasTasksSyncParser"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cant parse dateTime "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Lcom/android/exchange/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 940
    const-wide/16 v4, 0x0

    goto :goto_0
.end method

.method private moveParser(Lcom/android/exchange/adapter/TasksSyncAdapter$TaskOperations;)V
    .locals 7
    .parameter "ops"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 791
    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "inside move parser because of soft delete "

    aput-object v4, v3, v5

    invoke-virtual {p0, v3}, Lcom/android/exchange/adapter/TasksSyncAdapter$EasTasksSyncParser;->userLog([Ljava/lang/String;)V

    .line 792
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 793
    .local v1, cv:Landroid/content/ContentValues;
    :goto_0
    const/16 v3, 0x21

    invoke-virtual {p0, v3}, Lcom/android/exchange/adapter/TasksSyncAdapter$EasTasksSyncParser;->nextTag(I)I

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_1

    .line 794
    iget v3, p0, Lcom/android/exchange/adapter/TasksSyncAdapter$EasTasksSyncParser;->tag:I

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 796
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/exchange/adapter/TasksSyncAdapter$EasTasksSyncParser;->getValue()Ljava/lang/String;

    move-result-object v2

    .line 798
    .local v2, serverId:Ljava/lang/String;
    invoke-direct {p0, v2}, Lcom/android/exchange/adapter/TasksSyncAdapter$EasTasksSyncParser;->getServerIdCursor(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 801
    .local v0, c:Landroid/database/Cursor;
    if-eqz v0, :cond_0

    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 803
    const-string v3, "complete"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 805
    sget-object v3, Landroid/provider/Tasks$TasksTbl;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3}, Lcom/android/exchange/adapter/TasksSyncAdapter;->addCallerIsSyncAdapterParameter(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/android/exchange/adapter/TasksSyncAdapter$TaskOperations;->add(Landroid/content/ContentProviderOperation;)Z

    .line 811
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "taskComplete "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " completed value is : 1"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {p0, v3}, Lcom/android/exchange/adapter/TasksSyncAdapter$EasTasksSyncParser;->userLog([Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 814
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v3

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v3

    .line 818
    .end local v0           #c:Landroid/database/Cursor;
    .end local v2           #serverId:Ljava/lang/String;
    :cond_1
    return-void

    .line 794
    nop

    :pswitch_data_0
    .packed-switch 0xd
        :pswitch_0
    .end packed-switch
.end method

.method private recurrenceParser(Landroid/content/ContentValues;Landroid/content/Entity;)V
    .locals 3
    .parameter "cv"
    .parameter "entity"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 989
    :goto_0
    const/16 v0, 0x24f

    invoke-virtual {p0, v0}, Lcom/android/exchange/adapter/TasksSyncAdapter$EasTasksSyncParser;->nextTag(I)I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 990
    iget v0, p0, Lcom/android/exchange/adapter/TasksSyncAdapter$EasTasksSyncParser;->tag:I

    packed-switch v0, :pswitch_data_0

    .line 1046
    invoke-virtual {p0}, Lcom/android/exchange/adapter/TasksSyncAdapter$EasTasksSyncParser;->skipTag()V

    goto :goto_0

    .line 992
    :pswitch_0
    const-string v0, "recurrence_type"

    invoke-virtual {p0}, Lcom/android/exchange/adapter/TasksSyncAdapter$EasTasksSyncParser;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0

    .line 997
    :pswitch_1
    const-string v0, "recurrence_start"

    invoke-virtual {p0}, Lcom/android/exchange/adapter/TasksSyncAdapter$EasTasksSyncParser;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/exchange/adapter/TasksSyncAdapter$EasTasksSyncParser;->getTimeInMillis(Ljava/lang/String;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_0

    .line 1002
    :pswitch_2
    const-string v0, "recurrence_until"

    invoke-virtual {p0}, Lcom/android/exchange/adapter/TasksSyncAdapter$EasTasksSyncParser;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/exchange/adapter/TasksSyncAdapter$EasTasksSyncParser;->getTimeInMillis(Ljava/lang/String;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_0

    .line 1007
    :pswitch_3
    const-string v0, "recurrence_occurrences"

    invoke-virtual {p0}, Lcom/android/exchange/adapter/TasksSyncAdapter$EasTasksSyncParser;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0

    .line 1012
    :pswitch_4
    const-string v0, "recurrence_interval"

    invoke-virtual {p0}, Lcom/android/exchange/adapter/TasksSyncAdapter$EasTasksSyncParser;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0

    .line 1017
    :pswitch_5
    const-string v0, "recurrence_day_of_month"

    invoke-virtual {p0}, Lcom/android/exchange/adapter/TasksSyncAdapter$EasTasksSyncParser;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0

    .line 1022
    :pswitch_6
    const-string v0, "recurrence_day_of_week"

    invoke-virtual {p0}, Lcom/android/exchange/adapter/TasksSyncAdapter$EasTasksSyncParser;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_0

    .line 1027
    :pswitch_7
    const-string v0, "recurrence_week_of_month"

    invoke-virtual {p0}, Lcom/android/exchange/adapter/TasksSyncAdapter$EasTasksSyncParser;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_0

    .line 1032
    :pswitch_8
    const-string v0, "recurrence_month_of_year"

    invoke-virtual {p0}, Lcom/android/exchange/adapter/TasksSyncAdapter$EasTasksSyncParser;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_0

    .line 1037
    :pswitch_9
    const-string v0, "recurrence_regenerate"

    invoke-virtual {p0}, Lcom/android/exchange/adapter/TasksSyncAdapter$EasTasksSyncParser;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_0

    .line 1042
    :pswitch_a
    const-string v0, "recurrence_dead_occur"

    invoke-virtual {p0}, Lcom/android/exchange/adapter/TasksSyncAdapter$EasTasksSyncParser;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_0

    .line 1049
    :cond_0
    return-void

    .line 990
    :pswitch_data_0
    .packed-switch 0x250
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method


# virtual methods
.method public addData(Ljava/lang/String;Lcom/android/exchange/adapter/TasksSyncAdapter$TaskOperations;Landroid/content/Entity;Z)V
    .locals 16
    .parameter "serverId"
    .parameter "ops"
    .parameter "entity"
    .parameter "is_update"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1109
    const-string v13, "EasTasksSyncParser"

    const-string v14, "addData.."

    invoke-static {v13, v14}, Lcom/android/exchange/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1111
    const/4 v6, 0x0

    .line 1114
    .local v6, eventOffset:I
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 1115
    .local v5, cv:Landroid/content/ContentValues;
    const-string v13, "sourceid"

    move-object v0, v5

    move-object v1, v13

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1116
    const-string v13, "accountKey"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/adapter/TasksSyncAdapter$EasTasksSyncParser;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    move-object v14, v0

    iget-wide v14, v14, Lcom/android/email/provider/EmailContent$Account;->mId:J

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v5, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1117
    const-string v13, "mailboxKey"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/adapter/TasksSyncAdapter$EasTasksSyncParser;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    move-object v14, v0

    iget-wide v14, v14, Lcom/android/email/provider/EmailContent$Mailbox;->mId:J

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v5, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1118
    const-string v13, "accountName"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/adapter/TasksSyncAdapter$EasTasksSyncParser;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    move-object v14, v0

    iget-object v14, v14, Lcom/android/email/provider/EmailContent$Account;->mEmailAddress:Ljava/lang/String;

    invoke-virtual {v5, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1119
    if-nez p4, :cond_1

    .line 1120
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/adapter/TasksSyncAdapter$EasTasksSyncParser;->this$0:Lcom/android/exchange/adapter/TasksSyncAdapter;

    move-object v13, v0

    sget-object v14, Landroid/provider/Tasks$TasksTbl;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v13, v14}, Lcom/android/exchange/adapter/TasksSyncAdapter;->access$100(Lcom/android/exchange/adapter/TasksSyncAdapter;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v13

    invoke-static {v13}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    .line 1122
    .local v3, builder:Landroid/content/ContentProviderOperation$Builder;
    invoke-static {}, Lcom/android/exchange/adapter/TasksSyncAdapter;->access$300()Landroid/content/ContentProviderOperation;

    move-result-object v13

    move-object/from16 v0, p2

    move-object v1, v13

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/TasksSyncAdapter$TaskOperations;->newTask(Landroid/content/ContentProviderOperation;)I

    move-result v6

    .line 1148
    :cond_0
    :goto_0
    const/16 v13, 0x1d

    move-object/from16 v0, p0

    move v1, v13

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/TasksSyncAdapter$EasTasksSyncParser;->nextTag(I)I

    move-result v13

    const/4 v14, 0x3

    if-eq v13, v14, :cond_5

    .line 1150
    const/4 v12, 0x0

    .line 1152
    .local v12, task_value:Ljava/lang/String;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/exchange/adapter/TasksSyncAdapter$EasTasksSyncParser;->tag:I

    move v13, v0

    sparse-switch v13, :sswitch_data_0

    .line 1269
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/TasksSyncAdapter$EasTasksSyncParser;->skipTag()V

    goto :goto_0

    .line 1126
    .end local v3           #builder:Landroid/content/ContentProviderOperation$Builder;
    .end local v12           #task_value:Ljava/lang/String;
    :cond_1
    const-wide/16 v7, 0x0

    .line 1127
    .local v7, id:J
    invoke-direct/range {p0 .. p1}, Lcom/android/exchange/adapter/TasksSyncAdapter$EasTasksSyncParser;->getServerIdCursor(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    .line 1130
    .local v4, c:Landroid/database/Cursor;
    if-eqz v4, :cond_2

    :try_start_0
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v13

    if-eqz v13, :cond_2

    .line 1132
    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/String;

    const/4 v14, 0x0

    const-string v15, "Updating "

    aput-object v15, v13, v14

    const/4 v14, 0x1

    aput-object p1, v13, v14

    move-object/from16 v0, p0

    move-object v1, v13

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/TasksSyncAdapter$EasTasksSyncParser;->userLog([Ljava/lang/String;)V

    .line 1134
    const-string v13, "_id"

    invoke-interface {v4, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    invoke-interface {v4, v13}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v7

    .line 1138
    :cond_2
    if-eqz v4, :cond_3

    .line 1139
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 1143
    :cond_3
    sget-object v13, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "inside tasksyncapdater updating id "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1144
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/adapter/TasksSyncAdapter$EasTasksSyncParser;->this$0:Lcom/android/exchange/adapter/TasksSyncAdapter;

    move-object v13, v0

    sget-object v14, Landroid/provider/Tasks$TasksTbl;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v13, v14}, Lcom/android/exchange/adapter/TasksSyncAdapter;->access$100(Lcom/android/exchange/adapter/TasksSyncAdapter;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v13

    invoke-static {v13, v7, v8}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v13

    invoke-static {v13}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    .restart local v3       #builder:Landroid/content/ContentProviderOperation$Builder;
    goto :goto_0

    .line 1138
    .end local v3           #builder:Landroid/content/ContentProviderOperation$Builder;
    :catchall_0
    move-exception v13

    if-eqz v4, :cond_4

    .line 1139
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 1138
    :cond_4
    throw v13

    .line 1162
    .end local v4           #c:Landroid/database/Cursor;
    .end local v7           #id:J
    .restart local v3       #builder:Landroid/content/ContentProviderOperation$Builder;
    .restart local v12       #task_value:Ljava/lang/String;
    :sswitch_0
    const-string v13, "body"

    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/TasksSyncAdapter$EasTasksSyncParser;->getValue()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v5, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1166
    :sswitch_1
    const-string v13, "body_size"

    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/TasksSyncAdapter$EasTasksSyncParser;->getValue()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v5, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_0

    .line 1171
    :sswitch_2
    const-string v13, "body_truncated"

    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/TasksSyncAdapter$EasTasksSyncParser;->getValue()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v5, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_0

    .line 1177
    :sswitch_3
    move-object/from16 v0, p0

    move-object v1, v5

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcom/android/exchange/adapter/TasksSyncAdapter$EasTasksSyncParser;->bodyParser(Landroid/content/ContentValues;Landroid/content/Entity;)V

    goto/16 :goto_0

    .line 1185
    :pswitch_0
    const-string v13, "category1"

    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/TasksSyncAdapter$EasTasksSyncParser;->getValue()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v5, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1181
    :goto_1
    :sswitch_4
    const/16 v13, 0x248

    move-object/from16 v0, p0

    move v1, v13

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/TasksSyncAdapter$EasTasksSyncParser;->nextTag(I)I

    move-result v13

    const/4 v14, 0x3

    if-eq v13, v14, :cond_0

    .line 1183
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/exchange/adapter/TasksSyncAdapter$EasTasksSyncParser;->tag:I

    move v13, v0

    packed-switch v13, :pswitch_data_0

    .line 1188
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/TasksSyncAdapter$EasTasksSyncParser;->skipTag()V

    goto :goto_1

    .line 1193
    :sswitch_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/TasksSyncAdapter$EasTasksSyncParser;->getValue()Ljava/lang/String;

    move-result-object v12

    .line 1194
    const-string v13, "EasTasksSyncParser"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Complete "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/android/exchange/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1195
    const-string v13, "complete"

    invoke-virtual {v5, v13, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1200
    :sswitch_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/TasksSyncAdapter$EasTasksSyncParser;->getValue()Ljava/lang/String;

    move-result-object v12

    .line 1201
    const-string v13, "EasTasksSyncParser"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Importance "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/android/exchange/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1202
    const-string v13, "importance"

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v5, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_0

    .line 1207
    :sswitch_7
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/TasksSyncAdapter$EasTasksSyncParser;->getValue()Ljava/lang/String;

    move-result-object v12

    .line 1208
    const-string v13, "EasTasksSyncParser"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Reminder Set "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/android/exchange/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1209
    const-string v13, "reminder_set"

    invoke-virtual {v5, v13, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1214
    :sswitch_8
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/TasksSyncAdapter$EasTasksSyncParser;->getValue()Ljava/lang/String;

    move-result-object v12

    .line 1215
    const-string v13, "EasTasksSyncParser"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Sensitivity "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/android/exchange/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1216
    const-string v13, "sensitivity"

    invoke-virtual {v5, v13, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1221
    :sswitch_9
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/TasksSyncAdapter$EasTasksSyncParser;->getValue()Ljava/lang/String;

    move-result-object v12

    .line 1222
    const-string v13, "EasTasksSyncParser"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Task_Subject "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/android/exchange/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1223
    const-string v13, "subject"

    invoke-virtual {v5, v13, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1230
    :sswitch_a
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/TasksSyncAdapter$EasTasksSyncParser;->getValue()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    move-object v1, v13

    invoke-direct {v0, v1}, Lcom/android/exchange/adapter/TasksSyncAdapter$EasTasksSyncParser;->getTimeInMillis(Ljava/lang/String;)J

    move-result-wide v10

    .line 1232
    .local v10, reminder_time:J
    const-string v13, "reminder_time"

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v5, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto/16 :goto_0

    .line 1236
    .end local v10           #reminder_time:J
    :sswitch_b
    const-string v13, "date_completed"

    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/TasksSyncAdapter$EasTasksSyncParser;->getValue()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    move-object v1, v14

    invoke-direct {v0, v1}, Lcom/android/exchange/adapter/TasksSyncAdapter$EasTasksSyncParser;->getTimeInMillis(Ljava/lang/String;)J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v5, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto/16 :goto_0

    .line 1243
    :sswitch_c
    const-string v13, "due_date"

    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/TasksSyncAdapter$EasTasksSyncParser;->getValue()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    move-object v1, v14

    invoke-direct {v0, v1}, Lcom/android/exchange/adapter/TasksSyncAdapter$EasTasksSyncParser;->getTimeInMillis(Ljava/lang/String;)J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v5, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto/16 :goto_0

    .line 1248
    :sswitch_d
    const-string v13, "utc_due_date"

    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/TasksSyncAdapter$EasTasksSyncParser;->getValue()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    move-object v1, v14

    invoke-direct {v0, v1}, Lcom/android/exchange/adapter/TasksSyncAdapter$EasTasksSyncParser;->getTimeInMillis(Ljava/lang/String;)J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v5, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto/16 :goto_0

    .line 1255
    :sswitch_e
    const-string v13, "start_date"

    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/TasksSyncAdapter$EasTasksSyncParser;->getValue()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    move-object v1, v14

    invoke-direct {v0, v1}, Lcom/android/exchange/adapter/TasksSyncAdapter$EasTasksSyncParser;->getTimeInMillis(Ljava/lang/String;)J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v5, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto/16 :goto_0

    .line 1260
    :sswitch_f
    const-string v13, "utc_start_date"

    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/TasksSyncAdapter$EasTasksSyncParser;->getValue()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    move-object v1, v14

    invoke-direct {v0, v1}, Lcom/android/exchange/adapter/TasksSyncAdapter$EasTasksSyncParser;->getTimeInMillis(Ljava/lang/String;)J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v5, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto/16 :goto_0

    .line 1265
    :sswitch_10
    move-object/from16 v0, p0

    move-object v1, v5

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcom/android/exchange/adapter/TasksSyncAdapter$EasTasksSyncParser;->recurrenceParser(Landroid/content/ContentValues;Landroid/content/Entity;)V

    goto/16 :goto_0

    .line 1273
    .end local v12           #task_value:Ljava/lang/String;
    :cond_5
    if-nez p4, :cond_6

    const-string v13, "reminder_set"

    invoke-virtual {v5, v13}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 1277
    const-string v13, "reminder_set"

    invoke-virtual {v5, v13}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    .line 1278
    .local v9, reminder_set:Ljava/lang/Integer;
    if-eqz v9, :cond_7

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_7

    .line 1280
    const-string v13, "reminder_time"

    invoke-virtual {v5, v13}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v10

    .line 1281
    .local v10, reminder_time:Ljava/lang/Long;
    if-eqz v10, :cond_6

    .line 1282
    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    move-object/from16 v0, p2

    move-wide v1, v13

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/adapter/TasksSyncAdapter$TaskOperations;->addReminder(J)V

    .line 1288
    .end local v9           #reminder_set:Ljava/lang/Integer;
    .end local v10           #reminder_time:Ljava/lang/Long;
    :cond_6
    :goto_2
    invoke-virtual {v3, v5}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    .line 1289
    if-nez p4, :cond_8

    if-ltz v6, :cond_8

    .line 1292
    invoke-virtual {v3}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v13

    move-object/from16 v0, p2

    move v1, v6

    move-object v2, v13

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/adapter/TasksSyncAdapter$TaskOperations;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1413
    :goto_3
    return-void

    .line 1286
    .restart local v9       #reminder_set:Ljava/lang/Integer;
    :cond_7
    const-string v13, "reminder_time"

    invoke-virtual {v5, v13}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    goto :goto_2

    .line 1296
    .end local v9           #reminder_set:Ljava/lang/Integer;
    :cond_8
    invoke-virtual {v3}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v13

    move-object/from16 v0, p2

    move-object v1, v13

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/TasksSyncAdapter$TaskOperations;->add(Landroid/content/ContentProviderOperation;)Z

    goto :goto_3

    .line 1152
    :sswitch_data_0
    .sparse-switch
        0x245 -> :sswitch_0
        0x246 -> :sswitch_1
        0x247 -> :sswitch_2
        0x248 -> :sswitch_4
        0x24a -> :sswitch_5
        0x24b -> :sswitch_b
        0x24c -> :sswitch_c
        0x24d -> :sswitch_d
        0x24e -> :sswitch_6
        0x24f -> :sswitch_10
        0x25b -> :sswitch_7
        0x25c -> :sswitch_a
        0x25d -> :sswitch_8
        0x25e -> :sswitch_e
        0x25f -> :sswitch_f
        0x260 -> :sswitch_9
        0x44a -> :sswitch_3
    .end sparse-switch

    .line 1183
    :pswitch_data_0
    .packed-switch 0x249
        :pswitch_0
    .end packed-switch
.end method

.method public addParser(Lcom/android/exchange/adapter/TasksSyncAdapter$TaskOperations;)V
    .locals 3
    .parameter "ops"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 822
    const/4 v0, 0x0

    .line 823
    .local v0, serverId:Ljava/lang/String;
    const-string v1, "EasTasksSyncParser"

    const-string v2, "addParser.."

    invoke-static {v1, v2}, Lcom/android/exchange/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 824
    :goto_0
    const/4 v1, 0x7

    invoke-virtual {p0, v1}, Lcom/android/exchange/adapter/TasksSyncAdapter$EasTasksSyncParser;->nextTag(I)I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    .line 825
    iget v1, p0, Lcom/android/exchange/adapter/TasksSyncAdapter$EasTasksSyncParser;->tag:I

    sparse-switch v1, :sswitch_data_0

    .line 834
    invoke-virtual {p0}, Lcom/android/exchange/adapter/TasksSyncAdapter$EasTasksSyncParser;->skipTag()V

    goto :goto_0

    .line 827
    :sswitch_0
    invoke-virtual {p0}, Lcom/android/exchange/adapter/TasksSyncAdapter$EasTasksSyncParser;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 829
    goto :goto_0

    .line 831
    :sswitch_1
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, p1, v1, v2}, Lcom/android/exchange/adapter/TasksSyncAdapter$EasTasksSyncParser;->addData(Ljava/lang/String;Lcom/android/exchange/adapter/TasksSyncAdapter$TaskOperations;Landroid/content/Entity;Z)V

    goto :goto_0

    .line 837
    :cond_0
    return-void

    .line 825
    nop

    :sswitch_data_0
    .sparse-switch
        0xd -> :sswitch_0
        0x1d -> :sswitch_1
    .end sparse-switch
.end method

.method public addResponsesParser()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 1416
    const/4 v4, 0x0

    .line 1417
    .local v4, serverId:Ljava/lang/String;
    const/4 v1, 0x0

    .line 1418
    .local v1, clientId:Ljava/lang/String;
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 1419
    .local v2, cv:Landroid/content/ContentValues;
    new-instance v3, Lcom/android/exchange/adapter/TasksSyncAdapter$TaskOperations;

    iget-object v5, p0, Lcom/android/exchange/adapter/TasksSyncAdapter$EasTasksSyncParser;->this$0:Lcom/android/exchange/adapter/TasksSyncAdapter;

    const/4 v6, 0x0

    invoke-direct {v3, v5, v6}, Lcom/android/exchange/adapter/TasksSyncAdapter$TaskOperations;-><init>(Lcom/android/exchange/adapter/TasksSyncAdapter;Lcom/android/exchange/adapter/TasksSyncAdapter$1;)V

    .line 1420
    .local v3, ops:Lcom/android/exchange/adapter/TasksSyncAdapter$TaskOperations;
    :goto_0
    const/4 v5, 0x7

    invoke-virtual {p0, v5}, Lcom/android/exchange/adapter/TasksSyncAdapter$EasTasksSyncParser;->nextTag(I)I

    move-result v5

    const/4 v6, 0x3

    if-eq v5, v6, :cond_0

    .line 1421
    iget v5, p0, Lcom/android/exchange/adapter/TasksSyncAdapter$EasTasksSyncParser;->tag:I

    packed-switch v5, :pswitch_data_0

    .line 1432
    invoke-virtual {p0}, Lcom/android/exchange/adapter/TasksSyncAdapter$EasTasksSyncParser;->skipTag()V

    goto :goto_0

    .line 1423
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/exchange/adapter/TasksSyncAdapter$EasTasksSyncParser;->getValue()Ljava/lang/String;

    move-result-object v4

    .line 1424
    goto :goto_0

    .line 1426
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/exchange/adapter/TasksSyncAdapter$EasTasksSyncParser;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 1427
    goto :goto_0

    .line 1429
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/exchange/adapter/TasksSyncAdapter$EasTasksSyncParser;->getValue()Ljava/lang/String;

    goto :goto_0

    .line 1435
    :cond_0
    new-array v5, v9, [Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "server id and client ids are "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {p0, v5}, Lcom/android/exchange/adapter/TasksSyncAdapter$EasTasksSyncParser;->userLog([Ljava/lang/String;)V

    .line 1437
    if-eqz v1, :cond_1

    if-nez v4, :cond_2

    .line 1458
    :cond_1
    :goto_1
    return-void

    .line 1438
    :cond_2
    new-array v5, v9, [Ljava/lang/String;

    const-string v6, " not returned from task till now, going to write to db response vals "

    aput-object v6, v5, v8

    invoke-virtual {p0, v5}, Lcom/android/exchange/adapter/TasksSyncAdapter$EasTasksSyncParser;->userLog([Ljava/lang/String;)V

    .line 1439
    invoke-direct {p0, v1}, Lcom/android/exchange/adapter/TasksSyncAdapter$EasTasksSyncParser;->getClientIdCursor(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1440
    .local v0, c:Landroid/database/Cursor;
    new-array v5, v9, [Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " The cursor size for updation is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {p0, v5}, Lcom/android/exchange/adapter/TasksSyncAdapter$EasTasksSyncParser;->userLog([Ljava/lang/String;)V

    .line 1442
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1443
    const-string v5, "sourceid"

    invoke-virtual {v2, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1444
    const-string v5, "_sync_dirty"

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1445
    sget-object v5, Landroid/provider/Tasks$TasksTbl;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v5}, Lcom/android/exchange/adapter/TasksSyncAdapter;->addCallerIsSyncAdapterParameter(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-static {v5, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    invoke-static {v5}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/android/exchange/adapter/TasksSyncAdapter$TaskOperations;->add(Landroid/content/ContentProviderOperation;)Z

    .line 1451
    invoke-virtual {v3}, Lcom/android/exchange/adapter/TasksSyncAdapter$TaskOperations;->execute()V

    .line 1452
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "New task "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " was given serverId: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {p0, v5}, Lcom/android/exchange/adapter/TasksSyncAdapter$EasTasksSyncParser;->userLog([Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1455
    :cond_3
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    :catchall_0
    move-exception v5

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v5

    .line 1421
    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public changeParser(Lcom/android/exchange/adapter/TasksSyncAdapter$TaskOperations;)V
    .locals 7
    .parameter "ops"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    .line 876
    const/4 v2, 0x0

    .line 880
    .local v2, serverId:Ljava/lang/String;
    const/4 v1, 0x0

    .line 883
    .local v1, entity:Landroid/content/Entity;
    :cond_0
    :goto_0
    const/16 v3, 0x8

    invoke-virtual {p0, v3}, Lcom/android/exchange/adapter/TasksSyncAdapter$EasTasksSyncParser;->nextTag(I)I

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_1

    .line 884
    iget v3, p0, Lcom/android/exchange/adapter/TasksSyncAdapter$EasTasksSyncParser;->tag:I

    sparse-switch v3, :sswitch_data_0

    .line 921
    invoke-virtual {p0}, Lcom/android/exchange/adapter/TasksSyncAdapter$EasTasksSyncParser;->skipTag()V

    goto :goto_0

    .line 886
    :sswitch_0
    invoke-virtual {p0}, Lcom/android/exchange/adapter/TasksSyncAdapter$EasTasksSyncParser;->getValue()Ljava/lang/String;

    move-result-object v2

    .line 887
    invoke-direct {p0, v2}, Lcom/android/exchange/adapter/TasksSyncAdapter$EasTasksSyncParser;->getServerIdCursor(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 888
    .local v0, c:Landroid/database/Cursor;
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "Changing task "

    aput-object v5, v3, v4

    aput-object v2, v3, v6

    invoke-virtual {p0, v3}, Lcom/android/exchange/adapter/TasksSyncAdapter$EasTasksSyncParser;->userLog([Ljava/lang/String;)V

    .line 890
    if-eqz v0, :cond_0

    .line 891
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 918
    .end local v0           #c:Landroid/database/Cursor;
    :sswitch_1
    invoke-virtual {p0, v2, p1, v1, v6}, Lcom/android/exchange/adapter/TasksSyncAdapter$EasTasksSyncParser;->addData(Ljava/lang/String;Lcom/android/exchange/adapter/TasksSyncAdapter$TaskOperations;Landroid/content/Entity;Z)V

    goto :goto_0

    .line 924
    :cond_1
    return-void

    .line 884
    nop

    :sswitch_data_0
    .sparse-switch
        0xd -> :sswitch_0
        0x1d -> :sswitch_1
    .end sparse-switch
.end method

.method public changeResponsesParser()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1461
    const/4 v0, 0x0

    .line 1462
    .local v0, serverId:Ljava/lang/String;
    const/4 v1, 0x0

    .line 1463
    .local v1, status:Ljava/lang/String;
    :goto_0
    const/16 v2, 0x8

    invoke-virtual {p0, v2}, Lcom/android/exchange/adapter/TasksSyncAdapter$EasTasksSyncParser;->nextTag(I)I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_0

    .line 1464
    iget v2, p0, Lcom/android/exchange/adapter/TasksSyncAdapter$EasTasksSyncParser;->tag:I

    packed-switch v2, :pswitch_data_0

    .line 1472
    invoke-virtual {p0}, Lcom/android/exchange/adapter/TasksSyncAdapter$EasTasksSyncParser;->skipTag()V

    goto :goto_0

    .line 1466
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/exchange/adapter/TasksSyncAdapter$EasTasksSyncParser;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 1467
    goto :goto_0

    .line 1469
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/exchange/adapter/TasksSyncAdapter$EasTasksSyncParser;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 1470
    goto :goto_0

    .line 1475
    :cond_0
    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    .line 1476
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Changed task "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " failed with status: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v2}, Lcom/android/exchange/adapter/TasksSyncAdapter$EasTasksSyncParser;->userLog([Ljava/lang/String;)V

    .line 1478
    :cond_1
    return-void

    .line 1464
    nop

    :pswitch_data_0
    .packed-switch 0xd
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public commandsParser()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 745
    const-string v0, "EasTasksSyncParser"

    const-string v1, "commandsParser.."

    invoke-static {v0, v1}, Lcom/android/exchange/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 746
    :goto_0
    const/16 v0, 0x16

    invoke-virtual {p0, v0}, Lcom/android/exchange/adapter/TasksSyncAdapter$EasTasksSyncParser;->nextTag(I)I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_4

    .line 747
    iget v0, p0, Lcom/android/exchange/adapter/TasksSyncAdapter$EasTasksSyncParser;->tag:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    .line 748
    iget-object v0, p0, Lcom/android/exchange/adapter/TasksSyncAdapter$EasTasksSyncParser;->ops:Lcom/android/exchange/adapter/TasksSyncAdapter$TaskOperations;

    invoke-virtual {p0, v0}, Lcom/android/exchange/adapter/TasksSyncAdapter$EasTasksSyncParser;->addParser(Lcom/android/exchange/adapter/TasksSyncAdapter$TaskOperations;)V

    .line 749
    iget-object v0, p0, Lcom/android/exchange/adapter/TasksSyncAdapter$EasTasksSyncParser;->this$0:Lcom/android/exchange/adapter/TasksSyncAdapter;

    invoke-virtual {v0}, Lcom/android/exchange/adapter/TasksSyncAdapter;->incrementChangeCount()V

    goto :goto_0

    .line 750
    :cond_0
    iget v0, p0, Lcom/android/exchange/adapter/TasksSyncAdapter$EasTasksSyncParser;->tag:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_1

    .line 751
    iget-object v0, p0, Lcom/android/exchange/adapter/TasksSyncAdapter$EasTasksSyncParser;->ops:Lcom/android/exchange/adapter/TasksSyncAdapter$TaskOperations;

    invoke-virtual {p0, v0}, Lcom/android/exchange/adapter/TasksSyncAdapter$EasTasksSyncParser;->deleteParser(Lcom/android/exchange/adapter/TasksSyncAdapter$TaskOperations;)V

    .line 752
    iget-object v0, p0, Lcom/android/exchange/adapter/TasksSyncAdapter$EasTasksSyncParser;->this$0:Lcom/android/exchange/adapter/TasksSyncAdapter;

    invoke-virtual {v0}, Lcom/android/exchange/adapter/TasksSyncAdapter;->incrementChangeCount()V

    goto :goto_0

    .line 753
    :cond_1
    iget v0, p0, Lcom/android/exchange/adapter/TasksSyncAdapter$EasTasksSyncParser;->tag:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_2

    .line 754
    iget-object v0, p0, Lcom/android/exchange/adapter/TasksSyncAdapter$EasTasksSyncParser;->ops:Lcom/android/exchange/adapter/TasksSyncAdapter$TaskOperations;

    invoke-virtual {p0, v0}, Lcom/android/exchange/adapter/TasksSyncAdapter$EasTasksSyncParser;->changeParser(Lcom/android/exchange/adapter/TasksSyncAdapter$TaskOperations;)V

    .line 755
    iget-object v0, p0, Lcom/android/exchange/adapter/TasksSyncAdapter$EasTasksSyncParser;->this$0:Lcom/android/exchange/adapter/TasksSyncAdapter;

    invoke-virtual {v0}, Lcom/android/exchange/adapter/TasksSyncAdapter;->incrementChangeCount()V

    goto :goto_0

    .line 757
    :cond_2
    iget v0, p0, Lcom/android/exchange/adapter/TasksSyncAdapter$EasTasksSyncParser;->tag:I

    const/16 v1, 0x21

    if-ne v0, v1, :cond_3

    .line 758
    iget-object v0, p0, Lcom/android/exchange/adapter/TasksSyncAdapter$EasTasksSyncParser;->ops:Lcom/android/exchange/adapter/TasksSyncAdapter$TaskOperations;

    invoke-direct {p0, v0}, Lcom/android/exchange/adapter/TasksSyncAdapter$EasTasksSyncParser;->moveParser(Lcom/android/exchange/adapter/TasksSyncAdapter$TaskOperations;)V

    .line 759
    iget-object v0, p0, Lcom/android/exchange/adapter/TasksSyncAdapter$EasTasksSyncParser;->this$0:Lcom/android/exchange/adapter/TasksSyncAdapter;

    invoke-virtual {v0}, Lcom/android/exchange/adapter/TasksSyncAdapter;->incrementChangeCount()V

    goto :goto_0

    .line 761
    :cond_3
    invoke-virtual {p0}, Lcom/android/exchange/adapter/TasksSyncAdapter$EasTasksSyncParser;->skipTag()V

    goto :goto_0

    .line 763
    :cond_4
    return-void
.end method

.method public commit()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 767
    iget-object v0, p0, Lcom/android/exchange/adapter/TasksSyncAdapter$EasTasksSyncParser;->mAdapter:Lcom/android/exchange/adapter/AbstractSyncAdapter;

    iget-object v1, p0, Lcom/android/exchange/adapter/TasksSyncAdapter$EasTasksSyncParser;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    iget-object v1, v1, Lcom/android/email/provider/EmailContent$Mailbox;->mSyncKey:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/adapter/AbstractSyncAdapter;->setSyncKey(Ljava/lang/String;Z)V

    .line 768
    const-string v0, "EasTasksSyncParser"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "*** the new sync key for task is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/exchange/adapter/TasksSyncAdapter$EasTasksSyncParser;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    iget-object v2, v2, Lcom/android/email/provider/EmailContent$Mailbox;->mSyncKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/exchange/SyncManager;->alwaysLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 770
    iget-object v0, p0, Lcom/android/exchange/adapter/TasksSyncAdapter$EasTasksSyncParser;->ops:Lcom/android/exchange/adapter/TasksSyncAdapter$TaskOperations;

    invoke-virtual {v0}, Lcom/android/exchange/adapter/TasksSyncAdapter$TaskOperations;->execute()V

    .line 772
    return-void
.end method

.method public deleteParser(Lcom/android/exchange/adapter/TasksSyncAdapter$TaskOperations;)V
    .locals 5
    .parameter "ops"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 852
    :goto_0
    const/16 v2, 0x9

    invoke-virtual {p0, v2}, Lcom/android/exchange/adapter/TasksSyncAdapter$EasTasksSyncParser;->nextTag(I)I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_1

    .line 853
    iget v2, p0, Lcom/android/exchange/adapter/TasksSyncAdapter$EasTasksSyncParser;->tag:I

    packed-switch v2, :pswitch_data_0

    .line 870
    invoke-virtual {p0}, Lcom/android/exchange/adapter/TasksSyncAdapter$EasTasksSyncParser;->skipTag()V

    goto :goto_0

    .line 855
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/exchange/adapter/TasksSyncAdapter$EasTasksSyncParser;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 857
    .local v1, serverId:Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/android/exchange/adapter/TasksSyncAdapter$EasTasksSyncParser;->getServerIdCursor(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 860
    .local v0, c:Landroid/database/Cursor;
    if-eqz v0, :cond_0

    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 862
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "Deleting "

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object v1, v2, v3

    invoke-virtual {p0, v2}, Lcom/android/exchange/adapter/TasksSyncAdapter$EasTasksSyncParser;->userLog([Ljava/lang/String;)V

    .line 863
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Lcom/android/exchange/adapter/TasksSyncAdapter$TaskOperations;->delete(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 866
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v2

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v2

    .line 873
    .end local v0           #c:Landroid/database/Cursor;
    .end local v1           #serverId:Ljava/lang/String;
    :cond_1
    return-void

    .line 853
    :pswitch_data_0
    .packed-switch 0xd
        :pswitch_0
    .end packed-switch
.end method

.method public responsesParser()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-string v2, "EasTasksSyncParser"

    .line 777
    const-string v0, "EasTasksSyncParser"

    const-string v0, "responsesParser.."

    invoke-static {v2, v0}, Lcom/android/exchange/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 778
    :goto_0
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/android/exchange/adapter/TasksSyncAdapter$EasTasksSyncParser;->nextTag(I)I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    .line 779
    iget v0, p0, Lcom/android/exchange/adapter/TasksSyncAdapter$EasTasksSyncParser;->tag:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    .line 780
    const-string v0, "EasTasksSyncParser"

    const-string v0, " inside add responsesParser.."

    invoke-static {v2, v0}, Lcom/android/exchange/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 781
    invoke-virtual {p0}, Lcom/android/exchange/adapter/TasksSyncAdapter$EasTasksSyncParser;->addResponsesParser()V

    goto :goto_0

    .line 782
    :cond_0
    iget v0, p0, Lcom/android/exchange/adapter/TasksSyncAdapter$EasTasksSyncParser;->tag:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    .line 783
    invoke-virtual {p0}, Lcom/android/exchange/adapter/TasksSyncAdapter$EasTasksSyncParser;->changeResponsesParser()V

    goto :goto_0

    .line 785
    :cond_1
    invoke-virtual {p0}, Lcom/android/exchange/adapter/TasksSyncAdapter$EasTasksSyncParser;->skipTag()V

    goto :goto_0

    .line 787
    :cond_2
    return-void
.end method

.method public wipe()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const-string v7, "EasTasksSyncParser"

    .line 726
    const-string v4, "EasTasksSyncParser"

    const-string v4, "Inside wipe..."

    invoke-static {v7, v4}, Lcom/android/exchange/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 727
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "accountName like \'%"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/exchange/adapter/TasksSyncAdapter$EasTasksSyncParser;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-object v5, v5, Lcom/android/email/provider/EmailContent$Account;->mEmailAddress:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "%\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 728
    .local v3, select:Ljava/lang/String;
    const-string v4, "EasTasksSyncParser"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Select value..."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Lcom/android/exchange/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 729
    iget-object v4, p0, Lcom/android/exchange/adapter/TasksSyncAdapter$EasTasksSyncParser;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v5, Landroid/provider/Tasks$TasksTbl;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4, v5, v3, v8}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 733
    const-string v4, "EasTasksSyncParser"

    const-string v4, "TASKS BAD SYNC KEY"

    invoke-static {v7, v4}, Lcom/android/exchange/SyncManager;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 735
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 736
    .local v0, cvx:Landroid/content/ContentValues;
    const-string v4, "syncKey"

    const-string v5, "0"

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 737
    sget-object v4, Lcom/android/email/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    iget-object v5, p0, Lcom/android/exchange/adapter/TasksSyncAdapter$EasTasksSyncParser;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    iget-wide v5, v5, Lcom/android/email/provider/EmailContent$Mailbox;->mId:J

    invoke-static {v4, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 738
    .local v1, mMailboxUri:Landroid/net/Uri;
    iget-object v4, p0, Lcom/android/exchange/adapter/TasksSyncAdapter$EasTasksSyncParser;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v4, v1, v0, v8, v8}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 739
    .local v2, mailboxCount:I
    const-string v4, "EasTasksSyncParser"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Updating Tasks mailbox with sync key 0. Count = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Lcom/android/exchange/SyncManager;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 741
    return-void
.end method
