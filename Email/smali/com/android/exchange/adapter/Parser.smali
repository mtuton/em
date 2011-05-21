.class public abstract Lcom/android/exchange/adapter/Parser;
.super Ljava/lang/Object;
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
.field public static final DONE:I = 0x1

.field public static final END:I = 0x3

.field public static final END_DOCUMENT:I = 0x3

.field private static final EOF_BYTE:I = -0x1

.field private static final NOT_ENDED:I = -0x80000000

.field private static final NOT_FETCHED:I = -0x80000000

.field public static final START:I = 0x2

.field public static final START_DOCUMENT:I = 0x0

.field private static final TAG_BASE:I = 0x5

.field public static final TEXT:I = 0x4

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

.field private captureByteArray:Ljava/io/ByteArrayOutputStream;

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
    .line 85
    const/16 v0, 0x96

    new-array v0, v0, [[Ljava/lang/String;

    sput-object v0, Lcom/android/exchange/adapter/Parser;->tagTables:[[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 7
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v6, 0x20

    const/high16 v5, -0x8000

    const/4 v4, 0x0

    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-boolean v4, p0, Lcom/android/exchange/adapter/Parser;->logging:Z

    .line 56
    iput-boolean v4, p0, Lcom/android/exchange/adapter/Parser;->capture:Z

    .line 57
    const-string v3, "EAS Parser"

    iput-object v3, p0, Lcom/android/exchange/adapter/Parser;->logTag:Ljava/lang/String;

    .line 60
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/exchange/adapter/Parser;->captureFile:Ljava/io/BufferedOutputStream;

    .line 61
    iput-boolean v4, p0, Lcom/android/exchange/adapter/Parser;->capturebytes:Z

    .line 79
    iput v5, p0, Lcom/android/exchange/adapter/Parser;->nextId:I

    .line 88
    new-array v3, v6, [Ljava/lang/String;

    iput-object v3, p0, Lcom/android/exchange/adapter/Parser;->nameArray:[Ljava/lang/String;

    .line 91
    new-array v3, v6, [I

    iput-object v3, p0, Lcom/android/exchange/adapter/Parser;->startTagArray:[I

    .line 95
    iput v5, p0, Lcom/android/exchange/adapter/Parser;->endTag:I

    .line 154
    sget-object v2, Lcom/android/exchange/adapter/Tags;->pages:[[Ljava/lang/String;

    .line 155
    .local v2, pages:[[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_1

    .line 156
    aget-object v1, v2, v0

    .line 157
    .local v1, page:[Ljava/lang/String;
    array-length v3, v1

    if-lez v3, :cond_0

    .line 158
    sget-object v3, Lcom/android/exchange/adapter/Parser;->tagTables:[[Ljava/lang/String;

    aput-object v1, v3, v0

    .line 155
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 164
    .end local v1           #page:[Ljava/lang/String;
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/exchange/adapter/Parser;->setInput(Ljava/io/InputStream;)V

    .line 165
    sget-boolean v3, Lcom/android/exchange/Eas;->PARSER_LOG:Z

    iput-boolean v3, p0, Lcom/android/exchange/adapter/Parser;->logging:Z

    .line 166
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getId()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/exchange/adapter/Parser;->tid:J

    .line 167
    return-void
.end method

.method private final getNext(Z)I
    .locals 10
    .parameter "asInt"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x5

    const/4 v7, 0x3

    const/4 v6, 0x1

    const/high16 v5, -0x8000

    .line 434
    iget v2, p0, Lcom/android/exchange/adapter/Parser;->endTag:I

    .line 435
    .local v2, savedEndTag:I
    iget v4, p0, Lcom/android/exchange/adapter/Parser;->type:I

    if-ne v4, v7, :cond_1

    .line 436
    iget v4, p0, Lcom/android/exchange/adapter/Parser;->depth:I

    sub-int/2addr v4, v6

    iput v4, p0, Lcom/android/exchange/adapter/Parser;->depth:I

    .line 441
    :goto_0
    iget-boolean v4, p0, Lcom/android/exchange/adapter/Parser;->noContent:Z

    if-eqz v4, :cond_2

    .line 442
    iput v7, p0, Lcom/android/exchange/adapter/Parser;->type:I

    .line 443
    iput-boolean v9, p0, Lcom/android/exchange/adapter/Parser;->noContent:Z

    .line 444
    iput v2, p0, Lcom/android/exchange/adapter/Parser;->endTag:I

    .line 446
    iget-boolean v4, p0, Lcom/android/exchange/adapter/Parser;->logging:Z

    if-eqz v4, :cond_0

    .line 447
    iget-object v4, p0, Lcom/android/exchange/adapter/Parser;->tagTable:[Ljava/lang/String;

    iget v5, p0, Lcom/android/exchange/adapter/Parser;->startTag:I

    sub-int/2addr v5, v8

    aget-object v3, v4, v5

    .line 448
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

    .line 451
    .end local v3           #tempname:Ljava/lang/String;
    :cond_0
    iget v4, p0, Lcom/android/exchange/adapter/Parser;->type:I

    .line 520
    :goto_1
    return v4

    .line 438
    :cond_1
    iput v5, p0, Lcom/android/exchange/adapter/Parser;->endTag:I

    goto :goto_0

    .line 454
    :cond_2
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/exchange/adapter/Parser;->text:Ljava/lang/String;

    .line 455
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/exchange/adapter/Parser;->name:Ljava/lang/String;

    .line 457
    invoke-direct {p0}, Lcom/android/exchange/adapter/Parser;->nextId()I

    move-result v0

    .line 458
    .local v0, id:I
    :goto_2
    if-nez v0, :cond_3

    .line 459
    iput v5, p0, Lcom/android/exchange/adapter/Parser;->nextId:I

    .line 461
    invoke-direct {p0}, Lcom/android/exchange/adapter/Parser;->readByte()I

    move-result v1

    .line 463
    .local v1, pg:I
    shl-int/lit8 v4, v1, 0x6

    iput v4, p0, Lcom/android/exchange/adapter/Parser;->page:I

    .line 465
    sget-object v4, Lcom/android/exchange/adapter/Parser;->tagTables:[[Ljava/lang/String;

    aget-object v4, v4, v1

    iput-object v4, p0, Lcom/android/exchange/adapter/Parser;->tagTable:[Ljava/lang/String;

    .line 466
    invoke-direct {p0}, Lcom/android/exchange/adapter/Parser;->nextId()I

    move-result v0

    .line 467
    goto :goto_2

    .line 468
    .end local v1           #pg:I
    :cond_3
    iput v5, p0, Lcom/android/exchange/adapter/Parser;->nextId:I

    .line 470
    packed-switch v0, :pswitch_data_0

    .line 503
    :pswitch_0
    const/4 v4, 0x2

    iput v4, p0, Lcom/android/exchange/adapter/Parser;->type:I

    .line 505
    and-int/lit8 v4, v0, 0x3f

    iput v4, p0, Lcom/android/exchange/adapter/Parser;->startTag:I

    .line 506
    iput v0, p0, Lcom/android/exchange/adapter/Parser;->fullStartTag:I

    .line 508
    and-int/lit8 v4, v0, 0x40

    if-nez v4, :cond_9

    move v4, v6

    :goto_3
    iput-boolean v4, p0, Lcom/android/exchange/adapter/Parser;->noContent:Z

    .line 509
    iget v4, p0, Lcom/android/exchange/adapter/Parser;->depth:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/exchange/adapter/Parser;->depth:I

    .line 510
    iget-boolean v4, p0, Lcom/android/exchange/adapter/Parser;->logging:Z

    if-eqz v4, :cond_4

    .line 511
    iget-object v4, p0, Lcom/android/exchange/adapter/Parser;->tagTable:[Ljava/lang/String;

    iget v5, p0, Lcom/android/exchange/adapter/Parser;->startTag:I

    sub-int/2addr v5, v8

    aget-object v4, v4, v5

    iput-object v4, p0, Lcom/android/exchange/adapter/Parser;->name:Ljava/lang/String;

    .line 513
    iget-object v4, p0, Lcom/android/exchange/adapter/Parser;->nameArray:[Ljava/lang/String;

    iget v5, p0, Lcom/android/exchange/adapter/Parser;->depth:I

    iget-object v6, p0, Lcom/android/exchange/adapter/Parser;->name:Ljava/lang/String;

    aput-object v6, v4, v5

    .line 516
    :cond_4
    iget-object v4, p0, Lcom/android/exchange/adapter/Parser;->startTagArray:[I

    iget v5, p0, Lcom/android/exchange/adapter/Parser;->depth:I

    iget v6, p0, Lcom/android/exchange/adapter/Parser;->startTag:I

    aput v6, v4, v5

    .line 520
    :cond_5
    :goto_4
    iget v4, p0, Lcom/android/exchange/adapter/Parser;->type:I

    goto :goto_1

    .line 473
    :pswitch_1
    iput v6, p0, Lcom/android/exchange/adapter/Parser;->type:I

    goto :goto_4

    .line 478
    :pswitch_2
    iput v7, p0, Lcom/android/exchange/adapter/Parser;->type:I

    .line 479
    iget-boolean v4, p0, Lcom/android/exchange/adapter/Parser;->logging:Z

    if-eqz v4, :cond_6

    .line 480
    iget-object v4, p0, Lcom/android/exchange/adapter/Parser;->nameArray:[Ljava/lang/String;

    iget v5, p0, Lcom/android/exchange/adapter/Parser;->depth:I

    aget-object v4, v4, v5

    iput-object v4, p0, Lcom/android/exchange/adapter/Parser;->name:Ljava/lang/String;

    .line 484
    :cond_6
    iget-object v4, p0, Lcom/android/exchange/adapter/Parser;->startTagArray:[I

    iget v5, p0, Lcom/android/exchange/adapter/Parser;->depth:I

    aget v4, v4, v5

    iput v4, p0, Lcom/android/exchange/adapter/Parser;->endTag:I

    iput v4, p0, Lcom/android/exchange/adapter/Parser;->startTag:I

    goto :goto_4

    .line 489
    :pswitch_3
    const/4 v4, 0x4

    iput v4, p0, Lcom/android/exchange/adapter/Parser;->type:I

    .line 490
    if-eqz p1, :cond_7

    .line 491
    invoke-direct {p0}, Lcom/android/exchange/adapter/Parser;->readInlineInt()I

    move-result v4

    iput v4, p0, Lcom/android/exchange/adapter/Parser;->num:I

    .line 495
    :goto_5
    iget-boolean v4, p0, Lcom/android/exchange/adapter/Parser;->logging:Z

    if-eqz v4, :cond_5

    .line 496
    iget-object v4, p0, Lcom/android/exchange/adapter/Parser;->tagTable:[Ljava/lang/String;

    iget v5, p0, Lcom/android/exchange/adapter/Parser;->startTag:I

    sub-int/2addr v5, v8

    aget-object v4, v4, v5

    iput-object v4, p0, Lcom/android/exchange/adapter/Parser;->name:Ljava/lang/String;

    .line 497
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/exchange/adapter/Parser;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz p1, :cond_8

    iget v5, p0, Lcom/android/exchange/adapter/Parser;->num:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    :goto_6
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/exchange/adapter/Parser;->log(Ljava/lang/String;)V

    goto :goto_4

    .line 493
    :cond_7
    invoke-direct {p0}, Lcom/android/exchange/adapter/Parser;->readInlineString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/exchange/adapter/Parser;->text:Ljava/lang/String;

    goto :goto_5

    .line 497
    :cond_8
    iget-object v5, p0, Lcom/android/exchange/adapter/Parser;->text:Ljava/lang/String;

    goto :goto_6

    :cond_9
    move v4, v9

    .line 508
    goto/16 :goto_3

    .line 470
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
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

    .line 525
    iget v2, p0, Lcom/android/exchange/adapter/Parser;->endTag:I

    .line 526
    .local v2, savedEndTag:I
    iget v4, p0, Lcom/android/exchange/adapter/Parser;->type:I

    if-ne v4, v7, :cond_1

    .line 527
    iget v4, p0, Lcom/android/exchange/adapter/Parser;->depth:I

    sub-int/2addr v4, v6

    iput v4, p0, Lcom/android/exchange/adapter/Parser;->depth:I

    .line 532
    :goto_0
    iget-boolean v4, p0, Lcom/android/exchange/adapter/Parser;->noContent:Z

    if-eqz v4, :cond_2

    .line 533
    iput v7, p0, Lcom/android/exchange/adapter/Parser;->type:I

    .line 534
    iput-boolean v8, p0, Lcom/android/exchange/adapter/Parser;->noContent:Z

    .line 535
    iput v2, p0, Lcom/android/exchange/adapter/Parser;->endTag:I

    .line 537
    iget-boolean v4, p0, Lcom/android/exchange/adapter/Parser;->logging:Z

    if-eqz v4, :cond_0

    .line 538
    iget-object v4, p0, Lcom/android/exchange/adapter/Parser;->tagTable:[Ljava/lang/String;

    iget v5, p0, Lcom/android/exchange/adapter/Parser;->startTag:I

    const/4 v6, 0x5

    sub-int/2addr v5, v6

    aget-object v3, v4, v5

    .line 539
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

    .line 542
    .end local v3           #tempname:Ljava/lang/String;
    :cond_0
    iget v4, p0, Lcom/android/exchange/adapter/Parser;->type:I

    .line 597
    :goto_1
    return v4

    .line 529
    :cond_1
    iput v5, p0, Lcom/android/exchange/adapter/Parser;->endTag:I

    goto :goto_0

    .line 545
    :cond_2
    iput-object v9, p0, Lcom/android/exchange/adapter/Parser;->text:Ljava/lang/String;

    .line 546
    iput-object v9, p0, Lcom/android/exchange/adapter/Parser;->name:Ljava/lang/String;

    .line 548
    invoke-direct {p0}, Lcom/android/exchange/adapter/Parser;->nextId()I

    move-result v0

    .line 549
    .local v0, id:I
    :goto_2
    if-nez v0, :cond_3

    .line 550
    iput v5, p0, Lcom/android/exchange/adapter/Parser;->nextId:I

    .line 552
    invoke-direct {p0}, Lcom/android/exchange/adapter/Parser;->readByte()I

    move-result v1

    .line 554
    .local v1, pg:I
    shl-int/lit8 v4, v1, 0x6

    iput v4, p0, Lcom/android/exchange/adapter/Parser;->page:I

    .line 556
    sget-object v4, Lcom/android/exchange/adapter/Parser;->tagTables:[[Ljava/lang/String;

    aget-object v4, v4, v1

    iput-object v4, p0, Lcom/android/exchange/adapter/Parser;->tagTable:[Ljava/lang/String;

    .line 557
    invoke-direct {p0}, Lcom/android/exchange/adapter/Parser;->nextId()I

    move-result v0

    .line 558
    goto :goto_2

    .line 559
    .end local v1           #pg:I
    :cond_3
    iput v5, p0, Lcom/android/exchange/adapter/Parser;->nextId:I

    .line 561
    packed-switch v0, :pswitch_data_0

    .line 586
    :pswitch_0
    const/4 v4, 0x2

    iput v4, p0, Lcom/android/exchange/adapter/Parser;->type:I

    .line 588
    and-int/lit8 v4, v0, 0x3f

    iput v4, p0, Lcom/android/exchange/adapter/Parser;->startTag:I

    .line 590
    and-int/lit8 v4, v0, 0x40

    if-nez v4, :cond_5

    move v4, v6

    :goto_3
    iput-boolean v4, p0, Lcom/android/exchange/adapter/Parser;->noContent:Z

    .line 591
    iget v4, p0, Lcom/android/exchange/adapter/Parser;->depth:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/exchange/adapter/Parser;->depth:I

    .line 593
    iget-object v4, p0, Lcom/android/exchange/adapter/Parser;->startTagArray:[I

    iget v5, p0, Lcom/android/exchange/adapter/Parser;->depth:I

    iget v6, p0, Lcom/android/exchange/adapter/Parser;->startTag:I

    aput v6, v4, v5

    .line 597
    :goto_4
    iget v4, p0, Lcom/android/exchange/adapter/Parser;->type:I

    goto :goto_1

    .line 564
    :pswitch_1
    iput v6, p0, Lcom/android/exchange/adapter/Parser;->type:I

    goto :goto_4

    .line 569
    :pswitch_2
    iput v7, p0, Lcom/android/exchange/adapter/Parser;->type:I

    .line 570
    iget-boolean v4, p0, Lcom/android/exchange/adapter/Parser;->logging:Z

    if-eqz v4, :cond_4

    .line 571
    iget-object v4, p0, Lcom/android/exchange/adapter/Parser;->nameArray:[Ljava/lang/String;

    iget v5, p0, Lcom/android/exchange/adapter/Parser;->depth:I

    aget-object v4, v4, v5

    iput-object v4, p0, Lcom/android/exchange/adapter/Parser;->name:Ljava/lang/String;

    .line 575
    :cond_4
    iget-object v4, p0, Lcom/android/exchange/adapter/Parser;->startTagArray:[I

    iget v5, p0, Lcom/android/exchange/adapter/Parser;->depth:I

    aget v4, v4, v5

    iput v4, p0, Lcom/android/exchange/adapter/Parser;->endTag:I

    iput v4, p0, Lcom/android/exchange/adapter/Parser;->startTag:I

    goto :goto_4

    .line 580
    :pswitch_3
    const/4 v4, 0x4

    iput v4, p0, Lcom/android/exchange/adapter/Parser;->type:I

    .line 581
    invoke-direct {p0}, Lcom/android/exchange/adapter/Parser;->readInlineBytes()V

    goto :goto_4

    :cond_5
    move v4, v8

    .line 590
    goto :goto_3

    .line 561
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
    .line 630
    iget v0, p0, Lcom/android/exchange/adapter/Parser;->nextId:I

    const/high16 v1, -0x8000

    if-ne v0, v1, :cond_0

    .line 631
    invoke-direct {p0}, Lcom/android/exchange/adapter/Parser;->read()I

    move-result v0

    iput v0, p0, Lcom/android/exchange/adapter/Parser;->nextId:I

    .line 633
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
    .line 611
    iget-object v1, p0, Lcom/android/exchange/adapter/Parser;->in:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 612
    .local v0, i:I
    iget-boolean v1, p0, Lcom/android/exchange/adapter/Parser;->capture:Z

    if-eqz v1, :cond_0

    .line 613
    iget-object v1, p0, Lcom/android/exchange/adapter/Parser;->captureArray:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 615
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
    .line 637
    invoke-direct {p0}, Lcom/android/exchange/adapter/Parser;->read()I

    move-result v0

    .line 638
    .local v0, i:I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 639
    new-instance v1, Lcom/android/exchange/adapter/Parser$EofException;

    invoke-direct {v1, p0}, Lcom/android/exchange/adapter/Parser$EofException;-><init>(Lcom/android/exchange/adapter/Parser;)V

    throw v1

    .line 641
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
    .line 721
    :cond_0
    invoke-direct {p0}, Lcom/android/exchange/adapter/Parser;->readStreamIntoFile()I

    move-result v0

    .line 722
    .local v0, i:I
    if-nez v0, :cond_1

    .line 728
    return-void

    .line 724
    :cond_1
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 725
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

    .line 653
    const/4 v3, 0x0

    .line 655
    .local v3, result:I
    const/4 v2, 0x1

    .line 656
    .local v2, multiplier:I
    const/4 v0, 0x1

    .line 659
    .local v0, beginning:Z
    :goto_0
    invoke-direct {p0}, Lcom/android/exchange/adapter/Parser;->readByte()I

    move-result v1

    .line 662
    .local v1, i:I
    if-nez v1, :cond_0

    .line 663
    mul-int v4, v2, v3

    return v4

    .line 665
    :cond_0
    if-eqz v0, :cond_1

    const/16 v4, 0x2d

    if-ne v1, v4, :cond_1

    .line 667
    const/4 v2, -0x1

    .line 668
    const/4 v0, 0x0

    .line 669
    goto :goto_0

    .line 671
    :cond_1
    const/4 v0, 0x0

    .line 674
    if-lt v1, v6, :cond_2

    const/16 v4, 0x39

    if-gt v1, v4, :cond_2

    .line 675
    mul-int/lit8 v4, v3, 0xa

    sub-int v5, v1, v6

    add-int v3, v4, v5

    goto :goto_0

    .line 677
    :cond_2
    new-instance v4, Ljava/io/IOException;

    const-string v5, "Non integer"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method private readInlineString()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 701
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    const/16 v3, 0x100

    invoke-direct {v1, v3}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 703
    .local v1, outputStream:Ljava/io/ByteArrayOutputStream;
    :goto_0
    invoke-direct {p0}, Lcom/android/exchange/adapter/Parser;->read()I

    move-result v0

    .line 704
    .local v0, i:I
    if-nez v0, :cond_0

    .line 711
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 712
    const-string v3, "UTF-8"

    invoke-virtual {v1, v3}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 713
    .local v2, res:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 714
    return-object v2

    .line 706
    .end local v2           #res:Ljava/lang/String;
    :cond_0
    const/4 v3, -0x1

    if-ne v0, v3, :cond_1

    .line 707
    new-instance v3, Lcom/android/exchange/adapter/Parser$EofException;

    invoke-direct {v3, p0}, Lcom/android/exchange/adapter/Parser$EofException;-><init>(Lcom/android/exchange/adapter/Parser;)V

    throw v3

    .line 709
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
    .line 683
    const/4 v1, 0x0

    .line 687
    .local v1, result:I
    :cond_0
    invoke-direct {p0}, Lcom/android/exchange/adapter/Parser;->readByte()I

    move-result v0

    .line 688
    .local v0, i:I
    shl-int/lit8 v2, v1, 0x7

    and-int/lit8 v3, v0, 0x7f

    or-int v1, v2, v3

    .line 689
    and-int/lit16 v2, v0, 0x80

    if-nez v2, :cond_0

    .line 691
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
    .line 621
    iget-object v1, p0, Lcom/android/exchange/adapter/Parser;->in:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 622
    .local v0, i:I
    iget-boolean v1, p0, Lcom/android/exchange/adapter/Parser;->capturebytes:Z

    if-eqz v1, :cond_0

    .line 623
    iget-object v1, p0, Lcom/android/exchange/adapter/Parser;->captureFile:Ljava/io/BufferedOutputStream;

    invoke-virtual {v1, v0}, Ljava/io/BufferedOutputStream;->write(I)V

    .line 625
    :cond_0
    return v0
.end method


# virtual methods
.method public captureBytesOff()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 231
    :try_start_0
    iget-object v1, p0, Lcom/android/exchange/adapter/Parser;->captureFile:Ljava/io/BufferedOutputStream;

    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->flush()V

    .line 232
    iget-object v1, p0, Lcom/android/exchange/adapter/Parser;->captureFile:Ljava/io/BufferedOutputStream;

    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V

    .line 233
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/exchange/adapter/Parser;->capturebytes:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 239
    :goto_0
    return-void

    .line 235
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 236
    .local v0, ioe:Ljava/io/IOException;
    iput-boolean v2, p0, Lcom/android/exchange/adapter/Parser;->capturebytes:Z

    goto :goto_0
.end method

.method public captureBytesOn(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .parameter "context"
    .parameter "file"

    .prologue
    .line 216
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/exchange/adapter/Parser;->capturebytes:Z

    .line 219
    :try_start_0
    new-instance v1, Ljava/io/BufferedOutputStream;

    const/4 v2, 0x2

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v1, p0, Lcom/android/exchange/adapter/Parser;->captureFile:Ljava/io/BufferedOutputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 225
    :goto_0
    return-void

    .line 220
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 222
    .local v0, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public captureOff(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .parameter "context"
    .parameter "file"

    .prologue
    .line 203
    const/4 v1, 0x2

    :try_start_0
    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v0

    .line 204
    .local v0, out:Ljava/io/FileOutputStream;
    iget-object v1, p0, Lcom/android/exchange/adapter/Parser;->captureArray:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 205
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 211
    .end local v0           #out:Ljava/io/FileOutputStream;
    :goto_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/exchange/adapter/Parser;->capture:Z

    .line 212
    return-void

    .line 208
    :catch_0
    move-exception v1

    goto :goto_0

    .line 206
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method public captureOn()V
    .locals 1

    .prologue
    .line 194
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/exchange/adapter/Parser;->capture:Z

    .line 195
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/exchange/adapter/Parser;->captureArray:Ljava/util/ArrayList;

    .line 196
    return-void
.end method

.method public getValue()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x0

    .line 251
    invoke-direct {p0, v2}, Lcom/android/exchange/adapter/Parser;->getNext(Z)I

    .line 253
    iget v1, p0, Lcom/android/exchange/adapter/Parser;->type:I

    if-ne v1, v3, :cond_1

    .line 254
    iget-boolean v1, p0, Lcom/android/exchange/adapter/Parser;->logging:Z

    if-eqz v1, :cond_0

    .line 255
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

    .line 257
    :cond_0
    const-string v1, ""

    .line 268
    :goto_0
    return-object v1

    .line 260
    :cond_1
    iget-object v0, p0, Lcom/android/exchange/adapter/Parser;->text:Ljava/lang/String;

    .line 262
    .local v0, val:Ljava/lang/String;
    invoke-direct {p0, v2}, Lcom/android/exchange/adapter/Parser;->getNext(Z)I

    .line 264
    iget v1, p0, Lcom/android/exchange/adapter/Parser;->type:I

    if-eq v1, v3, :cond_2

    .line 265
    new-instance v1, Ljava/io/IOException;

    const-string v2, "No END found!"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 267
    :cond_2
    iget v1, p0, Lcom/android/exchange/adapter/Parser;->startTag:I

    iput v1, p0, Lcom/android/exchange/adapter/Parser;->endTag:I

    move-object v1, v0

    .line 268
    goto :goto_0
.end method

.method public getValueInt()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x0

    .line 279
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/exchange/adapter/Parser;->getNext(Z)I

    .line 280
    iget v1, p0, Lcom/android/exchange/adapter/Parser;->type:I

    if-ne v1, v3, :cond_0

    move v1, v2

    .line 292
    :goto_0
    return v1

    .line 284
    :cond_0
    iget v0, p0, Lcom/android/exchange/adapter/Parser;->num:I

    .line 286
    .local v0, val:I
    invoke-direct {p0, v2}, Lcom/android/exchange/adapter/Parser;->getNext(Z)I

    .line 288
    iget v1, p0, Lcom/android/exchange/adapter/Parser;->type:I

    if-eq v1, v3, :cond_1

    .line 289
    new-instance v1, Ljava/io/IOException;

    const-string v2, "No END found!"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 291
    :cond_1
    iget v1, p0, Lcom/android/exchange/adapter/Parser;->startTag:I

    iput v1, p0, Lcom/android/exchange/adapter/Parser;->endTag:I

    move v1, v0

    .line 292
    goto :goto_0
.end method

.method public hasContent()Z
    .locals 1

    .prologue
    .line 740
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

    .line 412
    const/16 v1, 0xa

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 413
    .local v0, cr:I
    if-lez v0, :cond_0

    .line 414
    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 416
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

    .line 417
    sget-boolean v1, Lcom/android/exchange/Eas;->FILE_LOG:Z

    if-eqz v1, :cond_1

    .line 418
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

    .line 420
    :cond_1
    return-void
.end method

.method public nextTag(I)I
    .locals 3
    .parameter "endingTag"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x3

    .line 308
    and-int/lit8 p1, p1, 0x3f

    iput p1, p0, Lcom/android/exchange/adapter/Parser;->endTag:I

    .line 309
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/exchange/adapter/Parser;->getNext(Z)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    .line 311
    iget v0, p0, Lcom/android/exchange/adapter/Parser;->type:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 312
    iget v0, p0, Lcom/android/exchange/adapter/Parser;->page:I

    iget v1, p0, Lcom/android/exchange/adapter/Parser;->startTag:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    .line 313
    iget v0, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    .line 321
    :goto_0
    return v0

    .line 315
    :cond_1
    iget v0, p0, Lcom/android/exchange/adapter/Parser;->type:I

    if-ne v0, v2, :cond_0

    iget v0, p0, Lcom/android/exchange/adapter/Parser;->startTag:I

    iget v1, p0, Lcom/android/exchange/adapter/Parser;->endTag:I

    if-ne v0, v1, :cond_0

    move v0, v2

    .line 316
    goto :goto_0

    .line 320
    :cond_2
    iget v0, p0, Lcom/android/exchange/adapter/Parser;->endTag:I

    if-nez v0, :cond_3

    move v0, v2

    .line 321
    goto :goto_0

    .line 326
    :cond_3
    new-instance v0, Lcom/android/exchange/adapter/Parser$EodException;

    invoke-direct {v0, p0}, Lcom/android/exchange/adapter/Parser$EodException;-><init>(Lcom/android/exchange/adapter/Parser;)V

    throw v0
.end method

.method public nextToken()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 386
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/exchange/adapter/Parser;->getNext(Z)I

    .line 387
    iget v0, p0, Lcom/android/exchange/adapter/Parser;->type:I

    return v0
.end method

.method public parse()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/exchange/EasException;
        }
    .end annotation

    .prologue
    .line 146
    const/4 v0, 0x0

    return v0
.end method

.method resetInput(Ljava/io/InputStream;)V
    .locals 0
    .parameter "in"

    .prologue
    .line 408
    iput-object p1, p0, Lcom/android/exchange/adapter/Parser;->in:Ljava/io/InputStream;

    .line 409
    return-void
.end method

.method public setDebug(Z)V
    .locals 0
    .parameter "val"

    .prologue
    .line 176
    iput-boolean p1, p0, Lcom/android/exchange/adapter/Parser;->logging:Z

    .line 177
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
    .line 399
    iput-object p1, p0, Lcom/android/exchange/adapter/Parser;->in:Ljava/io/InputStream;

    .line 400
    invoke-direct {p0}, Lcom/android/exchange/adapter/Parser;->readByte()I

    .line 401
    invoke-direct {p0}, Lcom/android/exchange/adapter/Parser;->readInt()I

    .line 402
    invoke-direct {p0}, Lcom/android/exchange/adapter/Parser;->readInt()I

    .line 403
    invoke-direct {p0}, Lcom/android/exchange/adapter/Parser;->readInt()I

    .line 404
    sget-object v0, Lcom/android/exchange/adapter/Parser;->tagTables:[[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/exchange/adapter/Parser;->tagTable:[Ljava/lang/String;

    .line 405
    return-void
.end method

.method public setLoggingTag(Ljava/lang/String;)V
    .locals 0
    .parameter "val"

    .prologue
    .line 186
    iput-object p1, p0, Lcom/android/exchange/adapter/Parser;->logTag:Ljava/lang/String;

    .line 187
    return-void
.end method

.method public skipTag()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 336
    iget v0, p0, Lcom/android/exchange/adapter/Parser;->startTag:I

    .line 338
    .local v0, thisTag:I
    :cond_0
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/exchange/adapter/Parser;->getNext(Z)I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    .line 339
    iget v1, p0, Lcom/android/exchange/adapter/Parser;->type:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/android/exchange/adapter/Parser;->startTag:I

    if-ne v1, v0, :cond_0

    .line 340
    return-void

    .line 345
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

    .line 358
    iget v1, p0, Lcom/android/exchange/adapter/Parser;->startTag:I

    .line 359
    .local v1, thisTag:I
    iget v0, p0, Lcom/android/exchange/adapter/Parser;->depth:I

    .line 361
    .local v0, tagDepth:I
    if-eqz p1, :cond_0

    .line 362
    invoke-virtual {p0, p2, p3}, Lcom/android/exchange/adapter/Parser;->captureBytesOn(Landroid/content/Context;Ljava/lang/String;)V

    .line 363
    :cond_0
    invoke-direct {p0, v4}, Lcom/android/exchange/adapter/Parser;->getNextStream(Z)I

    move-result v2

    if-eq v2, v5, :cond_2

    .line 364
    iget v2, p0, Lcom/android/exchange/adapter/Parser;->type:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    iget v2, p0, Lcom/android/exchange/adapter/Parser;->startTag:I

    if-ne v2, v1, :cond_0

    iget v2, p0, Lcom/android/exchange/adapter/Parser;->depth:I

    if-ne v2, v0, :cond_0

    .line 365
    if-eqz p1, :cond_1

    .line 366
    invoke-virtual {p0}, Lcom/android/exchange/adapter/Parser;->captureBytesOff()V

    move v2, v5

    .line 369
    :goto_0
    return v2

    :cond_1
    move v2, v4

    goto :goto_0

    .line 374
    :cond_2
    new-instance v2, Lcom/android/exchange/adapter/Parser$EofException;

    invoke-direct {v2, p0}, Lcom/android/exchange/adapter/Parser$EofException;-><init>(Lcom/android/exchange/adapter/Parser;)V

    throw v2
.end method
