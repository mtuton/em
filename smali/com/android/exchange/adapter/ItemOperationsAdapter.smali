.class public Lcom/android/exchange/adapter/ItemOperationsAdapter;
.super Lcom/android/exchange/adapter/AbstractSyncAdapter;
.source "ItemOperationsAdapter.java"


# instance fields
.field public isMIMEDataRequested:Z


# direct methods
.method public constructor <init>(Lcom/android/email/provider/EmailContent$Mailbox;Lcom/android/exchange/EasSyncService;)V
    .locals 1
    .parameter "mailbox"
    .parameter "service"

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Lcom/android/exchange/adapter/AbstractSyncAdapter;-><init>(Lcom/android/email/provider/EmailContent$Mailbox;Lcom/android/exchange/EasSyncService;)V

    .line 14
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/exchange/adapter/ItemOperationsAdapter;->isMIMEDataRequested:Z

    .line 20
    return-void
.end method


# virtual methods
.method public cleanup()V
    .locals 0

    .prologue
    .line 26
    return-void
.end method

.method public getCollectionName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x0

    return-object v0
.end method

.method public isSyncable()Z
    .locals 1

    .prologue
    .line 51
    const/4 v0, 0x0

    return v0
.end method

.method public parse(Ljava/io/InputStream;)Z
    .locals 1
    .parameter "is"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 37
    const/4 v0, 0x0

    return v0
.end method

.method public sendLocalChanges(Lcom/android/exchange/adapter/Serializer;)Z
    .locals 1
    .parameter "s"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 43
    const/4 v0, 0x0

    return v0
.end method

.method public setMIMERequested(Z)V
    .locals 0
    .parameter "val"

    .prologue
    .line 57
    iput-boolean p1, p0, Lcom/android/exchange/adapter/ItemOperationsAdapter;->isMIMEDataRequested:Z

    .line 58
    return-void
.end method
