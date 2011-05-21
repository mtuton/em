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


# static fields
.field private static final DISCOURSE_LOGGER_SIZE:I = 0x40

.field private static final IMAP_DEDACTED_LOG:Ljava/lang/String; = "[IMAP command redacted]"


# instance fields
.field private final mDiscourse:Lcom/android/email/mail/transport/DiscourseLogger;

.field private mNextCommandTag:I

.field private mParser:Lcom/android/email/mail/store/ImapResponseParser;

.field private mTransport:Lcom/android/email/mail/Transport;

.field final synthetic this$0:Lcom/android/email/mail/store/ImapStore;


# direct methods
.method constructor <init>(Lcom/android/email/mail/store/ImapStore;)V
    .locals 2
    .parameter

    .prologue
    .line 1449
    iput-object p1, p0, Lcom/android/email/mail/store/ImapStore$ImapConnection;->this$0:Lcom/android/email/mail/store/ImapStore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1456
    new-instance v0, Lcom/android/email/mail/transport/DiscourseLogger;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Lcom/android/email/mail/transport/DiscourseLogger;-><init>(I)V

    iput-object v0, p0, Lcom/android/email/mail/store/ImapStore$ImapConnection;->mDiscourse:Lcom/android/email/mail/transport/DiscourseLogger;

    return-void
.end method

.method static synthetic access$500(Lcom/android/email/mail/store/ImapStore$ImapConnection;)Lcom/android/email/mail/Transport;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1449
    iget-object v0, p0, Lcom/android/email/mail/store/ImapStore$ImapConnection;->mTransport:Lcom/android/email/mail/Transport;

    return-object v0
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 1580
    iget-object v0, p0, Lcom/android/email/mail/store/ImapStore$ImapConnection;->mTransport:Lcom/android/email/mail/Transport;

    if-eqz v0, :cond_0

    .line 1581
    iget-object v0, p0, Lcom/android/email/mail/store/ImapStore$ImapConnection;->mTransport:Lcom/android/email/mail/Transport;

    invoke-interface {v0}, Lcom/android/email/mail/Transport;->close()V

    .line 1583
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
            "Lcom/android/email/mail/store/ImapResponseParser$ImapResponse;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/email/mail/store/ImapStore$ImapException;,
            Lcom/android/email/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1609
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/email/mail/store/ImapStore$ImapConnection;->executeSimpleCommand(Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public executeSimpleCommand(Ljava/lang/String;Z)Ljava/util/List;
    .locals 8
    .parameter "command"
    .parameter "sensitive"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Lcom/android/email/mail/store/ImapResponseParser$ImapResponse;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/email/mail/store/ImapStore$ImapException;,
            Lcom/android/email/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1614
    invoke-virtual {p0, p1, p2}, Lcom/android/email/mail/store/ImapStore$ImapConnection;->sendCommand(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    .line 1615
    .local v3, tag:Ljava/lang/String;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1617
    .local v2, responses:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/email/mail/store/ImapResponseParser$ImapResponse;>;"
    const/4 v0, 0x0

    .line 1621
    .local v0, previous:Lcom/android/email/mail/store/ImapResponseParser$ImapResponse;
    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/email/mail/store/ImapResponseParser$ImapResponse;->completed()Z

    move-result v4

    if-nez v4, :cond_1

    .line 1622
    invoke-virtual {v0}, Lcom/android/email/mail/store/ImapResponseParser$ImapResponse;->nailDown()V

    .line 1624
    :cond_1
    iget-object v4, p0, Lcom/android/email/mail/store/ImapStore$ImapConnection;->mParser:Lcom/android/email/mail/store/ImapResponseParser;

    invoke-virtual {v4}, Lcom/android/email/mail/store/ImapResponseParser;->readResponse()Lcom/android/email/mail/store/ImapResponseParser$ImapResponse;

    move-result-object v1

    .line 1628
    .local v1, response:Lcom/android/email/mail/store/ImapResponseParser$ImapResponse;
    iget-object v4, v1, Lcom/android/email/mail/store/ImapResponseParser$ImapResponse;->mTag:Ljava/lang/String;

    if-eqz v4, :cond_3

    iget-object v4, v1, Lcom/android/email/mail/store/ImapResponseParser$ImapResponse;->mTag:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/android/email/mail/store/ImapResponseParser$ImapResponse;->completed()Z

    move-result v4

    if-nez v4, :cond_3

    .line 1630
    invoke-virtual {v0, v1}, Lcom/android/email/mail/store/ImapResponseParser$ImapResponse;->appendAll(Lcom/android/email/mail/store/ImapResponseParser$ImapResponse;)V

    .line 1631
    const/4 v4, 0x0

    iput-object v4, v1, Lcom/android/email/mail/store/ImapResponseParser$ImapResponse;->mTag:Ljava/lang/String;

    .line 1636
    :goto_0
    iget-object v4, v1, Lcom/android/email/mail/store/ImapResponseParser$ImapResponse;->mTag:Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 1637
    invoke-virtual {v1}, Lcom/android/email/mail/store/ImapResponseParser$ImapResponse;->size()I

    move-result v4

    const/4 v5, 0x1

    if-lt v4, v5, :cond_2

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lcom/android/email/mail/store/ImapResponseParser$ImapResponse;->get(I)Ljava/lang/Object;

    move-result-object v4

    const-string v5, "OK"

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 1638
    :cond_2
    new-instance v4, Lcom/android/email/mail/store/ImapStore$ImapException;

    iget-object v5, p0, Lcom/android/email/mail/store/ImapStore$ImapConnection;->this$0:Lcom/android/email/mail/store/ImapStore;

    invoke-virtual {v1}, Lcom/android/email/mail/store/ImapResponseParser$ImapResponse;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1}, Lcom/android/email/mail/store/ImapResponseParser$ImapResponse;->getAlertText()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v5, v6, v7}, Lcom/android/email/mail/store/ImapStore$ImapException;-><init>(Lcom/android/email/mail/store/ImapStore;Ljava/lang/String;Ljava/lang/String;)V

    throw v4

    .line 1634
    :cond_3
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1635
    move-object v0, v1

    goto :goto_0

    .line 1640
    :cond_4
    return-object v2
.end method

.method public logLastDiscourse()V
    .locals 1

    .prologue
    .line 1645
    iget-object v0, p0, Lcom/android/email/mail/store/ImapStore$ImapConnection;->mDiscourse:Lcom/android/email/mail/transport/DiscourseLogger;

    invoke-virtual {v0}, Lcom/android/email/mail/transport/DiscourseLogger;->logLastDiscourse()V

    .line 1646
    return-void
.end method

.method public open()V
    .locals 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/email/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1459
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/mail/store/ImapStore$ImapConnection;->mTransport:Lcom/android/email/mail/Transport;

    move-object/from16 v19, v0

    if-eqz v19, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/mail/store/ImapStore$ImapConnection;->mTransport:Lcom/android/email/mail/Transport;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lcom/android/email/mail/Transport;->isOpen()Z

    move-result v19

    if-eqz v19, :cond_0

    .line 1570
    :goto_0
    return-void

    .line 1463
    :cond_0
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/email/mail/store/ImapStore$ImapConnection;->mNextCommandTag:I

    .line 1467
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/mail/store/ImapStore$ImapConnection;->mTransport:Lcom/android/email/mail/Transport;

    move-object/from16 v19, v0

    if-nez v19, :cond_1

    .line 1468
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/mail/store/ImapStore$ImapConnection;->this$0:Lcom/android/email/mail/store/ImapStore;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/email/mail/store/ImapStore;->access$600(Lcom/android/email/mail/store/ImapStore;)Lcom/android/email/mail/Transport;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Lcom/android/email/mail/Transport;->newInstanceWithConfiguration()Lcom/android/email/mail/Transport;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/email/mail/store/ImapStore$ImapConnection;->mTransport:Lcom/android/email/mail/Transport;

    .line 1471
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/mail/store/ImapStore$ImapConnection;->mTransport:Lcom/android/email/mail/Transport;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lcom/android/email/mail/Transport;->open()V

    .line 1472
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/mail/store/ImapStore$ImapConnection;->mTransport:Lcom/android/email/mail/Transport;

    move-object/from16 v19, v0

    const v20, 0xea60

    invoke-interface/range {v19 .. v20}, Lcom/android/email/mail/Transport;->setSoTimeout(I)V

    .line 1474
    new-instance v19, Lcom/android/email/mail/store/ImapResponseParser;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/mail/store/ImapStore$ImapConnection;->mTransport:Lcom/android/email/mail/Transport;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Lcom/android/email/mail/Transport;->getInputStream()Ljava/io/InputStream;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/mail/store/ImapStore$ImapConnection;->mDiscourse:Lcom/android/email/mail/transport/DiscourseLogger;

    move-object/from16 v21, v0

    invoke-direct/range {v19 .. v21}, Lcom/android/email/mail/store/ImapResponseParser;-><init>(Ljava/io/InputStream;Lcom/android/email/mail/transport/DiscourseLogger;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/email/mail/store/ImapStore$ImapConnection;->mParser:Lcom/android/email/mail/store/ImapResponseParser;

    .line 1477
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/mail/store/ImapStore$ImapConnection;->mParser:Lcom/android/email/mail/store/ImapResponseParser;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/email/mail/store/ImapResponseParser;->readResponse()Lcom/android/email/mail/store/ImapResponseParser$ImapResponse;

    .line 1480
    const-string v19, "CAPABILITY"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/email/mail/store/ImapStore$ImapConnection;->executeSimpleCommand(Ljava/lang/String;)Ljava/util/List;

    move-result-object v18

    .line 1481
    .local v18, response:Ljava/util/List;,"Ljava/util/List<Lcom/android/email/mail/store/ImapResponseParser$ImapResponse;>;"
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v19

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_3

    .line 1482
    new-instance v19, Lcom/android/email/mail/MessagingException;

    const-string v20, "Invalid CAPABILITY response received"

    invoke-direct/range {v19 .. v20}, Lcom/android/email/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v19
    :try_end_0
    .catch Ljavax/net/ssl/SSLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1556
    .end local v18           #response:Ljava/util/List;,"Ljava/util/List<Lcom/android/email/mail/store/ImapResponseParser$ImapResponse;>;"
    :catch_0
    move-exception v19

    move-object/from16 v10, v19

    .line 1557
    .local v10, e:Ljavax/net/ssl/SSLException;
    sget-boolean v19, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v19, :cond_2

    .line 1558
    const-string v19, "Email"

    invoke-virtual {v10}, Ljavax/net/ssl/SSLException;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 1560
    :cond_2
    new-instance v19, Lcom/android/email/mail/CertificateValidationException;

    invoke-virtual {v10}, Ljavax/net/ssl/SSLException;->getMessage()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object v2, v10

    invoke-direct {v0, v1, v2}, Lcom/android/email/mail/CertificateValidationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v19

    .line 1484
    .end local v10           #e:Ljavax/net/ssl/SSLException;
    .restart local v18       #response:Ljava/util/List;,"Ljava/util/List<Lcom/android/email/mail/store/ImapResponseParser$ImapResponse;>;"
    :cond_3
    const/16 v19, 0x0

    :try_start_1
    invoke-interface/range {v18 .. v19}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/email/mail/store/ImapResponseParser$ImapResponse;

    invoke-virtual {v5}, Lcom/android/email/mail/store/ImapResponseParser$ImapResponse;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1486
    .local v8, capabilities:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/mail/store/ImapStore$ImapConnection;->mTransport:Lcom/android/email/mail/Transport;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lcom/android/email/mail/Transport;->canTryTlsSecurity()Z

    move-result v19

    if-eqz v19, :cond_4

    .line 1487
    const-string v19, "STARTTLS"

    move-object v0, v8

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v19

    if-eqz v19, :cond_7

    .line 1489
    const-string v19, "STARTTLS"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/email/mail/store/ImapStore$ImapConnection;->executeSimpleCommand(Ljava/lang/String;)Ljava/util/List;

    .line 1491
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/mail/store/ImapStore$ImapConnection;->mTransport:Lcom/android/email/mail/Transport;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lcom/android/email/mail/Transport;->reopenTls()V

    .line 1492
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/mail/store/ImapStore$ImapConnection;->mTransport:Lcom/android/email/mail/Transport;

    move-object/from16 v19, v0

    const v20, 0xea60

    invoke-interface/range {v19 .. v20}, Lcom/android/email/mail/Transport;->setSoTimeout(I)V

    .line 1493
    new-instance v19, Lcom/android/email/mail/store/ImapResponseParser;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/mail/store/ImapStore$ImapConnection;->mTransport:Lcom/android/email/mail/Transport;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Lcom/android/email/mail/Transport;->getInputStream()Ljava/io/InputStream;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/mail/store/ImapStore$ImapConnection;->mDiscourse:Lcom/android/email/mail/transport/DiscourseLogger;

    move-object/from16 v21, v0

    invoke-direct/range {v19 .. v21}, Lcom/android/email/mail/store/ImapResponseParser;-><init>(Ljava/io/InputStream;Lcom/android/email/mail/transport/DiscourseLogger;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/email/mail/store/ImapStore$ImapConnection;->mParser:Lcom/android/email/mail/store/ImapResponseParser;

    .line 1504
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/mail/store/ImapStore$ImapConnection;->this$0:Lcom/android/email/mail/store/ImapStore;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/mail/store/ImapStore$ImapConnection;->this$0:Lcom/android/email/mail/store/ImapStore;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/email/mail/store/ImapStore;->access$400(Lcom/android/email/mail/store/ImapStore;)Landroid/content/Context;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/mail/store/ImapStore$ImapConnection;->this$0:Lcom/android/email/mail/store/ImapStore;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/email/mail/store/ImapStore;->access$700(Lcom/android/email/mail/store/ImapStore;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/mail/store/ImapStore$ImapConnection;->this$0:Lcom/android/email/mail/store/ImapStore;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/email/mail/store/ImapStore;->access$600(Lcom/android/email/mail/store/ImapStore;)Lcom/android/email/mail/Transport;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Lcom/android/email/mail/Transport;->getHost()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    move-object v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/email/mail/store/ImapStore;->getImapId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 1506
    .local v15, mUserAgent:Ljava/lang/String;
    if-eqz v15, :cond_5

    .line 1507
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/mail/store/ImapStore$ImapConnection;->this$0:Lcom/android/email/mail/store/ImapStore;

    move-object/from16 v19, v0

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "ID ("

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object v1, v15

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ")"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/android/email/mail/store/ImapStore;->access$802(Lcom/android/email/mail/store/ImapStore;Ljava/lang/String;)Ljava/lang/String;

    .line 1514
    :cond_5
    const/4 v6, 0x0

    .line 1515
    .local v6, canTryID:Z
    if-eqz v8, :cond_a

    .line 1517
    const-string v19, "^(#(null|[0-9])+#)|[\\[\\], ]"

    invoke-static/range {v19 .. v19}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v17

    .line 1518
    .local v17, p:Ljava/util/regex/Pattern;
    move-object/from16 v0, v17

    move-object v1, v8

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v9

    .line 1519
    .local v9, capas:[Ljava/lang/String;
    if-eqz v9, :cond_a

    .line 1521
    move-object v5, v9

    .local v5, arr$:[Ljava/lang/String;
    array-length v14, v5

    .local v14, len$:I
    const/4 v11, 0x0

    .local v11, i$:I
    :goto_1
    if-ge v11, v14, :cond_a

    aget-object v7, v5, v11

    .line 1523
    .local v7, capa:Ljava/lang/String;
    if-eqz v7, :cond_6

    const-string v19, "ID"

    move-object v0, v7

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_6

    const/4 v6, 0x1

    .line 1521
    :cond_6
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 1496
    .end local v5           #arr$:[Ljava/lang/String;
    .end local v6           #canTryID:Z
    .end local v7           #capa:Ljava/lang/String;
    .end local v9           #capas:[Ljava/lang/String;
    .end local v11           #i$:I
    .end local v14           #len$:I
    .end local v15           #mUserAgent:Ljava/lang/String;
    .end local v17           #p:Ljava/util/regex/Pattern;
    :cond_7
    sget-boolean v19, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v19, :cond_8

    .line 1497
    const-string v19, "Email"

    const-string v20, "TLS not supported but required"

    invoke-static/range {v19 .. v20}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 1499
    :cond_8
    new-instance v19, Lcom/android/email/mail/MessagingException;

    const/16 v20, 0x2

    invoke-direct/range {v19 .. v20}, Lcom/android/email/mail/MessagingException;-><init>(I)V

    throw v19
    :try_end_1
    .catch Ljavax/net/ssl/SSLException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1561
    .end local v8           #capabilities:Ljava/lang/String;
    .end local v18           #response:Ljava/util/List;,"Ljava/util/List<Lcom/android/email/mail/store/ImapResponseParser$ImapResponse;>;"
    :catch_1
    move-exception v19

    move-object/from16 v13, v19

    .line 1565
    .local v13, ioe:Ljava/io/IOException;
    sget-boolean v19, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v19, :cond_9

    .line 1566
    const-string v19, "Email"

    invoke-virtual {v13}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 1568
    :cond_9
    throw v13

    .line 1528
    .end local v13           #ioe:Ljava/io/IOException;
    .restart local v6       #canTryID:Z
    .restart local v8       #capabilities:Ljava/lang/String;
    .restart local v15       #mUserAgent:Ljava/lang/String;
    .restart local v18       #response:Ljava/util/List;,"Ljava/util/List<Lcom/android/email/mail/store/ImapResponseParser$ImapResponse;>;"
    :cond_a
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/mail/store/ImapStore$ImapConnection;->this$0:Lcom/android/email/mail/store/ImapStore;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/email/mail/store/ImapStore;->access$800(Lcom/android/email/mail/store/ImapStore;)Ljava/lang/String;
    :try_end_2
    .catch Ljavax/net/ssl/SSLException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v19

    if-eqz v19, :cond_b

    const/16 v19, 0x1

    move v0, v6

    move/from16 v1, v19

    if-ne v0, v1, :cond_b

    .line 1530
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/mail/store/ImapStore$ImapConnection;->this$0:Lcom/android/email/mail/store/ImapStore;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/email/mail/store/ImapStore;->access$800(Lcom/android/email/mail/store/ImapStore;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/email/mail/store/ImapStore$ImapConnection;->executeSimpleCommand(Ljava/lang/String;)Ljava/util/List;
    :try_end_3
    .catch Lcom/android/email/mail/store/ImapStore$ImapException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljavax/net/ssl/SSLException; {:try_start_3 .. :try_end_3} :catch_0

    .line 1546
    :cond_b
    :goto_2
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/mail/store/ImapStore$ImapConnection;->this$0:Lcom/android/email/mail/store/ImapStore;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/email/mail/store/ImapStore;->access$900(Lcom/android/email/mail/store/ImapStore;)Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/android/email/mail/store/ImapStore$ImapConnection;->executeSimpleCommand(Ljava/lang/String;Z)Ljava/util/List;
    :try_end_4
    .catch Lcom/android/email/mail/store/ImapStore$ImapException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Lcom/android/email/mail/MessagingException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljavax/net/ssl/SSLException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_0

    .line 1547
    :catch_2
    move-exception v19

    move-object/from16 v12, v19

    .line 1548
    .local v12, ie:Lcom/android/email/mail/store/ImapStore$ImapException;
    :try_start_5
    sget-boolean v19, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v19, :cond_c

    .line 1549
    const-string v19, "Email"

    invoke-virtual {v12}, Lcom/android/email/mail/store/ImapStore$ImapException;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 1551
    :cond_c
    new-instance v19, Lcom/android/email/mail/AuthenticationFailedException;

    invoke-virtual {v12}, Lcom/android/email/mail/store/ImapStore$ImapException;->getAlertText()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object v2, v12

    invoke-direct {v0, v1, v2}, Lcom/android/email/mail/AuthenticationFailedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v19

    .line 1531
    .end local v12           #ie:Lcom/android/email/mail/store/ImapStore$ImapException;
    :catch_3
    move-exception v19

    move-object/from16 v12, v19

    .line 1533
    .restart local v12       #ie:Lcom/android/email/mail/store/ImapStore$ImapException;
    sget-boolean v19, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v19, :cond_b

    .line 1534
    const-string v19, "Email"

    invoke-virtual {v12}, Lcom/android/email/mail/store/ImapStore$ImapException;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 1553
    .end local v12           #ie:Lcom/android/email/mail/store/ImapStore$ImapException;
    :catch_4
    move-exception v19

    move-object/from16 v16, v19

    .line 1554
    .local v16, me:Lcom/android/email/mail/MessagingException;
    new-instance v19, Lcom/android/email/mail/AuthenticationFailedException;

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lcom/android/email/mail/AuthenticationFailedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v19
    :try_end_5
    .catch Ljavax/net/ssl/SSLException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    .line 1536
    .end local v16           #me:Lcom/android/email/mail/MessagingException;
    :catch_5
    move-exception v19

    goto :goto_2
.end method

.method public readResponse()Lcom/android/email/mail/store/ImapResponseParser$ImapResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/email/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1586
    iget-object v0, p0, Lcom/android/email/mail/store/ImapStore$ImapConnection;->mParser:Lcom/android/email/mail/store/ImapResponseParser;

    invoke-virtual {v0}, Lcom/android/email/mail/store/ImapResponseParser;->readResponse()Lcom/android/email/mail/store/ImapResponseParser$ImapResponse;

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

    .line 1599
    invoke-virtual {p0}, Lcom/android/email/mail/store/ImapStore$ImapConnection;->open()V

    .line 1600
    iget v2, p0, Lcom/android/email/mail/store/ImapStore$ImapConnection;->mNextCommandTag:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/android/email/mail/store/ImapStore$ImapConnection;->mNextCommandTag:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 1601
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

    .line 1602
    .local v0, commandToSend:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/email/mail/store/ImapStore$ImapConnection;->mTransport:Lcom/android/email/mail/Transport;

    if-eqz p2, :cond_0

    const-string v3, "[IMAP command redacted]"

    move-object v3, v4

    :goto_0
    invoke-interface {v2, v0, v3}, Lcom/android/email/mail/Transport;->writeLine(Ljava/lang/String;Ljava/lang/String;)V

    .line 1603
    iget-object v2, p0, Lcom/android/email/mail/store/ImapStore$ImapConnection;->mDiscourse:Lcom/android/email/mail/transport/DiscourseLogger;

    if-eqz p2, :cond_1

    const-string v3, "[IMAP command redacted]"

    move-object v3, v4

    :goto_1
    invoke-virtual {v2, v3}, Lcom/android/email/mail/transport/DiscourseLogger;->addSentCommand(Ljava/lang/String;)V

    .line 1604
    return-object v1

    .line 1602
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    :cond_1
    move-object v3, v0

    .line 1603
    goto :goto_1
.end method
