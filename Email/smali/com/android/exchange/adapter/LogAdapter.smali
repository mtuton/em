.class public Lcom/android/exchange/adapter/LogAdapter;
.super Lcom/android/exchange/adapter/AbstractSyncAdapter;
.source "LogAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/exchange/adapter/LogAdapter$LogParser;
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/android/email/provider/EmailContent$Mailbox;Lcom/android/exchange/EasSyncService;)V
    .locals 0
    .parameter "mailbox"
    .parameter "service"

    .prologue
    .line 13
    invoke-direct {p0, p1, p2}, Lcom/android/exchange/adapter/AbstractSyncAdapter;-><init>(Lcom/android/email/provider/EmailContent$Mailbox;Lcom/android/exchange/EasSyncService;)V

    .line 14
    return-void
.end method


# virtual methods
.method public cleanup()V
    .locals 0

    .prologue
    .line 32
    return-void
.end method

.method public commit()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 35
    const/4 v0, 0x0

    return v0
.end method

.method public getCollectionName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    const/4 v0, 0x0

    return-object v0
.end method

.method public isSyncable()Z
    .locals 1

    .prologue
    .line 92
    const/4 v0, 0x0

    return v0
.end method

.method public parse(Ljava/io/InputStream;)Z
    .locals 2
    .parameter "is"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 18
    new-instance v0, Lcom/android/exchange/adapter/LogAdapter$LogParser;

    invoke-direct {v0, p0, p1, p0}, Lcom/android/exchange/adapter/LogAdapter$LogParser;-><init>(Lcom/android/exchange/adapter/LogAdapter;Ljava/io/InputStream;Lcom/android/exchange/adapter/AbstractSyncAdapter;)V

    .line 20
    .local v0, parser:Lcom/android/exchange/adapter/LogAdapter$LogParser;
    invoke-virtual {v0}, Lcom/android/exchange/adapter/LogAdapter$LogParser;->parse()Z

    move-result v1

    return v1
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
    .line 86
    const/4 v0, 0x0

    return v0
.end method
