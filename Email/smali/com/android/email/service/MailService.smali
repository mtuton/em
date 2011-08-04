.class public Lcom/android/email/service/MailService;
.super Landroid/app/Service;
.source "MailService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/service/MailService$1;,
        Lcom/android/email/service/MailService$ControllerResults;,
        Lcom/android/email/service/MailService$AccountSyncReport;
    }
.end annotation


# static fields
.field private static final NEW_MESSAGE_COUNT_PROJECTION:[Ljava/lang/String;

.field public static NEW_MESSAGE_NOTIFICATION_ID:I

.field public static NOTIFICATION_ID_EXCHANGE_CALENDAR_ADDED:I

.field public static NOTIFICATION_ID_NEW_MESSAGES:I

.field public static NOTIFICATION_ID_SECURITY_NEEDED:I

.field static mClearNewMessages:Landroid/content/ContentValues;

.field private static mSyncReports:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/email/service/MailService$AccountSyncReport;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mControllerCallback:Lcom/android/email/Controller$Result;

.field private mStartId:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    const-string v3, "newMessageCount"

    .line 64
    sput v1, Lcom/android/email/service/MailService;->NEW_MESSAGE_NOTIFICATION_ID:I

    .line 66
    sput v1, Lcom/android/email/service/MailService;->NOTIFICATION_ID_NEW_MESSAGES:I

    .line 67
    const/4 v0, 0x2

    sput v0, Lcom/android/email/service/MailService;->NOTIFICATION_ID_SECURITY_NEEDED:I

    .line 68
    const/4 v0, 0x3

    sput v0, Lcom/android/email/service/MailService;->NOTIFICATION_ID_EXCHANGE_CALENDAR_ADDED:I

    .line 89
    new-array v0, v1, [Ljava/lang/String;

    const-string v1, "newMessageCount"

    aput-object v3, v0, v2

    sput-object v0, Lcom/android/email/service/MailService;->NEW_MESSAGE_COUNT_PROJECTION:[Ljava/lang/String;

    .line 99
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/email/service/MailService;->mSyncReports:Ljava/util/HashMap;

    .line 107
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    sput-object v0, Lcom/android/email/service/MailService;->mClearNewMessages:Landroid/content/ContentValues;

    .line 108
    sget-object v0, Lcom/android/email/service/MailService;->mClearNewMessages:Landroid/content/ContentValues;

    const-string v1, "newMessageCount"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 109
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 92
    new-instance v0, Lcom/android/email/service/MailService$ControllerResults;

    invoke-direct {v0, p0}, Lcom/android/email/service/MailService$ControllerResults;-><init>(Lcom/android/email/service/MailService;)V

    iput-object v0, p0, Lcom/android/email/service/MailService;->mControllerCallback:Lcom/android/email/Controller$Result;

    .line 654
    return-void
.end method

.method static synthetic access$100(Lcom/android/email/service/MailService;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, Lcom/android/email/service/MailService;->notifyNewMessages(J)V

    return-void
.end method

.method static synthetic access$200()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 56
    sget-object v0, Lcom/android/email/service/MailService;->mSyncReports:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/email/service/MailService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget v0, p0, Lcom/android/email/service/MailService;->mStartId:I

    return v0
.end method

.method public static actionCancel(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 129
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 130
    const-class v1, Lcom/android/email/service/MailService;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 131
    const-string v1, "com.android.email.intent.action.MAIL_SERVICE_CANCEL"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 132
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 133
    return-void
.end method

.method public static actionNotifyNewMessages(Landroid/content/Context;J)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 189
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.email.intent.action.MAIL_SERVICE_NOTIFY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 190
    const-class v1, Lcom/android/email/service/MailService;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 191
    const-string v1, "com.android.email.intent.extra.ACCOUNT"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 192
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 193
    return-void
.end method

.method public static actionReschedule(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 122
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 123
    const-class v1, Lcom/android/email/service/MailService;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 124
    const-string v1, "com.android.email.intent.action.MAIL_SERVICE_RESCHEDULE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 125
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 126
    return-void
.end method

.method public static actionSyncOneAccount(Landroid/content/Context;J)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 137
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 138
    const-class v1, Lcom/android/email/service/MailService;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 139
    const-string v1, "com.android.email.intent.action.MAIL_SERVICE_SYNC_ONE_ACCOUNT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 140
    const-string v1, "com.android.email.intent.extra.ACCOUNT"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 141
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 142
    return-void
.end method

.method private cancel()V
    .locals 6

    .prologue
    .line 330
    const-string v2, "alarm"

    invoke-virtual {p0, v2}, Lcom/android/email/service/MailService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 331
    .local v0, alarmMgr:Landroid/app/AlarmManager;
    const-wide/16 v2, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/android/email/service/MailService;->createAlarmIntent(J[JZ)Landroid/app/PendingIntent;

    move-result-object v1

    .line 332
    .local v1, pi:Landroid/app/PendingIntent;
    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 333
    return-void
.end method

.method private notifyNewMessages(J)V
    .locals 14
    .parameter

    .prologue
    .line 796
    const/4 v0, 0x0

    .line 797
    const/4 v1, 0x0

    .line 798
    const/4 v2, 0x0

    .line 799
    const/4 v3, 0x0

    .line 800
    const/4 v4, 0x0

    .line 801
    const/4 v5, 0x0

    .line 802
    const/4 v6, 0x0

    .line 803
    sget-object v7, Lcom/android/email/service/MailService;->mSyncReports:Ljava/util/HashMap;

    monitor-enter v7

    .line 804
    :try_start_0
    sget-object v8, Lcom/android/email/service/MailService;->mSyncReports:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move-object v9, v3

    move v10, v2

    move v11, v1

    move-object v1, v6

    move v2, v4

    move v3, v0

    move v6, v5

    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/service/MailService$AccountSyncReport;

    .line 805
    iget v4, v0, Lcom/android/email/service/MailService$AccountSyncReport;->numNewMessages:I

    if-eqz v4, :cond_0

    .line 808
    iget v4, v0, Lcom/android/email/service/MailService$AccountSyncReport;->numNewMessages:I

    add-int/2addr v4, v6

    .line 809
    add-int/lit8 v2, v2, 0x1

    .line 810
    iget-wide v5, v0, Lcom/android/email/service/MailService$AccountSyncReport;->accountId:J

    cmp-long v5, v5, p1

    if-nez v5, :cond_7

    .line 811
    iget-boolean v1, v0, Lcom/android/email/service/MailService$AccountSyncReport;->notify:Z

    .line 812
    iget-boolean v3, v0, Lcom/android/email/service/MailService$AccountSyncReport;->vibrate:Z

    .line 813
    iget-boolean v5, v0, Lcom/android/email/service/MailService$AccountSyncReport;->vibrateWhenSilent:Z

    .line 814
    iget-object v6, v0, Lcom/android/email/service/MailService$AccountSyncReport;->ringtoneUri:Landroid/net/Uri;

    .line 815
    iget-object v0, v0, Lcom/android/email/service/MailService$AccountSyncReport;->displayName:Ljava/lang/String;

    move-object v12, v6

    move v6, v1

    move-object v1, v12

    move v13, v3

    move v3, v5

    move v5, v13

    :goto_1
    move-object v9, v1

    move v10, v3

    move v11, v5

    move-object v1, v0

    move v3, v6

    move v6, v4

    goto :goto_0

    .line 818
    :cond_1
    monitor-exit v7

    .line 819
    if-nez v3, :cond_2

    .line 887
    :goto_2
    return-void

    .line 818
    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 827
    :cond_2
    const/4 v0, 0x1

    if-ne v2, v0, :cond_5

    .line 830
    invoke-virtual {p0}, Lcom/android/email/service/MailService;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v2, 0x7f0b

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object v1, v3, v4

    invoke-virtual {v0, v2, v6, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 833
    const-wide/16 v3, -0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-wide v1, p1

    invoke-static/range {v0 .. v5}, Lcom/android/email/activity/MessageList;->createIntent(Landroid/content/Context;JJI)Landroid/content/Intent;

    move-result-object v0

    move-object v1, v0

    move-object v0, v7

    .line 844
    :goto_3
    const/4 v2, 0x0

    const/high16 v3, 0x800

    invoke-static {p0, v2, v1, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 847
    new-instance v2, Landroid/app/Notification;

    const v3, 0x7f0200fd

    const v4, 0x7f08003d

    invoke-virtual {p0, v4}, Lcom/android/email/service/MailService;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-direct {v2, v3, v4, v7, v8}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 851
    const v3, 0x7f08003d

    invoke-virtual {p0, v3}, Lcom/android/email/service/MailService;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, p0, v3, v0, v1}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 856
    iput-object v9, v2, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 857
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/android/email/service/MailService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    .line 858
    invoke-virtual {p1}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_6

    const/4 v0, 0x1

    .line 861
    :goto_4
    if-nez v11, :cond_3

    if-eqz v10, :cond_4

    if-eqz v0, :cond_4

    .line 862
    :cond_3
    iget v0, v2, Landroid/app/Notification;->defaults:I

    or-int/lit8 v0, v0, 0x2

    iput v0, v2, Landroid/app/Notification;->defaults:I

    .line 866
    :cond_4
    iget v0, v2, Landroid/app/Notification;->flags:I

    or-int/lit8 v0, v0, 0x1

    iput v0, v2, Landroid/app/Notification;->flags:I

    .line 867
    iget v0, v2, Landroid/app/Notification;->defaults:I

    or-int/lit8 v0, v0, 0x4

    iput v0, v2, Landroid/app/Notification;->defaults:I

    .line 871
    const-string v0, "power"

    invoke-virtual {p0, v0}, Lcom/android/email/service/MailService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    .line 872
    const v0, 0x1000001a

    const-string v1, "New message notification LCD on"

    invoke-virtual {p1, v0, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    .line 874
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    const/4 v1, 0x0

    invoke-virtual {p1, v3, v4, v1}, Landroid/os/PowerManager;->userActivity(JZ)V

    .line 875
    const-wide/16 v3, 0x1388

    invoke-virtual {v0, v3, v4}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 877
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lcom/android/email/service/MailService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/NotificationManager;

    .line 879
    sget v0, Lcom/android/email/service/MailService;->NOTIFICATION_ID_NEW_MESSAGES:I

    invoke-virtual {p1, v0, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 880
    invoke-virtual {p0}, Lcom/android/email/service/MailService;->getCountofAccounts()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/email/service/MailService;->updateBadgeProviderExample(I)V

    .line 882
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "new emails"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 883
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/email/service/TextToSpeechService;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 884
    const-string v2, "TTS_TEXT"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 885
    invoke-virtual {p0, v1}, Lcom/android/email/service/MailService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_2

    .line 837
    :cond_5
    invoke-virtual {p0}, Lcom/android/email/service/MailService;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0001

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 840
    const-wide/16 v1, -0x1

    const-wide/16 v3, -0x2

    const/4 v5, -0x1

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/android/email/activity/MessageList;->createIntent(Landroid/content/Context;JJI)Landroid/content/Intent;

    move-result-object v0

    move-object v1, v0

    move-object v0, v7

    goto/16 :goto_3

    .line 858
    :cond_6
    const/4 v0, 0x0

    goto/16 :goto_4

    :cond_7
    move-object v0, v1

    move v5, v11

    move v6, v3

    move-object v1, v9

    move v3, v10

    goto/16 :goto_1
.end method

.method private refreshSyncReports()V
    .locals 9

    .prologue
    .line 339
    sget-object v4, Lcom/android/email/service/MailService;->mSyncReports:Ljava/util/HashMap;

    monitor-enter v4

    .line 341
    :try_start_0
    new-instance v3, Ljava/util/HashMap;

    sget-object v5, Lcom/android/email/service/MailService;->mSyncReports:Ljava/util/HashMap;

    invoke-direct {v3, v5}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 345
    .local v3, oldSyncReports:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lcom/android/email/service/MailService$AccountSyncReport;>;"
    sget-object v5, Lcom/android/email/service/MailService;->mSyncReports:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->clear()V

    .line 346
    const-wide/16 v5, -0x1

    invoke-direct {p0, v5, v6}, Lcom/android/email/service/MailService;->setupSyncReportsLocked(J)V

    .line 349
    sget-object v5, Lcom/android/email/service/MailService;->mSyncReports:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/email/service/MailService$AccountSyncReport;

    .line 350
    .local v1, newReport:Lcom/android/email/service/MailService$AccountSyncReport;
    iget-wide v5, v1, Lcom/android/email/service/MailService$AccountSyncReport;->accountId:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/email/service/MailService$AccountSyncReport;

    .line 351
    .local v2, oldReport:Lcom/android/email/service/MailService$AccountSyncReport;
    if-eqz v2, :cond_0

    .line 352
    iget-wide v5, v2, Lcom/android/email/service/MailService$AccountSyncReport;->prevSyncTime:J

    iput-wide v5, v1, Lcom/android/email/service/MailService$AccountSyncReport;->prevSyncTime:J

    .line 353
    iget v5, v1, Lcom/android/email/service/MailService$AccountSyncReport;->syncInterval:I

    if-lez v5, :cond_0

    iget-wide v5, v1, Lcom/android/email/service/MailService$AccountSyncReport;->prevSyncTime:J

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-eqz v5, :cond_0

    .line 354
    iget-wide v5, v1, Lcom/android/email/service/MailService$AccountSyncReport;->prevSyncTime:J

    iget v7, v1, Lcom/android/email/service/MailService$AccountSyncReport;->syncInterval:I

    mul-int/lit16 v7, v7, 0x3e8

    mul-int/lit8 v7, v7, 0x3c

    int-to-long v7, v7

    add-long/2addr v5, v7

    iput-wide v5, v1, Lcom/android/email/service/MailService$AccountSyncReport;->nextSyncTime:J

    goto :goto_0

    .line 359
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #newReport:Lcom/android/email/service/MailService$AccountSyncReport;
    .end local v2           #oldReport:Lcom/android/email/service/MailService$AccountSyncReport;
    .end local v3           #oldSyncReports:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lcom/android/email/service/MailService$AccountSyncReport;>;"
    :catchall_0
    move-exception v5

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .restart local v0       #i$:Ljava/util/Iterator;
    .restart local v3       #oldSyncReports:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lcom/android/email/service/MailService$AccountSyncReport;>;"
    :cond_1
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 360
    return-void
.end method

.method public static resetNewMessageCount(Landroid/content/Context;J)V
    .locals 11
    .parameter "context"
    .parameter "accountId"

    .prologue
    const-wide/16 v9, -0x1

    const/4 v8, 0x0

    .line 153
    sget-object v4, Lcom/android/email/service/MailService;->mSyncReports:Ljava/util/HashMap;

    monitor-enter v4

    .line 154
    :try_start_0
    sget-object v5, Lcom/android/email/service/MailService;->mSyncReports:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/email/service/MailService$AccountSyncReport;

    .line 155
    .local v1, report:Lcom/android/email/service/MailService$AccountSyncReport;
    cmp-long v5, p1, v9

    if-eqz v5, :cond_1

    iget-wide v5, v1, Lcom/android/email/service/MailService$AccountSyncReport;->accountId:J

    cmp-long v5, p1, v5

    if-nez v5, :cond_0

    .line 156
    :cond_1
    const/4 v5, 0x0

    iput v5, v1, Lcom/android/email/service/MailService$AccountSyncReport;->numNewMessages:I

    goto :goto_0

    .line 159
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #report:Lcom/android/email/service/MailService$AccountSyncReport;
    :catchall_0
    move-exception v5

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_2
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 162
    cmp-long v4, p1, v9

    if-nez v4, :cond_3

    .line 163
    sget-object v3, Lcom/android/email/provider/EmailContent$Account;->CONTENT_URI:Landroid/net/Uri;

    .line 170
    .local v3, uri:Landroid/net/Uri;
    :goto_1
    :try_start_2
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/android/email/service/MailService;->mClearNewMessages:Landroid/content/ContentValues;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v4, v3, v5, v6, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_2 .. :try_end_2} :catch_0

    .line 177
    :goto_2
    return-void

    .line 165
    .end local v3           #uri:Landroid/net/Uri;
    :cond_3
    sget-object v4, Lcom/android/email/provider/EmailContent$Account;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v4, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .restart local v3       #uri:Landroid/net/Uri;
    goto :goto_1

    .line 171
    :catch_0
    move-exception v4

    move-object v2, v4

    .line 172
    .local v2, sfe:Landroid/database/sqlite/SQLiteFullException;
    const v4, 0x7f080141

    invoke-static {p0, v4, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 173
    const-string v4, "MailService >>"

    const-string v5, "MailService:SQLiteFullException >>> "

    invoke-static {v4, v5}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteFullException;->printStackTrace()V

    goto :goto_2
.end method

.method private setWatchdog(JLandroid/app/AlarmManager;)V
    .locals 7
    .parameter "accountId"
    .parameter "alarmMgr"

    .prologue
    .line 440
    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-virtual {p0, p1, p2, v5, v6}, Lcom/android/email/service/MailService;->createAlarmIntent(J[JZ)Landroid/app/PendingIntent;

    move-result-object v2

    .line 441
    .local v2, pi:Landroid/app/PendingIntent;
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    .line 442
    .local v3, timeNow:J
    const-wide/32 v5, 0x927c0

    add-long v0, v3, v5

    .line 443
    .local v0, nextCheckTime:J
    const/4 v5, 0x2

    invoke-virtual {p3, v5, v0, v1, v2}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 444
    return-void
.end method

.method private setupSyncReportsLocked(J)V
    .locals 11
    .parameter "accountId"

    .prologue
    .line 525
    const-wide/16 v2, -0x1

    cmp-long v0, p1, v2

    if-nez v0, :cond_1

    .line 528
    sget-object v0, Lcom/android/email/service/MailService;->mSyncReports:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 584
    :cond_0
    :goto_0
    return-void

    .line 533
    :cond_1
    sget-object v0, Lcom/android/email/service/MailService;->mSyncReports:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 540
    :cond_2
    const-wide/16 v2, -0x1

    cmp-long v0, p1, v2

    if-nez v0, :cond_3

    .line 541
    sget-object v1, Lcom/android/email/provider/EmailContent$Account;->CONTENT_URI:Landroid/net/Uri;

    .line 547
    .local v1, uri:Landroid/net/Uri;
    :goto_1
    const/4 v6, 0x0

    .line 549
    .local v6, c:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Lcom/android/email/service/MailService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/android/email/provider/EmailContent$Account;->CONTENT_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 551
    .end local v1           #uri:Landroid/net/Uri;
    :goto_2
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 552
    new-instance v8, Lcom/android/email/service/MailService$AccountSyncReport;

    const/4 v0, 0x0

    invoke-direct {v8, v0}, Lcom/android/email/service/MailService$AccountSyncReport;-><init>(Lcom/android/email/service/MailService$1;)V

    .line 553
    .local v8, report:Lcom/android/email/service/MailService$AccountSyncReport;
    const/4 v0, 0x5

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 554
    .local v10, syncInterval:I
    const/16 v0, 0x8

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 555
    .local v7, flags:I
    const/16 v0, 0xc

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 562
    .local v9, ringtoneString:Ljava/lang/String;
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v8, Lcom/android/email/service/MailService$AccountSyncReport;->accountId:J

    .line 563
    const-wide/16 v2, 0x0

    iput-wide v2, v8, Lcom/android/email/service/MailService$AccountSyncReport;->prevSyncTime:J

    .line 564
    if-lez v10, :cond_4

    const-wide/16 v2, 0x0

    :goto_3
    iput-wide v2, v8, Lcom/android/email/service/MailService$AccountSyncReport;->nextSyncTime:J

    .line 565
    const/4 v0, 0x0

    iput v0, v8, Lcom/android/email/service/MailService$AccountSyncReport;->numNewMessages:I

    .line 567
    iput v10, v8, Lcom/android/email/service/MailService$AccountSyncReport;->syncInterval:I

    .line 568
    and-int/lit8 v0, v7, 0x1

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    :goto_4
    iput-boolean v0, v8, Lcom/android/email/service/MailService$AccountSyncReport;->notify:Z

    .line 569
    and-int/lit8 v0, v7, 0x2

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    iput-boolean v0, v8, Lcom/android/email/service/MailService$AccountSyncReport;->vibrate:Z

    .line 570
    and-int/lit8 v0, v7, 0x40

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    :goto_6
    iput-boolean v0, v8, Lcom/android/email/service/MailService$AccountSyncReport;->vibrateWhenSilent:Z

    .line 571
    if-nez v9, :cond_8

    const/4 v0, 0x0

    :goto_7
    iput-object v0, v8, Lcom/android/email/service/MailService$AccountSyncReport;->ringtoneUri:Landroid/net/Uri;

    .line 574
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/android/email/service/MailService$AccountSyncReport;->displayName:Ljava/lang/String;

    .line 577
    sget-object v0, Lcom/android/email/service/MailService;->mSyncReports:Ljava/util/HashMap;

    iget-wide v2, v8, Lcom/android/email/service/MailService$AccountSyncReport;->accountId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 579
    .end local v7           #flags:I
    .end local v8           #report:Lcom/android/email/service/MailService$AccountSyncReport;
    .end local v9           #ringtoneString:Ljava/lang/String;
    .end local v10           #syncInterval:I
    :catch_0
    move-exception v0

    .line 581
    if-eqz v6, :cond_0

    .line 582
    :goto_8
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 543
    .end local v6           #c:Landroid/database/Cursor;
    :cond_3
    sget-object v0, Lcom/android/email/provider/EmailContent$Account;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .restart local v1       #uri:Landroid/net/Uri;
    goto :goto_1

    .line 564
    .end local v1           #uri:Landroid/net/Uri;
    .restart local v6       #c:Landroid/database/Cursor;
    .restart local v7       #flags:I
    .restart local v8       #report:Lcom/android/email/service/MailService$AccountSyncReport;
    .restart local v9       #ringtoneString:Ljava/lang/String;
    .restart local v10       #syncInterval:I
    :cond_4
    const-wide/16 v2, -0x1

    goto :goto_3

    .line 568
    :cond_5
    const/4 v0, 0x0

    goto :goto_4

    .line 569
    :cond_6
    const/4 v0, 0x0

    goto :goto_5

    .line 570
    :cond_7
    const/4 v0, 0x0

    goto :goto_6

    .line 571
    :cond_8
    :try_start_1
    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_7

    .line 581
    .end local v7           #flags:I
    .end local v8           #report:Lcom/android/email/service/MailService$AccountSyncReport;
    .end local v9           #ringtoneString:Ljava/lang/String;
    .end local v10           #syncInterval:I
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_9

    .line 582
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 581
    :cond_9
    throw v0

    :cond_a
    if-eqz v6, :cond_0

    goto :goto_8
.end method

.method private syncOneAccount(Lcom/android/email/Controller;JI)Z
    .locals 8
    .parameter "controller"
    .parameter "checkAccountId"
    .parameter "startId"

    .prologue
    const/4 v2, 0x0

    .line 474
    invoke-static {p0, p2, p3, v2}, Lcom/android/email/provider/EmailContent$Mailbox;->findMailboxOfType(Landroid/content/Context;JI)J

    move-result-wide v3

    .line 475
    .local v3, inboxId:J
    const-wide/16 v0, -0x1

    cmp-long v0, v3, v0

    if-nez v0, :cond_0

    move v0, v2

    .line 479
    :goto_0
    return v0

    .line 478
    :cond_0
    int-to-long v5, p4

    iget-object v7, p0, Lcom/android/email/service/MailService;->mControllerCallback:Lcom/android/email/Controller$Result;

    move-object v0, p1

    move-wide v1, p2

    invoke-virtual/range {v0 .. v7}, Lcom/android/email/Controller;->serviceCheckMail(JJJLcom/android/email/Controller$Result;)V

    .line 479
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private updateBadgeProviderExample(I)V
    .locals 8
    .parameter "cnt"

    .prologue
    const-string v7, "package"

    const-string v6, "class"

    .line 893
    invoke-virtual {p0}, Lcom/android/email/service/MailService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 894
    .local v1, cr:Landroid/content/ContentResolver;
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 895
    .local v2, newValues:Landroid/content/ContentValues;
    const-string v4, "package"

    const-string v4, "com.android.email"

    invoke-virtual {v2, v7, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 896
    const-string v4, "class"

    const-string v4, "com.android.email.activity.Welcome"

    invoke-virtual {v2, v6, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 897
    const-string v4, "badgecount"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 898
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 899
    .local v0, buf:Ljava/lang/StringBuffer;
    const-string v4, "package"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "=\'com.android.email\' AND "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "class"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "=\'com.android.email.activity.Welcome\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    .line 900
    .local v3, where:Ljava/lang/String;
    const-string v4, "content://com.sec.badge/apps"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v2, v3, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 901
    const-string v4, "Email-MailService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[updateBadgeProvider] - cnt : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 902
    return-void
.end method


# virtual methods
.method createAlarmIntent(J[JZ)Landroid/app/PendingIntent;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 453
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 454
    const-class v1, Lcom/android/email/service/MailService;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 455
    const-string v1, "com.android.email.intent.action.MAIL_SERVICE_WAKEUP"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 456
    const-string v1, "com.android.email.intent.extra.ACCOUNT"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 457
    const-string v1, "com.android.email.intent.extra.ACCOUNT_INFO"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[J)Landroid/content/Intent;

    .line 458
    if-eqz p4, :cond_0

    .line 459
    const-string v1, "com.android.email.intent.extra.WATCHDOG"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 461
    :cond_0
    const/4 v1, 0x0

    const/high16 v2, 0x800

    invoke-static {p0, v1, v0, v2}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 462
    return-object v0
.end method

.method public getCountofAccounts()I
    .locals 8

    .prologue
    .line 906
    const/4 v6, 0x0

    .line 907
    .local v6, ac_count:I
    const/4 v7, 0x0

    .line 909
    .local v7, c_unread:Landroid/database/Cursor;
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "flagRead =0 AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/email/service/MailService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-wide/16 v4, -0x2

    invoke-static {v1, v4, v5}, Lcom/android/email/Utility;->buildMailboxIdSelection(Landroid/content/ContentResolver;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 911
    .local v3, selection_unread:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/email/service/MailService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/email/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const/16 v5, 0xc

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 916
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    .line 920
    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 921
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 923
    :cond_0
    const-string v0, "MailService >>"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "In getCountofAccounts, total email count: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 924
    return v6

    .line 920
    .end local v3           #selection_unread:Ljava/lang/String;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_1

    .line 921
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 920
    :cond_1
    throw v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 320
    const/4 v0, 0x0

    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 325
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 326
    invoke-virtual {p0}, Lcom/android/email/service/MailService;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/android/email/Controller;->getInstance(Landroid/content/Context;)Lcom/android/email/Controller;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/service/MailService;->mControllerCallback:Lcom/android/email/Controller$Result;

    invoke-virtual {v0, v1}, Lcom/android/email/Controller;->removeResultCallback(Lcom/android/email/Controller$Result;)V

    .line 327
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 21
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    .line 197
    invoke-super/range {p0 .. p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    .line 203
    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/email/service/MailService;->mStartId:I

    .line 204
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v13

    .line 206
    .local v13, action:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/service/MailService;->getApplication()Landroid/app/Application;

    move-result-object v5

    invoke-static {v5}, Lcom/android/email/Controller;->getInstance(Landroid/content/Context;)Lcom/android/email/Controller;

    move-result-object v18

    .line 207
    .local v18, controller:Lcom/android/email/Controller;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/service/MailService;->mControllerCallback:Lcom/android/email/Controller$Result;

    move-object v5, v0

    move-object/from16 v0, v18

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/android/email/Controller;->addResultCallback(Lcom/android/email/Controller$Result;)V

    .line 209
    const-string v5, "com.android.email.intent.action.MAIL_SERVICE_WAKEUP"

    invoke-virtual {v5, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 212
    invoke-virtual/range {p0 .. p1}, Lcom/android/email/service/MailService;->restoreSyncReports(Landroid/content/Intent;)V

    .line 215
    const-string v5, "alarm"

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/android/email/service/MailService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/app/AlarmManager;

    .line 216
    .local v14, alarmManager:Landroid/app/AlarmManager;
    const-string v5, "com.android.email.intent.extra.ACCOUNT"

    const-wide/16 v6, -0x1

    move-object/from16 v0, p1

    move-object v1, v5

    move-wide v2, v6

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v16

    .line 217
    .local v16, checkAccountId:J
    sget-boolean v5, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v5, :cond_0

    .line 218
    const-string v5, "Email-MailService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "action: check mail for id="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    :cond_0
    const-wide/16 v5, 0x0

    cmp-long v5, v16, v5

    if-ltz v5, :cond_1

    .line 221
    move-object/from16 v0, p0

    move-wide/from16 v1, v16

    move-object v3, v14

    invoke-direct {v0, v1, v2, v3}, Lcom/android/email/service/MailService;->setWatchdog(JLandroid/app/AlarmManager;)V

    .line 224
    :cond_1
    const-wide/16 v5, -0x1

    cmp-long v5, v16, v5

    if-eqz v5, :cond_2

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-wide/from16 v2, v16

    move/from16 v4, p3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/email/service/MailService;->syncOneAccount(Lcom/android/email/Controller;JI)Z

    move-result v5

    if-nez v5, :cond_4

    .line 226
    :cond_2
    const-wide/16 v5, -0x1

    cmp-long v5, v16, v5

    if-eqz v5, :cond_3

    .line 227
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v1, v16

    move v3, v5

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/email/service/MailService;->updateAccountReport(JI)Lcom/android/email/service/MailService$AccountSyncReport;

    .line 230
    :cond_3
    move-object/from16 v0, p0

    move-object v1, v14

    invoke-virtual {v0, v1}, Lcom/android/email/service/MailService;->reschedule(Landroid/app/AlarmManager;)V

    .line 231
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/android/email/service/MailService;->stopSelf(I)V

    .line 315
    .end local v14           #alarmManager:Landroid/app/AlarmManager;
    .end local v16           #checkAccountId:J
    :cond_4
    :goto_0
    const/4 v5, 0x2

    return v5

    .line 234
    :cond_5
    const-string v5, "com.android.email.intent.action.MAIL_SERVICE_CANCEL"

    invoke-virtual {v5, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 235
    sget-boolean v5, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v5, :cond_6

    .line 236
    const-string v5, "Email-MailService"

    const-string v6, "action: cancel"

    invoke-static {v5, v6}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/service/MailService;->getApplication()Landroid/app/Application;

    move-result-object v5

    invoke-static {v5}, Lcom/android/email/Controller;->getInstance(Landroid/content/Context;)Lcom/android/email/Controller;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/android/email/Controller;->setRemoteSync(Z)V

    .line 239
    invoke-direct/range {p0 .. p0}, Lcom/android/email/service/MailService;->cancel()V

    .line 240
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/android/email/service/MailService;->stopSelf(I)V

    goto :goto_0

    .line 242
    :cond_7
    const-string v5, "com.android.email.intent.action.MAIL_SERVICE_RESCHEDULE"

    invoke-virtual {v5, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 243
    sget-boolean v5, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v5, :cond_8

    .line 244
    const-string v5, "Email-MailService"

    const-string v6, "action: reschedule"

    invoke-static {v5, v6}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    :cond_8
    const-string v5, "notification"

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/android/email/service/MailService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/app/NotificationManager;

    .line 251
    .local v20, notificationManager:Landroid/app/NotificationManager;
    sget v5, Lcom/android/email/service/MailService;->NOTIFICATION_ID_NEW_MESSAGES:I

    move-object/from16 v0, v20

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 253
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/service/MailService;->getApplication()Landroid/app/Application;

    move-result-object v5

    invoke-static {v5}, Lcom/android/email/Controller;->getInstance(Landroid/content/Context;)Lcom/android/email/Controller;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/android/email/Controller;->setRemoteSync(Z)V

    .line 256
    invoke-direct/range {p0 .. p0}, Lcom/android/email/service/MailService;->refreshSyncReports()V

    .line 258
    const-string v5, "alarm"

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/android/email/service/MailService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/app/AlarmManager;

    .line 259
    .restart local v14       #alarmManager:Landroid/app/AlarmManager;
    move-object/from16 v0, p0

    move-object v1, v14

    invoke-virtual {v0, v1}, Lcom/android/email/service/MailService;->reschedule(Landroid/app/AlarmManager;)V

    .line 260
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/android/email/service/MailService;->stopSelf(I)V

    goto :goto_0

    .line 261
    .end local v14           #alarmManager:Landroid/app/AlarmManager;
    .end local v20           #notificationManager:Landroid/app/NotificationManager;
    :cond_9
    const-string v5, "com.android.email.intent.action.MAIL_SERVICE_NOTIFY"

    invoke-virtual {v5, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 262
    const-string v5, "com.android.email.intent.extra.ACCOUNT"

    const-wide/16 v6, -0x1

    move-object/from16 v0, p1

    move-object v1, v5

    move-wide v2, v6

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v11

    .line 264
    .local v11, accountId:J
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/service/MailService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Lcom/android/email/provider/EmailContent$Account;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v6, v11, v12}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    sget-object v7, Lcom/android/email/service/MailService;->NEW_MESSAGE_COUNT_PROJECTION:[Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 267
    .local v15, c:Landroid/database/Cursor;
    const/16 v19, 0x0

    .line 269
    .local v19, newMessageCount:I
    :try_start_0
    invoke-interface {v15}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_c

    .line 270
    const/4 v5, 0x0

    invoke-interface {v15, v5}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v19

    .line 276
    :goto_1
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 278
    sget-boolean v5, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v5, :cond_a

    .line 279
    const-string v5, "Email-MailService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "notify accountId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v11, v12}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " count="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    :cond_a
    const-wide/16 v5, -0x1

    cmp-long v5, v11, v5

    if-eqz v5, :cond_b

    .line 283
    move-object/from16 v0, p0

    move-wide v1, v11

    move/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/email/service/MailService;->updateAccountReport(JI)Lcom/android/email/service/MailService$AccountSyncReport;

    .line 284
    move-object/from16 v0, p0

    move-wide v1, v11

    invoke-direct {v0, v1, v2}, Lcom/android/email/service/MailService;->notifyNewMessages(J)V

    .line 286
    :cond_b
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/android/email/service/MailService;->stopSelf(I)V

    goto/16 :goto_0

    .line 273
    :cond_c
    const-wide/16 v11, -0x1

    goto :goto_1

    .line 276
    :catchall_0
    move-exception v5

    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    throw v5

    .line 289
    .end local v11           #accountId:J
    .end local v15           #c:Landroid/database/Cursor;
    .end local v19           #newMessageCount:I
    :cond_d
    const-string v5, "com.android.email.intent.action.MAIL_SERVICE_SYNC_ONE_ACCOUNT"

    invoke-virtual {v5, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 292
    invoke-virtual/range {p0 .. p1}, Lcom/android/email/service/MailService;->restoreSyncReports(Landroid/content/Intent;)V

    .line 294
    const-string v5, "com.android.email.intent.extra.ACCOUNT"

    const-wide/16 v6, -0x1

    move-object/from16 v0, p1

    move-object v1, v5

    move-wide v2, v6

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v16

    .line 295
    .restart local v16       #checkAccountId:J
    sget-boolean v5, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v5, :cond_e

    .line 296
    const-string v5, "Email-MailService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "action: sync one account for id="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    :cond_e
    const-wide/16 v5, -0x1

    cmp-long v5, v16, v5

    if-eqz v5, :cond_f

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-wide/from16 v2, v16

    move/from16 v4, p3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/email/service/MailService;->syncOneAccount(Lcom/android/email/Controller;JI)Z

    move-result v5

    if-nez v5, :cond_4

    .line 301
    :cond_f
    const-wide/16 v5, -0x1

    cmp-long v5, v16, v5

    if-eqz v5, :cond_10

    .line 302
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v1, v16

    move v3, v5

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/email/service/MailService;->updateAccountReport(JI)Lcom/android/email/service/MailService$AccountSyncReport;

    .line 305
    :cond_10
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/android/email/service/MailService;->stopSelf(I)V

    goto/16 :goto_0
.end method

.method reschedule(Landroid/app/AlarmManager;)V
    .locals 27
    .parameter "alarmMgr"

    .prologue
    .line 370
    const-wide/16 v23, -0x1

    move-object/from16 v0, p0

    move-wide/from16 v1, v23

    invoke-virtual {v0, v1, v2}, Lcom/android/email/service/MailService;->setupSyncReports(J)V

    .line 371
    sget-object v23, Lcom/android/email/service/MailService;->mSyncReports:Ljava/util/HashMap;

    monitor-enter v23

    .line 372
    :try_start_0
    sget-object v24, Lcom/android/email/service/MailService;->mSyncReports:Ljava/util/HashMap;

    invoke-virtual/range {v24 .. v24}, Ljava/util/HashMap;->size()I

    move-result v16

    .line 373
    .local v16, numAccounts:I
    mul-int/lit8 v24, v16, 0x2

    move/from16 v0, v24

    new-array v0, v0, [J

    move-object v5, v0

    .line 374
    .local v5, accountInfo:[J
    const/4 v6, 0x0

    .line 376
    .local v6, accountInfoIndex:I
    const-wide v12, 0x7fffffffffffffffL

    .line 377
    .local v12, nextCheckTime:J
    const/4 v11, 0x0

    .line 378
    .local v11, nextAccount:Lcom/android/email/service/MailService$AccountSyncReport;
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v21

    .line 380
    .local v21, timeNow:J
    sget-object v24, Lcom/android/email/service/MailService;->mSyncReports:Ljava/util/HashMap;

    invoke-virtual/range {v24 .. v24}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v24

    invoke-interface/range {v24 .. v24}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, i$:Ljava/util/Iterator;
    move v7, v6

    .end local v6           #accountInfoIndex:I
    .local v7, accountInfoIndex:I
    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/email/service/MailService$AccountSyncReport;

    .line 381
    .local v20, report:Lcom/android/email/service/MailService$AccountSyncReport;
    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/email/service/MailService$AccountSyncReport;->syncInterval:I

    move/from16 v24, v0

    if-lez v24, :cond_0

    .line 384
    move-object/from16 v0, v20

    iget-wide v0, v0, Lcom/android/email/service/MailService$AccountSyncReport;->prevSyncTime:J

    move-wide/from16 v18, v0

    .line 385
    .local v18, prevSyncTime:J
    move-object/from16 v0, v20

    iget-wide v0, v0, Lcom/android/email/service/MailService$AccountSyncReport;->nextSyncTime:J

    move-wide v14, v0

    .line 388
    .local v14, nextSyncTime:J
    const-wide/16 v24, 0x0

    cmp-long v24, v18, v24

    if-eqz v24, :cond_1

    cmp-long v24, v14, v21

    if-gez v24, :cond_3

    .line 394
    :cond_1
    const-wide/16 v24, 0x1388

    add-long v12, v21, v24

    .line 397
    move-object/from16 v11, v20

    .line 404
    :cond_2
    :goto_1
    add-int/lit8 v6, v7, 0x1

    .end local v7           #accountInfoIndex:I
    .restart local v6       #accountInfoIndex:I
    move-object/from16 v0, v20

    iget-wide v0, v0, Lcom/android/email/service/MailService$AccountSyncReport;->accountId:J

    move-wide/from16 v24, v0

    aput-wide v24, v5, v7

    .line 405
    add-int/lit8 v7, v6, 0x1

    .end local v6           #accountInfoIndex:I
    .restart local v7       #accountInfoIndex:I
    move-object/from16 v0, v20

    iget-wide v0, v0, Lcom/android/email/service/MailService$AccountSyncReport;->prevSyncTime:J

    move-wide/from16 v24, v0

    aput-wide v24, v5, v6

    goto :goto_0

    .line 429
    .end local v5           #accountInfo:[J
    .end local v7           #accountInfoIndex:I
    .end local v8           #i$:Ljava/util/Iterator;
    .end local v11           #nextAccount:Lcom/android/email/service/MailService$AccountSyncReport;
    .end local v12           #nextCheckTime:J
    .end local v14           #nextSyncTime:J
    .end local v16           #numAccounts:I
    .end local v18           #prevSyncTime:J
    .end local v20           #report:Lcom/android/email/service/MailService$AccountSyncReport;
    .end local v21           #timeNow:J
    :catchall_0
    move-exception v24

    monitor-exit v23
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v24

    .line 398
    .restart local v5       #accountInfo:[J
    .restart local v7       #accountInfoIndex:I
    .restart local v8       #i$:Ljava/util/Iterator;
    .restart local v11       #nextAccount:Lcom/android/email/service/MailService$AccountSyncReport;
    .restart local v12       #nextCheckTime:J
    .restart local v14       #nextSyncTime:J
    .restart local v16       #numAccounts:I
    .restart local v18       #prevSyncTime:J
    .restart local v20       #report:Lcom/android/email/service/MailService$AccountSyncReport;
    .restart local v21       #timeNow:J
    :cond_3
    cmp-long v24, v14, v12

    if-gez v24, :cond_2

    .line 399
    move-wide v12, v14

    .line 400
    move-object/from16 v11, v20

    goto :goto_1

    .line 409
    .end local v14           #nextSyncTime:J
    .end local v18           #prevSyncTime:J
    .end local v20           #report:Lcom/android/email/service/MailService$AccountSyncReport;
    :cond_4
    :goto_2
    :try_start_1
    move-object v0, v5

    array-length v0, v0

    move/from16 v24, v0

    move v0, v7

    move/from16 v1, v24

    if-ge v0, v1, :cond_5

    .line 410
    add-int/lit8 v6, v7, 0x1

    .end local v7           #accountInfoIndex:I
    .restart local v6       #accountInfoIndex:I
    const-wide/16 v24, -0x1

    aput-wide v24, v5, v7

    move v7, v6

    .end local v6           #accountInfoIndex:I
    .restart local v7       #accountInfoIndex:I
    goto :goto_2

    .line 414
    :cond_5
    if-nez v11, :cond_7

    const-wide/16 v24, -0x1

    move-wide/from16 v9, v24

    .line 415
    .local v9, idToCheck:J
    :goto_3
    const/16 v24, 0x0

    move-object/from16 v0, p0

    move-wide v1, v9

    move-object v3, v5

    move/from16 v4, v24

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/email/service/MailService;->createAlarmIntent(J[JZ)Landroid/app/PendingIntent;

    move-result-object v17

    .line 417
    .local v17, pi:Landroid/app/PendingIntent;
    if-nez v11, :cond_8

    .line 418
    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 419
    sget-boolean v24, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v24, :cond_6

    .line 420
    const-string v24, "Email-MailService"

    const-string v25, "reschedule: alarm cancel - no account to check"

    invoke-static/range {v24 .. v25}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 429
    :cond_6
    :goto_4
    monitor-exit v23

    .line 430
    return-void

    .line 414
    .end local v9           #idToCheck:J
    .end local v17           #pi:Landroid/app/PendingIntent;
    :cond_7
    move-object v0, v11

    iget-wide v0, v0, Lcom/android/email/service/MailService$AccountSyncReport;->accountId:J

    move-wide/from16 v24, v0

    move-wide/from16 v9, v24

    goto :goto_3

    .line 423
    .restart local v9       #idToCheck:J
    .restart local v17       #pi:Landroid/app/PendingIntent;
    :cond_8
    const/16 v24, 0x2

    move-object/from16 v0, p1

    move/from16 v1, v24

    move-wide v2, v12

    move-object/from16 v4, v17

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 424
    sget-boolean v24, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v24, :cond_6

    .line 425
    const-string v24, "Email-MailService"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "reschedule: alarm set at "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-wide v1, v12

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " for "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object v1, v11

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4
.end method

.method restoreSyncReports(Landroid/content/Intent;)V
    .locals 14
    .parameter "restoreIntent"

    .prologue
    .line 628
    const-wide/16 v9, -0x1

    invoke-virtual {p0, v9, v10}, Lcom/android/email/service/MailService;->setupSyncReports(J)V

    .line 629
    sget-object v9, Lcom/android/email/service/MailService;->mSyncReports:Ljava/util/HashMap;

    monitor-enter v9

    .line 630
    :try_start_0
    const-string v10, "com.android.email.intent.extra.ACCOUNT_INFO"

    invoke-virtual {p1, v10}, Landroid/content/Intent;->getLongArrayExtra(Ljava/lang/String;)[J

    move-result-object v2

    .line 631
    .local v2, accountInfo:[J
    if-nez v2, :cond_0

    .line 632
    const-string v10, "Email-MailService"

    const-string v11, "no data in intent to restore"

    invoke-static {v10, v11}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 633
    monitor-exit v9

    .line 652
    :goto_0
    return-void

    .line 635
    :cond_0
    const/4 v3, 0x0

    .line 636
    .local v3, accountInfoIndex:I
    array-length v5, v2

    .local v5, accountInfoLimit:I
    move v4, v3

    .line 637
    .end local v3           #accountInfoIndex:I
    .local v4, accountInfoIndex:I
    :cond_1
    :goto_1
    if-ge v4, v5, :cond_2

    .line 638
    add-int/lit8 v3, v4, 0x1

    .end local v4           #accountInfoIndex:I
    .restart local v3       #accountInfoIndex:I
    aget-wide v0, v2, v4

    .line 639
    .local v0, accountId:J
    add-int/lit8 v4, v3, 0x1

    .end local v3           #accountInfoIndex:I
    .restart local v4       #accountInfoIndex:I
    aget-wide v6, v2, v3

    .line 640
    .local v6, prevSync:J
    sget-object v10, Lcom/android/email/service/MailService;->mSyncReports:Ljava/util/HashMap;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/email/service/MailService$AccountSyncReport;

    .line 641
    .local v8, report:Lcom/android/email/service/MailService$AccountSyncReport;
    if-eqz v8, :cond_1

    .line 642
    iget-wide v10, v8, Lcom/android/email/service/MailService$AccountSyncReport;->prevSyncTime:J

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-nez v10, :cond_1

    .line 643
    iput-wide v6, v8, Lcom/android/email/service/MailService$AccountSyncReport;->prevSyncTime:J

    .line 644
    iget v10, v8, Lcom/android/email/service/MailService$AccountSyncReport;->syncInterval:I

    if-lez v10, :cond_1

    iget-wide v10, v8, Lcom/android/email/service/MailService$AccountSyncReport;->prevSyncTime:J

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-eqz v10, :cond_1

    .line 645
    iget-wide v10, v8, Lcom/android/email/service/MailService$AccountSyncReport;->prevSyncTime:J

    iget v12, v8, Lcom/android/email/service/MailService$AccountSyncReport;->syncInterval:I

    mul-int/lit16 v12, v12, 0x3e8

    mul-int/lit8 v12, v12, 0x3c

    int-to-long v12, v12

    add-long/2addr v10, v12

    iput-wide v10, v8, Lcom/android/email/service/MailService$AccountSyncReport;->nextSyncTime:J

    goto :goto_1

    .line 651
    .end local v0           #accountId:J
    .end local v2           #accountInfo:[J
    .end local v4           #accountInfoIndex:I
    .end local v5           #accountInfoLimit:I
    .end local v6           #prevSync:J
    .end local v8           #report:Lcom/android/email/service/MailService$AccountSyncReport;
    :catchall_0
    move-exception v10

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v10

    .restart local v2       #accountInfo:[J
    .restart local v4       #accountInfoIndex:I
    .restart local v5       #accountInfoLimit:I
    :cond_2
    :try_start_1
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method setupSyncReports(J)V
    .locals 2
    .parameter "accountId"

    .prologue
    .line 516
    sget-object v0, Lcom/android/email/service/MailService;->mSyncReports:Ljava/util/HashMap;

    monitor-enter v0

    .line 517
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/email/service/MailService;->setupSyncReportsLocked(J)V

    .line 518
    monitor-exit v0

    .line 519
    return-void

    .line 518
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method updateAccountReport(JI)Lcom/android/email/service/MailService$AccountSyncReport;
    .locals 6
    .parameter "accountId"
    .parameter "newCount"

    .prologue
    const-string v1, "Email-MailService"

    .line 595
    invoke-virtual {p0, p1, p2}, Lcom/android/email/service/MailService;->setupSyncReports(J)V

    .line 596
    sget-object v1, Lcom/android/email/service/MailService;->mSyncReports:Ljava/util/HashMap;

    monitor-enter v1

    .line 597
    :try_start_0
    sget-object v2, Lcom/android/email/service/MailService;->mSyncReports:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/service/MailService$AccountSyncReport;

    .line 598
    .local v0, report:Lcom/android/email/service/MailService$AccountSyncReport;
    if-nez v0, :cond_0

    .line 600
    const-string v2, "Email-MailService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No account to update for id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 601
    const/4 v2, 0x0

    monitor-exit v1

    move-object v1, v2

    .line 615
    :goto_0
    return-object v1

    .line 605
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/android/email/service/MailService$AccountSyncReport;->prevSyncTime:J

    .line 606
    iget v2, v0, Lcom/android/email/service/MailService$AccountSyncReport;->syncInterval:I

    if-lez v2, :cond_1

    .line 607
    iget-wide v2, v0, Lcom/android/email/service/MailService$AccountSyncReport;->prevSyncTime:J

    iget v4, v0, Lcom/android/email/service/MailService$AccountSyncReport;->syncInterval:I

    mul-int/lit16 v4, v4, 0x3e8

    mul-int/lit8 v4, v4, 0x3c

    int-to-long v4, v4

    add-long/2addr v2, v4

    iput-wide v2, v0, Lcom/android/email/service/MailService$AccountSyncReport;->nextSyncTime:J

    .line 609
    :cond_1
    const/4 v2, -0x1

    if-eq p3, v2, :cond_2

    .line 610
    iput p3, v0, Lcom/android/email/service/MailService$AccountSyncReport;->numNewMessages:I

    .line 612
    :cond_2
    sget-boolean v2, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v2, :cond_3

    .line 613
    const-string v2, "Email-MailService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "update account "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/email/service/MailService$AccountSyncReport;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 615
    :cond_3
    monitor-exit v1

    move-object v1, v0

    goto :goto_0

    .line 616
    .end local v0           #report:Lcom/android/email/service/MailService$AccountSyncReport;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method
