.class public abstract Lcom/android/exchange/adapter/Parser;
.super Ljava/util/Observable;
.source "Parser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/exchange/adapter/Parser$EasParserException;,
        Lcom/android/exchange/adapter/Parser$EodException;,
        Lcom/android/exchange/adapter/Parser$EofException;
    }
.end annotation


# static fields
.field private static tagTables:[[Ljava/lang/String;


# instance fields
.field private capture:Z

.field private captureArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field captureFile:Ljava/io/BufferedOutputStream;

.field private capturebytes:Z

.field private depth:I

.field public endTag:I

.field public fullStartTag:I

.field private in:Ljava/io/InputStream;

.field private logTag:Ljava/lang/String;

.field private logging:Z

.field public name:Ljava/lang/String;

.field private nameArray:[Ljava/lang/String;

.field private nextId:I

.field private noContent:Z

.field public num:I

.field public opaqueData:[B

.field public page:I

.field public startTag:I

.field private startTagArray:[I

.field public tag:I

.field private tagTable:[Ljava/lang/String;

.field public text:Ljava/lang/String;

.field tid:J

.field public type:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 100
    const/16 v0, 0x96

    new-array v0, v0, [[Ljava/lang/String;

    sput-object v0, Lcom/android/exchange/adapter/Parser;->tagTables:[[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 6
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/high16 v5, -0x8000

    const/4 v4, 0x0

    .line 182
    invoke-direct {p0}, Ljava/util/Observable;-><init>()V

    .line 66
    iput-boolean v4, p0, Lcom/android/exchange/adapter/Parser;->logging:Z

    .line 67
    iput-boolean v4, p0, Lcom/android/exchange/adapter/Parser;->capture:Z

    .line 68
    const-string v3, "EAS Parser"

    iput-object v3, p0, Lcom/android/exchange/adapter/Parser;->logTag:Ljava/lang/String;

    .line 71
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/exchange/adapter/Parser;->captureFile:Ljava/io/BufferedOutputStream;

    .line 72
    iput-boolean v4, p0, Lcom/android/exchange/adapter/Parser;->capturebytes:Z

    .line 94
    iput v5, p0, Lcom/android/exchange/adapter/Parser;->nextId:I

    .line 103
    const/16 v3, 0x20

    new-array v3, v3, [Ljava/lang/String;

    iput-object v3, p0, Lcom/android/exchange/adapter/Parser;->nameArray:[Ljava/lang/String;

    .line 107
    const/16 v3, 0x80

    new-array v3, v3, [I

    iput-object v3, p0, Lcom/android/exchange/adapter/Parser;->startTagArray:[I

    .line 112
    iput v5, p0, Lcom/android/exchange/adapter/Parser;->endTag:I

    .line 173
    sget-object v2, Lcom/android/exchange/adapter/Tags;->pages:[[Ljava/lang/String;

    .line 174
    .local v2, pages:[[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_1

    .line 175
    aget-object v1, v2, v0

    .line 176
    .local v1, page:[Ljava/lang/String;
    array-length v3, v1

    if-lez v3, :cond_0

    .line 177
    sget-object v3, Lcom/android/exchange/adapter/Parser;->tagTables:[[Ljava/lang/String;

    aput-object v1, v3, v0

    .line 174
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 183
    .end local v1           #page:[Ljava/lang/String;
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/exchange/adapter/Parser;->setInput(Ljava/io/InputStream;)V

    .line 184
    sget-boolean v3, Lcom/android/exchange/Eas;->PARSER_LOG:Z

    iput-boolean v3, p0, Lcom/android/exchange/adapter/Parser;->logging:Z

    .line 185
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getId()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/exchange/adapter/Parser;->tid:J

    .line 186
    return-void
.end method

.method private final getNext(ZLjava/io/OutputStream;Ljava/util/Observer;)I
    .locals 12
    .parameter "asInt"
    .parameter "os"
    .parameter "observer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x5

    const/4 v9, 0x3

    const/4 v8, 0x1

    const/high16 v7, -0x8000

    .line 505
    iget v4, p0, Lcom/android/exchange/adapter/Parser;->endTag:I

    .line 506
    .local v4, savedEndTag:I
    iget v6, p0, Lcom/android/exchange/adapter/Parser;->type:I

    if-ne v6, v9, :cond_1

    .line 507
    iget v6, p0, Lcom/android/exchange/adapter/Parser;->depth:I

    sub-int/2addr v6, v8

    iput v6, p0, Lcom/android/exchange/adapter/Parser;->depth:I

    .line 512
    :goto_0
    iget-boolean v6, p0, Lcom/android/exchange/adapter/Parser;->noContent:Z

    if-eqz v6, :cond_2

    .line 513
    iput v9, p0, Lcom/android/exchange/adapter/Parser;->type:I

    .line 514
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/exchange/adapter/Parser;->noContent:Z

    .line 515
    iput v4, p0, Lcom/android/exchange/adapter/Parser;->endTag:I

    .line 517
    iget-boolean v6, p0, Lcom/android/exchange/adapter/Parser;->logging:Z

    if-eqz v6, :cond_0

    .line 518
    iget-object v6, p0, Lcom/android/exchange/adapter/Parser;->tagTable:[Ljava/lang/String;

    iget v7, p0, Lcom/android/exchange/adapter/Parser;->startTag:I

    sub-int/2addr v7, v10

    aget-object v5, v6, v7

    .line 519
    .local v5, tempname:Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "<"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " />"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/exchange/adapter/Parser;->log(Ljava/lang/String;)V

    .line 522
    .end local v5           #tempname:Ljava/lang/String;
    :cond_0
    iget v6, p0, Lcom/android/exchange/adapter/Parser;->type:I

    .line 624
    :goto_1
    return v6

    .line 509
    :cond_1
    iput v7, p0, Lcom/android/exchange/adapter/Parser;->endTag:I

    goto :goto_0

    .line 525
    :cond_2
    iput-object v11, p0, Lcom/android/exchange/adapter/Parser;->text:Ljava/lang/String;

    .line 526
    iput-object v11, p0, Lcom/android/exchange/adapter/Parser;->name:Ljava/lang/String;

    .line 528
    invoke-direct {p0}, Lcom/android/exchange/adapter/Parser;->nextId()I

    move-result v2

    .line 529
    .local v2, id:I
    :goto_2
    if-nez v2, :cond_3

    .line 530
    iput v7, p0, Lcom/android/exchange/adapter/Parser;->nextId:I

    .line 532
    invoke-direct {p0}, Lcom/android/exchange/adapter/Parser;->readByte()I

    move-result v3

    .line 534
    .local v3, pg:I
    shl-int/lit8 v6, v3, 0x6

    iput v6, p0, Lcom/android/exchange/adapter/Parser;->page:I

    .line 536
    sget-object v6, Lcom/android/exchange/adapter/Parser;->tagTables:[[Ljava/lang/String;

    aget-object v6, v6, v3

    iput-object v6, p0, Lcom/android/exchange/adapter/Parser;->tagTable:[Ljava/lang/String;

    .line 537
    invoke-direct {p0}, Lcom/android/exchange/adapter/Parser;->nextId()I

    move-result v2

    .line 538
    goto :goto_2

    .line 539
    .end local v3           #pg:I
    :cond_3
    iput v7, p0, Lcom/android/exchange/adapter/Parser;->nextId:I

    .line 541
    sparse-switch v2, :sswitch_data_0

    .line 607
    const/4 v6, 0x2

    iput v6, p0, Lcom/android/exchange/adapter/Parser;->type:I

    .line 609
    and-int/lit8 v6, v2, 0x3f

    iput v6, p0, Lcom/android/exchange/adapter/Parser;->startTag:I

    .line 610
    iput v2, p0, Lcom/android/exchange/adapter/Parser;->fullStartTag:I

    .line 612
    and-int/lit8 v6, v2, 0x40

    if-nez v6, :cond_b

    move v6, v8

    :goto_3
    iput-boolean v6, p0, Lcom/android/exchange/adapter/Parser;->noContent:Z

    .line 613
    iget v6, p0, Lcom/android/exchange/adapter/Parser;->depth:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/android/exchange/adapter/Parser;->depth:I

    .line 614
    iget-boolean v6, p0, Lcom/android/exchange/adapter/Parser;->logging:Z

    if-eqz v6, :cond_4

    .line 615
    iget-object v6, p0, Lcom/android/exchange/adapter/Parser;->tagTable:[Ljava/lang/String;

    iget v7, p0, Lcom/android/exchange/adapter/Parser;->startTag:I

    sub-int/2addr v7, v10

    aget-object v6, v6, v7

    iput-object v6, p0, Lcom/android/exchange/adapter/Parser;->name:Ljava/lang/String;

    .line 617
    iget-object v6, p0, Lcom/android/exchange/adapter/Parser;->nameArray:[Ljava/lang/String;

    iget v7, p0, Lcom/android/exchange/adapter/Parser;->depth:I

    iget-object v8, p0, Lcom/android/exchange/adapter/Parser;->name:Ljava/lang/String;

    aput-object v8, v6, v7

    .line 620
    :cond_4
    iget-object v6, p0, Lcom/android/exchange/adapter/Parser;->startTagArray:[I

    iget v7, p0, Lcom/android/exchange/adapter/Parser;->depth:I

    iget v8, p0, Lcom/android/exchange/adapter/Parser;->startTag:I

    aput v8, v6, v7

    .line 624
    :cond_5
    :goto_4
    iget v6, p0, Lcom/android/exchange/adapter/Parser;->type:I

    goto :goto_1

    .line 544
    :sswitch_0
    iput v8, p0, Lcom/android/exchange/adapter/Parser;->type:I

    goto :goto_4

    .line 549
    :sswitch_1
    iput v9, p0, Lcom/android/exchange/adapter/Parser;->type:I

    .line 550
    iget-boolean v6, p0, Lcom/android/exchange/adapter/Parser;->logging:Z

    if-eqz v6, :cond_6

    .line 551
    iget-object v6, p0, Lcom/android/exchange/adapter/Parser;->nameArray:[Ljava/lang/String;

    iget v7, p0, Lcom/android/exchange/adapter/Parser;->depth:I

    aget-object v6, v6, v7

    iput-object v6, p0, Lcom/android/exchange/adapter/Parser;->name:Ljava/lang/String;

    .line 555
    :cond_6
    iget-object v6, p0, Lcom/android/exchange/adapter/Parser;->startTagArray:[I

    iget v7, p0, Lcom/android/exchange/adapter/Parser;->depth:I

    aget v6, v6, v7

    iput v6, p0, Lcom/android/exchange/adapter/Parser;->endTag:I

    iput v6, p0, Lcom/android/exchange/adapter/Parser;->startTag:I

    goto :goto_4

    .line 560
    :sswitch_2
    if-nez p2, :cond_8

    .line 562
    const/4 v6, 0x4

    iput v6, p0, Lcom/android/exchange/adapter/Parser;->type:I

    .line 563
    if-eqz p1, :cond_7

    .line 564
    invoke-direct {p0}, Lcom/android/exchange/adapter/Parser;->readInlineInt()I

    move-result v6

    iput v6, p0, Lcom/android/exchange/adapter/Parser;->num:I

    .line 576
    :goto_5
    iget-boolean v6, p0, Lcom/android/exchange/adapter/Parser;->logging:Z

    if-eqz v6, :cond_5

    .line 577
    iget-object v6, p0, Lcom/android/exchange/adapter/Parser;->tagTable:[Ljava/lang/String;

    iget v7, p0, Lcom/android/exchange/adapter/Parser;->startTag:I

    sub-int/2addr v7, v10

    aget-object v6, v6, v7

    iput-object v6, p0, Lcom/android/exchange/adapter/Parser;->name:Ljava/lang/String;

    .line 578
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/android/exchange/adapter/Parser;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-eqz p1, :cond_9

    iget v7, p0, Lcom/android/exchange/adapter/Parser;->num:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    :goto_6
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/exchange/adapter/Parser;->log(Ljava/lang/String;)V

    goto :goto_4

    .line 566
    :cond_7
    invoke-direct {p0}, Lcom/android/exchange/adapter/Parser;->readInlineString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/exchange/adapter/Parser;->text:Ljava/lang/String;

    goto :goto_5

    .line 569
    :cond_8
    iput-object v11, p0, Lcom/android/exchange/adapter/Parser;->text:Ljava/lang/String;

    .line 570
    invoke-direct {p0, p2, p3}, Lcom/android/exchange/adapter/Parser;->readInlineStream(Ljava/io/OutputStream;Ljava/util/Observer;)I

    move-result v6

    iput v6, p0, Lcom/android/exchange/adapter/Parser;->num:I

    goto :goto_5

    .line 578
    :cond_9
    iget-object v7, p0, Lcom/android/exchange/adapter/Parser;->text:Ljava/lang/String;

    goto :goto_6

    .line 586
    :sswitch_3
    invoke-direct {p0}, Lcom/android/exchange/adapter/Parser;->readInt()I

    move-result v1

    .line 587
    .local v1, count:I
    new-array v0, v1, [B

    .line 589
    .local v0, buf:[B
    :goto_7
    if-lez v1, :cond_a

    .line 590
    iget-object v6, p0, Lcom/android/exchange/adapter/Parser;->in:Ljava/io/InputStream;

    array-length v7, v0

    sub-int/2addr v7, v1

    invoke-virtual {v6, v0, v7, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v6

    sub-int/2addr v1, v6

    goto :goto_7

    .line 593
    :cond_a
    const/4 v6, 0x4

    iput v6, p0, Lcom/android/exchange/adapter/Parser;->type:I

    .line 596
    iput-object v0, p0, Lcom/android/exchange/adapter/Parser;->opaqueData:[B

    goto/16 :goto_4

    .line 612
    .end local v0           #buf:[B
    .end local v1           #count:I
    :cond_b
    const/4 v6, 0x0

    goto/16 :goto_3

    .line 541
    nop

    :sswitch_data_0
    .sparse-switch
        -0x1 -> :sswitch_0
        0x1 -> :sswitch_1
        0x3 -> :sswitch_2
        0xc3 -> :sswitch_3
    .end sparse-switch
.end method

.method private final getNextStream(Z)I
    .locals 10
    .parameter "asInt"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x3

    const/4 v6, 0x1

    const/high16 v5, -0x8000

    .line 629
    iget v2, p0, Lcom/android/exchange/adapter/Parser;->endTag:I

    .line 630
    .local v2, savedEndTag:I
    iget v4, p0, Lcom/android/exchange/adapter/Parser;->type:I

    if-ne v4, v7, :cond_1

    .line 631
    iget v4, p0, Lcom/android/exchange/adapter/Parser;->depth:I

    sub-int/2addr v4, v6

    iput v4, p0, Lcom/android/exchange/adapter/Parser;->depth:I

    .line 636
    :goto_0
    iget-boolean v4, p0, Lcom/android/exchange/adapter/Parser;->noContent:Z

    if-eqz v4, :cond_2

    .line 637
    iput v7, p0, Lcom/android/exchange/adapter/Parser;->type:I

    .line 638
    iput-boolean v8, p0, Lcom/android/exchange/adapter/Parser;->noContent:Z

    .line 639
    iput v2, p0, Lcom/android/exchange/adapter/Parser;->endTag:I

    .line 641
    iget-boolean v4, p0, Lcom/android/exchange/adapter/Parser;->logging:Z

    if-eqz v4, :cond_0

    .line 642
    iget-object v4, p0, Lcom/android/exchange/adapter/Parser;->tagTable:[Ljava/lang/String;

    iget v5, p0, Lcom/android/exchange/adapter/Parser;->startTag:I

    const/4 v6, 0x5

    sub-int/2addr v5, v6

    aget-object v3, v4, v5

    .line 643
    .local v3, tempname:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "<"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " />"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/exchange/adapter/Parser;->log(Ljava/lang/String;)V

    .line 646
    .end local v3           #tempname:Ljava/lang/String;
    :cond_0
    iget v4, p0, Lcom/android/exchange/adapter/Parser;->type:I

    .line 701
    :goto_1
    return v4

    .line 633
    :cond_1
    iput v5, p0, Lcom/android/exchange/adapter/Parser;->endTag:I

    goto :goto_0

    .line 649
    :cond_2
    iput-object v9, p0, Lcom/android/exchange/adapter/Parser;->text:Ljava/lang/String;

    .line 650
    iput-object v9, p0, Lcom/android/exchange/adapter/Parser;->name:Ljava/lang/String;

    .line 652
    invoke-direct {p0}, Lcom/android/exchange/adapter/Parser;->nextId()I

    move-result v0

    .line 653
    .local v0, id:I
    :goto_2
    if-nez v0, :cond_3

    .line 654
    iput v5, p0, Lcom/android/exchange/adapter/Parser;->nextId:I

    .line 656
    invoke-direct {p0}, Lcom/android/exchange/adapter/Parser;->readByte()I

    move-result v1

    .line 658
    .local v1, pg:I
    shl-int/lit8 v4, v1, 0x6

    iput v4, p0, Lcom/android/exchange/adapter/Parser;->page:I

    .line 660
    sget-object v4, Lcom/android/exchange/adapter/Parser;->tagTables:[[Ljava/lang/String;

    aget-object v4, v4, v1

    iput-object v4, p0, Lcom/android/exchange/adapter/Parser;->tagTable:[Ljava/lang/String;

    .line 661
    invoke-direct {p0}, Lcom/android/exchange/adapter/Parser;->nextId()I

    move-result v0

    .line 662
    goto :goto_2

    .line 663
    .end local v1           #pg:I
    :cond_3
    iput v5, p0, Lcom/android/exchange/adapter/Parser;->nextId:I

    .line 665
    packed-switch v0, :pswitch_data_0

    .line 690
    :pswitch_0
    const/4 v4, 0x2

    iput v4, p0, Lcom/android/exchange/adapter/Parser;->type:I

    .line 692
    and-int/lit8 v4, v0, 0x3f

    iput v4, p0, Lcom/android/exchange/adapter/Parser;->startTag:I

    .line 694
    and-int/lit8 v4, v0, 0x40

    if-nez v4, :cond_5

    move v4, v6

    :goto_3
    iput-boolean v4, p0, Lcom/android/exchange/adapter/Parser;->noContent:Z

    .line 695
    iget v4, p0, Lcom/android/exchange/adapter/Parser;->depth:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/exchange/adapter/Parser;->depth:I

    .line 697
    iget-object v4, p0, Lcom/android/exchange/adapter/Parser;->startTagArray:[I

    iget v5, p0, Lcom/android/exchange/adapter/Parser;->depth:I

    iget v6, p0, Lcom/android/exchange/adapter/Parser;->startTag:I

    aput v6, v4, v5

    .line 701
    :goto_4
    iget v4, p0, Lcom/android/exchange/adapter/Parser;->type:I

    goto :goto_1

    .line 668
    :pswitch_1
    iput v6, p0, Lcom/android/exchange/adapter/Parser;->type:I

    goto :goto_4

    .line 673
    :pswitch_2
    iput v7, p0, Lcom/android/exchange/adapter/Parser;->type:I

    .line 674
    iget-boolean v4, p0, Lcom/android/exchange/adapter/Parser;->logging:Z

    if-eqz v4, :cond_4

    .line 675
    iget-object v4, p0, Lcom/android/exchange/adapter/Parser;->nameArray:[Ljava/lang/String;

    iget v5, p0, Lcom/android/exchange/adapter/Parser;->depth:I

    aget-object v4, v4, v5

    iput-object v4, p0, Lcom/android/exchange/adapter/Parser;->name:Ljava/lang/String;

    .line 679
    :cond_4
    iget-object v4, p0, Lcom/android/exchange/adapter/Parser;->startTagArray:[I

    iget v5, p0, Lcom/android/exchange/adapter/Parser;->depth:I

    aget v4, v4, v5

    iput v4, p0, Lcom/android/exchange/adapter/Parser;->endTag:I

    iput v4, p0, Lcom/android/exchange/adapter/Parser;->startTag:I

    goto :goto_4

    .line 684
    :pswitch_3
    const/4 v4, 0x4

    iput v4, p0, Lcom/android/exchange/adapter/Parser;->type:I

    .line 685
    invoke-direct {p0}, Lcom/android/exchange/adapter/Parser;->readInlineBytes()V

    goto :goto_4

    :cond_5
    move v4, v8

    .line 694
    goto :goto_3

    .line 665
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private nextId()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 734
    iget v0, p0, Lcom/android/exchange/adapter/Parser;->nextId:I

    const/high16 v1, -0x8000

    if-ne v0, v1, :cond_0

    .line 735
    invoke-direct {p0}, Lcom/android/exchange/adapter/Parser;->read()I

    move-result v0

    iput v0, p0, Lcom/android/exchange/adapter/Parser;->nextId:I

    .line 737
    :cond_0
    iget v0, p0, Lcom/android/exchange/adapter/Parser;->nextId:I

    return v0
.end method

.method private read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 715
    iget-object v1, p0, Lcom/android/exchange/adapter/Parser;->in:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 716
    .local v0, i:I
    iget-boolean v1, p0, Lcom/android/exchange/adapter/Parser;->capture:Z

    if-eqz v1, :cond_0

    .line 717
    iget-object v1, p0, Lcom/android/exchange/adapter/Parser;->captureArray:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 719
    :cond_0
    return v0
.end method

.method private readByte()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 741
    invoke-direct {p0}, Lcom/android/exchange/adapter/Parser;->read()I

    move-result v0

    .line 742
    .local v0, i:I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 743
    new-instance v1, Lcom/android/exchange/adapter/Parser$EofException;

    invoke-direct {v1, p0}, Lcom/android/exchange/adapter/Parser$EofException;-><init>(Lcom/android/exchange/adapter/Parser;)V

    throw v1

    .line 745
    :cond_0
    return v0
.end method

.method private readInlineBytes()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 912
    :cond_0
    invoke-direct {p0}, Lcom/android/exchange/adapter/Parser;->readStreamIntoFile()I

    move-result v0

    .line 913
    .local v0, i:I
    if-nez v0, :cond_1

    .line 919
    return-void

    .line 915
    :cond_1
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 916
    new-instance v1, Lcom/android/exchange/adapter/Parser$EofException;

    invoke-direct {v1, p0}, Lcom/android/exchange/adapter/Parser$EofException;-><init>(Lcom/android/exchange/adapter/Parser;)V

    throw v1
.end method

.method private readInlineInt()I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v6, 0x30

    .line 757
    const/4 v3, 0x0

    .line 759
    .local v3, result:I
    const/4 v2, 0x1

    .line 760
    .local v2, multiplier:I
    const/4 v0, 0x1

    .line 763
    .local v0, beginning:Z
    :goto_0
    invoke-direct {p0}, Lcom/android/exchange/adapter/Parser;->readByte()I

    move-result v1

    .line 766
    .local v1, i:I
    if-nez v1, :cond_0

    .line 767
    mul-int v4, v2, v3

    return v4

    .line 769
    :cond_0
    if-eqz v0, :cond_1

    const/16 v4, 0x2d

    if-ne v1, v4, :cond_1

    .line 771
    const/4 v2, -0x1

    .line 772
    const/4 v0, 0x0

    .line 773
    goto :goto_0

    .line 775
    :cond_1
    const/4 v0, 0x0

    .line 778
    if-lt v1, v6, :cond_2

    const/16 v4, 0x39

    if-gt v1, v4, :cond_2

    .line 779
    mul-int/lit8 v4, v3, 0xa

    sub-int v5, v1, v6

    add-int v3, v4, v5

    goto :goto_0

    .line 781
    :cond_2
    new-instance v4, Ljava/io/IOException;

    const-string v5, "Non integer"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method private readInlineStream(Ljava/io/OutputStream;Ljava/util/Observer;)I
    .locals 11
    .parameter "os"
    .parameter "observer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v10, 0x4000

    const/16 v9, 0x100

    .line 822
    const-wide/16 v5, 0x0

    .line 823
    .local v5, totalRead:J
    const/16 v0, 0x100

    .line 826
    .local v0, BUF_SIZE:I
    if-eqz p1, :cond_8

    .line 828
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2, v9}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 830
    .local v2, bufStream:Ljava/io/ByteArrayOutputStream;
    if-eqz p2, :cond_0

    .line 831
    invoke-virtual {p0, p2}, Lcom/android/exchange/adapter/Parser;->addObserver(Ljava/util/Observer;)V

    .line 836
    :cond_0
    const/4 v4, 0x0

    .line 837
    .local v4, currentByte:I
    const/4 v1, 0x0

    .line 838
    .local v1, bufRead:I
    const/4 v3, 0x0

    .line 842
    .local v3, chunkRead:I
    :cond_1
    :goto_0
    :try_start_0
    invoke-direct {p0}, Lcom/android/exchange/adapter/Parser;->read()I

    move-result v4

    .line 843
    const/4 v7, -0x1

    if-eq v4, v7, :cond_2

    if-nez v4, :cond_5

    .line 845
    :cond_2
    if-lez v1, :cond_3

    .line 846
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v7

    const/4 v8, 0x0

    invoke-static {v7, v8}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 887
    :cond_3
    int-to-long v7, v1

    add-long/2addr v5, v7

    .line 889
    invoke-virtual {p0}, Lcom/android/exchange/adapter/Parser;->setChanged()V

    .line 890
    new-instance v7, Ljava/lang/Long;

    invoke-direct {v7, v5, v6}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {p0, v7}, Lcom/android/exchange/adapter/Parser;->notifyObservers(Ljava/lang/Object;)V

    .line 893
    if-eqz p2, :cond_4

    .line 894
    invoke-virtual {p0, p2}, Lcom/android/exchange/adapter/Parser;->deleteObserver(Ljava/util/Observer;)V

    .line 906
    .end local v1           #bufRead:I
    .end local v2           #bufStream:Ljava/io/ByteArrayOutputStream;
    .end local v3           #chunkRead:I
    .end local v4           #currentByte:I
    :cond_4
    :goto_1
    long-to-int v7, v5

    return v7

    .line 852
    .restart local v1       #bufRead:I
    .restart local v2       #bufStream:Ljava/io/ByteArrayOutputStream;
    .restart local v3       #chunkRead:I
    .restart local v4       #currentByte:I
    :cond_5
    :try_start_1
    invoke-virtual {v2, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 853
    add-int/lit8 v1, v1, 0x1

    .line 855
    if-ne v1, v9, :cond_1

    .line 856
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v7

    const/4 v8, 0x0

    invoke-static {v7, v8}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/OutputStream;->write([B)V

    .line 857
    add-int/2addr v3, v1

    .line 858
    int-to-long v7, v1

    add-long/2addr v5, v7

    .line 859
    const/4 v1, 0x0

    .line 861
    if-lt v3, v10, :cond_6

    .line 862
    sub-int/2addr v3, v10

    .line 863
    invoke-virtual {p0}, Lcom/android/exchange/adapter/Parser;->setChanged()V

    .line 864
    new-instance v7, Ljava/lang/Long;

    invoke-direct {v7, v5, v6}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {p0, v7}, Lcom/android/exchange/adapter/Parser;->notifyObservers(Ljava/lang/Object;)V

    .line 869
    :cond_6
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->reset()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 887
    :catchall_0
    move-exception v7

    int-to-long v8, v1

    add-long/2addr v5, v8

    .line 889
    invoke-virtual {p0}, Lcom/android/exchange/adapter/Parser;->setChanged()V

    .line 890
    new-instance v8, Ljava/lang/Long;

    invoke-direct {v8, v5, v6}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {p0, v8}, Lcom/android/exchange/adapter/Parser;->notifyObservers(Ljava/lang/Object;)V

    .line 893
    if-eqz p2, :cond_7

    .line 894
    invoke-virtual {p0, p2}, Lcom/android/exchange/adapter/Parser;->deleteObserver(Ljava/util/Observer;)V

    :cond_7
    throw v7

    .line 901
    .end local v1           #bufRead:I
    .end local v2           #bufStream:Ljava/io/ByteArrayOutputStream;
    .end local v3           #chunkRead:I
    .end local v4           #currentByte:I
    :cond_8
    const-wide/16 v5, 0x0

    goto :goto_1
.end method

.method private readInlineString()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 805
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    const/16 v3, 0x100

    invoke-direct {v1, v3}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 807
    .local v1, outputStream:Ljava/io/ByteArrayOutputStream;
    :goto_0
    invoke-direct {p0}, Lcom/android/exchange/adapter/Parser;->read()I

    move-result v0

    .line 808
    .local v0, i:I
    if-nez v0, :cond_0

    .line 815
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 816
    const-string v3, "UTF-8"

    invoke-virtual {v1, v3}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 817
    .local v2, res:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 818
    return-object v2

    .line 810
    .end local v2           #res:Ljava/lang/String;
    :cond_0
    const/4 v3, -0x1

    if-ne v0, v3, :cond_1

    .line 811
    new-instance v3, Lcom/android/exchange/adapter/Parser$EofException;

    invoke-direct {v3, p0}, Lcom/android/exchange/adapter/Parser$EofException;-><init>(Lcom/android/exchange/adapter/Parser;)V

    throw v3

    .line 813
    :cond_1
    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_0
.end method

.method private readInt()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 787
    const/4 v1, 0x0

    .line 791
    .local v1, result:I
    :cond_0
    invoke-direct {p0}, Lcom/android/exchange/adapter/Parser;->readByte()I

    move-result v0

    .line 792
    .local v0, i:I
    shl-int/lit8 v2, v1, 0x7

    and-int/lit8 v3, v0, 0x7f

    or-int v1, v2, v3

    .line 793
    and-int/lit16 v2, v0, 0x80

    if-nez v2, :cond_0

    .line 795
    return v1
.end method

.method private readStreamIntoFile()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 725
    iget-object v1, p0, Lcom/android/exchange/adapter/Parser;->in:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 726
    .local v0, i:I
    iget-boolean v1, p0, Lcom/android/exchange/adapter/Parser;->capturebytes:Z

    if-eqz v1, :cond_0

    .line 727
    iget-object v1, p0, Lcom/android/exchange/adapter/Parser;->captureFile:Ljava/io/BufferedOutputStream;

    invoke-virtual {v1, v0}, Ljava/io/BufferedOutputStream;->write(I)V

    .line 729
    :cond_0
    return v0
.end method


# virtual methods
.method public captureBytesOff()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 250
    :try_start_0
    iget-object v1, p0, Lcom/android/exchange/adapter/Parser;->captureFile:Ljava/io/BufferedOutputStream;

    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->flush()V

    .line 251
    iget-object v1, p0, Lcom/android/exchange/adapter/Parser;->captureFile:Ljava/io/BufferedOutputStream;

    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V

    .line 252
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/exchange/adapter/Parser;->capturebytes:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 258
    :goto_0
    return-void

    .line 254
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 255
    .local v0, ioe:Ljava/io/IOException;
    iput-boolean v2, p0, Lcom/android/exchange/adapter/Parser;->capturebytes:Z

    goto :goto_0
.end method

.method public captureBytesOn(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .parameter "context"
    .parameter "file"

    .prologue
    .line 235
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/exchange/adapter/Parser;->capturebytes:Z

    .line 238
    :try_start_0
    new-instance v1, Ljava/io/BufferedOutputStream;

    const/4 v2, 0x2

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v1, p0, Lcom/android/exchange/adapter/Parser;->captureFile:Ljava/io/BufferedOutputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 244
    :goto_0
    return-void

    .line 239
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 241
    .local v0, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public crypt([B)Ljava/lang/String;
    .locals 4
    .parameter "dataOP"

    .prologue
    .line 939
    if-eqz p1, :cond_0

    array-length v2, p1

    if-nez v2, :cond_1

    .line 940
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Byte array to encript cannot be null or zero length"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 950
    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    .line 951
    .local v0, hexString:Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_4

    .line 952
    aget-byte v2, p1, v1

    if-ltz v2, :cond_3

    .line 954
    aget-byte v2, p1, v1

    and-int/lit16 v2, v2, 0xff

    const/16 v3, 0x10

    if-ge v2, v3, :cond_2

    .line 955
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-byte v3, p1, v1

    and-int/lit16 v3, v3, 0xff

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 951
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 959
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-byte v3, p1, v1

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 963
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-byte v3, p1, v1

    mul-int/lit8 v3, v3, -0x1

    or-int/lit16 v3, v3, 0x80

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 968
    :cond_4
    return-object v0
.end method

.method public getValue(Ljava/io/OutputStream;Ljava/util/Observer;)I
    .locals 5
    .parameter "os"
    .parameter "observer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x3

    const/4 v2, 0x0

    .line 340
    const/4 v0, -0x1

    .line 343
    .local v0, ret_value:I
    invoke-direct {p0, v2, p1, p2}, Lcom/android/exchange/adapter/Parser;->getNext(ZLjava/io/OutputStream;Ljava/util/Observer;)I

    .line 344
    iget v1, p0, Lcom/android/exchange/adapter/Parser;->type:I

    if-ne v1, v3, :cond_0

    .line 345
    const/4 v0, 0x0

    .line 350
    :cond_0
    iget v0, p0, Lcom/android/exchange/adapter/Parser;->num:I

    .line 353
    invoke-direct {p0, v2, v4, v4}, Lcom/android/exchange/adapter/Parser;->getNext(ZLjava/io/OutputStream;Ljava/util/Observer;)I

    .line 355
    iget v1, p0, Lcom/android/exchange/adapter/Parser;->type:I

    if-eq v1, v3, :cond_1

    .line 356
    new-instance v1, Ljava/io/IOException;

    const-string v2, "No END found!"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 358
    :cond_1
    iget v1, p0, Lcom/android/exchange/adapter/Parser;->startTag:I

    iput v1, p0, Lcom/android/exchange/adapter/Parser;->endTag:I

    .line 360
    return v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 270
    invoke-direct {p0, v3, v2, v2}, Lcom/android/exchange/adapter/Parser;->getNext(ZLjava/io/OutputStream;Ljava/util/Observer;)I

    .line 272
    iget v1, p0, Lcom/android/exchange/adapter/Parser;->type:I

    if-ne v1, v4, :cond_1

    .line 273
    iget-boolean v1, p0, Lcom/android/exchange/adapter/Parser;->logging:Z

    if-eqz v1, :cond_0

    .line 274
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No value for tag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/exchange/adapter/Parser;->tagTable:[Ljava/lang/String;

    iget v3, p0, Lcom/android/exchange/adapter/Parser;->startTag:I

    const/4 v4, 0x5

    sub-int/2addr v3, v4

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/exchange/adapter/Parser;->log(Ljava/lang/String;)V

    .line 276
    :cond_0
    const-string v1, ""

    .line 287
    :goto_0
    return-object v1

    .line 279
    :cond_1
    iget-object v0, p0, Lcom/android/exchange/adapter/Parser;->text:Ljava/lang/String;

    .line 281
    .local v0, val:Ljava/lang/String;
    invoke-direct {p0, v3, v2, v2}, Lcom/android/exchange/adapter/Parser;->getNext(ZLjava/io/OutputStream;Ljava/util/Observer;)I

    .line 283
    iget v1, p0, Lcom/android/exchange/adapter/Parser;->type:I

    if-eq v1, v4, :cond_2

    .line 284
    new-instance v1, Ljava/io/IOException;

    const-string v2, "No END found!"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 286
    :cond_2
    iget v1, p0, Lcom/android/exchange/adapter/Parser;->startTag:I

    iput v1, p0, Lcom/android/exchange/adapter/Parser;->endTag:I

    move-object v1, v0

    .line 287
    goto :goto_0
.end method

.method public getValueInt()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 322
    const/4 v1, 0x1

    invoke-direct {p0, v1, v2, v2}, Lcom/android/exchange/adapter/Parser;->getNext(ZLjava/io/OutputStream;Ljava/util/Observer;)I

    .line 323
    iget v1, p0, Lcom/android/exchange/adapter/Parser;->type:I

    if-ne v1, v4, :cond_0

    move v1, v3

    .line 335
    :goto_0
    return v1

    .line 327
    :cond_0
    iget v0, p0, Lcom/android/exchange/adapter/Parser;->num:I

    .line 329
    .local v0, val:I
    invoke-direct {p0, v3, v2, v2}, Lcom/android/exchange/adapter/Parser;->getNext(ZLjava/io/OutputStream;Ljava/util/Observer;)I

    .line 331
    iget v1, p0, Lcom/android/exchange/adapter/Parser;->type:I

    if-eq v1, v4, :cond_1

    .line 332
    new-instance v1, Ljava/io/IOException;

    const-string v2, "No END found!"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 334
    :cond_1
    iget v1, p0, Lcom/android/exchange/adapter/Parser;->startTag:I

    iput v1, p0, Lcom/android/exchange/adapter/Parser;->endTag:I

    move v1, v0

    .line 335
    goto :goto_0
.end method

.method public getValueOpaque()[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 292
    invoke-direct {p0, v2, v5, v5}, Lcom/android/exchange/adapter/Parser;->getNext(ZLjava/io/OutputStream;Ljava/util/Observer;)I

    .line 295
    iget v1, p0, Lcom/android/exchange/adapter/Parser;->type:I

    if-ne v1, v3, :cond_1

    .line 296
    iget-boolean v1, p0, Lcom/android/exchange/adapter/Parser;->logging:Z

    if-eqz v1, :cond_0

    .line 297
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No value for tag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/exchange/adapter/Parser;->tagTable:[Ljava/lang/String;

    iget v3, p0, Lcom/android/exchange/adapter/Parser;->startTag:I

    const/4 v4, 0x5

    sub-int/2addr v3, v4

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/exchange/adapter/Parser;->log(Ljava/lang/String;)V

    :cond_0
    move-object v1, v5

    .line 310
    :goto_0
    return-object v1

    .line 302
    :cond_1
    iget-object v0, p0, Lcom/android/exchange/adapter/Parser;->opaqueData:[B

    .line 304
    .local v0, val:[B
    invoke-direct {p0, v2, v5, v5}, Lcom/android/exchange/adapter/Parser;->getNext(ZLjava/io/OutputStream;Ljava/util/Observer;)I

    .line 306
    iget v1, p0, Lcom/android/exchange/adapter/Parser;->type:I

    if-eq v1, v3, :cond_2

    .line 307
    new-instance v1, Ljava/io/IOException;

    const-string v2, "No END found!"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 309
    :cond_2
    iget v1, p0, Lcom/android/exchange/adapter/Parser;->startTag:I

    iput v1, p0, Lcom/android/exchange/adapter/Parser;->endTag:I

    move-object v1, v0

    .line 310
    goto :goto_0
.end method

.method public hasContent()Z
    .locals 1

    .prologue
    .line 931
    iget-boolean v0, p0, Lcom/android/exchange/adapter/Parser;->noContent:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method log(Ljava/lang/String;)V
    .locals 6
    .parameter "str"

    .prologue
    const-string v5, ">"

    const-string v4, "<"

    .line 483
    const/16 v1, 0xa

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 484
    .local v0, cr:I
    if-lez v0, :cond_0

    .line 485
    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 487
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/exchange/adapter/Parser;->logTag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "<"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/exchange/adapter/Parser;->tid:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ">"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/android/email/Email;->logv(Ljava/lang/String;Ljava/lang/String;)V

    .line 488
    sget-boolean v1, Lcom/android/exchange/Eas;->FILE_LOG:Z

    if-eqz v1, :cond_1

    .line 489
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/exchange/adapter/Parser;->logTag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "<"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/exchange/adapter/Parser;->tid:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ">"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/android/exchange/utility/FileLogger;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 491
    :cond_1
    return-void
.end method

.method public nextTag(I)I
    .locals 4
    .parameter "endingTag"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x3

    .line 379
    and-int/lit8 p1, p1, 0x3f

    iput p1, p0, Lcom/android/exchange/adapter/Parser;->endTag:I

    .line 380
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0, v3, v3}, Lcom/android/exchange/adapter/Parser;->getNext(ZLjava/io/OutputStream;Ljava/util/Observer;)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    .line 382
    iget v0, p0, Lcom/android/exchange/adapter/Parser;->type:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 383
    iget v0, p0, Lcom/android/exchange/adapter/Parser;->page:I

    iget v1, p0, Lcom/android/exchange/adapter/Parser;->startTag:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    .line 384
    iget v0, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    .line 392
    :goto_0
    return v0

    .line 386
    :cond_1
    iget v0, p0, Lcom/android/exchange/adapter/Parser;->type:I

    if-ne v0, v2, :cond_0

    iget v0, p0, Lcom/android/exchange/adapter/Parser;->startTag:I

    iget v1, p0, Lcom/android/exchange/adapter/Parser;->endTag:I

    if-ne v0, v1, :cond_0

    move v0, v2

    .line 387
    goto :goto_0

    .line 391
    :cond_2
    iget v0, p0, Lcom/android/exchange/adapter/Parser;->endTag:I

    if-nez v0, :cond_3

    move v0, v2

    .line 392
    goto :goto_0

    .line 397
    :cond_3
    new-instance v0, Lcom/android/exchange/adapter/Parser$EodException;

    invoke-direct {v0, p0}, Lcom/android/exchange/adapter/Parser$EodException;-><init>(Lcom/android/exchange/adapter/Parser;)V

    throw v0
.end method

.method public parse()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/exchange/EasException;,
            Lcom/android/email/mail/DeviceAccessException;
        }
    .end annotation

    .prologue
    .line 165
    const/4 v0, 0x0

    return v0
.end method

.method resetInput(Ljava/io/InputStream;)V
    .locals 0
    .parameter "in"

    .prologue
    .line 479
    iput-object p1, p0, Lcom/android/exchange/adapter/Parser;->in:Ljava/io/InputStream;

    .line 480
    return-void
.end method

.method public setInput(Ljava/io/InputStream;)V
    .locals 2
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 470
    iput-object p1, p0, Lcom/android/exchange/adapter/Parser;->in:Ljava/io/InputStream;

    .line 471
    invoke-direct {p0}, Lcom/android/exchange/adapter/Parser;->readByte()I

    .line 472
    invoke-direct {p0}, Lcom/android/exchange/adapter/Parser;->readInt()I

    .line 473
    invoke-direct {p0}, Lcom/android/exchange/adapter/Parser;->readInt()I

    .line 474
    invoke-direct {p0}, Lcom/android/exchange/adapter/Parser;->readInt()I

    .line 475
    sget-object v0, Lcom/android/exchange/adapter/Parser;->tagTables:[[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/exchange/adapter/Parser;->tagTable:[Ljava/lang/String;

    .line 476
    return-void
.end method

.method public setLoggingTag(Ljava/lang/String;)V
    .locals 0
    .parameter "val"

    .prologue
    .line 205
    iput-object p1, p0, Lcom/android/exchange/adapter/Parser;->logTag:Ljava/lang/String;

    .line 206
    return-void
.end method

.method public skipTag()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 407
    iget v0, p0, Lcom/android/exchange/adapter/Parser;->startTag:I

    .line 409
    .local v0, thisTag:I
    :cond_0
    const/4 v1, 0x0

    invoke-direct {p0, v1, v3, v3}, Lcom/android/exchange/adapter/Parser;->getNext(ZLjava/io/OutputStream;Ljava/util/Observer;)I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    .line 410
    iget v1, p0, Lcom/android/exchange/adapter/Parser;->type:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/android/exchange/adapter/Parser;->startTag:I

    if-ne v1, v0, :cond_0

    .line 411
    return-void

    .line 416
    :cond_1
    new-instance v1, Lcom/android/exchange/adapter/Parser$EofException;

    invoke-direct {v1, p0}, Lcom/android/exchange/adapter/Parser$EofException;-><init>(Lcom/android/exchange/adapter/Parser;)V

    throw v1
.end method

.method public skipTag(ZLandroid/content/Context;Ljava/lang/String;)Z
    .locals 6
    .parameter "needskipped"
    .parameter "context"
    .parameter "file"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 429
    iget v1, p0, Lcom/android/exchange/adapter/Parser;->startTag:I

    .line 430
    .local v1, thisTag:I
    iget v0, p0, Lcom/android/exchange/adapter/Parser;->depth:I

    .line 432
    .local v0, tagDepth:I
    if-eqz p1, :cond_0

    .line 433
    invoke-virtual {p0, p2, p3}, Lcom/android/exchange/adapter/Parser;->captureBytesOn(Landroid/content/Context;Ljava/lang/String;)V

    .line 434
    :cond_0
    invoke-direct {p0, v4}, Lcom/android/exchange/adapter/Parser;->getNextStream(Z)I

    move-result v2

    if-eq v2, v5, :cond_2

    .line 435
    iget v2, p0, Lcom/android/exchange/adapter/Parser;->type:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    iget v2, p0, Lcom/android/exchange/adapter/Parser;->startTag:I

    if-ne v2, v1, :cond_0

    iget v2, p0, Lcom/android/exchange/adapter/Parser;->depth:I

    if-ne v2, v0, :cond_0

    .line 436
    if-eqz p1, :cond_1

    .line 437
    invoke-virtual {p0}, Lcom/android/exchange/adapter/Parser;->captureBytesOff()V

    move v2, v5

    .line 440
    :goto_0
    return v2

    :cond_1
    move v2, v4

    goto :goto_0

    .line 445
    :cond_2
    new-instance v2, Lcom/android/exchange/adapter/Parser$EofException;

    invoke-direct {v2, p0}, Lcom/android/exchange/adapter/Parser$EofException;-><init>(Lcom/android/exchange/adapter/Parser;)V

    throw v2
.end method
