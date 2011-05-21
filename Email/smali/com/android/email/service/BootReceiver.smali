.class public Lcom/android/email/service/BootReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BootReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/service/BootReceiver$BootHandler;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String;

.field public static mMediaIntentRecvTime:J


# instance fields
.field public mContext:Landroid/content/Context;

.field public mHandler:Lcom/android/email/service/BootReceiver$BootHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-string v0, "BootRecv >>"

    sput-object v0, Lcom/android/email/service/BootReceiver;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/email/service/BootReceiver;->mContext:Landroid/content/Context;

    .line 65
    new-instance v0, Lcom/android/email/service/BootReceiver$BootHandler;

    invoke-direct {v0, p0}, Lcom/android/email/service/BootReceiver$BootHandler;-><init>(Lcom/android/email/service/BootReceiver;)V

    iput-object v0, p0, Lcom/android/email/service/BootReceiver;->mHandler:Lcom/android/email/service/BootReceiver$BootHandler;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/android/email/service/BootReceiver;->TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 73
    const-string v0, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.android.email.RESTART_SYNCMANAGER"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 77
    :cond_0
    invoke-static {p1}, Lcom/android/email/Email;->setServicesEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 78
    invoke-static {p1}, Lcom/android/email/service/MailService;->actionReschedule(Landroid/content/Context;)V

    .line 103
    :cond_1
    :goto_0
    return-void

    .line 81
    :cond_2
    const-string v0, "android.intent.action.DEVICE_STORAGE_LOW"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 82
    invoke-static {p1}, Lcom/android/email/service/MailService;->actionCancel(Landroid/content/Context;)V

    goto :goto_0

    .line 84
    :cond_3
    const-string v0, "android.intent.action.DEVICE_STORAGE_OK"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 85
    invoke-static {p1}, Lcom/android/email/service/MailService;->actionReschedule(Landroid/content/Context;)V

    goto :goto_0

    .line 88
    :cond_4
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.MEDIA_THUMBWORKER_SUSPEND"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 89
    sget-object v0, Lcom/android/email/service/BootReceiver;->TAG:Ljava/lang/String;

    const-string v1, "intent SUSPEND >>>"

    invoke-static {v0, v1}, Lcom/android/email/Email;->logv(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/android/email/service/BootReceiver;->mMediaIntentRecvTime:J

    .line 91
    iput-object p1, p0, Lcom/android/email/service/BootReceiver;->mContext:Landroid/content/Context;

    .line 92
    iget-object v0, p0, Lcom/android/email/service/BootReceiver;->mHandler:Lcom/android/email/service/BootReceiver$BootHandler;

    invoke-virtual {v0}, Lcom/android/email/service/BootReceiver$BootHandler;->removeCheckMediaRunning()V

    .line 93
    iget-object v0, p0, Lcom/android/email/service/BootReceiver;->mHandler:Lcom/android/email/service/BootReceiver$BootHandler;

    invoke-virtual {v0}, Lcom/android/email/service/BootReceiver$BootHandler;->startCheckMediaRunning()V

    .line 94
    invoke-static {p1}, Lcom/android/email/service/MailService;->actionCancel(Landroid/content/Context;)V

    goto :goto_0

    .line 96
    :cond_5
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.MEDIA_THUMBWORKER_RESUME"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 97
    sget-object v0, Lcom/android/email/service/BootReceiver;->TAG:Ljava/lang/String;

    const-string v1, "intent RESUME >>>"

    invoke-static {v0, v1}, Lcom/android/email/Email;->logv(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    iget-object v0, p0, Lcom/android/email/service/BootReceiver;->mHandler:Lcom/android/email/service/BootReceiver$BootHandler;

    invoke-virtual {v0}, Lcom/android/email/service/BootReceiver$BootHandler;->removeCheckMediaRunning()V

    .line 99
    invoke-static {p1}, Lcom/android/email/service/MailService;->actionReschedule(Landroid/content/Context;)V

    .line 100
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/email/service/BootReceiver;->mContext:Landroid/content/Context;

    goto :goto_0
.end method
