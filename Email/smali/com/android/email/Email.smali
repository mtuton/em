.class public Lcom/android/email/Email;
.super Landroid/app/Application;
.source "Email.java"


# static fields
.field public static final ACCEPTABLE_ATTACHMENT_DOWNLOAD_TYPES:[Ljava/lang/String; = null

.field public static final ACCEPTABLE_ATTACHMENT_SEND_INTENT_TYPES:[Ljava/lang/String; = null

.field public static final ACCEPTABLE_ATTACHMENT_SEND_SEC_TYPES:Ljava/lang/String; = "*/*"

.field public static final ACCEPTABLE_ATTACHMENT_SEND_UI_TYPES:[Ljava/lang/String; = null

.field public static final ACCEPTABLE_ATTACHMENT_VIEW_TYPES:[Ljava/lang/String; = null

.field private static final ACCOUNT_COLOR_CHIP_RES_IDS:[I = null

.field private static final ACCOUNT_COLOR_CHIP_RGBS:[I = null

.field public static DEBUG:Z = false

.field public static DEBUG_SENSITIVE:Z = false

.field public static final EMAIL_LOG_INCOMING_TYPE:I = 0x1

.field public static final EMAIL_LOG_OUTGOING_TYPE:I = 0x2

.field public static final EXCHANGE_ACCOUNT_MANAGER_TYPE:Ljava/lang/String; = "com.android.exchange"

.field public static final LOGD:Z = false

.field public static final LOG_PROVIDER_CONTENT_URI:Ljava/lang/String; = "content://logs/email"

.field public static final LOG_TAG:Ljava/lang/String; = "Email"

.field public static final MAX_ATTACHMENT_DOWNLOAD_SIZE:I = 0xa00000

.field public static final MAX_ATTACHMENT_UPLOAD_SIZE:I = 0x500000

.field public static final UNACCEPTABLE_ATTACHMENT_DOWNLOAD_TYPES:[Ljava/lang/String; = null

.field public static final UNACCEPTABLE_ATTACHMENT_VIEW_TYPES:[Ljava/lang/String; = null

.field private static final UPDATE_INTERVAL:J = 0x493e0L

.field public static final VISIBLE_LIMIT_DEFAULT:I = 0x19

.field public static final VISIBLE_LIMIT_INCREMENT:I = 0x19

.field private static sAccountsChangedNotification:Z

.field private static sMailboxSyncTimes:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public static tempDirectory:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/16 v5, 0x15

    const/4 v2, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v6, "*/*"

    .line 56
    sput-boolean v3, Lcom/android/email/Email;->DEBUG:Z

    .line 62
    sput-boolean v3, Lcom/android/email/Email;->DEBUG_SENSITIVE:Z

    .line 75
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "*/*"

    aput-object v6, v0, v3

    sput-object v0, Lcom/android/email/Email;->ACCEPTABLE_ATTACHMENT_SEND_INTENT_TYPES:[Ljava/lang/String;

    .line 85
    new-array v0, v2, [Ljava/lang/String;

    const-string v1, "image/*"

    aput-object v1, v0, v3

    const-string v1, "video/*"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/email/Email;->ACCEPTABLE_ATTACHMENT_SEND_UI_TYPES:[Ljava/lang/String;

    .line 100
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "image/*"

    aput-object v1, v0, v3

    const-string v1, "audio/*"

    aput-object v1, v0, v4

    const-string v1, "video/*"

    aput-object v1, v0, v2

    const/4 v1, 0x3

    const-string v2, "text/plain"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "text/x-vnote"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "application/msword"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "application/vnd.openxmlformats-officedocument.wordprocessingml.document"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "application/vnd.ms-excel"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "application/vnd.ms-powerpoint"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "application/vnd.openxmlformats-officedocument.presentationml.presentation"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "application/pdf"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/email/Email;->ACCEPTABLE_ATTACHMENT_VIEW_TYPES:[Ljava/lang/String;

    .line 112
    new-array v0, v3, [Ljava/lang/String;

    sput-object v0, Lcom/android/email/Email;->UNACCEPTABLE_ATTACHMENT_VIEW_TYPES:[Ljava/lang/String;

    .line 122
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "*/*"

    aput-object v6, v0, v3

    sput-object v0, Lcom/android/email/Email;->ACCEPTABLE_ATTACHMENT_DOWNLOAD_TYPES:[Ljava/lang/String;

    .line 130
    new-array v0, v3, [Ljava/lang/String;

    sput-object v0, Lcom/android/email/Email;->UNACCEPTABLE_ATTACHMENT_DOWNLOAD_TYPES:[Ljava/lang/String;

    .line 161
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/email/Email;->sMailboxSyncTimes:Ljava/util/HashMap;

    .line 174
    sput-boolean v3, Lcom/android/email/Email;->sAccountsChangedNotification:Z

    .line 179
    new-array v0, v5, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/email/Email;->ACCOUNT_COLOR_CHIP_RES_IDS:[I

    .line 205
    new-array v0, v5, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/email/Email;->ACCOUNT_COLOR_CHIP_RGBS:[I

    return-void

    .line 179
    :array_0
    .array-data 0x4
        0x1t 0x0t 0x2t 0x7ft
        0xct 0x0t 0x2t 0x7ft
        0xft 0x0t 0x2t 0x7ft
        0x10t 0x0t 0x2t 0x7ft
        0x11t 0x0t 0x2t 0x7ft
        0x12t 0x0t 0x2t 0x7ft
        0x13t 0x0t 0x2t 0x7ft
        0x14t 0x0t 0x2t 0x7ft
        0x15t 0x0t 0x2t 0x7ft
        0x2t 0x0t 0x2t 0x7ft
        0x3t 0x0t 0x2t 0x7ft
        0x4t 0x0t 0x2t 0x7ft
        0x5t 0x0t 0x2t 0x7ft
        0x6t 0x0t 0x2t 0x7ft
        0x7t 0x0t 0x2t 0x7ft
        0x8t 0x0t 0x2t 0x7ft
        0x9t 0x0t 0x2t 0x7ft
        0xat 0x0t 0x2t 0x7ft
        0xbt 0x0t 0x2t 0x7ft
        0xdt 0x0t 0x2t 0x7ft
        0xet 0x0t 0x2t 0x7ft
    .end array-data

    .line 205
    :array_1
    .array-data 0x4
        0xa7t 0xaet 0x71t 0x0t
        0x19t 0x19t 0x62t 0x0t
        0x2ft 0x46t 0x18t 0x0t
        0x52t 0x8et 0xbft 0x0t
        0x79t 0x1ft 0x0t 0x0t
        0xc2t 0xaft 0xa8t 0x0t
        0xc4t 0x64t 0x6bt 0x0t
        0x59t 0x83t 0x73t 0x0t
        0xa4t 0x50t 0x9dt 0x0t
        0x31t 0x30t 0xc6t 0x0t
        0x18t 0xaet 0xadt 0x0t
        0x0t 0xa2t 0xc6t 0x0t
        0x94t 0x41t 0x94t 0x0t
        0x10t 0x51t 0xd6t 0x0t
        0x73t 0x71t 0xa5t 0x0t
        0x8ct 0x6dt 0x8ct 0x0t
        0x84t 0x6dt 0x5at 0x0t
        0xa5t 0x82t 0x6bt 0x0t
        0x84t 0x8at 0x5at 0x0t
        0x4at 0x82t 0x7bt 0x0t
        0x52t 0x86t 0xadt 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method

.method public static getAccountColor(J)I
    .locals 2
    .parameter "accountId"

    .prologue
    .line 243
    sget-object v0, Lcom/android/email/Email;->ACCOUNT_COLOR_CHIP_RGBS:[I

    invoke-static {p0, p1}, Lcom/android/email/Email;->getColorIndexFromAccountId(J)I

    move-result v1

    aget v0, v0, v1

    return v0
.end method

.method public static getAccountColorResourceId(J)I
    .locals 2
    .parameter "accountId"

    .prologue
    .line 239
    sget-object v0, Lcom/android/email/Email;->ACCOUNT_COLOR_CHIP_RES_IDS:[I

    invoke-static {p0, p1}, Lcom/android/email/Email;->getColorIndexFromAccountId(J)I

    move-result v1

    aget v0, v0, v1

    return v0
.end method

.method static getColorIndexFromAccountId(J)I
    .locals 2
    .parameter "accountId"

    .prologue
    .line 235
    const-wide/16 v0, 0x1

    sub-long v0, p0, v0

    long-to-int v0, v0

    sget-object v1, Lcom/android/email/Email;->ACCOUNT_COLOR_CHIP_RES_IDS:[I

    array-length v1, v1

    rem-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    return v0
.end method

.method public static declared-synchronized getNotifyUiAccountsChanged()Z
    .locals 2

    .prologue
    .line 388
    const-class v0, Lcom/android/email/Email;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Lcom/android/email/Email;->sAccountsChangedNotification:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static log(Ljava/lang/String;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 347
    const-string v0, "Email"

    invoke-static {v0, p0}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    return-void
.end method

.method public static logd(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "tag"
    .parameter "str"

    .prologue
    .line 401
    sget-boolean v0, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 402
    const-string v0, "Email"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\t"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    :cond_0
    return-void
.end method

.method public static loge(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "tag"
    .parameter "str"

    .prologue
    .line 391
    sget-boolean v0, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 392
    const-string v0, "Email"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\t"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    :cond_0
    return-void
.end method

.method public static loge(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3
    .parameter "tag"
    .parameter "str"
    .parameter "tr"

    .prologue
    .line 396
    sget-boolean v0, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 397
    const-string v0, "Email"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\t"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 398
    :cond_0
    return-void
.end method

.method public static logs(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "tag"
    .parameter "str"

    .prologue
    .line 411
    sget-boolean v0, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/email/Email;->DEBUG_SENSITIVE:Z

    if-eqz v0, :cond_0

    .line 412
    const-string v0, "Email"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SOCKET "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\t"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    :cond_0
    return-void
.end method

.method public static logv(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "tag"
    .parameter "str"

    .prologue
    .line 406
    sget-boolean v0, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 407
    const-string v0, "Email"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\t"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    :cond_0
    return-void
.end method

.method public static mailboxRequiresRefresh(J)Z
    .locals 5
    .parameter "mailboxId"

    .prologue
    .line 366
    sget-object v0, Lcom/android/email/Email;->sMailboxSyncTimes:Ljava/util/HashMap;

    monitor-enter v0

    .line 367
    :try_start_0
    sget-object v1, Lcom/android/email/Email;->sMailboxSyncTimes:Ljava/util/HashMap;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sget-object v3, Lcom/android/email/Email;->sMailboxSyncTimes:Ljava/util/HashMap;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    sub-long/2addr v1, v3

    const-wide/32 v3, 0x493e0

    cmp-long v1, v1, v3

    if-lez v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    monitor-exit v0

    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 371
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static declared-synchronized setNotifyUiAccountsChanged(Z)V
    .locals 2
    .parameter "setFlag"

    .prologue
    .line 380
    const-class v0, Lcom/android/email/Email;

    monitor-enter v0

    :try_start_0
    sput-boolean p0, Lcom/android/email/Email;->sAccountsChangedNotification:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 381
    monitor-exit v0

    return-void

    .line 380
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static setServicesEnabled(Landroid/content/Context;Z)V
    .locals 6
    .parameter "context"
    .parameter "enabled"

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const-class v5, Lcom/android/email/service/MailService;

    .line 282
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 283
    .local v0, pm:Landroid/content/pm/PackageManager;
    if-nez p1, :cond_0

    new-instance v1, Landroid/content/ComponentName;

    const-class v2, Lcom/android/email/service/MailService;

    invoke-direct {v1, p0, v5}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v1

    if-ne v1, v3, :cond_0

    .line 289
    invoke-static {p0}, Lcom/android/email/service/MailService;->actionReschedule(Landroid/content/Context;)V

    .line 291
    :cond_0
    new-instance v1, Landroid/content/ComponentName;

    const-class v2, Lcom/android/email/activity/MessageCompose;

    invoke-direct {v1, p0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    if-eqz p1, :cond_2

    move v2, v3

    :goto_0
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 296
    new-instance v1, Landroid/content/ComponentName;

    const-class v2, Lcom/android/email/activity/AccountShortcutPicker;

    invoke-direct {v1, p0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    if-eqz p1, :cond_3

    move v2, v3

    :goto_1
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 301
    new-instance v1, Landroid/content/ComponentName;

    const-class v2, Lcom/android/email/service/BootReceiver;

    invoke-direct {v1, p0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    if-eqz p1, :cond_4

    move v2, v3

    :goto_2
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 306
    new-instance v1, Landroid/content/ComponentName;

    const-class v2, Lcom/android/email/service/MailService;

    invoke-direct {v1, p0, v5}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    if-eqz p1, :cond_5

    move v2, v3

    :goto_3
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 311
    if-eqz p1, :cond_1

    new-instance v1, Landroid/content/ComponentName;

    const-class v2, Lcom/android/email/service/MailService;

    invoke-direct {v1, p0, v5}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v1

    if-ne v1, v3, :cond_1

    .line 317
    invoke-static {p0}, Lcom/android/email/service/MailService;->actionReschedule(Landroid/content/Context;)V

    .line 319
    :cond_1
    return-void

    :cond_2
    move v2, v4

    .line 291
    goto :goto_0

    :cond_3
    move v2, v4

    .line 296
    goto :goto_1

    :cond_4
    move v2, v4

    .line 301
    goto :goto_2

    :cond_5
    move v2, v4

    .line 306
    goto :goto_3
.end method

.method public static setServicesEnabled(Landroid/content/Context;)Z
    .locals 9
    .parameter "context"

    .prologue
    .line 252
    const/4 v6, 0x0

    .line 254
    .local v6, c:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/email/provider/EmailContent$Account;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/email/provider/EmailContent$Account;->ID_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 258
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x1

    move v8, v0

    .line 260
    .local v8, enable:Z
    :goto_0
    const-string v0, "Email >>"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setServicesEnables || "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/email/Email;->logv(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    move-object v7, p0

    .line 263
    .local v7, con:Landroid/content/Context;
    new-instance v0, Lcom/android/email/Email$1;

    invoke-direct {v0, v7, v8}, Lcom/android/email/Email$1;-><init>(Landroid/content/Context;Z)V

    invoke-virtual {v0}, Lcom/android/email/Email$1;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 275
    if-eqz v6, :cond_0

    .line 276
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_0
    return v8

    .line 258
    .end local v7           #con:Landroid/content/Context;
    .end local v8           #enable:Z
    :cond_1
    const/4 v0, 0x0

    move v8, v0

    goto :goto_0

    .line 275
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    .line 276
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method public static updateMailboxRefreshTime(J)V
    .locals 5
    .parameter "mailboxId"

    .prologue
    .line 355
    sget-object v0, Lcom/android/email/Email;->sMailboxSyncTimes:Ljava/util/HashMap;

    monitor-enter v0

    .line 356
    :try_start_0
    sget-object v1, Lcom/android/email/Email;->sMailboxSyncTimes:Ljava/util/HashMap;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 357
    monitor-exit v0

    .line 358
    return-void

    .line 357
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public onCreate()V
    .locals 2

    .prologue
    .line 323
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 324
    invoke-static {p0}, Lcom/android/email/Preferences;->getPreferences(Landroid/content/Context;)Lcom/android/email/Preferences;

    move-result-object v0

    .line 325
    .local v0, prefs:Lcom/android/email/Preferences;
    invoke-virtual {v0}, Lcom/android/email/Preferences;->getEnableDebugLogging()Z

    move-result v1

    sput-boolean v1, Lcom/android/email/Email;->DEBUG:Z

    .line 326
    invoke-virtual {v0}, Lcom/android/email/Preferences;->getEnableSensitiveLogging()Z

    move-result v1

    sput-boolean v1, Lcom/android/email/Email;->DEBUG_SENSITIVE:Z

    .line 330
    invoke-static {p0}, Lcom/android/email/Controller;->getInstance(Landroid/content/Context;)Lcom/android/email/Controller;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/email/Controller;->resetVisibleLimits()V

    .line 336
    invoke-virtual {p0}, Lcom/android/email/Email;->getCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-static {v1}, Lcom/android/email/mail/internet/BinaryTempFileBody;->setTempDirectory(Ljava/io/File;)V

    .line 339
    invoke-static {p0}, Lcom/android/email/activity/Debug;->updateLoggingFlags(Landroid/content/Context;)V

    .line 340
    return-void
.end method
