.class public Lcom/android/email/mail/store/ImapResponseParser$ImapList;
.super Ljava/util/ArrayList;
.source "ImapResponseParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/mail/store/ImapResponseParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ImapList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/mail/store/ImapResponseParser;


# direct methods
.method public constructor <init>(Lcom/android/email/mail/store/ImapResponseParser;)V
    .locals 0
    .parameter

    .prologue
    .line 347
    iput-object p1, p0, Lcom/android/email/mail/store/ImapResponseParser$ImapList;->this$0:Lcom/android/email/mail/store/ImapResponseParser;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-void
.end method


# virtual methods
.method public getDate(I)Ljava/util/Date;
    .locals 3
    .parameter "index"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/email/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 403
    :try_start_0
    invoke-static {}, Lcom/android/email/mail/store/ImapResponseParser;->access$100()Ljava/text/SimpleDateFormat;

    move-result-object v1

    invoke-virtual {p0, p1}, Lcom/android/email/mail/store/ImapResponseParser$ImapList;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 404
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 405
    .local v0, pe:Ljava/text/ParseException;
    new-instance v1, Lcom/android/email/mail/MessagingException;

    const-string v2, "Unable to parse IMAP datetime"

    invoke-direct {v1, v2, v0}, Lcom/android/email/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getKeyedDate(Ljava/lang/Object;)Ljava/util/Date;
    .locals 4
    .parameter "key"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/email/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 436
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/email/mail/store/ImapResponseParser$ImapList;->getKeyedString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 437
    .local v1, value:Ljava/lang/String;
    if-nez v1, :cond_0

    .line 438
    const/4 v2, 0x0

    .line 440
    :goto_0
    return-object v2

    :cond_0
    invoke-static {}, Lcom/android/email/mail/store/ImapResponseParser;->access$100()Ljava/text/SimpleDateFormat;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 441
    .end local v1           #value:Ljava/lang/String;
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 442
    .local v0, pe:Ljava/text/ParseException;
    new-instance v2, Lcom/android/email/mail/MessagingException;

    const-string v3, "Unable to parse IMAP datetime"

    invoke-direct {v2, v3, v0}, Lcom/android/email/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public getKeyedList(Ljava/lang/Object;)Lcom/android/email/mail/store/ImapResponseParser$ImapList;
    .locals 0
    .parameter "key"

    .prologue
    .line 419
    invoke-virtual {p0, p1}, Lcom/android/email/mail/store/ImapResponseParser$ImapList;->getKeyedValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/email/mail/store/ImapResponseParser$ImapList;

    return-object p0
.end method

.method public getKeyedLiteral(Ljava/lang/Object;)Ljava/io/InputStream;
    .locals 0
    .parameter "key"

    .prologue
    .line 427
    invoke-virtual {p0, p1}, Lcom/android/email/mail/store/ImapResponseParser$ImapList;->getKeyedValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/io/InputStream;

    return-object p0
.end method

.method public getKeyedNumber(Ljava/lang/Object;)I
    .locals 1
    .parameter "key"

    .prologue
    .line 431
    invoke-virtual {p0, p1}, Lcom/android/email/mail/store/ImapResponseParser$ImapList;->getKeyedString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getKeyedString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0
    .parameter "key"

    .prologue
    .line 423
    invoke-virtual {p0, p1}, Lcom/android/email/mail/store/ImapResponseParser$ImapList;->getKeyedValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getKeyedValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .parameter "key"

    .prologue
    .line 410
    const/4 v1, 0x0

    .local v1, i:I
    invoke-virtual {p0}, Lcom/android/email/mail/store/ImapResponseParser$ImapList;->size()I

    move-result v0

    .local v0, count:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 411
    invoke-virtual {p0, v1}, Lcom/android/email/mail/store/ImapResponseParser$ImapList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 412
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p0, v2}, Lcom/android/email/mail/store/ImapResponseParser$ImapList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 415
    :goto_1
    return-object v2

    .line 410
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 415
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public getList(I)Lcom/android/email/mail/store/ImapResponseParser$ImapList;
    .locals 0
    .parameter "index"

    .prologue
    .line 349
    invoke-virtual {p0, p1}, Lcom/android/email/mail/store/ImapResponseParser$ImapList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/email/mail/store/ImapResponseParser$ImapList;

    return-object p0
.end method

.method public getListOrNull(I)Lcom/android/email/mail/store/ImapResponseParser$ImapList;
    .locals 2
    .parameter "index"

    .prologue
    .line 354
    invoke-virtual {p0}, Lcom/android/email/mail/store/ImapResponseParser$ImapList;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 355
    invoke-virtual {p0, p1}, Lcom/android/email/mail/store/ImapResponseParser$ImapList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 356
    .local v0, list:Ljava/lang/Object;
    instance-of v1, v0, Lcom/android/email/mail/store/ImapResponseParser$ImapList;

    if-eqz v1, :cond_0

    .line 357
    check-cast v0, Lcom/android/email/mail/store/ImapResponseParser$ImapList;

    .end local v0           #list:Ljava/lang/Object;
    move-object v1, v0

    .line 360
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getLiteral(I)Ljava/io/InputStream;
    .locals 0
    .parameter "index"

    .prologue
    .line 386
    invoke-virtual {p0, p1}, Lcom/android/email/mail/store/ImapResponseParser$ImapList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/io/InputStream;

    return-object p0
.end method

.method public getNumber(I)I
    .locals 5
    .parameter "index"

    .prologue
    .line 390
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 392
    .local v1, num:Ljava/lang/Integer;
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/email/mail/store/ImapResponseParser$ImapList;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 398
    :goto_0
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    return v2

    .line 394
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 395
    .local v0, ne:Ljava/lang/NumberFormatException;
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 396
    const-string v2, "ImapResponseParser >>"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getNumber : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 6
    .parameter "index"

    .prologue
    .line 364
    const-string v2, "0"

    .line 366
    .local v2, s:Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/email/mail/store/ImapResponseParser$ImapList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljava/lang/String;

    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 371
    :goto_0
    return-object v2

    .line 367
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 368
    .local v1, ce:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 369
    const-string v3, "ImapResponseParser >>"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getString : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getStringOrNull(I)Ljava/lang/String;
    .locals 2
    .parameter "index"

    .prologue
    .line 376
    invoke-virtual {p0}, Lcom/android/email/mail/store/ImapResponseParser$ImapList;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 377
    invoke-virtual {p0, p1}, Lcom/android/email/mail/store/ImapResponseParser$ImapList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 378
    .local v0, string:Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 379
    check-cast v0, Ljava/lang/String;

    .end local v0           #string:Ljava/lang/Object;
    move-object v1, v0

    .line 382
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
