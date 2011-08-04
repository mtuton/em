.class public Lcom/android/exchange/security/ode/ODEService;
.super Landroid/app/Service;
.source "ODEService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/exchange/security/ode/ODEService$EncryptionThread;
    }
.end annotation


# static fields
.field private static DEBUG:Z

.field private static mStartProcs:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mEncryptionThread:Lcom/android/exchange/security/ode/ODEService$EncryptionThread;

.field private mStartReason:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 27
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "eng"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/android/exchange/security/ode/ODEService;->DEBUG:Z

    .line 44
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/exchange/security/ode/ODEService;->mStartProcs:Ljava/util/HashMap;

    .line 46
    sget-object v0, Lcom/android/exchange/security/ode/ODEService;->mStartProcs:Ljava/util/HashMap;

    const-string v1, "onPassword"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    sget-object v0, Lcom/android/exchange/security/ode/ODEService;->mStartProcs:Ljava/util/HashMap;

    const-string v1, "onPolicyChanged"

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    sget-object v0, Lcom/android/exchange/security/ode/ODEService;->mStartProcs:Ljava/util/HashMap;

    const-string v1, "encryptionDisable"

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    sget-object v0, Lcom/android/exchange/security/ode/ODEService;->mStartProcs:Ljava/util/HashMap;

    const-string v1, "accountProvision"

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    sget-object v0, Lcom/android/exchange/security/ode/ODEService;->mStartProcs:Ljava/util/HashMap;

    const-string v1, "recovery"

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 54
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/exchange/security/ode/ODEService;->mStartReason:I

    .line 55
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/exchange/security/ode/ODEService;->mEncryptionThread:Lcom/android/exchange/security/ode/ODEService$EncryptionThread;

    .line 243
    return-void
.end method

.method public static ODEErrorExist(Landroid/content/Context;)Z
    .locals 2
    .parameter "context"

    .prologue
    .line 232
    const-string v1, "ODEError"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 234
    .local v0, f:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 235
    const-string v1, "ODE Service Error exist"

    invoke-static {v1}, Lcom/android/exchange/security/ode/ODEService;->log(Ljava/lang/String;)V

    .line 236
    const/4 v1, 0x1

    .line 240
    :goto_0
    return v1

    .line 239
    :cond_0
    const-string v1, "ODE Service Error does not exist"

    invoke-static {v1}, Lcom/android/exchange/security/ode/ODEService;->log(Ljava/lang/String;)V

    .line 240
    const/4 v1, 0x0

    goto :goto_0
.end method

.method static synthetic access$002(Lcom/android/exchange/security/ode/ODEService;Lcom/android/exchange/security/ode/ODEService$EncryptionThread;)Lcom/android/exchange/security/ode/ODEService$EncryptionThread;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 20
    iput-object p1, p0, Lcom/android/exchange/security/ode/ODEService;->mEncryptionThread:Lcom/android/exchange/security/ode/ODEService$EncryptionThread;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/exchange/security/ode/ODEService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/android/exchange/security/ode/ODEService;->stopODEService()V

    return-void
.end method

.method public static clearODEError(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 221
    const-string v1, "ODEError"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 223
    .local v0, f:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 224
    const-string v1, " ODE Service Error exist. clearing !!!"

    invoke-static {v1}, Lcom/android/exchange/security/ode/ODEService;->log(Ljava/lang/String;)V

    .line 225
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 226
    const-string v1, " ODE Service Error cleared"

    invoke-static {v1}, Lcom/android/exchange/security/ode/ODEService;->log(Ljava/lang/String;)V

    .line 229
    :cond_0
    return-void
.end method

.method public static log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 200
    sget-boolean v0, Lcom/android/exchange/security/ode/ODEService;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 201
    const-string v0, "ODE"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    :cond_0
    return-void
.end method

.method public static setODEError(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 206
    const-string v2, "ODEError"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 209
    .local v1, f:Ljava/io/File;
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 210
    const-string v2, " ODE Service Error set"

    invoke-static {v2}, Lcom/android/exchange/security/ode/ODEService;->log(Ljava/lang/String;)V

    .line 218
    :goto_0
    return-void

    .line 212
    :cond_0
    const-string v2, "Unable to set ODE Service Error"

    invoke-static {v2}, Lcom/android/exchange/security/ode/ODEService;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 214
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 215
    .local v0, e:Ljava/io/IOException;
    const-string v2, "Error while setting ODE Service Error"

    invoke-static {v2}, Lcom/android/exchange/security/ode/ODEService;->log(Ljava/lang/String;)V

    .line 216
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private stopODEService()V
    .locals 1

    .prologue
    .line 150
    const-string v0, "Stopping the ODE service"

    invoke-static {v0}, Lcom/android/exchange/security/ode/ODEService;->log(Ljava/lang/String;)V

    .line 157
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 77
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 0

    .prologue
    .line 82
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 83
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 141
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 142
    const-string v0, "ODEService - destroyed"

    invoke-static {v0}, Lcom/android/exchange/security/ode/ODEService;->log(Ljava/lang/String;)V

    .line 143
    iget-object v0, p0, Lcom/android/exchange/security/ode/ODEService;->mEncryptionThread:Lcom/android/exchange/security/ode/ODEService$EncryptionThread;

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/android/exchange/security/ode/ODEService;->mEncryptionThread:Lcom/android/exchange/security/ode/ODEService$EncryptionThread;

    invoke-virtual {v0}, Lcom/android/exchange/security/ode/ODEService$EncryptionThread;->quit()Z

    .line 145
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/exchange/security/ode/ODEService;->mEncryptionThread:Lcom/android/exchange/security/ode/ODEService$EncryptionThread;

    .line 147
    :cond_0
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 5
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    .line 87
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v0

    .line 89
    .local v0, result:I
    if-eqz p1, :cond_3

    .line 90
    const-string v3, "startProc"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 92
    .local v2, startProc:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ODEService started with: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/exchange/security/ode/ODEService;->log(Ljava/lang/String;)V

    .line 94
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_2

    .line 95
    sget-object v3, Lcom/android/exchange/security/ode/ODEService;->mStartProcs:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 96
    sget-object v3, Lcom/android/exchange/security/ode/ODEService;->mStartProcs:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 97
    .local v1, start:I
    iput v1, p0, Lcom/android/exchange/security/ode/ODEService;->mStartReason:I

    .line 99
    packed-switch v1, :pswitch_data_0

    .line 118
    invoke-virtual {p0}, Lcom/android/exchange/security/ode/ODEService;->stopSelf()V

    .line 119
    const-string v3, "Stopping ODEService - startProc not found"

    invoke-static {v3}, Lcom/android/exchange/security/ode/ODEService;->log(Ljava/lang/String;)V

    .line 136
    .end local v1           #start:I
    .end local v2           #startProc:Ljava/lang/String;
    :goto_0
    return v0

    .line 106
    .restart local v1       #start:I
    .restart local v2       #startProc:Ljava/lang/String;
    :pswitch_0
    iget-object v3, p0, Lcom/android/exchange/security/ode/ODEService;->mEncryptionThread:Lcom/android/exchange/security/ode/ODEService$EncryptionThread;

    if-eqz v3, :cond_0

    .line 107
    iget-object v3, p0, Lcom/android/exchange/security/ode/ODEService;->mEncryptionThread:Lcom/android/exchange/security/ode/ODEService$EncryptionThread;

    invoke-virtual {v3}, Lcom/android/exchange/security/ode/ODEService$EncryptionThread;->quit()Z

    .line 113
    :cond_0
    new-instance v3, Lcom/android/exchange/security/ode/ODEService$EncryptionThread;

    const-string v4, "odeThread"

    invoke-direct {v3, p0, v4, p0}, Lcom/android/exchange/security/ode/ODEService$EncryptionThread;-><init>(Lcom/android/exchange/security/ode/ODEService;Ljava/lang/String;Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/exchange/security/ode/ODEService;->mEncryptionThread:Lcom/android/exchange/security/ode/ODEService$EncryptionThread;

    .line 114
    iget-object v3, p0, Lcom/android/exchange/security/ode/ODEService;->mEncryptionThread:Lcom/android/exchange/security/ode/ODEService$EncryptionThread;

    iget v4, p0, Lcom/android/exchange/security/ode/ODEService;->mStartReason:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/exchange/security/ode/ODEService$EncryptionThread;->execute(Ljava/lang/Integer;)V

    goto :goto_0

    .line 124
    .end local v1           #start:I
    :cond_1
    invoke-virtual {p0}, Lcom/android/exchange/security/ode/ODEService;->stopSelf()V

    .line 125
    const-string v3, "Stopping ODEService - Invalid startProc"

    invoke-static {v3}, Lcom/android/exchange/security/ode/ODEService;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 128
    :cond_2
    invoke-virtual {p0}, Lcom/android/exchange/security/ode/ODEService;->stopSelf()V

    .line 129
    const-string v3, "Stopping ODEService - no startProc"

    invoke-static {v3}, Lcom/android/exchange/security/ode/ODEService;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 132
    .end local v2           #startProc:Ljava/lang/String;
    :cond_3
    invoke-virtual {p0}, Lcom/android/exchange/security/ode/ODEService;->stopSelf()V

    .line 133
    const-string v3, "Stopping ODEService - no intent to start"

    invoke-static {v3}, Lcom/android/exchange/security/ode/ODEService;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 99
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
