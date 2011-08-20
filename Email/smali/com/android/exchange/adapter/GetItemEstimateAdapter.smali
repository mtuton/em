.class public Lcom/android/exchange/adapter/GetItemEstimateAdapter;
.super Lcom/android/exchange/adapter/AbstractCommandAdapter;
.source "GetItemEstimateAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/exchange/adapter/GetItemEstimateAdapter$GetItemEstimateParser;
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/android/email/provider/EmailContent$Mailbox;Lcom/android/exchange/EasSyncService;)V
    .locals 0
    .parameter "mailbox"
    .parameter "service"

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Lcom/android/exchange/adapter/AbstractCommandAdapter;-><init>(Lcom/android/email/provider/EmailContent$Mailbox;Lcom/android/exchange/EasSyncService;)V

    .line 22
    return-void
.end method

.method private getTypeName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 62
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    .line 63
    .local v0, type:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    iget v1, v1, Lcom/android/email/provider/EmailContent$Mailbox;->mType:I

    sparse-switch v1, :sswitch_data_0

    .line 81
    :goto_0
    return-object v0

    .line 69
    :sswitch_0
    const-string v0, "Email"

    .line 70
    goto :goto_0

    .line 72
    :sswitch_1
    const-string v0, "Contacts"

    .line 73
    goto :goto_0

    .line 75
    :sswitch_2
    const-string v0, "Calendar"

    .line 76
    goto :goto_0

    .line 78
    :sswitch_3
    const-string v0, "Tasks"

    goto :goto_0

    .line 63
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_0
        0x4 -> :sswitch_0
        0x5 -> :sswitch_0
        0x7 -> :sswitch_0
        0x41 -> :sswitch_2
        0x42 -> :sswitch_1
        0x43 -> :sswitch_3
    .end sparse-switch
.end method


# virtual methods
.method public callback(I)V
    .locals 0
    .parameter "status"

    .prologue
    .line 43
    return-void
.end method

.method public cleanup()V
    .locals 0

    .prologue
    .line 28
    return-void
.end method

.method public getCollectionName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCommandName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    const-string v0, "GetItemEstimate"

    return-object v0
.end method

.method public hasChangedItems()Z
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x1

    return v0
.end method

.method public isSyncable()Z
    .locals 1

    .prologue
    .line 124
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
    .line 55
    new-instance v0, Lcom/android/exchange/adapter/GetItemEstimateAdapter$GetItemEstimateParser;

    invoke-direct {v0, p0, p1, p0}, Lcom/android/exchange/adapter/GetItemEstimateAdapter$GetItemEstimateParser;-><init>(Lcom/android/exchange/adapter/GetItemEstimateAdapter;Ljava/io/InputStream;Lcom/android/exchange/adapter/GetItemEstimateAdapter;)V

    .line 56
    .local v0, p:Lcom/android/exchange/adapter/GetItemEstimateAdapter$GetItemEstimateParser;
    invoke-virtual {v0}, Lcom/android/exchange/adapter/GetItemEstimateAdapter$GetItemEstimateParser;->parse()Z

    move-result v1

    .line 57
    .local v1, result:Z
    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/android/exchange/adapter/GetItemEstimateAdapter$GetItemEstimateParser;->commit()V

    .line 58
    :cond_0
    return v1
.end method

.method public sendLocalChanges(Lcom/android/exchange/adapter/Serializer;)Z
    .locals 4
    .parameter "s"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x18

    .line 87
    if-nez p1, :cond_0

    const/4 v1, 0x0

    .line 118
    :goto_0
    return v1

    .line 89
    :cond_0
    const/16 v1, 0x185

    invoke-virtual {p1, v1}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v1

    const/16 v2, 0x187

    invoke-virtual {v1, v2}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v1

    const/16 v2, 0x188

    invoke-virtual {v1, v2}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    .line 93
    const/16 v1, 0xb

    iget-object v2, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    iget-object v2, v2, Lcom/android/email/provider/EmailContent$Mailbox;->mSyncKey:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 94
    const/16 v1, 0x18a

    iget-object v2, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    iget-object v2, v2, Lcom/android/email/provider/EmailContent$Mailbox;->mServerId:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 97
    invoke-direct {p0}, Lcom/android/exchange/adapter/GetItemEstimateAdapter;->getTypeName()Ljava/lang/String;

    move-result-object v0

    .line 98
    .local v0, className:Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 99
    const/16 v1, 0x17

    invoke-virtual {p1, v1}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    .line 101
    const/16 v1, 0x10

    invoke-virtual {p1, v1, v0}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 103
    const-string v1, "Email"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 104
    iget-object v1, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mService:Lcom/android/exchange/EasSyncService;

    invoke-virtual {v1}, Lcom/android/exchange/EasSyncService;->getEmailFilter()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v3, v1}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 113
    :cond_1
    :goto_1
    invoke-virtual {p1}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    .line 116
    :cond_2
    invoke-virtual {p1}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/exchange/adapter/Serializer;->done()V

    .line 118
    const/4 v1, 0x1

    goto :goto_0

    .line 105
    :cond_3
    const-string v1, "Calendar"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 106
    iget-object v1, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mService:Lcom/android/exchange/EasSyncService;

    invoke-virtual {v1}, Lcom/android/exchange/EasSyncService;->getCalendarFilterType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v3, v1}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    goto :goto_1

    .line 107
    :cond_4
    const-string v1, "Tasks"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1
.end method
