.class public Lcom/android/email/activity/setup/DeviceInformationTask;
.super Landroid/os/AsyncTask;
.source "DeviceInformationTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/activity/setup/DeviceInformationTask$statusCallBack;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mCallBacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/email/activity/setup/DeviceInformationTask$statusCallBack;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mDeviceInfo:Lcom/android/exchange/DeviceInformation;

.field private mSvc:Lcom/android/exchange/EasSyncService;


# direct methods
.method public constructor <init>(Lcom/android/exchange/DeviceInformation;)V
    .locals 2
    .parameter "dInfo"

    .prologue
    const/4 v1, 0x0

    .line 30
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 16
    const-string v0, "DeviceInformationTask"

    iput-object v0, p0, Lcom/android/email/activity/setup/DeviceInformationTask;->TAG:Ljava/lang/String;

    .line 18
    iput-object v1, p0, Lcom/android/email/activity/setup/DeviceInformationTask;->mSvc:Lcom/android/exchange/EasSyncService;

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/email/activity/setup/DeviceInformationTask;->mCallBacks:Ljava/util/ArrayList;

    .line 27
    iput-object v1, p0, Lcom/android/email/activity/setup/DeviceInformationTask;->mDeviceInfo:Lcom/android/exchange/DeviceInformation;

    .line 31
    iput-object p1, p0, Lcom/android/email/activity/setup/DeviceInformationTask;->mDeviceInfo:Lcom/android/exchange/DeviceInformation;

    .line 32
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 14
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/activity/setup/DeviceInformationTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 5
    .parameter "params"

    .prologue
    .line 55
    const/16 v3, 0x1388

    invoke-virtual {p0, v3}, Lcom/android/email/activity/setup/DeviceInformationTask;->updateStatus(I)V

    .line 57
    const/4 v2, 0x0

    .line 59
    .local v2, result:I
    iget-object v3, p0, Lcom/android/email/activity/setup/DeviceInformationTask;->mSvc:Lcom/android/exchange/EasSyncService;

    if-eqz v3, :cond_0

    .line 61
    :try_start_0
    iget-object v3, p0, Lcom/android/email/activity/setup/DeviceInformationTask;->mDeviceInfo:Lcom/android/exchange/DeviceInformation;

    invoke-virtual {v3}, Lcom/android/exchange/DeviceInformation;->buildCommand()Lcom/android/exchange/adapter/Serializer;

    move-result-object v0

    .line 62
    .local v0, deviceSerializer:Lcom/android/exchange/adapter/Serializer;
    if-eqz v0, :cond_1

    .line 63
    iget-object v3, p0, Lcom/android/email/activity/setup/DeviceInformationTask;->mSvc:Lcom/android/exchange/EasSyncService;

    iget-object v4, p0, Lcom/android/email/activity/setup/DeviceInformationTask;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4, v0}, Lcom/android/exchange/EasSyncService;->sendDeviceInformation(Landroid/content/Context;Lcom/android/exchange/adapter/Serializer;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    .line 75
    :goto_0
    invoke-virtual {p0, v2}, Lcom/android/email/activity/setup/DeviceInformationTask;->updateStatus(I)V

    .line 79
    .end local v0           #deviceSerializer:Lcom/android/exchange/adapter/Serializer;
    :cond_0
    :goto_1
    const/4 v3, 0x0

    return-object v3

    .line 66
    .restart local v0       #deviceSerializer:Lcom/android/exchange/adapter/Serializer;
    :cond_1
    :try_start_1
    const-string v3, "DeviceInformationTask"

    const-string v4, "deviceSerializer is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 68
    .end local v0           #deviceSerializer:Lcom/android/exchange/adapter/Serializer;
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 69
    .local v1, e:Ljava/lang/IllegalArgumentException;
    const/16 v2, 0x138a

    .line 70
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 75
    invoke-virtual {p0, v2}, Lcom/android/email/activity/setup/DeviceInformationTask;->updateStatus(I)V

    goto :goto_1

    .line 71
    .end local v1           #e:Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v3

    move-object v1, v3

    .line 72
    .local v1, e:Ljava/io/IOException;
    const/16 v2, 0x1389

    .line 73
    :try_start_3
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 75
    invoke-virtual {p0, v2}, Lcom/android/email/activity/setup/DeviceInformationTask;->updateStatus(I)V

    goto :goto_1

    .end local v1           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v3

    invoke-virtual {p0, v2}, Lcom/android/email/activity/setup/DeviceInformationTask;->updateStatus(I)V

    throw v3
.end method

.method public registerStatusCallBack(Lcom/android/email/activity/setup/DeviceInformationTask$statusCallBack;)V
    .locals 1
    .parameter "cb"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/email/activity/setup/DeviceInformationTask;->mCallBacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 40
    return-void
.end method

.method public setUpService(Landroid/content/Context;Lcom/android/exchange/EasSyncService;)V
    .locals 0
    .parameter "context"
    .parameter "svc"

    .prologue
    .line 43
    iput-object p2, p0, Lcom/android/email/activity/setup/DeviceInformationTask;->mSvc:Lcom/android/exchange/EasSyncService;

    .line 44
    iput-object p1, p0, Lcom/android/email/activity/setup/DeviceInformationTask;->mContext:Landroid/content/Context;

    .line 45
    return-void
.end method

.method public updateStatus(I)V
    .locals 3
    .parameter "status"

    .prologue
    .line 48
    iget-object v2, p0, Lcom/android/email/activity/setup/DeviceInformationTask;->mCallBacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/setup/DeviceInformationTask$statusCallBack;

    .line 49
    .local v0, cb:Lcom/android/email/activity/setup/DeviceInformationTask$statusCallBack;
    invoke-interface {v0, p1}, Lcom/android/email/activity/setup/DeviceInformationTask$statusCallBack;->status(I)V

    goto :goto_0

    .line 51
    .end local v0           #cb:Lcom/android/email/activity/setup/DeviceInformationTask$statusCallBack;
    :cond_0
    return-void
.end method
