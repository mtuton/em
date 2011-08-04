.class Lcom/android/email/mail/store/ImapStore$ImapConnection;
.super Ljava/lang/Object;
.source "ImapStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/mail/store/ImapStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ImapConnection"
.end annotation


# instance fields
.field private final mDiscourse:Lcom/android/email/mail/transport/DiscourseLogger;

.field private mParser:Lcom/android/email/mail/store/imap/ImapResponseParser;

.field private mTransport:Lcom/android/email/mail/Transport;

.field final synthetic this$0:Lcom/android/email/mail/store/ImapStore;


# direct methods
.method constructor <init>(Lcom/android/email/mail/store/ImapStore;)V
    .locals 2
    .parameter

    .prologue
    .line 1404
    iput-object p1, p0, Lcom/android/email/mail/store/ImapStore$ImapConnection;->this$0:Lcom/android/email/mail/store/ImapStore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1410
    new-instance v0, Lcom/android/email/mail/transport/DiscourseLogger;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Lcom/android/email/mail/transport/DiscourseLogger;-><init>(I)V

    iput-object v0, p0, Lcom/android/email/mail/store/ImapStore$ImapConnection;->mDiscourse:Lcom/android/email/mail/transport/DiscourseLogger;

    return-void
.end method

.method static synthetic access$100(Lcom/android/email/mail/store/ImapStore$ImapConnection;)Lcom/android/email/mail/Transport;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1404
    iget-object v0, p0, Lcom/android/email/mail/store/ImapStore$ImapConnection;->mTransport:Lcom/android/email/mail/Transport;

    return-object v0
.end method

.method private createParser()V
    .locals 3

    .prologue
    .line 1529
    invoke-virtual {p0}, Lcom/android/email/mail/store/ImapStore$ImapConnection;->destroyResponses()V

    .line 1530
    new-instance v0, Lcom/android/email/mail/store/imap/ImapResponseParser;

    iget-object v1, p0, Lcom/android/email/mail/store/ImapStore$ImapConnection;->mTransport:Lcom/android/email/mail/Transport;

    invoke-interface {v1}, Lcom/android/email/mail/Transport;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    iget-object v2, p0, Lcom/android/email/mail/store/ImapStore$ImapConnection;->mDiscourse:Lcom/android/email/mail/transport/DiscourseLogger;

    invoke-direct {v0, v1, v2}, Lcom/android/email/mail/store/imap/ImapResponseParser;-><init>(Ljava/io/InputStream;Lcom/android/email/mail/transport/DiscourseLogger;)V

    iput-object v0, p0, Lcom/android/email/mail/store/ImapStore$ImapConnection;->mParser:Lcom/android/email/mail/store/imap/ImapResponseParser;

    .line 1531
    return-void
.end method

.method private queryCapabilities()Lcom/android/email/mail/store/imap/ImapResponse;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/email/mail/MessagingException;
        }
    .end annotation

    .prologue
    const-string v5, "CAPABILITY"

    .line 1592
    const/4 v0, 0x0

    .line 1593
    .local v0, capabilityResponse:Lcom/android/email/mail/store/imap/ImapResponse;
    const-string v3, "CAPABILITY"

    invoke-virtual {p0, v5}, Lcom/android/email/mail/store/ImapStore$ImapConnection;->executeSimpleCommand(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/email/mail/store/imap/ImapResponse;

    .line 1594
    .local v2, r:Lcom/android/email/mail/store/imap/ImapResponse;
    const/4 v3, 0x0

    const-string v4, "CAPABILITY"

    invoke-virtual {v2, v3, v5}, Lcom/android/email/mail/store/imap/ImapResponse;->is(ILjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1595
    move-object v0, v2

    .line 1599
    .end local v2           #r:Lcom/android/email/mail/store/imap/ImapResponse;
    :cond_1
    if-nez v0, :cond_2

    .line 1600
    new-instance v3, Lcom/android/email/mail/MessagingException;

    const-string v4, "Invalid CAPABILITY response received"

    invoke-direct {v3, v4}, Lcom/android/email/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1602
    :cond_2
    return-object v0
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 1515
    iget-object v0, p0, Lcom/android/email/mail/store/ImapStore$ImapConnection;->mTransport:Lcom/android/email/mail/Transport;

    if-eqz v0, :cond_0

    .line 1516
    iget-object v0, p0, Lcom/android/email/mail/store/ImapStore$ImapConnection;->mTransport:Lcom/android/email/mail/Transport;

    invoke-interface {v0}, Lcom/android/email/mail/Transport;->close()V

    .line 1517
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/email/mail/store/ImapStore$ImapConnection;->mTransport:Lcom/android/email/mail/Transport;

    .line 1519
    :cond_0
    return-void
.end method

.method public destroyResponses()V
    .locals 1

    .prologue
    .line 1534
    iget-object v0, p0, Lcom/android/email/mail/store/ImapStore$ImapConnection;->mParser:Lcom/android/email/mail/store/imap/ImapResponseParser;

    if-eqz v0, :cond_0

    .line 1535
    iget-object v0, p0, Lcom/android/email/mail/store/ImapStore$ImapConnection;->mParser:Lcom/android/email/mail/store/imap/ImapResponseParser;

    invoke-virtual {v0}, Lcom/android/email/mail/store/imap/ImapResponseParser;->destroyResponses()V

    .line 1537
    :cond_0
    return-void
.end method

.method public executeSimpleCommand(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .parameter "command"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/email/mail/store/imap/ImapResponse;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/email/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1567
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/email/mail/store/ImapStore$ImapConnection;->executeSimpleCommand(Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public executeSimpleCommand(Ljava/lang/String;Z)Ljava/util/List;
    .locals 6
    .parameter "command"
    .parameter "sensitive"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Lcom/android/email/mail/store/imap/ImapResponse;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/email/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1572
    invoke-virtual {p0, p1, p2}, Lcom/android/email/mail/store/ImapStore$ImapConnection;->sendCommand(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    .line 1573
    .local v3, tag:Ljava/lang/String;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1576
    .local v2, responses:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/email/mail/store/imap/ImapResponse;>;"
    :cond_0
    iget-object v5, p0, Lcom/android/email/mail/store/ImapStore$ImapConnection;->mParser:Lcom/android/email/mail/store/imap/ImapResponseParser;

    invoke-virtual {v5}, Lcom/android/email/mail/store/imap/ImapResponseParser;->readResponse()Lcom/android/email/mail/store/imap/ImapResponse;

    move-result-object v1

    .line 1577
    .local v1, response:Lcom/android/email/mail/store/imap/ImapResponse;
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1578
    invoke-virtual {v1}, Lcom/android/email/mail/store/imap/ImapResponse;->isTagged()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1579
    invoke-virtual {v1}, Lcom/android/email/mail/store/imap/ImapResponse;->isOk()Z

    move-result v5

    if-nez v5, :cond_1

    .line 1580
    invoke-virtual {v1}, Lcom/android/email/mail/store/imap/ImapResponse;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1581
    .local v4, toString:Ljava/lang/String;
    invoke-virtual {v1}, Lcom/android/email/mail/store/imap/ImapResponse;->getAlertTextOrEmpty()Lcom/android/email/mail/store/imap/ImapString;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/email/mail/store/imap/ImapString;->getString()Ljava/lang/String;

    move-result-object v0

    .line 1582
    .local v0, alert:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/email/mail/store/ImapStore$ImapConnection;->destroyResponses()V

    .line 1583
    new-instance v5, Lcom/android/email/mail/store/ImapStore$ImapException;

    invoke-direct {v5, v4, v0}, Lcom/android/email/mail/store/ImapStore$ImapException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v5

    .line 1585
    .end local v0           #alert:Ljava/lang/String;
    .end local v4           #toString:Ljava/lang/String;
    :cond_1
    return-object v2
.end method

.method isTransportOpenForTest()Z
    .locals 1

    .prologue
    .line 1540
    iget-object v0, p0, Lcom/android/email/mail/store/ImapStore$ImapConnection;->mTransport:Lcom/android/email/mail/Transport;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/email/mail/store/ImapStore$ImapConnection;->mTransport:Lcom/android/email/mail/Transport;

    invoke-interface {v0}, Lcom/android/email/mail/Transport;->isOpen()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public logLastDiscourse()V
    .locals 1

    .prologue
    .line 1607
    iget-object v0, p0, Lcom/android/email/mail/store/ImapStore$ImapConnection;->mDiscourse:Lcom/android/email/mail/transport/DiscourseLogger;

    invoke-virtual {v0}, Lcom/android/email/mail/transport/DiscourseLogger;->logLastDiscourse()V

    .line 1608
    return-void
.end method

.method public open()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/email/mail/MessagingException;
        }
    .end annotation

    .prologue
    const-string v6, "STARTTLS"

    const-string v6, "Email"

    .line 1413
    iget-object v6, p0, Lcom/android/email/mail/store/ImapStore$ImapConnection;->mTransport:Lcom/android/email/mail/Transport;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/email/mail/store/ImapStore$ImapConnection;->mTransport:Lcom/android/email/mail/Transport;

    invoke-interface {v6}, Lcom/android/email/mail/Transport;->isOpen()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1512
    :goto_0
    return-void

    .line 1419
    :cond_0
    :try_start_0
    iget-object v6, p0, Lcom/android/email/mail/store/ImapStore$ImapConnection;->mTransport:Lcom/android/email/mail/Transport;

    if-nez v6, :cond_1

    .line 1420
    iget-object v6, p0, Lcom/android/email/mail/store/ImapStore$ImapConnection;->this$0:Lcom/android/email/mail/store/ImapStore;

    invoke-static {v6}, Lcom/android/email/mail/store/ImapStore;->access$200(Lcom/android/email/mail/store/ImapStore;)Lcom/android/email/mail/Transport;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/email/mail/Transport;->newInstanceWithConfiguration()Lcom/android/email/mail/Transport;

    move-result-object v6

    iput-object v6, p0, Lcom/android/email/mail/store/ImapStore$ImapConnection;->mTransport:Lcom/android/email/mail/Transport;

    .line 1423
    :cond_1
    iget-object v6, p0, Lcom/android/email/mail/store/ImapStore$ImapConnection;->mTransport:Lcom/android/email/mail/Transport;

    invoke-interface {v6}, Lcom/android/email/mail/Transport;->open()V

    .line 1424
    iget-object v6, p0, Lcom/android/email/mail/store/ImapStore$ImapConnection;->mTransport:Lcom/android/email/mail/Transport;

    const v7, 0xea60

    invoke-interface {v6, v7}, Lcom/android/email/mail/Transport;->setSoTimeout(I)V

    .line 1426
    invoke-direct {p0}, Lcom/android/email/mail/store/ImapStore$ImapConnection;->createParser()V

    .line 1429
    iget-object v6, p0, Lcom/android/email/mail/store/ImapStore$ImapConnection;->mParser:Lcom/android/email/mail/store/imap/ImapResponseParser;

    invoke-virtual {v6}, Lcom/android/email/mail/store/imap/ImapResponseParser;->readResponse()Lcom/android/email/mail/store/imap/ImapResponse;

    .line 1432
    invoke-direct {p0}, Lcom/android/email/mail/store/ImapStore$ImapConnection;->queryCapabilities()Lcom/android/email/mail/store/imap/ImapResponse;

    move-result-object v0

    .line 1435
    .local v0, capabilityResponse:Lcom/android/email/mail/store/imap/ImapResponse;
    iget-object v6, p0, Lcom/android/email/mail/store/ImapStore$ImapConnection;->mTransport:Lcom/android/email/mail/Transport;

    invoke-interface {v6}, Lcom/android/email/mail/Transport;->canTryTlsSecurity()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1436
    const-string v6, "STARTTLS"

    invoke-virtual {v0, v6}, Lcom/android/email/mail/store/imap/ImapResponse;->contains(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1438
    const-string v6, "STARTTLS"

    invoke-virtual {p0, v6}, Lcom/android/email/mail/store/ImapStore$ImapConnection;->executeSimpleCommand(Ljava/lang/String;)Ljava/util/List;

    .line 1440
    iget-object v6, p0, Lcom/android/email/mail/store/ImapStore$ImapConnection;->mTransport:Lcom/android/email/mail/Transport;

    invoke-interface {v6}, Lcom/android/email/mail/Transport;->reopenTls()V

    .line 1441
    iget-object v6, p0, Lcom/android/email/mail/store/ImapStore$ImapConnection;->mTransport:Lcom/android/email/mail/Transport;

    const v7, 0xea60

    invoke-interface {v6, v7}, Lcom/android/email/mail/Transport;->setSoTimeout(I)V

    .line 1442
    invoke-direct {p0}, Lcom/android/email/mail/store/ImapStore$ImapConnection;->createParser()V

    .line 1444
    invoke-direct {p0}, Lcom/android/email/mail/store/ImapStore$ImapConnection;->queryCapabilities()Lcom/android/email/mail/store/imap/ImapResponse;

    move-result-object v0

    .line 1454
    :cond_2
    const-string v6, "ID"

    invoke-virtual {v0, v6}, Lcom/android/email/mail/store/imap/ImapResponse;->contains(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1456
    iget-object v6, p0, Lcom/android/email/mail/store/ImapStore$ImapConnection;->this$0:Lcom/android/email/mail/store/ImapStore;

    invoke-static {v6}, Lcom/android/email/mail/store/ImapStore;->access$300(Lcom/android/email/mail/store/ImapStore;)Landroid/content/Context;

    move-result-object v6

    iget-object v7, p0, Lcom/android/email/mail/store/ImapStore$ImapConnection;->this$0:Lcom/android/email/mail/store/ImapStore;

    invoke-static {v7}, Lcom/android/email/mail/store/ImapStore;->access$400(Lcom/android/email/mail/store/ImapStore;)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/android/email/mail/store/ImapStore$ImapConnection;->this$0:Lcom/android/email/mail/store/ImapStore;

    invoke-static {v8}, Lcom/android/email/mail/store/ImapStore;->access$200(Lcom/android/email/mail/store/ImapStore;)Lcom/android/email/mail/Transport;

    move-result-object v8

    invoke-interface {v8}, Lcom/android/email/mail/Transport;->getHost()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v7, v8, v0}, Lcom/android/email/mail/store/ImapStore;->getImapId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/android/email/mail/store/imap/ImapResponse;)Ljava/lang/String;

    move-result-object v4

    .line 1458
    .local v4, mUserAgent:Ljava/lang/String;
    if-eqz v4, :cond_3

    .line 1459
    iget-object v6, p0, Lcom/android/email/mail/store/ImapStore$ImapConnection;->this$0:Lcom/android/email/mail/store/ImapStore;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ID ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/email/mail/store/ImapStore;->access$502(Lcom/android/email/mail/store/ImapStore;Ljava/lang/String;)Ljava/lang/String;

    .line 1466
    :cond_3
    iget-object v6, p0, Lcom/android/email/mail/store/ImapStore$ImapConnection;->this$0:Lcom/android/email/mail/store/ImapStore;

    invoke-static {v6}, Lcom/android/email/mail/store/ImapStore;->access$500(Lcom/android/email/mail/store/ImapStore;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljavax/net/ssl/SSLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v6

    if-eqz v6, :cond_4

    .line 1468
    :try_start_1
    iget-object v6, p0, Lcom/android/email/mail/store/ImapStore$ImapConnection;->this$0:Lcom/android/email/mail/store/ImapStore;

    invoke-static {v6}, Lcom/android/email/mail/store/ImapStore;->access$500(Lcom/android/email/mail/store/ImapStore;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/email/mail/store/ImapStore$ImapConnection;->executeSimpleCommand(Ljava/lang/String;)Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Lcom/android/email/mail/store/ImapStore$ImapException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljavax/net/ssl/SSLException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1486
    .end local v4           #mUserAgent:Ljava/lang/String;
    :cond_4
    :goto_1
    :try_start_2
    iget-object v6, p0, Lcom/android/email/mail/store/ImapStore$ImapConnection;->this$0:Lcom/android/email/mail/store/ImapStore;

    invoke-static {v6}, Lcom/android/email/mail/store/ImapStore;->access$600(Lcom/android/email/mail/store/ImapStore;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {p0, v6, v7}, Lcom/android/email/mail/store/ImapStore$ImapConnection;->executeSimpleCommand(Ljava/lang/String;Z)Ljava/util/List;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lcom/android/email/mail/store/ImapStore$ImapException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Lcom/android/email/mail/MessagingException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljavax/net/ssl/SSLException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 1510
    invoke-virtual {p0}, Lcom/android/email/mail/store/ImapStore$ImapConnection;->destroyResponses()V

    goto/16 :goto_0

    .line 1446
    :cond_5
    :try_start_3
    sget-boolean v6, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v6, :cond_6

    .line 1447
    const-string v6, "Email"

    const-string v7, "TLS not supported but required"

    invoke-static {v6, v7}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 1449
    :cond_6
    new-instance v6, Lcom/android/email/mail/MessagingException;

    const/4 v7, 0x2

    invoke-direct {v6, v7}, Lcom/android/email/mail/MessagingException;-><init>(I)V

    throw v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljavax/net/ssl/SSLException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 1496
    .end local v0           #capabilityResponse:Lcom/android/email/mail/store/imap/ImapResponse;
    :catch_0
    move-exception v6

    move-object v1, v6

    .line 1497
    .local v1, e:Ljavax/net/ssl/SSLException;
    :try_start_4
    sget-boolean v6, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v6, :cond_7

    .line 1498
    const-string v6, "Email"

    invoke-virtual {v1}, Ljavax/net/ssl/SSLException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 1500
    :cond_7
    new-instance v6, Lcom/android/email/mail/CertificateValidationException;

    invoke-virtual {v1}, Ljavax/net/ssl/SSLException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v1}, Lcom/android/email/mail/CertificateValidationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1510
    .end local v1           #e:Ljavax/net/ssl/SSLException;
    :catchall_0
    move-exception v6

    invoke-virtual {p0}, Lcom/android/email/mail/store/ImapStore$ImapConnection;->destroyResponses()V

    throw v6

    .line 1469
    .restart local v0       #capabilityResponse:Lcom/android/email/mail/store/imap/ImapResponse;
    .restart local v4       #mUserAgent:Ljava/lang/String;
    :catch_1
    move-exception v6

    move-object v2, v6

    .line 1471
    .local v2, ie:Lcom/android/email/mail/store/ImapStore$ImapException;
    :try_start_5
    sget-boolean v6, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v6, :cond_4

    .line 1472
    const-string v6, "Email"

    invoke-virtual {v2}, Lcom/android/email/mail/store/ImapStore$ImapException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljavax/net/ssl/SSLException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_1

    .line 1501
    .end local v0           #capabilityResponse:Lcom/android/email/mail/store/imap/ImapResponse;
    .end local v2           #ie:Lcom/android/email/mail/store/ImapStore$ImapException;
    .end local v4           #mUserAgent:Ljava/lang/String;
    :catch_2
    move-exception v6

    move-object v3, v6

    .line 1505
    .local v3, ioe:Ljava/io/IOException;
    :try_start_6
    sget-boolean v6, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v6, :cond_8

    .line 1506
    const-string v6, "Email"

    invoke-virtual {v3}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 1508
    :cond_8
    throw v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 1487
    .end local v3           #ioe:Ljava/io/IOException;
    .restart local v0       #capabilityResponse:Lcom/android/email/mail/store/imap/ImapResponse;
    :catch_3
    move-exception v6

    move-object v2, v6

    .line 1488
    .restart local v2       #ie:Lcom/android/email/mail/store/ImapStore$ImapException;
    :try_start_7
    sget-boolean v6, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v6, :cond_9

    .line 1489
    const-string v6, "Email"

    invoke-virtual {v2}, Lcom/android/email/mail/store/ImapStore$ImapException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 1491
    :cond_9
    new-instance v6, Lcom/android/email/mail/AuthenticationFailedException;

    invoke-virtual {v2}, Lcom/android/email/mail/store/ImapStore$ImapException;->getAlertText()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v2}, Lcom/android/email/mail/AuthenticationFailedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    .line 1493
    .end local v2           #ie:Lcom/android/email/mail/store/ImapStore$ImapException;
    :catch_4
    move-exception v6

    move-object v5, v6

    .line 1494
    .local v5, me:Lcom/android/email/mail/MessagingException;
    new-instance v6, Lcom/android/email/mail/AuthenticationFailedException;

    const/4 v7, 0x0

    invoke-direct {v6, v7, v5}, Lcom/android/email/mail/AuthenticationFailedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljavax/net/ssl/SSLException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    .line 1474
    .end local v5           #me:Lcom/android/email/mail/MessagingException;
    .restart local v4       #mUserAgent:Ljava/lang/String;
    :catch_5
    move-exception v6

    goto/16 :goto_1
.end method

.method public readResponse()Lcom/android/email/mail/store/imap/ImapResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/email/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1544
    iget-object v0, p0, Lcom/android/email/mail/store/ImapStore$ImapConnection;->mParser:Lcom/android/email/mail/store/imap/ImapResponseParser;

    invoke-virtual {v0}, Lcom/android/email/mail/store/imap/ImapResponseParser;->readResponse()Lcom/android/email/mail/store/imap/ImapResponse;

    move-result-object v0

    return-object v0
.end method

.method public sendCommand(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 5
    .parameter "command"
    .parameter "sensitive"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/email/mail/MessagingException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-string v4, "[IMAP command redacted]"

    .line 1557
    invoke-virtual {p0}, Lcom/android/email/mail/store/ImapStore$ImapConnection;->open()V

    .line 1558
    iget-object v2, p0, Lcom/android/email/mail/store/ImapStore$ImapConnection;->this$0:Lcom/android/email/mail/store/ImapStore;

    invoke-static {v2}, Lcom/android/email/mail/store/ImapStore;->access$700(Lcom/android/email/mail/store/ImapStore;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 1559
    .local v1, tag:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1560
    .local v0, commandToSend:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/email/mail/store/ImapStore$ImapConnection;->mTransport:Lcom/android/email/mail/Transport;

    if-eqz p2, :cond_0

    const-string v3, "[IMAP command redacted]"

    move-object v3, v4

    :goto_0
    invoke-interface {v2, v0, v3}, Lcom/android/email/mail/Transport;->writeLine(Ljava/lang/String;Ljava/lang/String;)V

    .line 1561
    iget-object v2, p0, Lcom/android/email/mail/store/ImapStore$ImapConnection;->mDiscourse:Lcom/android/email/mail/transport/DiscourseLogger;

    if-eqz p2, :cond_1

    const-string v3, "[IMAP command redacted]"

    move-object v3, v4

    :goto_1
    invoke-virtual {v2, v3}, Lcom/android/email/mail/transport/DiscourseLogger;->addSentCommand(Ljava/lang/String;)V

    .line 1562
    return-object v1

    .line 1560
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    :cond_1
    move-object v3, v0

    .line 1561
    goto :goto_1
.end method
