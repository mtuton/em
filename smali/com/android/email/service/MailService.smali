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
.field private static final ACTION_CANCEL:Ljava/lang/String; = "com.android.email.intent.action.MAIL_SERVICE_CANCEL"

.field private static final ACTION_CHECK_MAIL:Ljava/lang/String; = "com.android.email.intent.action.MAIL_SERVICE_WAKEUP"

.field private static final ACTION_NOTIFY_MAIL:Ljava/lang/String; = "com.android.email.intent.action.MAIL_SERVICE_NOTIFY"

.field private static final ACTION_RESCHEDULE:Ljava/lang/String; = "com.android.email.intent.action.MAIL_SERVICE_RESCHEDULE"

.field private static final ACTION_SYNC_ONE_ACCOUNT:Ljava/lang/String; = "com.android.email.intent.action.MAIL_SERVICE_SYNC_ONE_ACCOUNT"

.field public static final BADGE_APPS_CLASS:Ljava/lang/String; = "class"

.field public static final BADGE_APPS_COUNT:Ljava/lang/String; = "badgecount"

.field public static final BADGE_APPS_PACKAGE:Ljava/lang/String; = "package"

.field public static final BADGE_AUTHORITY:Ljava/lang/String; = "com.sec.badge"

.field public static final BADGE_TABLE_APPS:Ljava/lang/String; = "apps"

.field private static final DEBUG_FORCE_QUICK_REFRESH:Z = false

.field private static final EXTRA_ACCOUNT_INFO:Ljava/lang/String; = "com.android.email.intent.extra.ACCOUNT_INFO"

.field private static final EXTRA_CHECK_ACCOUNT:Ljava/lang/String; = "com.android.email.intent.extra.ACCOUNT"

.field private static final EXTRA_DEBUG_WATCHDOG:Ljava/lang/String; = "com.android.email.intent.extra.WATCHDOG"

.field private static final LOG_TAG:Ljava/lang/String; = "Email-MailService"

.field private static final NEW_MESSAGE_COUNT_PROJECTION:[Ljava/lang/String; = null

.field public static NEW_MESSAGE_NOTIFICATION_ID:I = 0x0

.field public static NOTIFICATION_ID_EXCHANGE_CALENDAR_ADDED:I = 0x0

.field public static NOTIFICATION_ID_NEW_MESSAGES:I = 0x0

.field public static NOTIFICATION_ID_SECURITY_NEEDED:I = 0x0

.field private static final TAG:Ljava/lang/String; = "MailService >>"

.field private static final WATCHDOG_DELAY:I = 0x927c0

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

    .line 63
    sput v1, Lcom/android/email/service/MailService;->NEW_MESSAGE_NOTIFICATION_ID:I

    .line 65
    sput v1, Lcom/android/email/service/MailService;->NOTIFICATION_ID_NEW_MESSAGES:I

    .line 66
    const/4 v0, 0x2

    sput v0, Lcom/android/email/service/MailService;->NOTIFICATION_ID_SECURITY_NEEDED:I

    .line 67
    const/4 v0, 0x3

    sput v0, Lcom/android/email/service/MailService;->NOTIFICATION_ID_EXCHANGE_CALENDAR_ADDED:I

    .line 88
    new-array v0, v1, [Ljava/lang/String;

    const-string v1, "newMessageCount"

    aput-object v3, v0, v2

    sput-object v0, Lcom/android/email/service/MailService;->NEW_MESSAGE_COUNT_PROJECTION:[Ljava/lang/String;

    .line 98
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/email/service/MailService;->mSyncReports:Ljava/util/HashMap;

    .line 106
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    sput-object v0, Lcom/android/email/service/MailService;->mClearNewMessages:Landroid/content/ContentValues;

    .line 107
    sget-object v0, Lcom/android/email/service/MailService;->mClearNewMessages:Landroid/content/ContentValues;

    const-string v1, "newMessageCount"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 108
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 55
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 91
    new-instance v0, Lcom/android/email/service/MailService$ControllerResults;

    invoke-direct {v0, p0}, Lcom/android/email/service/MailService$ControllerResults;-><init>(Lcom/android/email/service/MailService;)V

    iput-object v0, p0, Lcom/android/email/service/MailService;->mControllerCallback:Lcom/android/email/Controller$Result;

    .line 630
    return-void
.end method

.method static synthetic access$100(Lcom/android/email/service/MailService;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Lcom/android/email/service/MailService;->notifyNewMessages(J)V

    return-void
.end method

.method static synthetic access$200()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lcom/android/email/service/MailService;->mSyncReports:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/email/service/MailService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget v0, p0, Lcom/android/email/service/MailService;->mStartId:I

    return v0
.end method

.method public static actionCancel(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 128
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 129
    .local v0, i:Landroid/content/Intent;
    const-class v1, Lcom/android/email/service/MailService;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 130
    const-string v1, "com.android.email.intent.action.MAIL_SERVICE_CANCEL"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 131
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 132
    return-void
.end method

.method public static actionNotifyNewMessages(Landroid/content/Context;J)V
    .locals 2
    .parameter "context"
    .parameter "accountId"

    .prologue
    .line 188
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.email.intent.action.MAIL_SERVICE_NOTIFY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 189
    .local v0, i:Landroid/content/Intent;
    const-class v1, Lcom/android/email/service/MailService;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 190
    const-string v1, "com.android.email.intent.extra.ACCOUNT"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 191
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 192
    return-void
.end method

.method public static actionReschedule(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 121
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 122
    .local v0, i:Landroid/content/Intent;
    const-class v1, Lcom/android/email/service/MailService;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 123
    const-string v1, "com.android.email.intent.action.MAIL_SERVICE_RESCHEDULE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 124
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 125
    return-void
.end method

.method public static actionSyncOneAccount(Landroid/content/Context;J)V
    .locals 2
    .parameter "context"
    .parameter "accountId"

    .prologue
    .line 136
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 137
    .local v0, i:Landroid/content/Intent;
    const-class v1, Lcom/android/email/service/MailService;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 138
    const-string v1, "com.android.email.intent.action.MAIL_SERVICE_SYNC_ONE_ACCOUNT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 139
    const-string v1, "com.android.email.intent.extra.ACCOUNT"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 140
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 141
    return-void
.end method

.method private cancel()V
    .locals 6

    .prologue
    .line 307
    const-string v2, "alarm"

    invoke-virtual {p0, v2}, Lcom/android/email/service/MailService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 308
    .local v0, alarmMgr:Landroid/app/AlarmManager;
    const-wide/16 v2, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/android/email/service/MailService;->createAlarmIntent(J[JZ)Landroid/app/PendingIntent;

    move-result-object v1

    .line 309
    .local v1, pi:Landroid/app/PendingIntent;
    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 310
    return-void
.end method

.method private notifyNewMessages(J)V
    .locals 29
    .parameter "accountId"

    .prologue
    .line 756
    const/16 v18, 0x0

    .line 757
    .local v18, notify:Z
    const/16 v27, 0x0

    .line 758
    .local v27, vibrate:Z
    const/16 v28, 0x0

    .line 759
    .local v28, vibrateWhenSilent:Z
    const/16 v25, 0x0

    .line 760
    .local v25, ringtone:Landroid/net/Uri;
    const/4 v11, 0x0

    .line 761
    .local v11, accountsWithNewMessages:I
    const/16 v20, 0x0

    .line 762
    .local v20, numNewMessages:I
    const/16 v23, 0x0

    .line 763
    .local v23, reportName:Ljava/lang/String;
    sget-object v5, Lcom/android/email/service/MailService;->mSyncReports:Ljava/util/HashMap;

    monitor-enter v5

    .line 764
    :try_start_0
    sget-object v6, Lcom/android/email/service/MailService;->mSyncReports:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/android/email/service/MailService$AccountSyncReport;

    .line 765
    .local v22, report:Lcom/android/email/service/MailService$AccountSyncReport;
    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/email/service/MailService$AccountSyncReport;->numNewMessages:I

    move v6, v0

    if-eqz v6, :cond_0

    .line 768
    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/email/service/MailService$AccountSyncReport;->numNewMessages:I

    move v6, v0

    add-int v20, v20, v6

    .line 769
    add-int/lit8 v11, v11, 0x1

    .line 770
    move-object/from16 v0, v22

    iget-wide v0, v0, Lcom/android/email/service/MailService$AccountSyncReport;->accountId:J

    move-wide v6, v0

    cmp-long v6, v6, p1

    if-nez v6, :cond_0

    .line 771
    move-object/from16 v0, v22

    iget-boolean v0, v0, Lcom/android/email/service/MailService$AccountSyncReport;->notify:Z

    move/from16 v18, v0

    .line 772
    move-object/from16 v0, v22

    iget-boolean v0, v0, Lcom/android/email/service/MailService$AccountSyncReport;->vibrate:Z

    move/from16 v27, v0

    .line 773
    move-object/from16 v0, v22

    iget-boolean v0, v0, Lcom/android/email/service/MailService$AccountSyncReport;->vibrateWhenSilent:Z

    move/from16 v28, v0

    .line 774
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/email/service/MailService$AccountSyncReport;->ringtoneUri:Landroid/net/Uri;

    move-object/from16 v25, v0

    .line 775
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/email/service/MailService$AccountSyncReport;->displayName:Ljava/lang/String;

    move-object/from16 v23, v0

    goto :goto_0

    .line 778
    .end local v22           #report:Lcom/android/email/service/MailService$AccountSyncReport;
    :cond_1
    monitor-exit v5

    .line 779
    if-nez v18, :cond_2

    .line 839
    :goto_1
    return-void

    .line 778
    .end local v14           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v6

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .line 787
    .restart local v14       #i$:Ljava/util/Iterator;
    :cond_2
    const/4 v5, 0x1

    if-ne v11, v5, :cond_5

    .line 790
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/service/MailService;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const/high16 v6, 0x7f0b

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    aput-object v23, v7, v8

    move-object v0, v5

    move v1, v6

    move/from16 v2, v20

    move-object v3, v7

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v24

    .line 793
    .local v24, reportString:Ljava/lang/String;
    const-wide/16 v8, -0x1

    const/4 v10, 0x0

    move-object/from16 v5, p0

    move-wide/from16 v6, p1

    invoke-static/range {v5 .. v10}, Lcom/android/email/activity/MessageList;->createIntent(Landroid/content/Context;JJI)Landroid/content/Intent;

    move-result-object v15

    .line 804
    .local v15, intent:Landroid/content/Intent;
    :goto_2
    const/4 v5, 0x0

    const/high16 v6, 0x800

    move-object/from16 v0, p0

    move v1, v5

    move-object v2, v15

    move v3, v6

    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v21

    .line 807
    .local v21, pending:Landroid/app/PendingIntent;
    new-instance v16, Landroid/app/Notification;

    const v5, 0x7f0200d4

    const v6, 0x7f080036

    move-object/from16 v0, p0

    move v1, v6

    invoke-virtual {v0, v1}, Lcom/android/email/service/MailService;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    move-object/from16 v0, v16

    move v1, v5

    move-object v2, v6

    move-wide v3, v7

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 811
    .local v16, notification:Landroid/app/Notification;
    const v5, 0x7f080036

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/android/email/service/MailService;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move-object v2, v5

    move-object/from16 v3, v24

    move-object/from16 v4, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 816
    move-object/from16 v0, v25

    move-object/from16 v1, v16

    iput-object v0, v1, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 817
    const-string v5, "audio"

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/android/email/service/MailService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/media/AudioManager;

    .line 818
    .local v13, audioManager:Landroid/media/AudioManager;
    invoke-virtual {v13}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v5

    const/4 v6, 0x2

    if-eq v5, v6, :cond_6

    const/4 v5, 0x1

    move/from16 v19, v5

    .line 821
    .local v19, nowSilent:Z
    :goto_3
    if-nez v27, :cond_3

    if-eqz v28, :cond_4

    if-eqz v19, :cond_4

    .line 822
    :cond_3
    move-object/from16 v0, v16

    iget v0, v0, Landroid/app/Notification;->defaults:I

    move v5, v0

    or-int/lit8 v5, v5, 0x2

    move v0, v5

    move-object/from16 v1, v16

    iput v0, v1, Landroid/app/Notification;->defaults:I

    .line 826
    :cond_4
    move-object/from16 v0, v16

    iget v0, v0, Landroid/app/Notification;->flags:I

    move v5, v0

    or-int/lit8 v5, v5, 0x1

    move v0, v5

    move-object/from16 v1, v16

    iput v0, v1, Landroid/app/Notification;->flags:I

    .line 827
    move-object/from16 v0, v16

    iget v0, v0, Landroid/app/Notification;->defaults:I

    move v5, v0

    or-int/lit8 v5, v5, 0x4

    move v0, v5

    move-object/from16 v1, v16

    iput v0, v1, Landroid/app/Notification;->defaults:I

    .line 829
    const-string v5, "notification"

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/android/email/service/MailService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/app/NotificationManager;

    .line 831
    .local v17, notificationManager:Landroid/app/NotificationManager;
    sget v5, Lcom/android/email/service/MailService;->NOTIFICATION_ID_NEW_MESSAGES:I

    move-object/from16 v0, v17

    move v1, v5

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 832
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/service/MailService;->getCountofAccounts()I

    move-result v5

    move-object/from16 v0, p0

    move v1, v5

    invoke-direct {v0, v1}, Lcom/android/email/service/MailService;->updateBadgeProviderExample(I)V

    .line 834
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, v5

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "new emails"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    .line 835
    .local v26, ttsInfo:Ljava/lang/String;
    new-instance v12, Landroid/content/Intent;

    const-class v5, Lcom/android/email/service/TextToSpeechService;

    move-object v0, v12

    move-object/from16 v1, p0

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 836
    .local v12, alertIntent:Landroid/content/Intent;
    const-string v5, "TTS_TEXT"

    move-object v0, v12

    move-object v1, v5

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 837
    move-object/from16 v0, p0

    move-object v1, v12

    invoke-virtual {v0, v1}, Lcom/android/email/service/MailService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_1

    .line 797
    .end local v12           #alertIntent:Landroid/content/Intent;
    .end local v13           #audioManager:Landroid/media/AudioManager;
    .end local v15           #intent:Landroid/content/Intent;
    .end local v16           #notification:Landroid/app/Notification;
    .end local v17           #notificationManager:Landroid/app/NotificationManager;
    .end local v19           #nowSilent:Z
    .end local v21           #pending:Landroid/app/PendingIntent;
    .end local v24           #reportString:Ljava/lang/String;
    .end local v26           #ttsInfo:Ljava/lang/String;
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/service/MailService;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b0001

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v5, v6, v11, v7}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v24

    .line 800
    .restart local v24       #reportString:Ljava/lang/String;
    const-wide/16 v6, -0x1

    const-wide/16 v8, -0x2

    const/4 v10, -0x1

    move-object/from16 v5, p0

    invoke-static/range {v5 .. v10}, Lcom/android/email/activity/MessageList;->createIntent(Landroid/content/Context;JJI)Landroid/content/Intent;

    move-result-object v15

    .restart local v15       #intent:Landroid/content/Intent;
    goto/16 :goto_2

    .line 818
    .restart local v13       #audioManager:Landroid/media/AudioManager;
    .restart local v16       #notification:Landroid/app/Notification;
    .restart local v21       #pending:Landroid/app/PendingIntent;
    :cond_6
    const/4 v5, 0x0

    move/from16 v19, v5

    goto/16 :goto_3
.end method

.method private refreshSyncReports()V
    .locals 9

    .prologue
    .line 316
    sget-object v4, Lcom/android/email/service/MailService;->mSyncReports:Ljava/util/HashMap;

    monitor-enter v4

    .line 318
    :try_start_0
    new-instance v3, Ljava/util/HashMap;

    sget-object v5, Lcom/android/email/service/MailService;->mSyncReports:Ljava/util/HashMap;

    invoke-direct {v3, v5}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 322
    .local v3, oldSyncReports:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lcom/android/email/service/MailService$AccountSyncReport;>;"
    sget-object v5, Lcom/android/email/service/MailService;->mSyncReports:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->clear()V

    .line 323
    const-wide/16 v5, -0x1

    invoke-direct {p0, v5, v6}, Lcom/android/email/service/MailService;->setupSyncReportsLocked(J)V

    .line 326
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

    .line 327
    .local v1, newReport:Lcom/android/email/service/MailService$AccountSyncReport;
    iget-wide v5, v1, Lcom/android/email/service/MailService$AccountSyncReport;->accountId:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/email/service/MailService$AccountSyncReport;

    .line 328
    .local v2, oldReport:Lcom/android/email/service/MailService$AccountSyncReport;
    if-eqz v2, :cond_0

    .line 329
    iget-wide v5, v2, Lcom/android/email/service/MailService$AccountSyncReport;->prevSyncTime:J

    iput-wide v5, v1, Lcom/android/email/service/MailService$AccountSyncReport;->prevSyncTime:J

    .line 330
    iget v5, v1, Lcom/android/email/service/MailService$AccountSyncReport;->syncInterval:I

    if-lez v5, :cond_0

    iget-wide v5, v1, Lcom/android/email/service/MailService$AccountSyncReport;->prevSyncTime:J

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-eqz v5, :cond_0

    .line 331
    iget-wide v5, v1, Lcom/android/email/service/MailService$AccountSyncReport;->prevSyncTime:J

    iget v7, v1, Lcom/android/email/service/MailService$AccountSyncReport;->syncInterval:I

    mul-int/lit16 v7, v7, 0x3e8

    mul-int/lit8 v7, v7, 0x3c

    int-to-long v7, v7

    add-long/2addr v5, v7

    iput-wide v5, v1, Lcom/android/email/service/MailService$AccountSyncReport;->nextSyncTime:J

    goto :goto_0

    .line 336
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

    .line 337
    return-void
.end method

.method public static resetNewMessageCount(Landroid/content/Context;J)V
    .locals 11
    .parameter "context"
    .parameter "accountId"

    .prologue
    const-wide/16 v9, -0x1

    const/4 v8, 0x0

    .line 152
    sget-object v4, Lcom/android/email/service/MailService;->mSyncReports:Ljava/util/HashMap;

    monitor-enter v4

    .line 153
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

    .line 154
    .local v1, report:Lcom/android/email/service/MailService$AccountSyncReport;
    cmp-long v5, p1, v9

    if-eqz v5, :cond_1

    iget-wide v5, v1, Lcom/android/email/service/MailService$AccountSyncReport;->accountId:J

    cmp-long v5, p1, v5

    if-nez v5, :cond_0

    .line 155
    :cond_1
    const/4 v5, 0x0

    iput v5, v1, Lcom/android/email/service/MailService$AccountSyncReport;->numNewMessages:I

    goto :goto_0

    .line 158
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

    .line 161
    cmp-long v4, p1, v9

    if-nez v4, :cond_3

    .line 162
    sget-object v3, Lcom/android/email/provider/EmailContent$Account;->CONTENT_URI:Landroid/net/Uri;

    .line 169
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

    .line 176
    :goto_2
    return-void

    .line 164
    .end local v3           #uri:Landroid/net/Uri;
    :cond_3
    sget-object v4, Lcom/android/email/provider/EmailContent$Account;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v4, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .restart local v3       #uri:Landroid/net/Uri;
    goto :goto_1

    .line 170
    :catch_0
    move-exception v4

    move-object v2, v4

    .line 171
    .local v2, sfe:Landroid/database/sqlite/SQLiteFullException;
    const v4, 0x7f08012b

    invoke-static {p0, v4, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 172
    const-string v4, "MailService >>"

    const-string v5, "MailService:SQLiteFullException >>> "

    invoke-static {v4, v5}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteFullException;->printStackTrace()V

    goto :goto_2
.end method

.method private setWatchdog(JLandroid/app/AlarmManager;)V
    .locals 7
    .parameter "accountId"
    .parameter "alarmMgr"

    .prologue
    .line 417
    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-virtual {p0, p1, p2, v5, v6}, Lcom/android/email/service/MailService;->createAlarmIntent(J[JZ)Landroid/app/PendingIntent;

    move-result-object v2

    .line 418
    .local v2, pi:Landroid/app/PendingIntent;
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    .line 419
    .local v3, timeNow:J
    const-wide/32 v5, 0x927c0

    add-long v0, v3, v5

    .line 420
    .local v0, nextCheckTime:J
    const/4 v5, 0x2

    invoke-virtual {p3, v5, v0, v1, v2}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 421
    return-void
.end method

.method private setupSyncReportsLocked(J)V
    .locals 11
    .parameter "accountId"

    .prologue
    .line 502
    const-wide/16 v2, -0x1

    cmp-long v0, p1, v2

    if-nez v0, :cond_1

    .line 504
    sget-object v0, Lcom/android/email/service/MailService;->mSyncReports:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 560
    :cond_0
    :goto_0
    return-void

    .line 509
    :cond_1
    sget-object v0, Lcom/android/email/service/MailService;->mSyncReports:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 516
    :cond_2
    const-wide/16 v2, -0x1

    cmp-long v0, p1, v2

    if-nez v0, :cond_3

    .line 517
    sget-object v1, Lcom/android/email/provider/EmailContent$Account;->CONTENT_URI:Landroid/net/Uri;

    .line 523
    .local v1, uri:Landroid/net/Uri;
    :goto_1
    const/4 v6, 0x0

    .line 525
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

    .line 527
    .end local v1           #uri:Landroid/net/Uri;
    :goto_2
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 528
    new-instance v8, Lcom/android/email/service/MailService$AccountSyncReport;

    const/4 v0, 0x0

    invoke-direct {v8, v0}, Lcom/android/email/service/MailService$AccountSyncReport;-><init>(Lcom/android/email/service/MailService$1;)V

    .line 529
    .local v8, report:Lcom/android/email/service/MailService$AccountSyncReport;
    const/4 v0, 0x5

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 530
    .local v10, syncInterval:I
    const/16 v0, 0x8

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 531
    .local v7, flags:I
    const/16 v0, 0xc

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 538
    .local v9, ringtoneString:Ljava/lang/String;
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v8, Lcom/android/email/service/MailService$AccountSyncReport;->accountId:J

    .line 539
    const-wide/16 v2, 0x0

    iput-wide v2, v8, Lcom/android/email/service/MailService$AccountSyncReport;->prevSyncTime:J

    .line 540
    if-lez v10, :cond_4

    const-wide/16 v2, 0x0

    :goto_3
    iput-wide v2, v8, Lcom/android/email/service/MailService$AccountSyncReport;->nextSyncTime:J

    .line 541
    const/4 v0, 0x0

    iput v0, v8, Lcom/android/email/service/MailService$AccountSyncReport;->numNewMessages:I

    .line 543
    iput v10, v8, Lcom/android/email/service/MailService$AccountSyncReport;->syncInterval:I

    .line 544
    and-int/lit8 v0, v7, 0x1

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    :goto_4
    iput-boolean v0, v8, Lcom/android/email/service/MailService$AccountSyncReport;->notify:Z

    .line 545
    and-int/lit8 v0, v7, 0x2

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    iput-boolean v0, v8, Lcom/android/email/service/MailService$AccountSyncReport;->vibrate:Z

    .line 546
    and-int/lit8 v0, v7, 0x40

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    :goto_6
    iput-boolean v0, v8, Lcom/android/email/service/MailService$AccountSyncReport;->vibrateWhenSilent:Z

    .line 547
    if-nez v9, :cond_8

    const/4 v0, 0x0

    :goto_7
    iput-object v0, v8, Lcom/android/email/service/MailService$AccountSyncReport;->ringtoneUri:Landroid/net/Uri;

    .line 550
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/android/email/service/MailService$AccountSyncReport;->displayName:Ljava/lang/String;

    .line 553
    sget-object v0, Lcom/android/email/service/MailService;->mSyncReports:Ljava/util/HashMap;

    iget-wide v2, v8, Lcom/android/email/service/MailService$AccountSyncReport;->accountId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 555
    .end local v7           #flags:I
    .end local v8           #report:Lcom/android/email/service/MailService$AccountSyncReport;
    .end local v9           #ringtoneString:Ljava/lang/String;
    .end local v10           #syncInterval:I
    :catch_0
    move-exception v0

    .line 557
    if-eqz v6, :cond_0

    .line 558
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 519
    .end local v6           #c:Landroid/database/Cursor;
    :cond_3
    sget-object v0, Lcom/android/email/provider/EmailContent$Account;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .restart local v1       #uri:Landroid/net/Uri;
    goto :goto_1

    .line 540
    .end local v1           #uri:Landroid/net/Uri;
    .restart local v6       #c:Landroid/database/Cursor;
    .restart local v7       #flags:I
    .restart local v8       #report:Lcom/android/email/service/MailService$AccountSyncReport;
    .restart local v9       #ringtoneString:Ljava/lang/String;
    .restart local v10       #syncInterval:I
    :cond_4
    const-wide/16 v2, -0x1

    goto :goto_3

    .line 544
    :cond_5
    const/4 v0, 0x0

    goto :goto_4

    .line 545
    :cond_6
    const/4 v0, 0x0

    goto :goto_5

    .line 546
    :cond_7
    const/4 v0, 0x0

    goto :goto_6

    .line 547
    :cond_8
    :try_start_1
    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_7

    .line 557
    .end local v7           #flags:I
    .end local v8           #report:Lcom/android/email/service/MailService$AccountSyncReport;
    .end local v9           #ringtoneString:Ljava/lang/String;
    .end local v10           #syncInterval:I
    :cond_9
    if-eqz v6, :cond_0

    .line 558
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 557
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_a

    .line 558
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_a
    throw v0
.end method

.method private syncOneAccount(Lcom/android/email/Controller;JI)Z
    .locals 8
    .parameter "controller"
    .parameter "checkAccountId"
    .parameter "startId"

    .prologue
    const/4 v2, 0x0

    .line 451
    invoke-static {p0, p2, p3, v2}, Lcom/android/email/provider/EmailContent$Mailbox;->findMailboxOfType(Landroid/content/Context;JI)J

    move-result-wide v3

    .line 452
    .local v3, inboxId:J
    const-wide/16 v0, -0x1

    cmp-long v0, v3, v0

    if-nez v0, :cond_0

    move v0, v2

    .line 456
    :goto_0
    return v0

    .line 455
    :cond_0
    int-to-long v5, p4

    iget-object v7, p0, Lcom/android/email/service/MailService;->mControllerCallback:Lcom/android/email/Controller$Result;

    move-object v0, p1

    move-wide v1, p2

    invoke-virtual/range {v0 .. v7}, Lcom/android/email/Controller;->serviceCheckMail(JJJLcom/android/email/Controller$Result;)V

    .line 456
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private updateBadgeProviderExample(I)V
    .locals 6
    .parameter "cnt"

    .prologue
    .line 845
    invoke-virtual {p0}, Lcom/android/email/service/MailService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 846
    .local v0, cr:Landroid/content/ContentResolver;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 847
    .local v1, newValues:Landroid/content/ContentValues;
    const-string v3, "package"

    const-string v4, "com.android.email"

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 848
    const-string v3, "class"

    const-string v4, "com.android.email.activity.Welcome"

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 849
    const-string v3, "badgecount"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 850
    const-string v2, "package=\'com.android.email\' AND class=\'com.android.email.activity.Welcome\'"

    .line 851
    .local v2, where:Ljava/lang/String;
    const-string v3, "content://com.sec.badge/apps"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v1, v2, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 852
    const-string v3, "Email-MailService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[updateBadgeProvider] - cnt : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 853
    return-void
.end method


# virtual methods
.method createAlarmIntent(J[JZ)Landroid/app/PendingIntent;
    .locals 4
    .parameter "checkId"
    .parameter "accountInfo"
    .parameter "isWatchdog"

    .prologue
    .line 430
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 431
    .local v0, i:Landroid/content/Intent;
    const-class v2, Lcom/android/email/service/MailService;

    invoke-virtual {v0, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 432
    const-string v2, "com.android.email.intent.action.MAIL_SERVICE_WAKEUP"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 433
    const-string v2, "com.android.email.intent.extra.ACCOUNT"

    invoke-virtual {v0, v2, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 434
    const-string v2, "com.android.email.intent.extra.ACCOUNT_INFO"

    invoke-virtual {v0, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[J)Landroid/content/Intent;

    .line 435
    if-eqz p4, :cond_0

    .line 436
    const-string v2, "com.android.email.intent.extra.WATCHDOG"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 438
    :cond_0
    const/4 v2, 0x0

    const/high16 v3, 0x800

    invoke-static {p0, v2, v0, v3}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 439
    .local v1, pi:Landroid/app/PendingIntent;
    return-object v1
.end method

.method public getCountofAccounts()I
    .locals 8

    .prologue
    .line 857
    const/4 v6, 0x0

    .line 858
    .local v6, ac_count:I
    const/4 v7, 0x0

    .line 860
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

    .line 862
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

    .line 867
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    .line 871
    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 872
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 874
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

    .line 875
    return v6

    .line 871
    .end local v3           #selection_unread:Ljava/lang/String;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_1

    .line 872
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_1
    throw v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 297
    const/4 v0, 0x0

    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 302
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 303
    invoke-virtual {p0}, Lcom/android/email/service/MailService;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/android/email/Controller;->getInstance(Landroid/content/Context;)Lcom/android/email/Controller;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/service/MailService;->mControllerCallback:Lcom/android/email/Controller$Result;

    invoke-virtual {v0, v1}, Lcom/android/email/Controller;->removeResultCallback(Lcom/android/email/Controller$Result;)V

    .line 304
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 21
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    .line 196
    invoke-super/range {p0 .. p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    .line 202
    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/email/service/MailService;->mStartId:I

    .line 203
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v13

    .line 205
    .local v13, action:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/service/MailService;->getApplication()Landroid/app/Application;

    move-result-object v5

    invoke-static {v5}, Lcom/android/email/Controller;->getInstance(Landroid/content/Context;)Lcom/android/email/Controller;

    move-result-object v18

    .line 206
    .local v18, controller:Lcom/android/email/Controller;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/service/MailService;->mControllerCallback:Lcom/android/email/Controller$Result;

    move-object v5, v0

    move-object/from16 v0, v18

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/android/email/Controller;->addResultCallback(Lcom/android/email/Controller$Result;)V

    .line 208
    const-string v5, "com.android.email.intent.action.MAIL_SERVICE_WAKEUP"

    invoke-virtual {v5, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 211
    invoke-virtual/range {p0 .. p1}, Lcom/android/email/service/MailService;->restoreSyncReports(Landroid/content/Intent;)V

    .line 214
    const-string v5, "alarm"

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/android/email/service/MailService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/app/AlarmManager;

    .line 215
    .local v14, alarmManager:Landroid/app/AlarmManager;
    const-string v5, "com.android.email.intent.extra.ACCOUNT"

    const-wide/16 v6, -0x1

    move-object/from16 v0, p1

    move-object v1, v5

    move-wide v2, v6

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v16

    .line 216
    .local v16, checkAccountId:J
    sget-boolean v5, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v5, :cond_0

    .line 217
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

    .line 219
    :cond_0
    const-wide/16 v5, 0x0

    cmp-long v5, v16, v5

    if-ltz v5, :cond_1

    .line 220
    move-object/from16 v0, p0

    move-wide/from16 v1, v16

    move-object v3, v14

    invoke-direct {v0, v1, v2, v3}, Lcom/android/email/service/MailService;->setWatchdog(JLandroid/app/AlarmManager;)V

    .line 223
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

    .line 225
    :cond_2
    const-wide/16 v5, -0x1

    cmp-long v5, v16, v5

    if-eqz v5, :cond_3

    .line 226
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v1, v16

    move v3, v5

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/email/service/MailService;->updateAccountReport(JI)Lcom/android/email/service/MailService$AccountSyncReport;

    .line 229
    :cond_3
    move-object/from16 v0, p0

    move-object v1, v14

    invoke-virtual {v0, v1}, Lcom/android/email/service/MailService;->reschedule(Landroid/app/AlarmManager;)V

    .line 230
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/android/email/service/MailService;->stopSelf(I)V

    .line 292
    .end local v14           #alarmManager:Landroid/app/AlarmManager;
    .end local v16           #checkAccountId:J
    :cond_4
    :goto_0
    const/4 v5, 0x2

    return v5

    .line 233
    :cond_5
    const-string v5, "com.android.email.intent.action.MAIL_SERVICE_CANCEL"

    invoke-virtual {v5, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 234
    sget-boolean v5, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v5, :cond_6

    .line 235
    const-string v5, "Email-MailService"

    const-string v6, "action: cancel"

    invoke-static {v5, v6}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/service/MailService;->getApplication()Landroid/app/Application;

    move-result-object v5

    invoke-static {v5}, Lcom/android/email/Controller;->getInstance(Landroid/content/Context;)Lcom/android/email/Controller;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/android/email/Controller;->setRemoteSync(Z)V

    .line 238
    invoke-direct/range {p0 .. p0}, Lcom/android/email/service/MailService;->cancel()V

    .line 239
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/android/email/service/MailService;->stopSelf(I)V

    goto :goto_0

    .line 241
    :cond_7
    const-string v5, "com.android.email.intent.action.MAIL_SERVICE_RESCHEDULE"

    invoke-virtual {v5, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 242
    sget-boolean v5, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v5, :cond_8

    .line 243
    const-string v5, "Email-MailService"

    const-string v6, "action: reschedule"

    invoke-static {v5, v6}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    :cond_8
    const-string v5, "notification"

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/android/email/service/MailService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/app/NotificationManager;

    .line 250
    .local v20, notificationManager:Landroid/app/NotificationManager;
    sget v5, Lcom/android/email/service/MailService;->NOTIFICATION_ID_NEW_MESSAGES:I

    move-object/from16 v0, v20

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 252
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/service/MailService;->getApplication()Landroid/app/Application;

    move-result-object v5

    invoke-static {v5}, Lcom/android/email/Controller;->getInstance(Landroid/content/Context;)Lcom/android/email/Controller;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/android/email/Controller;->setRemoteSync(Z)V

    .line 255
    invoke-direct/range {p0 .. p0}, Lcom/android/email/service/MailService;->refreshSyncReports()V

    .line 257
    const-string v5, "alarm"

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/android/email/service/MailService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/app/AlarmManager;

    .line 258
    .restart local v14       #alarmManager:Landroid/app/AlarmManager;
    move-object/from16 v0, p0

    move-object v1, v14

    invoke-virtual {v0, v1}, Lcom/android/email/service/MailService;->reschedule(Landroid/app/AlarmManager;)V

    .line 259
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/android/email/service/MailService;->stopSelf(I)V

    goto :goto_0

    .line 260
    .end local v14           #alarmManager:Landroid/app/AlarmManager;
    .end local v20           #notificationManager:Landroid/app/NotificationManager;
    :cond_9
    const-string v5, "com.android.email.intent.action.MAIL_SERVICE_NOTIFY"

    invoke-virtual {v5, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 261
    const-string v5, "com.android.email.intent.extra.ACCOUNT"

    const-wide/16 v6, -0x1

    move-object/from16 v0, p1

    move-object v1, v5

    move-wide v2, v6

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v11

    .line 263
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

    .line 266
    .local v15, c:Landroid/database/Cursor;
    const/16 v19, 0x0

    .line 268
    .local v19, newMessageCount:I
    :try_start_0
    invoke-interface {v15}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_c

    .line 269
    const/4 v5, 0x0

    invoke-interface {v15, v5}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v19

    .line 275
    :goto_1
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 277
    sget-boolean v5, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v5, :cond_a

    .line 278
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

    .line 281
    :cond_a
    const-wide/16 v5, -0x1

    cmp-long v5, v11, v5

    if-eqz v5, :cond_b

    .line 282
    move-object/from16 v0, p0

    move-wide v1, v11

    move/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/email/service/MailService;->updateAccountReport(JI)Lcom/android/email/service/MailService$AccountSyncReport;

    .line 283
    move-object/from16 v0, p0

    move-wide v1, v11

    invoke-direct {v0, v1, v2}, Lcom/android/email/service/MailService;->notifyNewMessages(J)V

    .line 285
    :cond_b
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/android/email/service/MailService;->stopSelf(I)V

    goto/16 :goto_0

    .line 272
    :cond_c
    const-wide/16 v11, -0x1

    goto :goto_1

    .line 275
    :catchall_0
    move-exception v5

    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    throw v5
.end method

.method reschedule(Landroid/app/AlarmManager;)V
    .locals 27
    .parameter "alarmMgr"

    .prologue
    .line 347
    const-wide/16 v23, -0x1

    move-object/from16 v0, p0

    move-wide/from16 v1, v23

    invoke-virtual {v0, v1, v2}, Lcom/android/email/service/MailService;->setupSyncReports(J)V

    .line 348
    sget-object v23, Lcom/android/email/service/MailService;->mSyncReports:Ljava/util/HashMap;

    monitor-enter v23

    .line 349
    :try_start_0
    sget-object v24, Lcom/android/email/service/MailService;->mSyncReports:Ljava/util/HashMap;

    invoke-virtual/range {v24 .. v24}, Ljava/util/HashMap;->size()I

    move-result v16

    .line 350
    .local v16, numAccounts:I
    mul-int/lit8 v24, v16, 0x2

    move/from16 v0, v24

    new-array v0, v0, [J

    move-object v5, v0

    .line 351
    .local v5, accountInfo:[J
    const/4 v6, 0x0

    .line 353
    .local v6, accountInfoIndex:I
    const-wide v12, 0x7fffffffffffffffL

    .line 354
    .local v12, nextCheckTime:J
    const/4 v11, 0x0

    .line 355
    .local v11, nextAccount:Lcom/android/email/service/MailService$AccountSyncReport;
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v21

    .line 357
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

    .line 358
    .local v20, report:Lcom/android/email/service/MailService$AccountSyncReport;
    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/email/service/MailService$AccountSyncReport;->syncInterval:I

    move/from16 v24, v0

    if-lez v24, :cond_0

    .line 361
    move-object/from16 v0, v20

    iget-wide v0, v0, Lcom/android/email/service/MailService$AccountSyncReport;->prevSyncTime:J

    move-wide/from16 v18, v0

    .line 362
    .local v18, prevSyncTime:J
    move-object/from16 v0, v20

    iget-wide v0, v0, Lcom/android/email/service/MailService$AccountSyncReport;->nextSyncTime:J

    move-wide v14, v0

    .line 365
    .local v14, nextSyncTime:J
    const-wide/16 v24, 0x0

    cmp-long v24, v18, v24

    if-eqz v24, :cond_1

    cmp-long v24, v14, v21

    if-gez v24, :cond_3

    .line 371
    :cond_1
    const-wide/16 v24, 0x1388

    add-long v12, v21, v24

    .line 374
    move-object/from16 v11, v20

    .line 381
    :cond_2
    :goto_1
    add-int/lit8 v6, v7, 0x1

    .end local v7           #accountInfoIndex:I
    .restart local v6       #accountInfoIndex:I
    move-object/from16 v0, v20

    iget-wide v0, v0, Lcom/android/email/service/MailService$AccountSyncReport;->accountId:J

    move-wide/from16 v24, v0

    aput-wide v24, v5, v7

    .line 382
    add-int/lit8 v7, v6, 0x1

    .end local v6           #accountInfoIndex:I
    .restart local v7       #accountInfoIndex:I
    move-object/from16 v0, v20

    iget-wide v0, v0, Lcom/android/email/service/MailService$AccountSyncReport;->prevSyncTime:J

    move-wide/from16 v24, v0

    aput-wide v24, v5, v6

    goto :goto_0

    .line 406
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

    .line 375
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

    .line 376
    move-wide v12, v14

    .line 377
    move-object/from16 v11, v20

    goto :goto_1

    .line 386
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

    .line 387
    add-int/lit8 v6, v7, 0x1

    .end local v7           #accountInfoIndex:I
    .restart local v6       #accountInfoIndex:I
    const-wide/16 v24, -0x1

    aput-wide v24, v5, v7

    move v7, v6

    .end local v6           #accountInfoIndex:I
    .restart local v7       #accountInfoIndex:I
    goto :goto_2

    .line 391
    :cond_5
    if-nez v11, :cond_7

    const-wide/16 v24, -0x1

    move-wide/from16 v9, v24

    .line 392
    .local v9, idToCheck:J
    :goto_3
    const/16 v24, 0x0

    move-object/from16 v0, p0

    move-wide v1, v9

    move-object v3, v5

    move/from16 v4, v24

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/email/service/MailService;->createAlarmIntent(J[JZ)Landroid/app/PendingIntent;

    move-result-object v17

    .line 394
    .local v17, pi:Landroid/app/PendingIntent;
    if-nez v11, :cond_8

    .line 395
    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 396
    sget-boolean v24, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v24, :cond_6

    .line 397
    const-string v24, "Email-MailService"

    const-string v25, "reschedule: alarm cancel - no account to check"

    invoke-static/range {v24 .. v25}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    :cond_6
    :goto_4
    monitor-exit v23

    .line 407
    return-void

    .line 391
    .end local v9           #idToCheck:J
    .end local v17           #pi:Landroid/app/PendingIntent;
    :cond_7
    move-object v0, v11

    iget-wide v0, v0, Lcom/android/email/service/MailService$AccountSyncReport;->accountId:J

    move-wide/from16 v24, v0

    move-wide/from16 v9, v24

    goto :goto_3

    .line 400
    .restart local v9       #idToCheck:J
    .restart local v17       #pi:Landroid/app/PendingIntent;
    :cond_8
    const/16 v24, 0x2

    move-object/from16 v0, p1

    move/from16 v1, v24

    move-wide v2, v12

    move-object/from16 v4, v17

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 401
    sget-boolean v24, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v24, :cond_6

    .line 402
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
    .line 604
    const-wide/16 v9, -0x1

    invoke-virtual {p0, v9, v10}, Lcom/android/email/service/MailService;->setupSyncReports(J)V

    .line 605
    sget-object v9, Lcom/android/email/service/MailService;->mSyncReports:Ljava/util/HashMap;

    monitor-enter v9

    .line 606
    :try_start_0
    const-string v10, "com.android.email.intent.extra.ACCOUNT_INFO"

    invoke-virtual {p1, v10}, Landroid/content/Intent;->getLongArrayExtra(Ljava/lang/String;)[J

    move-result-object v2

    .line 607
    .local v2, accountInfo:[J
    if-nez v2, :cond_0

    .line 608
    const-string v10, "Email-MailService"

    const-string v11, "no data in intent to restore"

    invoke-static {v10, v11}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 609
    monitor-exit v9

    .line 628
    :goto_0
    return-void

    .line 611
    :cond_0
    const/4 v3, 0x0

    .line 612
    .local v3, accountInfoIndex:I
    array-length v5, v2

    .local v5, accountInfoLimit:I
    move v4, v3

    .line 613
    .end local v3           #accountInfoIndex:I
    .local v4, accountInfoIndex:I
    :cond_1
    :goto_1
    if-ge v4, v5, :cond_2

    .line 614
    add-int/lit8 v3, v4, 0x1

    .end local v4           #accountInfoIndex:I
    .restart local v3       #accountInfoIndex:I
    aget-wide v0, v2, v4

    .line 615
    .local v0, accountId:J
    add-int/lit8 v4, v3, 0x1

    .end local v3           #accountInfoIndex:I
    .restart local v4       #accountInfoIndex:I
    aget-wide v6, v2, v3

    .line 616
    .local v6, prevSync:J
    sget-object v10, Lcom/android/email/service/MailService;->mSyncReports:Ljava/util/HashMap;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/email/service/MailService$AccountSyncReport;

    .line 617
    .local v8, report:Lcom/android/email/service/MailService$AccountSyncReport;
    if-eqz v8, :cond_1

    .line 618
    iget-wide v10, v8, Lcom/android/email/service/MailService$AccountSyncReport;->prevSyncTime:J

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-nez v10, :cond_1

    .line 619
    iput-wide v6, v8, Lcom/android/email/service/MailService$AccountSyncReport;->prevSyncTime:J

    .line 620
    iget v10, v8, Lcom/android/email/service/MailService$AccountSyncReport;->syncInterval:I

    if-lez v10, :cond_1

    iget-wide v10, v8, Lcom/android/email/service/MailService$AccountSyncReport;->prevSyncTime:J

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-eqz v10, :cond_1

    .line 621
    iget-wide v10, v8, Lcom/android/email/service/MailService$AccountSyncReport;->prevSyncTime:J

    iget v12, v8, Lcom/android/email/service/MailService$AccountSyncReport;->syncInterval:I

    mul-int/lit16 v12, v12, 0x3e8

    mul-int/lit8 v12, v12, 0x3c

    int-to-long v12, v12

    add-long/2addr v10, v12

    iput-wide v10, v8, Lcom/android/email/service/MailService$AccountSyncReport;->nextSyncTime:J

    goto :goto_1

    .line 627
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
    .line 493
    sget-object v0, Lcom/android/email/service/MailService;->mSyncReports:Ljava/util/HashMap;

    monitor-enter v0

    .line 494
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/email/service/MailService;->setupSyncReportsLocked(J)V

    .line 495
    monitor-exit v0

    .line 496
    return-void

    .line 495
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

    .line 571
    invoke-virtual {p0, p1, p2}, Lcom/android/email/service/MailService;->setupSyncReports(J)V

    .line 572
    sget-object v1, Lcom/android/email/service/MailService;->mSyncReports:Ljava/util/HashMap;

    monitor-enter v1

    .line 573
    :try_start_0
    sget-object v2, Lcom/android/email/service/MailService;->mSyncReports:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/service/MailService$AccountSyncReport;

    .line 574
    .local v0, report:Lcom/android/email/service/MailService$AccountSyncReport;
    if-nez v0, :cond_0

    .line 576
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

    .line 577
    const/4 v2, 0x0

    monitor-exit v1

    move-object v1, v2

    .line 591
    :goto_0
    return-object v1

    .line 581
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/android/email/service/MailService$AccountSyncReport;->prevSyncTime:J

    .line 582
    iget v2, v0, Lcom/android/email/service/MailService$AccountSyncReport;->syncInterval:I

    if-lez v2, :cond_1

    .line 583
    iget-wide v2, v0, Lcom/android/email/service/MailService$AccountSyncReport;->prevSyncTime:J

    iget v4, v0, Lcom/android/email/service/MailService$AccountSyncReport;->syncInterval:I

    mul-int/lit16 v4, v4, 0x3e8

    mul-int/lit8 v4, v4, 0x3c

    int-to-long v4, v4

    add-long/2addr v2, v4

    iput-wide v2, v0, Lcom/android/email/service/MailService$AccountSyncReport;->nextSyncTime:J

    .line 585
    :cond_1
    const/4 v2, -0x1

    if-eq p3, v2, :cond_2

    .line 586
    iput p3, v0, Lcom/android/email/service/MailService$AccountSyncReport;->numNewMessages:I

    .line 588
    :cond_2
    sget-boolean v2, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v2, :cond_3

    .line 589
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

    .line 591
    :cond_3
    monitor-exit v1

    move-object v1, v0

    goto :goto_0

    .line 592
    .end local v0           #report:Lcom/android/email/service/MailService$AccountSyncReport;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method
