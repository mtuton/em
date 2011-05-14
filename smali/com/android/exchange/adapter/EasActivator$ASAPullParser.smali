.class Lcom/android/exchange/adapter/EasActivator$ASAPullParser;
.super Lcom/android/exchange/adapter/EasActivator$ASABaseParser;
.source "EasActivator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exchange/adapter/EasActivator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ASAPullParser"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exchange/adapter/EasActivator;


# direct methods
.method public constructor <init>(Lcom/android/exchange/adapter/EasActivator;)V
    .locals 0
    .parameter

    .prologue
    .line 423
    iput-object p1, p0, Lcom/android/exchange/adapter/EasActivator$ASAPullParser;->this$0:Lcom/android/exchange/adapter/EasActivator;

    .line 424
    invoke-direct {p0, p1}, Lcom/android/exchange/adapter/EasActivator$ASABaseParser;-><init>(Lcom/android/exchange/adapter/EasActivator;)V

    .line 425
    return-void
.end method


# virtual methods
.method public parse(Ljava/io/InputStream;)Ljava/util/List;
    .locals 14
    .parameter "inXml"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    const-string v12, "struct"

    const-string v12, "name"

    const-string v12, "member"

    const-string v12, "]"

    const-string v12, "ExchangeActivation"

    .line 428
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 430
    .local v5, messages:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v7

    .line 432
    .local v7, parser:Lorg/xmlpull/v1/XmlPullParser;
    const/4 v12, 0x0

    :try_start_0
    invoke-interface {v7, p1, v12}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 433
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v2

    .line 434
    .local v2, eventType:I
    const/4 v10, 0x0

    .line 435
    .local v10, startDoc:Z
    const/4 v9, 0x0

    .line 436
    .local v9, startBlk:Z
    const/4 v0, 0x0

    .line 437
    .local v0, done:Z
    const/4 v3, 0x0

    .local v3, i:I
    move v4, v3

    .line 440
    .end local v3           #i:I
    .local v4, i:I
    :goto_0
    const/4 v12, 0x1

    if-eq v2, v12, :cond_5

    if-nez v0, :cond_5

    .line 441
    const/4 v6, 0x0

    .line 442
    .local v6, name:Ljava/lang/String;
    packed-switch v2, :pswitch_data_0

    :cond_0
    :pswitch_0
    move v3, v4

    .line 507
    .end local v4           #i:I
    .restart local v3       #i:I
    :goto_1
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    move v4, v3

    .line 508
    .end local v3           #i:I
    .restart local v4       #i:I
    goto :goto_0

    .line 444
    :pswitch_1
    const/4 v10, 0x1

    .line 445
    const-string v12, "ExchangeActivation"

    const-string v13, "START_DOCUMENT"

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v4

    .line 446
    .end local v4           #i:I
    .restart local v3       #i:I
    goto :goto_1

    .line 448
    .end local v3           #i:I
    .restart local v4       #i:I
    :pswitch_2
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    .line 449
    const-string v12, "struct"

    invoke-virtual {v6, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 450
    const-string v12, "ExchangeActivation"

    const-string v13, "struct begin"

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v4

    .end local v4           #i:I
    .restart local v3       #i:I
    goto :goto_1

    .line 451
    .end local v3           #i:I
    .restart local v4       #i:I
    :cond_1
    if-eqz v10, :cond_0

    .line 452
    const-string v12, "member"

    invoke-virtual {v6, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 456
    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    .line 457
    .local v8, sb:Ljava/lang/StringBuffer;
    const-string v12, "member begin: "

    invoke-virtual {v8, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 458
    const-string v12, "ExchangeActivation"

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    const/4 v9, 0x1

    .line 463
    .end local v8           #sb:Ljava/lang/StringBuffer;
    :cond_2
    const-string v12, "name"

    invoke-virtual {v6, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_3

    if-eqz v9, :cond_3

    .line 464
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    .line 468
    .local v11, temp:Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    .line 469
    .restart local v8       #sb:Ljava/lang/StringBuffer;
    const-string v12, "name"

    invoke-virtual {v8, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    const-string v13, " ["

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    const-string v13, "]"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 470
    const-string v12, "ExchangeActivation"

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    .end local v8           #sb:Ljava/lang/StringBuffer;
    .end local v11           #temp:Ljava/lang/String;
    :cond_3
    const-string v12, "value"

    invoke-virtual {v6, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_0

    if-eqz v9, :cond_0

    .line 474
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    .line 478
    .restart local v11       #temp:Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    .line 479
    .restart local v8       #sb:Ljava/lang/StringBuffer;
    const-string v12, "value"

    invoke-virtual {v8, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    const-string v13, "["

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    const-string v13, "]"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 480
    const-string v12, "ExchangeActivation"

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    invoke-interface {v5, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v3, v4

    .line 484
    .end local v4           #i:I
    .restart local v3       #i:I
    goto/16 :goto_1

    .line 488
    .end local v3           #i:I
    .end local v8           #sb:Ljava/lang/StringBuffer;
    .end local v11           #temp:Ljava/lang/String;
    .restart local v4       #i:I
    :pswitch_3
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    .line 489
    const-string v12, "struct"

    invoke-virtual {v6, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_4

    if-eqz v10, :cond_4

    .line 490
    const-string v12, "ExchangeActivation"

    const-string v13, "struct end"

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    const/4 v0, 0x1

    move v3, v4

    .end local v4           #i:I
    .restart local v3       #i:I
    goto/16 :goto_1

    .line 492
    .end local v3           #i:I
    .restart local v4       #i:I
    :cond_4
    if-eqz v10, :cond_0

    .line 493
    const-string v12, "member"

    invoke-virtual {v6, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 497
    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    .line 498
    .restart local v8       #sb:Ljava/lang/StringBuffer;
    const-string v12, "member end: "

    invoke-virtual {v8, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    add-int/lit8 v3, v4, 0x1

    .end local v4           #i:I
    .restart local v3       #i:I
    invoke-virtual {v12, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 499
    const-string v12, "ExchangeActivation"

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 502
    const/4 v9, 0x0

    goto/16 :goto_1

    .line 509
    .end local v0           #done:Z
    .end local v2           #eventType:I
    .end local v3           #i:I
    .end local v6           #name:Ljava/lang/String;
    .end local v8           #sb:Ljava/lang/StringBuffer;
    .end local v9           #startBlk:Z
    .end local v10           #startDoc:Z
    :catch_0
    move-exception v12

    move-object v1, v12

    .line 510
    .local v1, e:Ljava/lang/Exception;
    new-instance v12, Ljava/lang/RuntimeException;

    invoke-direct {v12, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v12

    .line 512
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v0       #done:Z
    .restart local v2       #eventType:I
    .restart local v4       #i:I
    .restart local v9       #startBlk:Z
    .restart local v10       #startDoc:Z
    :cond_5
    return-object v5

    .line 442
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
