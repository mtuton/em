.class public Lcom/android/email/mail/store/ImapResponseParser$ImapResponse;
.super Lcom/android/email/mail/store/ImapResponseParser$ImapList;
.source "ImapResponseParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/mail/store/ImapResponseParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ImapResponse"
.end annotation


# instance fields
.field mCommandContinuationRequested:Z

.field private mCompleted:Z

.field mTag:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/email/mail/store/ImapResponseParser;


# direct methods
.method public constructor <init>(Lcom/android/email/mail/store/ImapResponseParser;)V
    .locals 0
    .parameter

    .prologue
    .line 456
    iput-object p1, p0, Lcom/android/email/mail/store/ImapResponseParser$ImapResponse;->this$0:Lcom/android/email/mail/store/ImapResponseParser;

    invoke-direct {p0, p1}, Lcom/android/email/mail/store/ImapResponseParser$ImapList;-><init>(Lcom/android/email/mail/store/ImapResponseParser;)V

    return-void
.end method

.method static synthetic access$002(Lcom/android/email/mail/store/ImapResponseParser$ImapResponse;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 456
    iput-boolean p1, p0, Lcom/android/email/mail/store/ImapResponseParser$ImapResponse;->mCompleted:Z

    return p1
.end method


# virtual methods
.method public appendAll(Lcom/android/email/mail/store/ImapResponseParser$ImapResponse;)V
    .locals 1
    .parameter "other"

    .prologue
    .line 489
    invoke-virtual {p0, p1}, Lcom/android/email/mail/store/ImapResponseParser$ImapResponse;->addAll(Ljava/util/Collection;)Z

    .line 490
    iget-boolean v0, p1, Lcom/android/email/mail/store/ImapResponseParser$ImapResponse;->mCompleted:Z

    iput-boolean v0, p0, Lcom/android/email/mail/store/ImapResponseParser$ImapResponse;->mCompleted:Z

    .line 491
    return-void
.end method

.method public completed()Z
    .locals 1

    .prologue
    .line 466
    iget-boolean v0, p0, Lcom/android/email/mail/store/ImapResponseParser$ImapResponse;->mCompleted:Z

    return v0
.end method

.method public getAlertText()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 503
    invoke-virtual {p0}, Lcom/android/email/mail/store/ImapResponseParser$ImapResponse;->size()I

    move-result v5

    if-le v5, v6, :cond_2

    .line 504
    invoke-virtual {p0, v6}, Lcom/android/email/mail/store/ImapResponseParser$ImapResponse;->getListOrNull(I)Lcom/android/email/mail/store/ImapResponseParser$ImapList;

    move-result-object v0

    .line 505
    .local v0, alertList:Lcom/android/email/mail/store/ImapResponseParser$ImapList;
    if-eqz v0, :cond_2

    .line 506
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lcom/android/email/mail/store/ImapResponseParser$ImapList;->getStringOrNull(I)Ljava/lang/String;

    move-result-object v3

    .line 507
    .local v3, responseCode:Ljava/lang/String;
    const-string v5, "ALERT"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 508
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 509
    .local v4, sb:Ljava/lang/StringBuffer;
    const/4 v2, 0x2

    .local v2, i:I
    invoke-virtual {p0}, Lcom/android/email/mail/store/ImapResponseParser$ImapResponse;->size()I

    move-result v1

    .local v1, count:I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 510
    const/4 v5, 0x2

    if-le v2, v5, :cond_0

    .line 511
    const/16 v5, 0x20

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 513
    :cond_0
    invoke-virtual {p0, v2}, Lcom/android/email/mail/store/ImapResponseParser$ImapResponse;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 509
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 515
    :cond_1
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    .line 519
    .end local v0           #alertList:Lcom/android/email/mail/store/ImapResponseParser$ImapList;
    .end local v1           #count:I
    .end local v2           #i:I
    .end local v3           #responseCode:Ljava/lang/String;
    .end local v4           #sb:Ljava/lang/StringBuffer;
    :goto_1
    return-object v5

    :cond_2
    const/4 v5, 0x0

    goto :goto_1
.end method

.method public more()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 494
    iget-boolean v0, p0, Lcom/android/email/mail/store/ImapResponseParser$ImapResponse;->mCompleted:Z

    if-eqz v0, :cond_0

    .line 495
    const/4 v0, 0x0

    .line 498
    :goto_0
    return v0

    .line 497
    :cond_0
    iget-object v0, p0, Lcom/android/email/mail/store/ImapResponseParser$ImapResponse;->this$0:Lcom/android/email/mail/store/ImapResponseParser;

    invoke-static {v0, p0}, Lcom/android/email/mail/store/ImapResponseParser;->access$200(Lcom/android/email/mail/store/ImapResponseParser;Lcom/android/email/mail/store/ImapResponseParser$ImapResponse;)V

    .line 498
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public nailDown()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 473
    invoke-virtual {p0}, Lcom/android/email/mail/store/ImapResponseParser$ImapResponse;->size()I

    move-result v5

    const/4 v6, 0x1

    sub-int v3, v5, v6

    .line 474
    .local v3, last:I
    if-ltz v3, :cond_0

    .line 475
    invoke-virtual {p0, v3}, Lcom/android/email/mail/store/ImapResponseParser$ImapResponse;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 476
    .local v4, o:Ljava/lang/Object;
    instance-of v5, v4, Lcom/android/email/FixedLengthInputStream;

    if-eqz v5, :cond_0

    .line 477
    move-object v0, v4

    check-cast v0, Lcom/android/email/FixedLengthInputStream;

    move-object v2, v0

    .line 478
    .local v2, is:Lcom/android/email/FixedLengthInputStream;
    invoke-virtual {v2}, Lcom/android/email/FixedLengthInputStream;->available()I

    move-result v5

    new-array v1, v5, [B

    .line 479
    .local v1, buffer:[B
    invoke-virtual {v2, v1}, Lcom/android/email/FixedLengthInputStream;->read([B)I

    .line 480
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {p0, v3, v5}, Lcom/android/email/mail/store/ImapResponseParser$ImapResponse;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 483
    .end local v1           #buffer:[B
    .end local v2           #is:Lcom/android/email/FixedLengthInputStream;
    .end local v4           #o:Ljava/lang/Object;
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 524
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/mail/store/ImapResponseParser$ImapResponse;->mTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "# "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-super {p0}, Lcom/android/email/mail/store/ImapResponseParser$ImapList;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
