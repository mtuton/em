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
    .line 521
    iput-object p1, p0, Lcom/android/email/mail/internet/MimeMessage$MimeMessageBuilder;->this$0:Lcom/android/email/mail/internet/MimeMessage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 519
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/android/email/mail/internet/MimeMessage$MimeMessageBuilder;->stack:Ljava/util/Stack;

    .line 522
    return-void
.end method

.method private convert2utf8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "str"
    .parameter "charset"

    .prologue
    .line 550
    const/4 v0, 0x0

    .line 553
    .local v0, after:Ljava/lang/String;
    :try_start_0
    const-string v7, "8859_1"

    invoke-virtual {p1, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    .line 554
    .local v2, b:[B
    const-string v7, "UTF-8"

    invoke-static {v7}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v7

    invoke-virtual {v7}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    .line 556
    .local v3, decoder:Ljava/nio/charset/CharsetDecoder;
    :try_start_1
    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;

    move-result-object v6

    .line 557
    .local v6, r:Ljava/nio/CharBuffer;
    invoke-virtual {v6}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 558
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v7, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 559
    const-string v7, "convert2utf8 normal"

    invoke-direct {p0, v7, v0}, Lcom/android/email/mail/internet/MimeMessage$MimeMessageBuilder;->printHex(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/nio/charset/CharacterCodingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v1, v0

    .line 570
    .end local v0           #after:Ljava/lang/String;
    .end local v2           #b:[B
    .end local v3           #decoder:Ljava/nio/charset/CharsetDecoder;
    .end local v6           #r:Ljava/nio/CharBuffer;
    .local v1, after:Ljava/lang/Object;
    :goto_0
    return-object v1

    .line 561
    .end local v1           #after:Ljava/lang/Object;
    .restart local v0       #after:Ljava/lang/String;
    .restart local v2       #b:[B
    .restart local v3       #decoder:Ljava/nio/charset/CharsetDecoder;
    :catch_0
    move-exception v7

    move-object v4, v7

    move-object v1, v0

    .line 562
    .end local v0           #after:Ljava/lang/String;
    .local v1, after:Ljava/lang/String;
    .local v4, e:Ljava/nio/charset/CharacterCodingException;
    :try_start_2
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2, p2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_2

    .line 563
    .end local v1           #after:Ljava/lang/String;
    .restart local v0       #after:Ljava/lang/String;
    :try_start_3
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v7, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 564
    const-string v7, "convert2utf8 euc-kr"

    invoke-direct {p0, v7, v0}, Lcom/android/email/mail/internet/MimeMessage$MimeMessageBuilder;->printHex(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_1

    move-object v1, v0

    .line 565
    .local v1, after:Ljava/lang/Object;
    goto :goto_0

    .line 567
    .end local v1           #after:Ljava/lang/Object;
    .end local v2           #b:[B
    .end local v3           #decoder:Ljava/nio/charset/CharsetDecoder;
    .end local v4           #e:Ljava/nio/charset/CharacterCodingException;
    :catch_1
    move-exception v7

    move-object v5, v7

    .line 568
    .local v5, e1:Ljava/io/UnsupportedEncodingException;
    :goto_1
    invoke-virtual {v5}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    move-object v1, v0

    .line 570
    .restart local v1       #after:Ljava/lang/Object;
    goto :goto_0

    .line 567
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
    .line 574
    iget-object v0, p0, Lcom/android/email/mail/internet/MimeMessage$MimeMessageBuilder;->stack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 575
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

    .line 578
    :cond_0
    return-void
.end method

.method private printHex(Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .parameter "tag"
    .parameter "str"

    .prologue
    .line 529
    sget-boolean v5, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v5, :cond_1

    .line 530
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

    .line 532
    :try_start_0
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v6, "Email MimeMessage >>> |"

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 533
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

    .line 534
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

    .line 533
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 535
    .end local v1           #c:B
    :cond_0
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v6, "|\n"

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 540
    .end local v0           #arr$:[B
    .end local v3           #i$:I
    .end local v4           #len$:I
    :cond_1
    :goto_1
    return-void

    .line 536
    :catch_0
    move-exception v5

    move-object v2, v5

    .line 537
    .local v2, e:Ljava/lang/Exception;
    const-string v5, "MimeMessage >>>"

    const-string v6, "print hex error"

    invoke-static {v5, v6}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method public body(Lorg/apache/james/mime4j/BodyDescriptor;Ljava/io/InputStream;)V
    .locals 3
    .parameter "bd"
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 681
    const-class v2, Lcom/android/email/mail/Part;

    invoke-direct {p0, v2}, Lcom/android/email/mail/internet/MimeMessage$MimeMessageBuilder;->expect(Ljava/lang/Class;)V

    .line 682
    invoke-virtual {p1}, Lorg/apache/james/mime4j/BodyDescriptor;->getTransferEncoding()Ljava/lang/String;

    move-result-object v2

    invoke-static {p2, v2}, Lcom/android/email/mail/internet/MimeUtility;->decodeBody(Ljava/io/InputStream;Ljava/lang/String;)Lcom/android/email/mail/Body;

    move-result-object v0

    .line 684
    .local v0, body:Lcom/android/email/mail/Body;
    :try_start_0
    iget-object v2, p0, Lcom/android/email/mail/internet/MimeMessage$MimeMessageBuilder;->stack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/email/mail/Part;

    invoke-interface {p0, v0}, Lcom/android/email/mail/Part;->setBody(Lcom/android/email/mail/Body;)V
    :try_end_0
    .catch Lcom/android/email/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 688
    return-void

    .line 685
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 686
    .local v1, me:Lcom/android/email/mail/MessagingException;
    new-instance v2, Ljava/lang/Error;

    invoke-direct {v2, v1}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public endBodyPart()V
    .locals 1

    .prologue
    .line 707
    const-class v0, Lcom/android/email/mail/BodyPart;

    invoke-direct {p0, v0}, Lcom/android/email/mail/internet/MimeMessage$MimeMessageBuilder;->expect(Ljava/lang/Class;)V

    .line 708
    iget-object v0, p0, Lcom/android/email/mail/internet/MimeMessage$MimeMessageBuilder;->stack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 709
    return-void
.end method

.method public endHeader()V
    .locals 1

    .prologue
    .line 664
    const-class v0, Lcom/android/email/mail/Part;

    invoke-direct {p0, v0}, Lcom/android/email/mail/internet/MimeMessage$MimeMessageBuilder;->expect(Ljava/lang/Class;)V

    .line 665
    return-void
.end method

.method public endMessage()V
    .locals 14

    .prologue
    const-string v11, "Subject"

    const-string v11, "Content-Type"

    const-string v11, "From"

    const-string v11, "MimeMessage >>>"

    .line 596
    sget-boolean v11, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v11, :cond_0

    const-string v11, "endMessage"

    const-string v12, "--- start"

    invoke-static {v11, v12}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 597
    :cond_0
    const-class v11, Lcom/android/email/mail/internet/MimeMessage;

    invoke-direct {p0, v11}, Lcom/android/email/mail/internet/MimeMessage$MimeMessageBuilder;->expect(Ljava/lang/Class;)V

    .line 598
    iget-object v11, p0, Lcom/android/email/mail/internet/MimeMessage$MimeMessageBuilder;->stack:Ljava/util/Stack;

    invoke-virtual {v11}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/email/mail/Part;

    .line 599
    .local v7, p:Lcom/android/email/mail/Part;
    instance-of v11, v7, Lcom/android/email/mail/Message;

    if-eqz v11, :cond_6

    .line 601
    :try_start_0
    const-string v11, "Content-Type"

    invoke-interface {v7, v11}, Lcom/android/email/mail/Part;->getHeader(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    if-nez v11, :cond_2

    .line 647
    :cond_1
    :goto_0
    return-void

    .line 603
    :cond_2
    const-string v11, "Content-Type"

    invoke-interface {v7, v11}, Lcom/android/email/mail/Part;->getHeader(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    aget-object v2, v11, v12

    .line 604
    .local v2, data:Ljava/lang/String;
    const-string v11, "MimeMessage >>>"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "content type : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 605
    if-eqz v2, :cond_6

    const-string v11, "charset"

    invoke-virtual {v2, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 606
    const-string v11, "="

    const/4 v12, 0x2

    invoke-virtual {v2, v11, v12}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x1

    aget-object v11, v11, v12

    const-string v12, "\""

    const-string v13, ""

    invoke-virtual {v11, v12, v13}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 607
    .local v1, charset:Ljava/lang/String;
    const-string v11, "MimeMessage >>>"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "charset : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 608
    const-string v11, "Subject"

    invoke-interface {v7, v11}, Lcom/android/email/mail/Part;->getHeader(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 609
    .local v10, sub:[Ljava/lang/String;
    if-eqz v10, :cond_3

    .line 610
    const-string v11, "sub B"

    const/4 v12, 0x0

    aget-object v12, v10, v12

    invoke-direct {p0, v11, v12}, Lcom/android/email/mail/internet/MimeMessage$MimeMessageBuilder;->printHex(Ljava/lang/String;Ljava/lang/String;)V

    .line 611
    const/4 v11, 0x0

    aget-object v11, v10, v11

    invoke-virtual {v11, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_3

    .line 612
    const-string v11, "Subject"

    const/4 v12, 0x0

    aget-object v12, v10, v12

    invoke-direct {p0, v12, v1}, Lcom/android/email/mail/internet/MimeMessage$MimeMessageBuilder;->convert2utf8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v7, v11, v12}, Lcom/android/email/mail/Part;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 616
    :cond_3
    const-string v11, "From"

    invoke-interface {v7, v11}, Lcom/android/email/mail/Part;->getHeader(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 618
    .local v4, from:[Ljava/lang/String;
    if-eqz v4, :cond_6

    .line 620
    move-object v0, v4

    .local v0, arr$:[Ljava/lang/String;
    array-length v6, v0

    .local v6, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_1
    if-ge v5, v6, :cond_4

    aget-object v8, v0, v5

    .line 622
    .local v8, s:Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    .line 623
    .local v9, sbuf:Ljava/lang/StringBuffer;
    const-string v11, "MimeMessage >>>"

    const-string v12, "from B : "

    invoke-virtual {v9, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 620
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 626
    .end local v8           #s:Ljava/lang/String;
    .end local v9           #sbuf:Ljava/lang/StringBuffer;
    :cond_4
    const-string v11, "from B"

    const/4 v12, 0x0

    aget-object v12, v4, v12

    invoke-direct {p0, v11, v12}, Lcom/android/email/mail/internet/MimeMessage$MimeMessageBuilder;->printHex(Ljava/lang/String;Ljava/lang/String;)V

    .line 627
    const/4 v11, 0x0

    aget-object v11, v4, v11

    invoke-virtual {v11, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_5

    .line 628
    const-string v11, "From"

    const/4 v12, 0x0

    aget-object v12, v4, v12

    invoke-direct {p0, v12, v1}, Lcom/android/email/mail/internet/MimeMessage$MimeMessageBuilder;->convert2utf8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v7, v11, v12}, Lcom/android/email/mail/Part;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 631
    :cond_5
    const-string v11, "From"

    invoke-interface {v7, v11}, Lcom/android/email/mail/Part;->getHeader(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v6, v0

    const/4 v5, 0x0

    :goto_2
    if-ge v5, v6, :cond_6

    aget-object v8, v0, v5

    .line 633
    .restart local v8       #s:Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    .line 634
    .restart local v9       #sbuf:Ljava/lang/StringBuffer;
    const-string v11, "MimeMessage >>>"

    const-string v12, "from A : "

    invoke-virtual {v9, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/android/email/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 631
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 639
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #charset:Ljava/lang/String;
    .end local v2           #data:Ljava/lang/String;
    .end local v4           #from:[Ljava/lang/String;
    .end local v5           #i$:I
    .end local v6           #len$:I
    .end local v8           #s:Ljava/lang/String;
    .end local v9           #sbuf:Ljava/lang/StringBuffer;
    .end local v10           #sub:[Ljava/lang/String;
    :catch_0
    move-exception v11

    move-object v3, v11

    .line 641
    .local v3, e:Lcom/android/email/mail/MessagingException;
    invoke-virtual {v3}, Lcom/android/email/mail/MessagingException;->printStackTrace()V

    .line 644
    .end local v3           #e:Lcom/android/email/mail/MessagingException;
    :cond_6
    sget-boolean v11, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v11, :cond_1

    .line 645
    const-string v11, "endMessage"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "--- pop "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public endMultipart()V
    .locals 1

    .prologue
    .line 691
    iget-object v0, p0, Lcom/android/email/mail/internet/MimeMessage$MimeMessageBuilder;->stack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 692
    return-void
.end method

.method public epilogue(Ljava/io/InputStream;)V
    .locals 3
    .parameter "is"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 712
    const-class v2, Lcom/android/email/mail/internet/MimeMultipart;

    invoke-direct {p0, v2}, Lcom/android/email/mail/internet/MimeMessage$MimeMessageBuilder;->expect(Ljava/lang/Class;)V

    .line 713
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 715
    .local v1, sb:Ljava/lang/StringBuffer;
    :goto_0
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    .local v0, b:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 716
    int-to-char v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 719
    :cond_0
    return-void
.end method

.method public field(Ljava/lang/String;)V
    .locals 4
    .parameter "fieldData"

    .prologue
    .line 654
    const-class v2, Lcom/android/email/mail/Part;

    invoke-direct {p0, v2}, Lcom/android/email/mail/internet/MimeMessage$MimeMessageBuilder;->expect(Ljava/lang/Class;)V

    .line 656
    :try_start_0
    const-string v2, ":"

    const/4 v3, 0x2

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    .line 657
    .local v1, tokens:[Ljava/lang/String;
    iget-object v2, p0, Lcom/android/email/mail/internet/MimeMessage$MimeMessageBuilder;->stack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/email/mail/Part;

    const/4 v2, 0x0

    aget-object v2, v1, v2

    const/4 v3, 0x1

    aget-object v3, v1, v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p0, v2, v3}, Lcom/android/email/mail/Part;->addHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/android/email/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 661
    return-void

    .line 658
    .end local v1           #tokens:[Ljava/lang/String;
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 659
    .local v0, me:Lcom/android/email/mail/MessagingException;
    new-instance v2, Ljava/lang/Error;

    invoke-direct {v2, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public preamble(Ljava/io/InputStream;)V
    .locals 6
    .parameter "is"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 723
    const-class v4, Lcom/android/email/mail/internet/MimeMultipart;

    invoke-direct {p0, v4}, Lcom/android/email/mail/internet/MimeMessage$MimeMessageBuilder;->expect(Ljava/lang/Class;)V

    .line 725
    :try_start_0
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 727
    .local v3, sb:Ljava/lang/StringBuffer;
    :goto_0
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    .local v0, b:I
    const/4 v4, -0x1

    if-eq v0, v4, :cond_0

    .line 728
    int-to-char v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Lcom/android/email/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 731
    .end local v0           #b:I
    .end local v3           #sb:Ljava/lang/StringBuffer;
    .end local p0
    :catch_0
    move-exception v4

    move-object v1, v4

    .line 732
    .local v1, me:Lcom/android/email/mail/MessagingException;
    new-instance v4, Ljava/lang/Error;

    invoke-direct {v4, v1}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 730
    .end local v1           #me:Lcom/android/email/mail/MessagingException;
    .restart local v0       #b:I
    .restart local v3       #sb:Ljava/lang/StringBuffer;
    .restart local p0
    :cond_0
    :try_start_1
    iget-object v4, p0, Lcom/android/email/mail/internet/MimeMessage$MimeMessageBuilder;->stack:Ljava/util/Stack;

    invoke-virtual {v4}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/email/mail/internet/MimeMultipart;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/email/mail/internet/MimeMultipart;->setPreamble(Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/android/email/mail/MessagingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_1

    .line 737
    .end local v0           #b:I
    .end local v3           #sb:Ljava/lang/StringBuffer;
    :goto_1
    return-void

    .line 733
    :catch_1
    move-exception v4

    move-object v2, v4

    .line 734
    .local v2, oe:Ljava/lang/OutOfMemoryError;
    const-string v4, "MimeMessage >>>"

    const-string v5, "Out of memory in pop3 store"

    invoke-static {v4, v5}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

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
    .line 740
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public startBodyPart()V
    .locals 3

    .prologue
    .line 695
    const-class v2, Lcom/android/email/mail/internet/MimeMultipart;

    invoke-direct {p0, v2}, Lcom/android/email/mail/internet/MimeMessage$MimeMessageBuilder;->expect(Ljava/lang/Class;)V

    .line 698
    :try_start_0
    new-instance v0, Lcom/android/email/mail/internet/MimeBodyPart;

    invoke-direct {v0}, Lcom/android/email/mail/internet/MimeBodyPart;-><init>()V

    .line 699
    .local v0, bodyPart:Lcom/android/email/mail/internet/MimeBodyPart;
    iget-object v2, p0, Lcom/android/email/mail/internet/MimeMessage$MimeMessageBuilder;->stack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/email/mail/internet/MimeMultipart;

    invoke-virtual {v2, v0}, Lcom/android/email/mail/internet/MimeMultipart;->addBodyPart(Lcom/android/email/mail/BodyPart;)V

    .line 700
    iget-object v2, p0, Lcom/android/email/mail/internet/MimeMessage$MimeMessageBuilder;->stack:Ljava/util/Stack;

    invoke-virtual {v2, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/android/email/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 704
    return-void

    .line 701
    .end local v0           #bodyPart:Lcom/android/email/mail/internet/MimeBodyPart;
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 702
    .local v1, me:Lcom/android/email/mail/MessagingException;
    new-instance v2, Ljava/lang/Error;

    invoke-direct {v2, v1}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public startHeader()V
    .locals 1

    .prologue
    .line 650
    const-class v0, Lcom/android/email/mail/Part;

    invoke-direct {p0, v0}, Lcom/android/email/mail/internet/MimeMessage$MimeMessageBuilder;->expect(Ljava/lang/Class;)V

    .line 651
    return-void
.end method

.method public startMessage()V
    .locals 4

    .prologue
    .line 581
    iget-object v2, p0, Lcom/android/email/mail/internet/MimeMessage$MimeMessageBuilder;->stack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 582
    iget-object v2, p0, Lcom/android/email/mail/internet/MimeMessage$MimeMessageBuilder;->stack:Ljava/util/Stack;

    iget-object v3, p0, Lcom/android/email/mail/internet/MimeMessage$MimeMessageBuilder;->this$0:Lcom/android/email/mail/internet/MimeMessage;

    invoke-virtual {v2, v3}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 593
    :goto_0
    return-void

    .line 584
    :cond_0
    const-class v2, Lcom/android/email/mail/Part;

    invoke-direct {p0, v2}, Lcom/android/email/mail/internet/MimeMessage$MimeMessageBuilder;->expect(Ljava/lang/Class;)V

    .line 586
    :try_start_0
    new-instance v0, Lcom/android/email/mail/internet/MimeMessage;

    invoke-direct {v0}, Lcom/android/email/mail/internet/MimeMessage;-><init>()V

    .line 587
    .local v0, m:Lcom/android/email/mail/internet/MimeMessage;
    iget-object v2, p0, Lcom/android/email/mail/internet/MimeMessage$MimeMessageBuilder;->stack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/email/mail/Part;

    invoke-interface {v2, v0}, Lcom/android/email/mail/Part;->setBody(Lcom/android/email/mail/Body;)V

    .line 588
    iget-object v2, p0, Lcom/android/email/mail/internet/MimeMessage$MimeMessageBuilder;->stack:Ljava/util/Stack;

    invoke-virtual {v2, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/android/email/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 589
    .end local v0           #m:Lcom/android/email/mail/internet/MimeMessage;
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 590
    .local v1, me:Lcom/android/email/mail/MessagingException;
    new-instance v2, Ljava/lang/Error;

    invoke-direct {v2, v1}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public startMultipart(Lorg/apache/james/mime4j/BodyDescriptor;)V
    .locals 4
    .parameter "bd"

    .prologue
    .line 668
    const-class v3, Lcom/android/email/mail/Part;

    invoke-direct {p0, v3}, Lcom/android/email/mail/internet/MimeMessage$MimeMessageBuilder;->expect(Ljava/lang/Class;)V

    .line 670
    iget-object v3, p0, Lcom/android/email/mail/internet/MimeMessage$MimeMessageBuilder;->stack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/mail/Part;

    .line 672
    .local v0, e:Lcom/android/email/mail/Part;
    :try_start_0
    new-instance v2, Lcom/android/email/mail/internet/MimeMultipart;

    invoke-interface {v0}, Lcom/android/email/mail/Part;->getContentType()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/email/mail/internet/MimeMultipart;-><init>(Ljava/lang/String;)V

    .line 673
    .local v2, multiPart:Lcom/android/email/mail/internet/MimeMultipart;
    invoke-interface {v0, v2}, Lcom/android/email/mail/Part;->setBody(Lcom/android/email/mail/Body;)V

    .line 674
    iget-object v3, p0, Lcom/android/email/mail/internet/MimeMessage$MimeMessageBuilder;->stack:Ljava/util/Stack;

    invoke-virtual {v3, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/android/email/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 678
    return-void

    .line 675
    .end local v2           #multiPart:Lcom/android/email/mail/internet/MimeMultipart;
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 676
    .local v1, me:Lcom/android/email/mail/MessagingException;
    new-instance v3, Ljava/lang/Error;

    invoke-direct {v3, v1}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method
