.class public Lcom/android/exchange/adapter/ComposeMailAdapter;
.super Lcom/android/exchange/adapter/AbstractCommandAdapter;
.source "ComposeMailAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/exchange/adapter/ComposeMailAdapter$SmartReplyForwardParser;
    }
.end annotation


# instance fields
.field private final STATUS_DEVICE_NOT_PROVISIONED:I

.field private final STATUS_INVALID_POLICY_KEY:I

.field private final STATUS_POLICY_REFRESH:I

.field private final STATUS_SERVER_ERROR:I

.field private final STATUS_SUCCESS:I

.field private collectionId:Ljava/lang/String;

.field private httpCode:I

.field private isReply:Z

.field private isSaveInSentItems:Z

.field private isSmartSend:Z

.field private itemId:Ljava/lang/String;

.field private msgId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/email/provider/EmailContent$Mailbox;Lcom/android/exchange/EasSyncService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZ)V
    .locals 1
    .parameter "mailbox"
    .parameter "service"
    .parameter "msgID"
    .parameter "itemId"
    .parameter "collectionId"
    .parameter "isSaveInSentItems"
    .parameter "isSmartSend"
    .parameter "isReply"

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Lcom/android/exchange/adapter/AbstractCommandAdapter;-><init>(Lcom/android/email/provider/EmailContent$Mailbox;Lcom/android/exchange/EasSyncService;)V

    .line 28
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/exchange/adapter/ComposeMailAdapter;->STATUS_SUCCESS:I

    .line 29
    const/16 v0, 0x6e

    iput v0, p0, Lcom/android/exchange/adapter/ComposeMailAdapter;->STATUS_SERVER_ERROR:I

    .line 30
    const/16 v0, 0x8e

    iput v0, p0, Lcom/android/exchange/adapter/ComposeMailAdapter;->STATUS_DEVICE_NOT_PROVISIONED:I

    .line 31
    const/16 v0, 0x8f

    iput v0, p0, Lcom/android/exchange/adapter/ComposeMailAdapter;->STATUS_POLICY_REFRESH:I

    .line 32
    const/16 v0, 0x90

    iput v0, p0, Lcom/android/exchange/adapter/ComposeMailAdapter;->STATUS_INVALID_POLICY_KEY:I

    .line 42
    const/16 v0, 0xc8

    iput v0, p0, Lcom/android/exchange/adapter/ComposeMailAdapter;->httpCode:I

    .line 48
    iput-object p3, p0, Lcom/android/exchange/adapter/ComposeMailAdapter;->msgId:Ljava/lang/String;

    .line 49
    iput-object p4, p0, Lcom/android/exchange/adapter/ComposeMailAdapter;->itemId:Ljava/lang/String;

    .line 50
    iput-object p5, p0, Lcom/android/exchange/adapter/ComposeMailAdapter;->collectionId:Ljava/lang/String;

    .line 51
    iput-boolean p6, p0, Lcom/android/exchange/adapter/ComposeMailAdapter;->isSaveInSentItems:Z

    .line 52
    iput-boolean p7, p0, Lcom/android/exchange/adapter/ComposeMailAdapter;->isSmartSend:Z

    .line 53
    iput-boolean p8, p0, Lcom/android/exchange/adapter/ComposeMailAdapter;->isReply:Z

    .line 54
    return-void
.end method

.method static synthetic access$000(Lcom/android/exchange/adapter/ComposeMailAdapter;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-boolean v0, p0, Lcom/android/exchange/adapter/ComposeMailAdapter;->isSmartSend:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/exchange/adapter/ComposeMailAdapter;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-boolean v0, p0, Lcom/android/exchange/adapter/ComposeMailAdapter;->isReply:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/exchange/adapter/ComposeMailAdapter;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget v0, p0, Lcom/android/exchange/adapter/ComposeMailAdapter;->httpCode:I

    return v0
.end method

.method static synthetic access$202(Lcom/android/exchange/adapter/ComposeMailAdapter;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 24
    iput p1, p0, Lcom/android/exchange/adapter/ComposeMailAdapter;->httpCode:I

    return p1
.end method

.method public static log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 203
    sget-boolean v0, Lcom/android/exchange/Eas;->USER_LOG:Z

    if-eqz v0, :cond_0

    .line 204
    const-string v0, "SmartRF"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    :cond_0
    return-void
.end method


# virtual methods
.method public callback(I)V
    .locals 0
    .parameter "status"

    .prologue
    .line 125
    return-void
.end method

.method public cleanup()V
    .locals 0

    .prologue
    .line 113
    return-void
.end method

.method public getCollectionName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCommandName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 128
    const-string v0, "SmartReply/SmartForward"

    return-object v0
.end method

.method public getHttpCode()I
    .locals 1

    .prologue
    .line 99
    iget v0, p0, Lcom/android/exchange/adapter/ComposeMailAdapter;->httpCode:I

    return v0
.end method

.method public hasChangedItems()Z
    .locals 1

    .prologue
    .line 120
    const/4 v0, 0x1

    return v0
.end method

.method public isSyncable()Z
    .locals 1

    .prologue
    .line 57
    const/4 v0, 0x0

    return v0
.end method

.method public parse(Ljava/io/InputStream;)Z
    .locals 2
    .parameter "is"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/email/mail/DeviceAccessException;
        }
    .end annotation

    .prologue
    .line 93
    const-string v1, "Entering parse"

    invoke-static {v1}, Lcom/android/exchange/adapter/ComposeMailAdapter;->log(Ljava/lang/String;)V

    .line 94
    new-instance v0, Lcom/android/exchange/adapter/ComposeMailAdapter$SmartReplyForwardParser;

    invoke-direct {v0, p0, p1, p0}, Lcom/android/exchange/adapter/ComposeMailAdapter$SmartReplyForwardParser;-><init>(Lcom/android/exchange/adapter/ComposeMailAdapter;Ljava/io/InputStream;Lcom/android/exchange/adapter/AbstractCommandAdapter;)V

    .line 95
    .local v0, parser:Lcom/android/exchange/adapter/ComposeMailAdapter$SmartReplyForwardParser;
    invoke-virtual {v0}, Lcom/android/exchange/adapter/ComposeMailAdapter$SmartReplyForwardParser;->parse()Z

    move-result v1

    return v1
.end method

.method public sendLocalChanges(Lcom/android/exchange/adapter/Serializer;)Z
    .locals 5
    .parameter "s"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-string v4, ""

    .line 63
    const-string v1, "Enter sendLocalChanges"

    invoke-static {v1}, Lcom/android/exchange/adapter/ComposeMailAdapter;->log(Ljava/lang/String;)V

    .line 64
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "msgId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/exchange/adapter/ComposeMailAdapter;->msgId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/exchange/adapter/ComposeMailAdapter;->log(Ljava/lang/String;)V

    .line 65
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "itemId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/exchange/adapter/ComposeMailAdapter;->itemId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/exchange/adapter/ComposeMailAdapter;->log(Ljava/lang/String;)V

    .line 66
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "collectionId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/exchange/adapter/ComposeMailAdapter;->collectionId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/exchange/adapter/ComposeMailAdapter;->log(Ljava/lang/String;)V

    .line 68
    iget-object v1, p0, Lcom/android/exchange/adapter/ComposeMailAdapter;->msgId:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 70
    iget-boolean v1, p0, Lcom/android/exchange/adapter/ComposeMailAdapter;->isSmartSend:Z

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/android/exchange/adapter/ComposeMailAdapter;->isReply:Z

    if-eqz v1, :cond_2

    const/16 v1, 0x547

    move v0, v1

    .line 74
    .local v0, startTag:I
    :goto_0
    invoke-virtual {p1, v0}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v1

    const/16 v2, 0x551

    iget-object v3, p0, Lcom/android/exchange/adapter/ComposeMailAdapter;->msgId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 75
    iget-boolean v1, p0, Lcom/android/exchange/adapter/ComposeMailAdapter;->isSaveInSentItems:Z

    if-eqz v1, :cond_0

    .line 76
    const/16 v1, 0x548

    const-string v2, ""

    invoke-virtual {p1, v1, v4}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 78
    :cond_0
    iget-boolean v1, p0, Lcom/android/exchange/adapter/ComposeMailAdapter;->isSmartSend:Z

    if-eqz v1, :cond_1

    .line 79
    const/16 v1, 0x54b

    invoke-virtual {p1, v1}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v1

    const/16 v2, 0x54c

    iget-object v3, p0, Lcom/android/exchange/adapter/ComposeMailAdapter;->collectionId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    move-result-object v1

    const/16 v2, 0x54d

    iget-object v3, p0, Lcom/android/exchange/adapter/ComposeMailAdapter;->itemId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    .line 83
    :cond_1
    const/16 v1, 0x550

    const-string v2, ""

    invoke-virtual {p1, v1, v4}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    .line 84
    const-string v1, "Exit 0 sendLocalChanges"

    invoke-static {v1}, Lcom/android/exchange/adapter/ComposeMailAdapter;->log(Ljava/lang/String;)V

    .line 85
    const/4 v1, 0x1

    .line 88
    .end local v0           #startTag:I
    :goto_1
    return v1

    .line 70
    :cond_2
    const/16 v1, 0x546

    move v0, v1

    goto :goto_0

    :cond_3
    const/16 v1, 0x545

    move v0, v1

    goto :goto_0

    .line 87
    :cond_4
    const-string v1, "Exit 1 sendLocalChanges"

    invoke-static {v1}, Lcom/android/exchange/adapter/ComposeMailAdapter;->log(Ljava/lang/String;)V

    .line 88
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public setHttpCode(I)V
    .locals 0
    .parameter "httpCode"

    .prologue
    .line 103
    iput p1, p0, Lcom/android/exchange/adapter/ComposeMailAdapter;->httpCode:I

    .line 104
    return-void
.end method
