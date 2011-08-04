.class public Lcom/android/exchange/SmsRelayService;
.super Landroid/app/Service;
.source "SmsRelayService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/exchange/SmsRelayService$1;,
        Lcom/android/exchange/SmsRelayService$RelaySmsRunnable;,
        Lcom/android/exchange/SmsRelayService$SmsPayload;
    }
.end annotation


# instance fields
.field private mRelayThread:Ljava/lang/Thread;

.field private mSmsQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/exchange/SmsRelayService$SmsPayload;",
            ">;"
        }
    .end annotation
.end field

.field private mStop:Z

.field private mSyncObject:Ljava/lang/Object;

.field private mTm:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 19
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 24
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/exchange/SmsRelayService;->mSyncObject:Ljava/lang/Object;

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/exchange/SmsRelayService;->mSmsQueue:Ljava/util/ArrayList;

    .line 26
    iput-object v1, p0, Lcom/android/exchange/SmsRelayService;->mRelayThread:Ljava/lang/Thread;

    .line 27
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/exchange/SmsRelayService;->mStop:Z

    .line 28
    iput-object v1, p0, Lcom/android/exchange/SmsRelayService;->mTm:Landroid/telephony/TelephonyManager;

    .line 95
    return-void
.end method

.method static synthetic access$100(Lcom/android/exchange/SmsRelayService;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget-object v0, p0, Lcom/android/exchange/SmsRelayService;->mSyncObject:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/exchange/SmsRelayService;)Landroid/telephony/TelephonyManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget-object v0, p0, Lcom/android/exchange/SmsRelayService;->mTm:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/exchange/SmsRelayService;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget-object v0, p0, Lcom/android/exchange/SmsRelayService;->mSmsQueue:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/exchange/SmsRelayService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget-boolean v0, p0, Lcom/android/exchange/SmsRelayService;->mStop:Z

    return v0
.end method

.method static synthetic access$500(Lcom/android/exchange/SmsRelayService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/android/exchange/SmsRelayService;->onDone()V

    return-void
.end method

.method private onDone()V
    .locals 1

    .prologue
    .line 92
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/exchange/SmsRelayService;->mRelayThread:Ljava/lang/Thread;

    .line 93
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 88
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 1

    .prologue
    .line 40
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 42
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Lcom/android/exchange/SmsRelayService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/exchange/SmsRelayService;->mTm:Landroid/telephony/TelephonyManager;

    .line 43
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 77
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 78
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/exchange/SmsRelayService;->mStop:Z

    .line 79
    iput-object v1, p0, Lcom/android/exchange/SmsRelayService;->mRelayThread:Ljava/lang/Thread;

    .line 80
    iget-object v0, p0, Lcom/android/exchange/SmsRelayService;->mSmsQueue:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/android/exchange/SmsRelayService;->mSmsQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 83
    :cond_0
    iput-object v1, p0, Lcom/android/exchange/SmsRelayService;->mSmsQueue:Ljava/util/ArrayList;

    .line 84
    return-void
.end method

.method public onLowMemory()V
    .locals 1

    .prologue
    .line 71
    invoke-super {p0}, Landroid/app/Service;->onLowMemory()V

    .line 72
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/exchange/SmsRelayService;->mStop:Z

    .line 73
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 6
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    const-string v5, "smsRelay"

    const-string v3, "SmsRelayService"

    .line 47
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v1

    .line 49
    .local v1, result:I
    const-string v2, "SmsRelayService"

    const-string v2, "Received SMS"

    invoke-static {v3, v2}, Lcom/android/exchange/SyncManager;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    const-string v2, "smsRelay"

    const/4 v2, 0x0

    invoke-virtual {p1, v5, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_1

    .line 66
    :cond_0
    :goto_0
    return v1

    .line 55
    :cond_1
    iget-object v2, p0, Lcom/android/exchange/SmsRelayService;->mSyncObject:Ljava/lang/Object;

    monitor-enter v2

    .line 56
    :try_start_0
    invoke-static {p1}, Landroid/provider/Telephony$Sms$Intents;->getMessagesFromIntent(Landroid/content/Intent;)[Landroid/telephony/SmsMessage;

    move-result-object v0

    .line 57
    .local v0, messages:[Landroid/telephony/SmsMessage;
    iget-object v3, p0, Lcom/android/exchange/SmsRelayService;->mSmsQueue:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/exchange/SmsRelayService$SmsPayload;

    invoke-direct {v4, p0, v0}, Lcom/android/exchange/SmsRelayService$SmsPayload;-><init>(Lcom/android/exchange/SmsRelayService;[Landroid/telephony/SmsMessage;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 58
    const-string v3, "SmsRelayService"

    const-string v4, "SMS Added to relay que"

    invoke-static {v3, v4}, Lcom/android/exchange/SyncManager;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    iget-object v2, p0, Lcom/android/exchange/SmsRelayService;->mRelayThread:Ljava/lang/Thread;

    if-nez v2, :cond_0

    .line 62
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/android/exchange/SmsRelayService$RelaySmsRunnable;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/android/exchange/SmsRelayService$RelaySmsRunnable;-><init>(Lcom/android/exchange/SmsRelayService;Lcom/android/exchange/SmsRelayService$1;)V

    const-string v4, "smsRelay"

    invoke-direct {v2, v3, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/exchange/SmsRelayService;->mRelayThread:Ljava/lang/Thread;

    .line 63
    iget-object v2, p0, Lcom/android/exchange/SmsRelayService;->mRelayThread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 59
    .end local v0           #messages:[Landroid/telephony/SmsMessage;
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method
