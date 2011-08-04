.class Lcom/android/exchange/SyncManager$NotesObserver;
.super Landroid/database/ContentObserver;
.source "SyncManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exchange/SyncManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NotesObserver"
.end annotation


# instance fields
.field alarmManager:Landroid/app/AlarmManager;

.field syncAlarmIntent:Landroid/content/Intent;

.field syncAlarmPendingIntent:Landroid/app/PendingIntent;

.field final synthetic this$0:Lcom/android/exchange/SyncManager;


# direct methods
.method public constructor <init>(Lcom/android/exchange/SyncManager;Landroid/os/Handler;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 1302
    iput-object p1, p0, Lcom/android/exchange/SyncManager$NotesObserver;->this$0:Lcom/android/exchange/SyncManager;

    .line 1303
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 1297
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/android/exchange/SyncManager;->INSTANCE:Lcom/android/exchange/SyncManager;

    const-class v2, Lcom/android/exchange/NotesSyncAlarmReceiver;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/android/exchange/SyncManager$NotesObserver;->syncAlarmIntent:Landroid/content/Intent;

    .line 1298
    sget-object v0, Lcom/android/exchange/SyncManager;->INSTANCE:Lcom/android/exchange/SyncManager;

    iget-object v1, p0, Lcom/android/exchange/SyncManager$NotesObserver;->syncAlarmIntent:Landroid/content/Intent;

    invoke-static {v0, v3, v1, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exchange/SyncManager$NotesObserver;->syncAlarmPendingIntent:Landroid/app/PendingIntent;

    .line 1300
    sget-object v0, Lcom/android/exchange/SyncManager;->INSTANCE:Lcom/android/exchange/SyncManager;

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Lcom/android/exchange/SyncManager;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/android/exchange/SyncManager$NotesObserver;->alarmManager:Landroid/app/AlarmManager;

    .line 1304
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 6
    .parameter "selfChange"

    .prologue
    .line 1309
    if-nez p1, :cond_0

    .line 1311
    const-string v0, "SyncedNotes changed: (re)setting alarm for 5s"

    invoke-static {v0}, Lcom/android/exchange/SyncManager;->log(Ljava/lang/String;)V

    .line 1312
    iget-object v0, p0, Lcom/android/exchange/SyncManager$NotesObserver;->alarmManager:Landroid/app/AlarmManager;

    const/4 v1, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x1388

    add-long/2addr v2, v4

    iget-object v4, p0, Lcom/android/exchange/SyncManager$NotesObserver;->syncAlarmPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 1316
    :cond_0
    return-void
.end method
