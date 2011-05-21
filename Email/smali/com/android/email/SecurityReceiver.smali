.class public Lcom/android/email/SecurityReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SecurityReceiver.java"


# static fields
.field public static final ACTION_PASSWORD_RECOVERY:Ljava/lang/String; = "com.android.security.intent.action.PASSWORD_RECOVERY"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mController:Lcom/android/email/Controller;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-class v0, Lcom/android/email/SecurityReceiver;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/email/SecurityReceiver;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private handlePasswordRecovery()V
    .locals 5

    .prologue
    .line 48
    sget-object v2, Lcom/android/email/SecurityReceiver;->TAG:Ljava/lang/String;

    const-string v3, "handlePasswordRecovery"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v2, p0, Lcom/android/email/SecurityReceiver;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 50
    .local v0, lockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->getRecoveryPassword()Ljava/lang/String;

    move-result-object v1

    .line 51
    .local v1, recoveryPassword:Ljava/lang/String;
    const-string v2, "Email"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Recovery password created: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    iget-object v2, p0, Lcom/android/email/SecurityReceiver;->mController:Lcom/android/email/Controller;

    invoke-virtual {v2, v1}, Lcom/android/email/Controller;->sendRecoveryPassword(Ljava/lang/String;)V

    .line 53
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 30
    sget-object v1, Lcom/android/email/SecurityReceiver;->TAG:Ljava/lang/String;

    const-string v2, "onReceive"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    iput-object p1, p0, Lcom/android/email/SecurityReceiver;->mContext:Landroid/content/Context;

    .line 34
    invoke-static {p1}, Lcom/android/email/Controller;->getInstance(Landroid/content/Context;)Lcom/android/email/Controller;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/SecurityReceiver;->mController:Lcom/android/email/Controller;

    .line 36
    if-eqz p2, :cond_0

    .line 37
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 38
    .local v0, action:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 39
    const-string v1, "com.android.security.intent.action.PASSWORD_RECOVERY"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 40
    invoke-direct {p0}, Lcom/android/email/SecurityReceiver;->handlePasswordRecovery()V

    .line 45
    .end local v0           #action:Ljava/lang/String;
    :cond_0
    return-void
.end method
