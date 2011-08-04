.class Lcom/android/email/mail/internet/MimeMessage$MimeMessageBuilder;
.super Ljava/lang/Object;
.source "MimeMessage.java"

# interfaces
.implements Lorg/apache/james/mime4j/ContentHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/mail/internet/MimeMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MimeMessageBuilder"
.end annotation


# instance fields
.field private stack:Ljava/util/Stack;

.field final synthetic this$0:Lcom/android/email/mail/internet/MimeMessage;


# direct methods
.method public constructor <init>(Lcom/android/email/mail/internet/MimeMessage;)V
    .locals 1
    .parameter

    .prologue
    .line 525
    iput-object p1, p0, Lcom/android/email/mail/internet/MimeMessage$MimeMessageBuilder;->this$0:Lcom/android/email/mail/internet/MimeMessage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 523
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/android/email/mail/internet/MimeMessage$MimeMessageBuilder;->stack:Ljava/util/Stack;

    .line 526
    return-void
.end method

.method private convert2utf8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "str"
    .parameter "charset"

    .prologue
    .line 554
    const/4 v0, 0x0

    .line 557
    .local v0, after:Ljava/lang/String;
    :try_start_0
    const-string v7, "8859_1"

    invoke-virtual {p1, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    .line 558
    .local v2, b:[B
    const-string v7, "UTF-8"

    invoke-static {v7}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v7

    invoke-virtual {v7}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    .line 560
    .local v3, decoder:Ljava/nio/charset/CharsetDecoder;
    :try_start_1
    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;

    move-result-object v6

    .line 561
    .local v6, r:Ljava/nio/CharBuffer;
    invoke-virtual {v6}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 562
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v7, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 563
    const-string v7, "convert2utf8 normal"

    invoke-direct {p0, v7, v0}, Lcom/android/email/mail/internet/MimeMessage$MimeMessageBuilder;->printHex(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/nio/charset/CharacterCodingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v1, v0

    .line 574
    .end local v0           #after:Ljava/lang/String;
    .end local v2           #b:[B
    .end local v3           #decoder:Ljava/nio/charset/CharsetDecoder;
    .end local v6           #r:Ljava/nio/CharBuffer;
    .local v1, after:Ljava/lang/Object;
    :goto_0
    return-object v1

    .line 565
    .end local v1           #after:Ljava/lang/Object;
    .restart local v0       #after:Ljava/lang/String;
    .restart local v2       #b:[B
    .restart local v3       #decoder:Ljava/nio/charset/CharsetDecoder;
    :catch_0
    move-exception v7

    move-object v4, v7

    move-object v1, v0

    .line 566
    .end local v0           #after:Ljava/lang/String;
    .local v1, after:Ljava/lang/String;
    .local v4, e:Ljava/nio/charset/CharacterCodingException;
    :try_start_2
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2, p2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_2

    .line 567
    .end local v1           #after:Ljava/lang/String;
    .restart local v0       #after:Ljava/lang/String;
    :try_start_3
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v7, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 568
    const-string v7, "convert2utf8 euc-kr"

    invoke-direct {p0, v7, v0}, Lcom/android/email/mail/internet/MimeMessage$MimeMessageBuilder;->printHex(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_1

    move-object v1, v0

    .line 569
    .local v1, after:Ljava/lang/Object;
    goto :goto_0

    .line 571
    .end local v1           #after:Ljava/lang/Object;
    .end local v2           #b:[B
    .end local v3           #decoder:Ljava/nio/charset/CharsetDecoder;
    .end local v4           #e:Ljava/nio/charset/CharacterCodingException;
    :catch_1
    move-exception v7

    move-object v5, v7

    .line 572
    .local v5, e1:Ljava/io/UnsupportedEncodingException;
    :goto_1
    invoke-virtual {v5}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    move-object v1, v0

    .line 574
    .restart local v1       #after:Ljava/lang/Object;
    goto :goto_0

    .line 571
    .end local v0           #after:Ljava/lang/String;
    .end local v5           #e1:Ljava/io/UnsupportedEncodingException;
    .local v1, after:Ljava/lang/String;
    .restart local v2       #b:[B
    .restart local v3       #decoder:Ljava/nio/charset/CharsetDecoder;
    .restart local v4       #e:Ljava/nio/charset/CharacterCodingException;
    :catch_2
    move-exception v7

    move-object v5, v7

    move-object v0, v1

    .end local v1           #after:Ljava/lang/String;
    .restart local v0       #after:Ljava/lang/String;
    goto :goto_1
.end method

.method private expect(Ljava/lang/Class;)V
    .locals 3
    .parameter "c"

    .prologue
    .line 578
    iget-object v0, p0, Lcom/android/email/mail/internet/MimeMessage$MimeMessageBuilder;->stack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 579
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Internal stack error: Expected \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' found \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/email/mail/internet/MimeMessage$MimeMessageBuilder;->stack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 582
    :cond_0
    return-void
.end method

.method private printHex(Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .parameter "tag"
    .parameter "str"

    .prologue
    .line 533
    sget-boolean v5, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v5, :cond_1

    .line 534
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Email MimeMessage >>>"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " print hex --------"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 536
    :try_start_0
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v6, "Email MimeMessage >>> |"

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 537
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .local v0, arr$:[B
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-byte v1, v0, v3

    .line 538
    .local v1, c:B
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v6, "\\x%02x"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 537
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 539
    .end local v1           #c:B
    :cond_0
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v6, "|\n"

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 544
    .end local v0           #arr$:[B
    .end local v3           #i$:I
    .end local v4           #len$:I
    :cond_1
    :goto_1
    return-void

    .line 540
    :catch_0
    move-exception v5

    move-object v2, v5

    .line 541
    .local v2, e:Ljava/lang/Exception;
    const-string v5, "MimeMessage >>>"

    const-string v6, "print hex error"

    invoke-static {v5, v6}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method public body(Lorg/apache/james/mime4j/BodyDescriptor;Ljava/io/InputStream;)V
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 686
    const-class v0, Lcom/android/email/mail/Part;

    invoke-direct {p0, v0}, Lcom/android/email/mail/internet/MimeMessage$MimeMessageBuilder;->expect(Ljava/lang/Class;)V

    .line 687
    invoke-virtual {p1}, Lorg/apache/james/mime4j/BodyDescriptor;->getTransferEncoding()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/android/email/mail/internet/MimeUtility;->decodeBody(Ljava/io/InputStream;Ljava/lang/String;)Lcom/android/email/mail/Body;

    move-result-object v0

    .line 689
    :try_start_0
    iget-object v1, p0, Lcom/android/email/mail/internet/MimeMessage$MimeMessageBuilder;->stack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/email/mail/Part;

    invoke-interface {p0, v0}, Lcom/android/email/mail/Part;->setBody(Lcom/android/email/mail/Body;)V
    :try_end_0
    .catch Lcom/android/email/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 693
    return-void

    .line 690
    :catch_0
    move-exception v0

    .line 691
    new-instance v1, Ljava/lang/Error;

    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public endBodyPart()V
    .locals 1

    .prologue
    .line 712
    const-class v0, Lcom/android/email/mail/BodyPart;

    invoke-direct {p0, v0}, Lcom/android/email/mail/internet/MimeMessage$MimeMessageBuilder;->expect(Ljava/lang/Class;)V

    .line 713
    iget-object v0, p0, Lcom/android/email/mail/internet/MimeMessage$MimeMessageBuilder;->stack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 714
    return-void
.end method

.method public endHeader()V
    .locals 1

    .prologue
    .line 669
    const-class v0, Lcom/android/email/mail/Part;

    invoke-direct {p0, v0}, Lcom/android/email/mail/internet/MimeMessage$MimeMessageBuilder;->expect(Ljava/lang/Class;)V

    .line 670
    return-void
.end method

.method public endMessage()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const-string v0, "Subject"

    const-string v0, "From"

    const-string v0, "Content-Type"

    const-string v0, "MimeMessage >>>"

    .line 600
    sget-boolean v0, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "endMessage"

    const-string v1, "--- start"

    invoke-static {v0, v1}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 601
    :cond_0
    const-class v0, Lcom/android/email/mail/internet/MimeMessage;

    invoke-direct {p0, v0}, Lcom/android/email/mail/internet/MimeMessage$MimeMessageBuilder;->expect(Ljava/lang/Class;)V

    .line 602
    iget-object v0, p0, Lcom/android/email/mail/internet/MimeMessage$MimeMessageBuilder;->stack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/mail/Part;

    .line 603
    instance-of v1, v0, Lcom/android/email/mail/Message;

    if-eqz v1, :cond_4

    .line 605
    :try_start_0
    const-string v1, "Content-Type"

    invoke-interface {v0, v1}, Lcom/android/email/mail/Part;->getHeader(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 606
    if-eqz v1, :cond_4

    .line 607
    const-string v1, "Content-Type"

    invoke-interface {v0, v1}, Lcom/android/email/mail/Part;->getHeader(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    .line 608
    const-string v2, "MimeMessage >>>"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "content type : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 609
    if-eqz v1, :cond_4

    const-string v2, "charset"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 610
    const-string v2, "="

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aget-object v1, v1, v2

    const-string v2, "\""

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 611
    const-string v2, "MimeMessage >>>"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "charset : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 612
    const-string v2, "Subject"

    invoke-interface {v0, v2}, Lcom/android/email/mail/Part;->getHeader(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 613
    if-eqz v2, :cond_1

    .line 614
    const-string v3, "sub B"

    const/4 v4, 0x0

    aget-object v4, v2, v4

    invoke-direct {p0, v3, v4}, Lcom/android/email/mail/internet/MimeMessage$MimeMessageBuilder;->printHex(Ljava/lang/String;Ljava/lang/String;)V

    .line 615
    const/4 v3, 0x0

    aget-object v3, v2, v3

    invoke-virtual {v3, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 616
    const-string v3, "Subject"

    const/4 v4, 0x0

    aget-object v2, v2, v4

    invoke-direct {p0, v2, v1}, Lcom/android/email/mail/internet/MimeMessage$MimeMessageBuilder;->convert2utf8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v3, v2}, Lcom/android/email/mail/Part;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 620
    :cond_1
    const-string v2, "From"

    invoke-interface {v0, v2}, Lcom/android/email/mail/Part;->getHeader(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 622
    if-eqz v2, :cond_4

    .line 624
    array-length v3, v2

    move v4, v9

    :goto_0
    if-ge v4, v3, :cond_2

    aget-object v5, v2, v4

    .line 626
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    .line 627
    const-string v7, "MimeMessage >>>"

    const-string v8, "from B : "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 624
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 630
    :cond_2
    const-string v3, "from B"

    const/4 v4, 0x0

    aget-object v4, v2, v4

    invoke-direct {p0, v3, v4}, Lcom/android/email/mail/internet/MimeMessage$MimeMessageBuilder;->printHex(Ljava/lang/String;Ljava/lang/String;)V

    .line 631
    const/4 v3, 0x0

    aget-object v3, v2, v3

    invoke-virtual {v3, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 632
    const-string v3, "From"

    const/4 v4, 0x0

    aget-object v4, v2, v4

    invoke-direct {p0, v4, v1}, Lcom/android/email/mail/internet/MimeMessage$MimeMessageBuilder;->convert2utf8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v3, v1}, Lcom/android/email/mail/Part;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 635
    :cond_3
    array-length v1, v2

    move v3, v9

    :goto_1
    if-ge v3, v1, :cond_4

    aget-object v4, v2, v3

    .line 637
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .line 638
    const-string v6, "MimeMessage >>>"

    const-string v7, "from A : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 635
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 644
    :catch_0
    move-exception v1

    .line 646
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 649
    :cond_4
    sget-boolean v1, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v1, :cond_5

    .line 650
    const-string v1, "endMessage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "--- pop "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 652
    :cond_5
    return-void
.end method

.method public endMultipart()V
    .locals 1

    .prologue
    .line 696
    iget-object v0, p0, Lcom/android/email/mail/internet/MimeMessage$MimeMessageBuilder;->stack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 697
    return-void
.end method

.method public epilogue(Ljava/io/InputStream;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 717
    const-class v0, Lcom/android/email/mail/internet/MimeMultipart;

    invoke-direct {p0, v0}, Lcom/android/email/mail/internet/MimeMessage$MimeMessageBuilder;->expect(Ljava/lang/Class;)V

    .line 718
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 720
    :goto_0
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 721
    int-to-char v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 724
    :cond_0
    return-void
.end method

.method public field(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 659
    const-class v0, Lcom/android/email/mail/Part;

    invoke-direct {p0, v0}, Lcom/android/email/mail/internet/MimeMessage$MimeMessageBuilder;->expect(Ljava/lang/Class;)V

    .line 661
    :try_start_0
    const-string v0, ":"

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 662
    iget-object v1, p0, Lcom/android/email/mail/internet/MimeMessage$MimeMessageBuilder;->stack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/email/mail/Part;

    const/4 v1, 0x0

    aget-object v1, v0, v1

    const/4 v2, 0x1

    aget-object v0, v0, v2

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v1, v0}, Lcom/android/email/mail/Part;->addHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/android/email/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 666
    return-void

    .line 663
    :catch_0
    move-exception v0

    .line 664
    new-instance v1, Ljava/lang/Error;

    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public preamble(Ljava/io/InputStream;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 728
    const-class v0, Lcom/android/email/mail/internet/MimeMultipart;

    invoke-direct {p0, v0}, Lcom/android/email/mail/internet/MimeMessage$MimeMessageBuilder;->expect(Ljava/lang/Class;)V

    .line 730
    :try_start_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 732
    :goto_0
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 733
    int-to-char v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Lcom/android/email/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 736
    :catch_0
    move-exception v0

    .line 737
    new-instance v1, Ljava/lang/Error;

    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 735
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/email/mail/internet/MimeMessage$MimeMessageBuilder;->stack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/email/mail/internet/MimeMultipart;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/email/mail/internet/MimeMultipart;->setPreamble(Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/android/email/mail/MessagingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_1

    .line 742
    :goto_1
    return-void

    .line 738
    :catch_1
    move-exception v0

    .line 739
    const-string v0, "MimeMessage >>>"

    const-string v1, "Out of memory in pop3 store"

    invoke-static {v0, v1}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public raw(Ljava/io/InputStream;)V
    .locals 2
    .parameter "is"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 745
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public startBodyPart()V
    .locals 2

    .prologue
    .line 700
    const-class v0, Lcom/android/email/mail/internet/MimeMultipart;

    invoke-direct {p0, v0}, Lcom/android/email/mail/internet/MimeMessage$MimeMessageBuilder;->expect(Ljava/lang/Class;)V

    .line 703
    :try_start_0
    new-instance v1, Lcom/android/email/mail/internet/MimeBodyPart;

    invoke-direct {v1}, Lcom/android/email/mail/internet/MimeBodyPart;-><init>()V

    .line 704
    iget-object v0, p0, Lcom/android/email/mail/internet/MimeMessage$MimeMessageBuilder;->stack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/mail/internet/MimeMultipart;

    invoke-virtual {v0, v1}, Lcom/android/email/mail/internet/MimeMultipart;->addBodyPart(Lcom/android/email/mail/BodyPart;)V

    .line 705
    iget-object v0, p0, Lcom/android/email/mail/internet/MimeMessage$MimeMessageBuilder;->stack:Ljava/util/Stack;

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/android/email/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 709
    return-void

    .line 706
    :catch_0
    move-exception v0

    .line 707
    new-instance v1, Ljava/lang/Error;

    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public startHeader()V
    .locals 1

    .prologue
    .line 655
    const-class v0, Lcom/android/email/mail/Part;

    invoke-direct {p0, v0}, Lcom/android/email/mail/internet/MimeMessage$MimeMessageBuilder;->expect(Ljava/lang/Class;)V

    .line 656
    return-void
.end method

.method public startMessage()V
    .locals 2

    .prologue
    .line 585
    iget-object v0, p0, Lcom/android/email/mail/internet/MimeMessage$MimeMessageBuilder;->stack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 586
    iget-object v0, p0, Lcom/android/email/mail/internet/MimeMessage$MimeMessageBuilder;->stack:Ljava/util/Stack;

    iget-object v1, p0, Lcom/android/email/mail/internet/MimeMessage$MimeMessageBuilder;->this$0:Lcom/android/email/mail/internet/MimeMessage;

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 597
    :goto_0
    return-void

    .line 588
    :cond_0
    const-class v0, Lcom/android/email/mail/Part;

    invoke-direct {p0, v0}, Lcom/android/email/mail/internet/MimeMessage$MimeMessageBuilder;->expect(Ljava/lang/Class;)V

    .line 590
    :try_start_0
    new-instance v1, Lcom/android/email/mail/internet/MimeMessage;

    invoke-direct {v1}, Lcom/android/email/mail/internet/MimeMessage;-><init>()V

    .line 591
    iget-object v0, p0, Lcom/android/email/mail/internet/MimeMessage$MimeMessageBuilder;->stack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/mail/Part;

    invoke-interface {v0, v1}, Lcom/android/email/mail/Part;->setBody(Lcom/android/email/mail/Body;)V

    .line 592
    iget-object v0, p0, Lcom/android/email/mail/internet/MimeMessage$MimeMessageBuilder;->stack:Ljava/util/Stack;

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/android/email/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 593
    :catch_0
    move-exception v0

    .line 594
    new-instance v1, Ljava/lang/Error;

    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public startMultipart(Lorg/apache/james/mime4j/BodyDescriptor;)V
    .locals 3
    .parameter

    .prologue
    .line 673
    const-class v0, Lcom/android/email/mail/Part;

    invoke-direct {p0, v0}, Lcom/android/email/mail/internet/MimeMessage$MimeMessageBuilder;->expect(Ljava/lang/Class;)V

    .line 675
    iget-object v0, p0, Lcom/android/email/mail/internet/MimeMessage$MimeMessageBuilder;->stack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/mail/Part;

    .line 677
    :try_start_0
    new-instance v1, Lcom/android/email/mail/internet/MimeMultipart;

    invoke-interface {v0}, Lcom/android/email/mail/Part;->getContentType()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/email/mail/internet/MimeMultipart;-><init>(Ljava/lang/String;)V

    .line 678
    invoke-interface {v0, v1}, Lcom/android/email/mail/Part;->setBody(Lcom/android/email/mail/Body;)V

    .line 679
    iget-object v0, p0, Lcom/android/email/mail/internet/MimeMessage$MimeMessageBuilder;->stack:Ljava/util/Stack;

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/android/email/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 683
    return-void

    .line 680
    :catch_0
    move-exception v0

    .line 681
    new-instance v1, Ljava/lang/Error;

    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
