.class Lcom/android/exchange/security/ode/ODEService$EncryptionThread;
.super Landroid/os/HandlerThread;
.source "ODEService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exchange/security/ode/ODEService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EncryptionThread"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHandler:Lcom/android/exchange/security/ode/ODEHandler;

.field final synthetic this$0:Lcom/android/exchange/security/ode/ODEService;


# direct methods
.method public constructor <init>(Lcom/android/exchange/security/ode/ODEService;Ljava/lang/String;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter "name"
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 248
    iput-object p1, p0, Lcom/android/exchange/security/ode/ODEService$EncryptionThread;->this$0:Lcom/android/exchange/security/ode/ODEService;

    .line 249
    invoke-direct {p0, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 245
    iput-object v0, p0, Lcom/android/exchange/security/ode/ODEService$EncryptionThread;->mHandler:Lcom/android/exchange/security/ode/ODEHandler;

    .line 246
    iput-object v0, p0, Lcom/android/exchange/security/ode/ODEService$EncryptionThread;->mContext:Landroid/content/Context;

    .line 250
    iput-object p3, p0, Lcom/android/exchange/security/ode/ODEService$EncryptionThread;->mContext:Landroid/content/Context;

    .line 251
    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/Integer;)V
    .locals 4
    .parameter "message"

    .prologue
    .line 255
    :try_start_0
    invoke-virtual {p0}, Lcom/android/exchange/security/ode/ODEService$EncryptionThread;->isAlive()Z

    move-result v1

    if-nez v1, :cond_0

    .line 256
    invoke-virtual {p0}, Lcom/android/exchange/security/ode/ODEService$EncryptionThread;->start()V

    .line 257
    :cond_0
    invoke-virtual {p0}, Lcom/android/exchange/security/ode/ODEService$EncryptionThread;->isAlive()Z
    :try_end_0
    .catch Ljava/lang/IllegalThreadStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-nez v1, :cond_1

    .line 278
    :goto_0
    return-void

    .line 260
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 261
    .local v0, e:Ljava/lang/IllegalThreadStateException;
    const-string v1, "thread was already started"

    invoke-static {v1}, Lcom/android/exchange/security/ode/ODEService;->log(Ljava/lang/String;)V

    .line 264
    .end local v0           #e:Ljava/lang/IllegalThreadStateException;
    :cond_1
    iget-object v1, p0, Lcom/android/exchange/security/ode/ODEService$EncryptionThread;->mHandler:Lcom/android/exchange/security/ode/ODEHandler;

    if-nez v1, :cond_2

    .line 265
    new-instance v1, Lcom/android/exchange/security/ode/ODEHandler;

    invoke-virtual {p0}, Lcom/android/exchange/security/ode/ODEService$EncryptionThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    iget-object v3, p0, Lcom/android/exchange/security/ode/ODEService$EncryptionThread;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v3}, Lcom/android/exchange/security/ode/ODEHandler;-><init>(Landroid/os/Looper;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/exchange/security/ode/ODEService$EncryptionThread;->mHandler:Lcom/android/exchange/security/ode/ODEHandler;

    .line 266
    const-string v1, "created new Handler"

    invoke-static {v1}, Lcom/android/exchange/security/ode/ODEService;->log(Ljava/lang/String;)V

    .line 267
    iget-object v1, p0, Lcom/android/exchange/security/ode/ODEService$EncryptionThread;->mHandler:Lcom/android/exchange/security/ode/ODEHandler;

    if-nez v1, :cond_3

    .line 268
    const-string v1, "unable to start update thread"

    invoke-static {v1}, Lcom/android/exchange/security/ode/ODEService;->log(Ljava/lang/String;)V

    .line 269
    invoke-virtual {p0}, Lcom/android/exchange/security/ode/ODEService$EncryptionThread;->quit()Z

    goto :goto_0

    .line 274
    :cond_2
    const-string v1, "reused existing Handler"

    invoke-static {v1}, Lcom/android/exchange/security/ode/ODEService;->log(Ljava/lang/String;)V

    .line 277
    :cond_3
    iget-object v1, p0, Lcom/android/exchange/security/ode/ODEService$EncryptionThread;->mHandler:Lcom/android/exchange/security/ode/ODEHandler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, p1}, Lcom/android/exchange/security/ode/ODEHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public quit()Z
    .locals 3

    .prologue
    .line 282
    invoke-super {p0}, Landroid/os/HandlerThread;->quit()Z

    move-result v0

    .line 283
    .local v0, result:Z
    iget-object v1, p0, Lcom/android/exchange/security/ode/ODEService$EncryptionThread;->this$0:Lcom/android/exchange/security/ode/ODEService;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/exchange/security/ode/ODEService;->access$002(Lcom/android/exchange/security/ode/ODEService;Lcom/android/exchange/security/ode/ODEService$EncryptionThread;)Lcom/android/exchange/security/ode/ODEService$EncryptionThread;

    .line 285
    iget-object v1, p0, Lcom/android/exchange/security/ode/ODEService$EncryptionThread;->this$0:Lcom/android/exchange/security/ode/ODEService;

    invoke-static {v1}, Lcom/android/exchange/security/ode/ODEService;->access$100(Lcom/android/exchange/security/ode/ODEService;)V

    .line 287
    return v0
.end method
