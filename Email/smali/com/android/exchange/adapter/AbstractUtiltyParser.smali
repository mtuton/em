.class public abstract Lcom/android/exchange/adapter/AbstractUtiltyParser;
.super Lcom/android/exchange/adapter/Parser;
.source "AbstractUtiltyParser.java"


# instance fields
.field private mProvisioningRequired:Z


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/android/exchange/adapter/Parser;-><init>(Ljava/io/InputStream;)V

    .line 18
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/exchange/adapter/AbstractUtiltyParser;->mProvisioningRequired:Z

    .line 22
    return-void
.end method


# virtual methods
.method public isDeviceAccessDenied(I)Z
    .locals 2
    .parameter "status"

    .prologue
    .line 25
    const/4 v0, 0x0

    .line 26
    .local v0, deviceAccessDenined:Z
    const/16 v1, 0x81

    if-ne p1, v1, :cond_0

    .line 27
    const/4 v0, 0x1

    .line 29
    :cond_0
    return v0
.end method

.method public isProvisioningStatus(I)Z
    .locals 1
    .parameter "status"

    .prologue
    const/4 v0, 0x1

    .line 35
    packed-switch p1, :pswitch_data_0

    .line 54
    :goto_0
    iget-boolean v0, p0, Lcom/android/exchange/adapter/AbstractUtiltyParser;->mProvisioningRequired:Z

    return v0

    .line 41
    :pswitch_0
    iput-boolean v0, p0, Lcom/android/exchange/adapter/AbstractUtiltyParser;->mProvisioningRequired:Z

    goto :goto_0

    .line 48
    :pswitch_1
    iput-boolean v0, p0, Lcom/android/exchange/adapter/AbstractUtiltyParser;->mProvisioningRequired:Z

    goto :goto_0

    .line 35
    nop

    :pswitch_data_0
    .packed-switch 0x8b
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
