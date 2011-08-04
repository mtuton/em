.class Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;
.super Lcom/android/exchange/adapter/AbstractSyncParser;
.source "ContactsSyncAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exchange/adapter/ContactsSyncAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EasContactsSyncParser"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser$ServerChange;
    }
.end annotation


# instance fields
.field mAccountUri:Landroid/net/Uri;

.field mBindArgument:[Ljava/lang/String;

.field ops:Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;

.field final synthetic this$0:Lcom/android/exchange/adapter/ContactsSyncAdapter;


# direct methods
.method public constructor <init>(Lcom/android/exchange/adapter/ContactsSyncAdapter;Ljava/io/InputStream;Lcom/android/exchange/adapter/ContactsSyncAdapter;)V
    .locals 3
    .parameter
    .parameter "in"
    .parameter "adapter"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 339
    iput-object p1, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->this$0:Lcom/android/exchange/adapter/ContactsSyncAdapter;

    .line 340
    invoke-direct {p0, p2, p3}, Lcom/android/exchange/adapter/AbstractSyncParser;-><init>(Ljava/io/InputStream;Lcom/android/exchange/adapter/AbstractSyncAdapter;)V

    .line 333
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->mBindArgument:[Ljava/lang/String;

    .line 336
    new-instance v0, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;

    iget-object v1, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->this$0:Lcom/android/exchange/adapter/ContactsSyncAdapter;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;-><init>(Lcom/android/exchange/adapter/ContactsSyncAdapter;Lcom/android/exchange/adapter/ContactsSyncAdapter$1;)V

    iput-object v0, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->ops:Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;

    .line 341
    sget-object v0, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p1, v0}, Lcom/android/exchange/adapter/ContactsSyncAdapter;->access$100(Lcom/android/exchange/adapter/ContactsSyncAdapter;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->mAccountUri:Landroid/net/Uri;

    .line 342
    return-void
.end method

.method private bodyParser()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 687
    const/4 v0, 0x0

    .line 688
    .local v0, body:Ljava/lang/String;
    :goto_0
    const/16 v1, 0x44a

    invoke-virtual {p0, v1}, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->nextTag(I)I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    .line 689
    iget v1, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->tag:I

    packed-switch v1, :pswitch_data_0

    .line 694
    invoke-virtual {p0}, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->skipTag()V

    goto :goto_0

    .line 691
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 692
    goto :goto_0

    .line 697
    :cond_0
    return-object v0

    .line 689
    nop

    :pswitch_data_0
    .packed-switch 0x44b
        :pswitch_0
    .end packed-switch
.end method

.method private categoriesParser(Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;Landroid/content/Entity;)V
    .locals 2
    .parameter "ops"
    .parameter "entity"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 661
    :goto_0
    const/16 v0, 0x55

    invoke-virtual {p0, v0}, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->nextTag(I)I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 662
    iget v0, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->tag:I

    packed-switch v0, :pswitch_data_0

    .line 667
    invoke-virtual {p0}, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->skipTag()V

    goto :goto_0

    .line 664
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->addGroup(Landroid/content/Entity;Ljava/lang/String;)V

    goto :goto_0

    .line 670
    :cond_0
    return-void

    .line 662
    nop

    :pswitch_data_0
    .packed-switch 0x56
        :pswitch_0
    .end packed-switch
.end method

.method private childrenParser(Ljava/util/ArrayList;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 673
    .local p1, children:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    const/16 v0, 0x57

    invoke-virtual {p0, v0}, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->nextTag(I)I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    .line 674
    iget v0, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->tag:I

    packed-switch v0, :pswitch_data_0

    .line 681
    invoke-virtual {p0}, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->skipTag()V

    goto :goto_0

    .line 676
    :pswitch_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v1, 0x8

    if-ge v0, v1, :cond_0

    .line 677
    invoke-virtual {p0}, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 684
    :cond_1
    return-void

    .line 674
    nop

    :pswitch_data_0
    .packed-switch 0x58
        :pswitch_0
    .end packed-switch
.end method

.method private getClientIdCursor(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6
    .parameter "clientId"

    .prologue
    .line 723
    iget-object v0, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->mBindArgument:[Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 724
    iget-object v0, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->mAccountUri:Landroid/net/Uri;

    invoke-static {}, Lcom/android/exchange/adapter/ContactsSyncAdapter;->access$300()[Ljava/lang/String;

    move-result-object v2

    const-string v3, "sync1=?"

    iget-object v4, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->mBindArgument:[Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private getServerIdCursor(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6
    .parameter "serverId"

    .prologue
    .line 717
    iget-object v0, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->mBindArgument:[Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 718
    iget-object v0, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->mAccountUri:Landroid/net/Uri;

    invoke-static {}, Lcom/android/exchange/adapter/ContactsSyncAdapter;->access$300()[Ljava/lang/String;

    move-result-object v2

    const-string v3, "sourceid=?"

    iget-object v4, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->mBindArgument:[Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public addData(Ljava/lang/String;Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;Landroid/content/Entity;)V
    .locals 44
    .parameter "serverId"
    .parameter "ops"
    .parameter "entity"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 373
    const/4 v14, 0x0

    .line 374
    .local v14, fileAs:Ljava/lang/String;
    const/4 v6, 0x0

    .line 375
    .local v6, prefix:Ljava/lang/String;
    const/4 v7, 0x0

    .line 376
    .local v7, firstName:Ljava/lang/String;
    const/4 v8, 0x0

    .line 377
    .local v8, lastName:Ljava/lang/String;
    const/4 v9, 0x0

    .line 378
    .local v9, middleName:Ljava/lang/String;
    const/4 v10, 0x0

    .line 379
    .local v10, suffix:Ljava/lang/String;
    const/16 v28, 0x0

    .line 380
    .local v28, companyName:Ljava/lang/String;
    const/4 v12, 0x0

    .line 381
    .local v12, yomiFirstName:Ljava/lang/String;
    const/4 v13, 0x0

    .line 382
    .local v13, yomiLastName:Ljava/lang/String;
    const/16 v43, 0x0

    .line 383
    .local v43, yomiCompanyName:Ljava/lang/String;
    const/16 v39, 0x0

    .line 384
    .local v39, title:Ljava/lang/String;
    const/16 v29, 0x0

    .line 385
    .local v29, department:Ljava/lang/String;
    const/16 v36, 0x0

    .line 386
    .local v36, officeLocation:Ljava/lang/String;
    new-instance v30, Lcom/android/exchange/adapter/ContactsSyncAdapter$Address;

    invoke-direct/range {v30 .. v30}, Lcom/android/exchange/adapter/ContactsSyncAdapter$Address;-><init>()V

    .line 387
    .local v30, home:Lcom/android/exchange/adapter/ContactsSyncAdapter$Address;
    new-instance v41, Lcom/android/exchange/adapter/ContactsSyncAdapter$Address;

    invoke-direct/range {v41 .. v41}, Lcom/android/exchange/adapter/ContactsSyncAdapter$Address;-><init>()V

    .line 388
    .local v41, work:Lcom/android/exchange/adapter/ContactsSyncAdapter$Address;
    new-instance v37, Lcom/android/exchange/adapter/ContactsSyncAdapter$Address;

    invoke-direct/range {v37 .. v37}, Lcom/android/exchange/adapter/ContactsSyncAdapter$Address;-><init>()V

    .line 389
    .local v37, other:Lcom/android/exchange/adapter/ContactsSyncAdapter$Address;
    new-instance v26, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasBusiness;

    invoke-direct/range {v26 .. v26}, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasBusiness;-><init>()V

    .line 390
    .local v26, business:Lcom/android/exchange/adapter/ContactsSyncAdapter$EasBusiness;
    new-instance v38, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasPersonal;

    invoke-direct/range {v38 .. v38}, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasPersonal;-><init>()V

    .line 391
    .local v38, personal:Lcom/android/exchange/adapter/ContactsSyncAdapter$EasPersonal;
    new-instance v27, Ljava/util/ArrayList;

    invoke-direct/range {v27 .. v27}, Ljava/util/ArrayList;-><init>()V

    .line 392
    .local v27, children:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 393
    .local v17, emails:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/exchange/adapter/ContactsSyncAdapter$UntypedRow;>;"
    new-instance v33, Ljava/util/ArrayList;

    invoke-direct/range {v33 .. v33}, Ljava/util/ArrayList;-><init>()V

    .line 394
    .local v33, ims:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/exchange/adapter/ContactsSyncAdapter$UntypedRow;>;"
    new-instance v31, Ljava/util/ArrayList;

    invoke-direct/range {v31 .. v31}, Ljava/util/ArrayList;-><init>()V

    .line 395
    .local v31, homePhones:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/exchange/adapter/ContactsSyncAdapter$UntypedRow;>;"
    new-instance v42, Ljava/util/ArrayList;

    invoke-direct/range {v42 .. v42}, Ljava/util/ArrayList;-><init>()V

    .line 396
    .local v42, workPhones:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/exchange/adapter/ContactsSyncAdapter$UntypedRow;>;"
    if-nez p3, :cond_0

    .line 397
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->newContact(Ljava/lang/String;)V

    .line 400
    :cond_0
    :goto_0
    const/16 v4, 0x1d

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->nextTag(I)I

    move-result v4

    const/4 v5, 0x3

    if-eq v4, v5, :cond_1

    .line 401
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->tag:I

    move v4, v0

    sparse-switch v4, :sswitch_data_0

    .line 595
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->skipTag()V

    goto :goto_0

    .line 403
    :sswitch_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->getValue()Ljava/lang/String;

    move-result-object v7

    .line 404
    goto :goto_0

    .line 406
    :sswitch_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->getValue()Ljava/lang/String;

    move-result-object v8

    .line 407
    goto :goto_0

    .line 409
    :sswitch_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->getValue()Ljava/lang/String;

    move-result-object v9

    .line 410
    goto :goto_0

    .line 412
    :sswitch_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->getValue()Ljava/lang/String;

    move-result-object v14

    .line 413
    goto :goto_0

    .line 415
    :sswitch_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->getValue()Ljava/lang/String;

    move-result-object v10

    .line 416
    goto :goto_0

    .line 418
    :sswitch_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->getValue()Ljava/lang/String;

    move-result-object v28

    .line 419
    goto :goto_0

    .line 421
    :sswitch_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->getValue()Ljava/lang/String;

    move-result-object v39

    .line 422
    goto :goto_0

    .line 426
    :sswitch_7
    new-instance v4, Lcom/android/exchange/adapter/ContactsSyncAdapter$EmailRow;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->this$0:Lcom/android/exchange/adapter/ContactsSyncAdapter;

    move-object v5, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->getValue()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v4, v5, v11}, Lcom/android/exchange/adapter/ContactsSyncAdapter$EmailRow;-><init>(Lcom/android/exchange/adapter/ContactsSyncAdapter;Ljava/lang/String;)V

    move-object/from16 v0, v17

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 430
    :sswitch_8
    new-instance v4, Lcom/android/exchange/adapter/ContactsSyncAdapter$PhoneRow;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->this$0:Lcom/android/exchange/adapter/ContactsSyncAdapter;

    move-object v5, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->getValue()Ljava/lang/String;

    move-result-object v11

    const/4 v15, 0x3

    invoke-direct {v4, v5, v11, v15}, Lcom/android/exchange/adapter/ContactsSyncAdapter$PhoneRow;-><init>(Lcom/android/exchange/adapter/ContactsSyncAdapter;Ljava/lang/String;I)V

    move-object/from16 v0, v42

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 433
    :sswitch_9
    const/16 v4, 0x14

    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->getValue()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move v2, v4

    move-object v3, v5

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->addPhone(Landroid/content/Entity;ILjava/lang/String;)V

    goto :goto_0

    .line 436
    :sswitch_a
    const/4 v4, 0x4

    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->getValue()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move v2, v4

    move-object v3, v5

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->addPhone(Landroid/content/Entity;ILjava/lang/String;)V

    goto/16 :goto_0

    .line 439
    :sswitch_b
    const/16 v4, 0xa

    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->getValue()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move v2, v4

    move-object v3, v5

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->addPhone(Landroid/content/Entity;ILjava/lang/String;)V

    goto/16 :goto_0

    .line 442
    :sswitch_c
    const/4 v4, 0x5

    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->getValue()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move v2, v4

    move-object v3, v5

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->addPhone(Landroid/content/Entity;ILjava/lang/String;)V

    goto/16 :goto_0

    .line 446
    :sswitch_d
    new-instance v4, Lcom/android/exchange/adapter/ContactsSyncAdapter$PhoneRow;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->this$0:Lcom/android/exchange/adapter/ContactsSyncAdapter;

    move-object v5, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->getValue()Ljava/lang/String;

    move-result-object v11

    const/4 v15, 0x1

    invoke-direct {v4, v5, v11, v15}, Lcom/android/exchange/adapter/ContactsSyncAdapter$PhoneRow;-><init>(Lcom/android/exchange/adapter/ContactsSyncAdapter;Ljava/lang/String;I)V

    move-object/from16 v0, v31

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 449
    :sswitch_e
    const/4 v4, 0x2

    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->getValue()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move v2, v4

    move-object v3, v5

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->addPhone(Landroid/content/Entity;ILjava/lang/String;)V

    goto/16 :goto_0

    .line 452
    :sswitch_f
    const/16 v4, 0x9

    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->getValue()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move v2, v4

    move-object v3, v5

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->addPhone(Landroid/content/Entity;ILjava/lang/String;)V

    goto/16 :goto_0

    .line 455
    :sswitch_10
    const/16 v4, 0xe

    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->getValue()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move v2, v4

    move-object v3, v5

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->addPhone(Landroid/content/Entity;ILjava/lang/String;)V

    goto/16 :goto_0

    .line 458
    :sswitch_11
    const/4 v4, 0x6

    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->getValue()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move v2, v4

    move-object v3, v5

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->addPhone(Landroid/content/Entity;ILjava/lang/String;)V

    goto/16 :goto_0

    .line 461
    :sswitch_12
    const/16 v4, 0x13

    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->getValue()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move v2, v4

    move-object v3, v5

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->addPhone(Landroid/content/Entity;ILjava/lang/String;)V

    goto/16 :goto_0

    .line 466
    :sswitch_13
    new-instance v4, Lcom/android/exchange/adapter/ContactsSyncAdapter$ImRow;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->this$0:Lcom/android/exchange/adapter/ContactsSyncAdapter;

    move-object v5, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->getValue()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v4, v5, v11}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ImRow;-><init>(Lcom/android/exchange/adapter/ContactsSyncAdapter;Ljava/lang/String;)V

    move-object/from16 v0, v33

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 469
    :sswitch_14
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->getValue()Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, v41

    iput-object v0, v1, Lcom/android/exchange/adapter/ContactsSyncAdapter$Address;->city:Ljava/lang/String;

    goto/16 :goto_0

    .line 472
    :sswitch_15
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->getValue()Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, v41

    iput-object v0, v1, Lcom/android/exchange/adapter/ContactsSyncAdapter$Address;->country:Ljava/lang/String;

    goto/16 :goto_0

    .line 475
    :sswitch_16
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->getValue()Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, v41

    iput-object v0, v1, Lcom/android/exchange/adapter/ContactsSyncAdapter$Address;->code:Ljava/lang/String;

    goto/16 :goto_0

    .line 478
    :sswitch_17
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->getValue()Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, v41

    iput-object v0, v1, Lcom/android/exchange/adapter/ContactsSyncAdapter$Address;->state:Ljava/lang/String;

    goto/16 :goto_0

    .line 481
    :sswitch_18
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->getValue()Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, v41

    iput-object v0, v1, Lcom/android/exchange/adapter/ContactsSyncAdapter$Address;->street:Ljava/lang/String;

    goto/16 :goto_0

    .line 484
    :sswitch_19
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->getValue()Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, v30

    iput-object v0, v1, Lcom/android/exchange/adapter/ContactsSyncAdapter$Address;->city:Ljava/lang/String;

    goto/16 :goto_0

    .line 487
    :sswitch_1a
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->getValue()Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, v30

    iput-object v0, v1, Lcom/android/exchange/adapter/ContactsSyncAdapter$Address;->country:Ljava/lang/String;

    goto/16 :goto_0

    .line 490
    :sswitch_1b
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->getValue()Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, v30

    iput-object v0, v1, Lcom/android/exchange/adapter/ContactsSyncAdapter$Address;->code:Ljava/lang/String;

    goto/16 :goto_0

    .line 493
    :sswitch_1c
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->getValue()Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, v30

    iput-object v0, v1, Lcom/android/exchange/adapter/ContactsSyncAdapter$Address;->state:Ljava/lang/String;

    goto/16 :goto_0

    .line 496
    :sswitch_1d
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->getValue()Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, v30

    iput-object v0, v1, Lcom/android/exchange/adapter/ContactsSyncAdapter$Address;->street:Ljava/lang/String;

    goto/16 :goto_0

    .line 499
    :sswitch_1e
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->getValue()Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, v37

    iput-object v0, v1, Lcom/android/exchange/adapter/ContactsSyncAdapter$Address;->city:Ljava/lang/String;

    goto/16 :goto_0

    .line 502
    :sswitch_1f
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->getValue()Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, v37

    iput-object v0, v1, Lcom/android/exchange/adapter/ContactsSyncAdapter$Address;->country:Ljava/lang/String;

    goto/16 :goto_0

    .line 505
    :sswitch_20
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->getValue()Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, v37

    iput-object v0, v1, Lcom/android/exchange/adapter/ContactsSyncAdapter$Address;->code:Ljava/lang/String;

    goto/16 :goto_0

    .line 508
    :sswitch_21
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->getValue()Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, v37

    iput-object v0, v1, Lcom/android/exchange/adapter/ContactsSyncAdapter$Address;->state:Ljava/lang/String;

    goto/16 :goto_0

    .line 511
    :sswitch_22
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->getValue()Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, v37

    iput-object v0, v1, Lcom/android/exchange/adapter/ContactsSyncAdapter$Address;->street:Ljava/lang/String;

    goto/16 :goto_0

    .line 515
    :sswitch_23
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->childrenParser(Ljava/util/ArrayList;)V

    goto/16 :goto_0

    .line 519
    :sswitch_24
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->getValue()Ljava/lang/String;

    move-result-object v43

    .line 520
    goto/16 :goto_0

    .line 522
    :sswitch_25
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->getValue()Ljava/lang/String;

    move-result-object v12

    .line 523
    goto/16 :goto_0

    .line 525
    :sswitch_26
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->getValue()Ljava/lang/String;

    move-result-object v13

    .line 526
    goto/16 :goto_0

    .line 529
    :sswitch_27
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->getValue()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->addNickname(Landroid/content/Entity;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 533
    :sswitch_28
    const/4 v4, 0x1

    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->getValue()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move v2, v4

    move-object v3, v5

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->addRelation(Landroid/content/Entity;ILjava/lang/String;)V

    goto/16 :goto_0

    .line 536
    :sswitch_29
    const/4 v4, 0x7

    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->getValue()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move v2, v4

    move-object v3, v5

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->addRelation(Landroid/content/Entity;ILjava/lang/String;)V

    goto/16 :goto_0

    .line 539
    :sswitch_2a
    const/16 v4, 0xe

    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->getValue()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move v2, v4

    move-object v3, v5

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->addRelation(Landroid/content/Entity;ILjava/lang/String;)V

    goto/16 :goto_0

    .line 542
    :sswitch_2b
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->getValue()Ljava/lang/String;

    move-result-object v29

    .line 543
    goto/16 :goto_0

    .line 545
    :sswitch_2c
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->getValue()Ljava/lang/String;

    move-result-object v6

    .line 546
    goto/16 :goto_0

    .line 550
    :sswitch_2d
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->getValue()Ljava/lang/String;

    move-result-object v36

    .line 551
    goto/16 :goto_0

    .line 553
    :sswitch_2e
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->getValue()Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, v26

    iput-object v0, v1, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasBusiness;->customerId:Ljava/lang/String;

    goto/16 :goto_0

    .line 556
    :sswitch_2f
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->getValue()Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, v26

    iput-object v0, v1, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasBusiness;->governmentId:Ljava/lang/String;

    goto/16 :goto_0

    .line 559
    :sswitch_30
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->getValue()Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, v26

    iput-object v0, v1, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasBusiness;->accountName:Ljava/lang/String;

    goto/16 :goto_0

    .line 564
    :sswitch_31
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->getValue()Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, v38

    iput-object v0, v1, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasPersonal;->anniversary:Ljava/lang/String;

    goto/16 :goto_0

    .line 567
    :sswitch_32
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->getValue()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->addBirthday(Landroid/content/Entity;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 570
    :sswitch_33
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->getValue()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->addWebpage(Landroid/content/Entity;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 574
    :sswitch_34
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->getValue()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->addPhoto(Landroid/content/Entity;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 578
    :sswitch_35
    invoke-direct/range {p0 .. p0}, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->bodyParser()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->addNote(Landroid/content/Entity;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 581
    :sswitch_36
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->getValue()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->addNote(Landroid/content/Entity;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 585
    :sswitch_37
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->this$0:Lcom/android/exchange/adapter/ContactsSyncAdapter;

    move-object v4, v0

    const/4 v5, 0x1

    invoke-static {v4, v5}, Lcom/android/exchange/adapter/ContactsSyncAdapter;->access$202(Lcom/android/exchange/adapter/ContactsSyncAdapter;Z)Z

    .line 586
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->categoriesParser(Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;Landroid/content/Entity;)V

    goto/16 :goto_0

    .line 591
    :sswitch_38
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->skipTag()V

    goto/16 :goto_0

    .line 600
    :cond_1
    const/4 v11, 0x0

    .line 601
    .local v11, name:Ljava/lang/String;
    if-nez v7, :cond_2

    if-eqz v8, :cond_b

    .line 602
    :cond_2
    if-nez v7, :cond_9

    .line 603
    move-object v11, v8

    :cond_3
    :goto_1
    move-object/from16 v4, p2

    move-object/from16 v5, p3

    .line 613
    invoke-virtual/range {v4 .. v14}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->addName(Landroid/content/Entity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 615
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->addBusiness(Landroid/content/Entity;Lcom/android/exchange/adapter/ContactsSyncAdapter$EasBusiness;)V

    .line 616
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->addPersonal(Landroid/content/Entity;Lcom/android/exchange/adapter/ContactsSyncAdapter$EasPersonal;)V

    .line 618
    const-string v18, "vnd.android.cursor.item/email_v2"

    const/16 v19, -0x1

    const/16 v20, 0x3

    move-object/from16 v15, p2

    move-object/from16 v16, p3

    invoke-virtual/range {v15 .. v20}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->addUntyped(Landroid/content/Entity;Ljava/util/ArrayList;Ljava/lang/String;II)V

    .line 619
    const-string v21, "vnd.android.cursor.item/im"

    const/16 v22, -0x1

    const/16 v23, 0x3

    move-object/from16 v18, p2

    move-object/from16 v19, p3

    move-object/from16 v20, v33

    invoke-virtual/range {v18 .. v23}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->addUntyped(Landroid/content/Entity;Ljava/util/ArrayList;Ljava/lang/String;II)V

    .line 620
    const-string v21, "vnd.android.cursor.item/phone_v2"

    const/16 v22, 0x1

    const/16 v23, 0x2

    move-object/from16 v18, p2

    move-object/from16 v19, p3

    move-object/from16 v20, v31

    invoke-virtual/range {v18 .. v23}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->addUntyped(Landroid/content/Entity;Ljava/util/ArrayList;Ljava/lang/String;II)V

    .line 622
    const-string v21, "vnd.android.cursor.item/phone_v2"

    const/16 v22, 0x3

    const/16 v23, 0x2

    move-object/from16 v18, p2

    move-object/from16 v19, p3

    move-object/from16 v20, v42

    invoke-virtual/range {v18 .. v23}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->addUntyped(Landroid/content/Entity;Ljava/util/ArrayList;Ljava/lang/String;II)V

    .line 625
    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_4

    .line 626
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->addChildren(Landroid/content/Entity;Ljava/util/ArrayList;)V

    .line 629
    :cond_4
    invoke-virtual/range {v41 .. v41}, Lcom/android/exchange/adapter/ContactsSyncAdapter$Address;->hasData()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 630
    const/16 v20, 0x2

    move-object/from16 v0, v41

    iget-object v0, v0, Lcom/android/exchange/adapter/ContactsSyncAdapter$Address;->street:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v41

    iget-object v0, v0, Lcom/android/exchange/adapter/ContactsSyncAdapter$Address;->city:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v41

    iget-object v0, v0, Lcom/android/exchange/adapter/ContactsSyncAdapter$Address;->state:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v41

    iget-object v0, v0, Lcom/android/exchange/adapter/ContactsSyncAdapter$Address;->country:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, v41

    iget-object v0, v0, Lcom/android/exchange/adapter/ContactsSyncAdapter$Address;->code:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v18, p2

    move-object/from16 v19, p3

    invoke-virtual/range {v18 .. v25}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->addPostal(Landroid/content/Entity;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 633
    :cond_5
    invoke-virtual/range {v30 .. v30}, Lcom/android/exchange/adapter/ContactsSyncAdapter$Address;->hasData()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 634
    const/16 v20, 0x1

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/exchange/adapter/ContactsSyncAdapter$Address;->street:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/exchange/adapter/ContactsSyncAdapter$Address;->city:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/exchange/adapter/ContactsSyncAdapter$Address;->state:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/exchange/adapter/ContactsSyncAdapter$Address;->country:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/exchange/adapter/ContactsSyncAdapter$Address;->code:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v18, p2

    move-object/from16 v19, p3

    invoke-virtual/range {v18 .. v25}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->addPostal(Landroid/content/Entity;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 637
    :cond_6
    invoke-virtual/range {v37 .. v37}, Lcom/android/exchange/adapter/ContactsSyncAdapter$Address;->hasData()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 638
    const/16 v20, 0x3

    move-object/from16 v0, v37

    iget-object v0, v0, Lcom/android/exchange/adapter/ContactsSyncAdapter$Address;->street:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v37

    iget-object v0, v0, Lcom/android/exchange/adapter/ContactsSyncAdapter$Address;->city:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v37

    iget-object v0, v0, Lcom/android/exchange/adapter/ContactsSyncAdapter$Address;->state:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v37

    iget-object v0, v0, Lcom/android/exchange/adapter/ContactsSyncAdapter$Address;->country:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, v37

    iget-object v0, v0, Lcom/android/exchange/adapter/ContactsSyncAdapter$Address;->code:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v18, p2

    move-object/from16 v19, p3

    invoke-virtual/range {v18 .. v25}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->addPostal(Landroid/content/Entity;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 642
    :cond_7
    if-eqz v28, :cond_8

    .line 643
    const/16 v20, 0x1

    move-object/from16 v18, p2

    move-object/from16 v19, p3

    move-object/from16 v21, v28

    move-object/from16 v22, v39

    move-object/from16 v23, v29

    move-object/from16 v24, v43

    move-object/from16 v25, v36

    invoke-virtual/range {v18 .. v25}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->addOrganization(Landroid/content/Entity;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 647
    :cond_8
    if-eqz p3, :cond_c

    .line 650
    invoke-virtual/range {p3 .. p3}, Landroid/content/Entity;->getSubValues()Ljava/util/ArrayList;

    move-result-object v35

    .line 651
    .local v35, ncvList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/Entity$NamedContentValues;>;"
    invoke-virtual/range {v35 .. v35}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v32

    .local v32, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface/range {v32 .. v32}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-interface/range {v32 .. v32}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Landroid/content/Entity$NamedContentValues;

    .line 653
    .local v34, ncv:Landroid/content/Entity$NamedContentValues;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->this$0:Lcom/android/exchange/adapter/ContactsSyncAdapter;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/ContactsSyncAdapter;->dataUriFromNamedContentValues(Landroid/content/Entity$NamedContentValues;)Landroid/net/Uri;

    move-result-object v40

    .line 654
    .local v40, u:Landroid/net/Uri;
    invoke-static/range {v40 .. v40}, Lcom/android/exchange/adapter/ContactsSyncAdapter;->addCallerIsSyncAdapterParameter(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v4

    invoke-static {v4}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v4

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->add(Landroid/content/ContentProviderOperation;)Z

    goto :goto_2

    .line 604
    .end local v32           #i$:Ljava/util/Iterator;
    .end local v34           #ncv:Landroid/content/Entity$NamedContentValues;
    .end local v35           #ncvList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/Entity$NamedContentValues;>;"
    .end local v40           #u:Landroid/net/Uri;
    :cond_9
    if-nez v8, :cond_a

    .line 605
    move-object v11, v7

    goto/16 :goto_1

    .line 607
    :cond_a
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x20

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_1

    .line 609
    :cond_b
    if-eqz v28, :cond_3

    .line 610
    move-object/from16 v11, v28

    goto/16 :goto_1

    .line 658
    :cond_c
    return-void

    .line 401
    :sswitch_data_0
    .sparse-switch
        0x45 -> :sswitch_31
        0x46 -> :sswitch_28
        0x47 -> :sswitch_12
        0x48 -> :sswitch_32
        0x49 -> :sswitch_36
        0x4c -> :sswitch_8
        0x4d -> :sswitch_14
        0x4e -> :sswitch_15
        0x4f -> :sswitch_16
        0x50 -> :sswitch_17
        0x51 -> :sswitch_18
        0x52 -> :sswitch_a
        0x53 -> :sswitch_8
        0x54 -> :sswitch_f
        0x55 -> :sswitch_37
        0x57 -> :sswitch_23
        0x59 -> :sswitch_5
        0x5a -> :sswitch_2b
        0x5b -> :sswitch_7
        0x5c -> :sswitch_7
        0x5d -> :sswitch_7
        0x5e -> :sswitch_3
        0x5f -> :sswitch_0
        0x60 -> :sswitch_d
        0x61 -> :sswitch_19
        0x62 -> :sswitch_1a
        0x63 -> :sswitch_1b
        0x64 -> :sswitch_1c
        0x65 -> :sswitch_1d
        0x66 -> :sswitch_c
        0x67 -> :sswitch_d
        0x68 -> :sswitch_6
        0x69 -> :sswitch_1
        0x6a -> :sswitch_2
        0x6b -> :sswitch_e
        0x6c -> :sswitch_2d
        0x6d -> :sswitch_1e
        0x6e -> :sswitch_1f
        0x6f -> :sswitch_20
        0x70 -> :sswitch_21
        0x71 -> :sswitch_22
        0x72 -> :sswitch_11
        0x73 -> :sswitch_10
        0x74 -> :sswitch_2a
        0x75 -> :sswitch_4
        0x76 -> :sswitch_2c
        0x77 -> :sswitch_33
        0x78 -> :sswitch_24
        0x79 -> :sswitch_25
        0x7a -> :sswitch_26
        0x7b -> :sswitch_38
        0x7c -> :sswitch_34
        0x305 -> :sswitch_2e
        0x306 -> :sswitch_2f
        0x307 -> :sswitch_13
        0x308 -> :sswitch_13
        0x309 -> :sswitch_13
        0x30a -> :sswitch_29
        0x30b -> :sswitch_b
        0x30c -> :sswitch_30
        0x30d -> :sswitch_27
        0x30e -> :sswitch_9
        0x44a -> :sswitch_35
    .end sparse-switch
.end method

.method public addParser(Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;)V
    .locals 3
    .parameter "ops"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 701
    const/4 v0, 0x0

    .line 702
    .local v0, serverId:Ljava/lang/String;
    :goto_0
    const/4 v1, 0x7

    invoke-virtual {p0, v1}, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->nextTag(I)I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    .line 703
    iget v1, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->tag:I

    sparse-switch v1, :sswitch_data_0

    .line 711
    invoke-virtual {p0}, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->skipTag()V

    goto :goto_0

    .line 705
    :sswitch_0
    invoke-virtual {p0}, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 706
    goto :goto_0

    .line 708
    :sswitch_1
    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->addData(Ljava/lang/String;Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;Landroid/content/Entity;)V

    goto :goto_0

    .line 714
    :cond_0
    return-void

    .line 703
    nop

    :sswitch_data_0
    .sparse-switch
        0xd -> :sswitch_0
        0x1d -> :sswitch_1
    .end sparse-switch
.end method

.method public addResponsesParser()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 856
    const/4 v3, 0x0

    .line 857
    .local v3, serverId:Ljava/lang/String;
    const/4 v1, 0x0

    .line 858
    .local v1, clientId:Ljava/lang/String;
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 859
    .local v2, cv:Landroid/content/ContentValues;
    :goto_0
    const/4 v4, 0x7

    invoke-virtual {p0, v4}, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->nextTag(I)I

    move-result v4

    const/4 v5, 0x3

    if-eq v4, v5, :cond_0

    .line 860
    iget v4, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->tag:I

    packed-switch v4, :pswitch_data_0

    .line 871
    invoke-virtual {p0}, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->skipTag()V

    goto :goto_0

    .line 862
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->getValue()Ljava/lang/String;

    move-result-object v3

    .line 863
    goto :goto_0

    .line 865
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 866
    goto :goto_0

    .line 868
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->getValue()Ljava/lang/String;

    goto :goto_0

    .line 876
    :cond_0
    if-eqz v1, :cond_1

    if-nez v3, :cond_2

    .line 894
    :cond_1
    :goto_1
    return-void

    .line 878
    :cond_2
    invoke-direct {p0, v1}, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->getClientIdCursor(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 880
    .local v0, c:Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 881
    const-string v4, "sourceid"

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 882
    const-string v4, "dirty"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 883
    iget-object v4, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->ops:Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;

    sget-object v5, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v5}, Lcom/android/exchange/adapter/ContactsSyncAdapter;->addCallerIsSyncAdapterParameter(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-static {v5, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    invoke-static {v5}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->add(Landroid/content/ContentProviderOperation;)Z

    .line 889
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "New contact "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " was given serverId: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {p0, v4}, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->userLog([Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 892
    :cond_3
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception v4

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v4

    .line 860
    nop

    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public changeParser(Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;)V
    .locals 12
    .parameter "ops"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 766
    const/4 v10, 0x0

    .line 767
    .local v10, serverId:Ljava/lang/String;
    const/4 v8, 0x0

    .line 768
    .local v8, entity:Landroid/content/Entity;
    :goto_0
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->nextTag(I)I

    move-result v1

    const/4 v3, 0x3

    if-eq v1, v3, :cond_2

    .line 769
    iget v1, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->tag:I

    sparse-switch v1, :sswitch_data_0

    .line 796
    invoke-virtual {p0}, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->skipTag()V

    goto :goto_0

    .line 771
    :sswitch_0
    invoke-virtual {p0}, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->getValue()Ljava/lang/String;

    move-result-object v10

    .line 772
    invoke-direct {p0, v10}, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->getServerIdCursor(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 774
    .local v7, c:Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 777
    sget-object v1, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    invoke-interface {v7, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-static {v1, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    .line 779
    .local v2, uri:Landroid/net/Uri;
    const-string v1, "entity"

    invoke-static {v2, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 781
    iget-object v1, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    invoke-static {v1}, Landroid/provider/ContactsContract$RawContacts;->newEntityIterator(Landroid/database/Cursor;)Landroid/content/EntityIterator;

    move-result-object v9

    .line 783
    .local v9, entityIterator:Landroid/content/EntityIterator;
    invoke-interface {v9}, Landroid/content/EntityIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 784
    invoke-interface {v9}, Landroid/content/EntityIterator;->next()Ljava/lang/Object;

    move-result-object v11

    move-object v0, v11

    check-cast v0, Landroid/content/Entity;

    move-object v8, v0

    .line 786
    :cond_0
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "Changing contact "

    aput-object v4, v1, v3

    const/4 v3, 0x1

    aput-object v10, v1, v3

    invoke-virtual {p0, v1}, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->userLog([Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 789
    .end local v2           #uri:Landroid/net/Uri;
    .end local v9           #entityIterator:Landroid/content/EntityIterator;
    :cond_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v1

    .line 793
    .end local v7           #c:Landroid/database/Cursor;
    :sswitch_1
    invoke-virtual {p0, v10, p1, v8}, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->addData(Ljava/lang/String;Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;Landroid/content/Entity;)V

    goto :goto_0

    .line 799
    :cond_2
    return-void

    .line 769
    nop

    :sswitch_data_0
    .sparse-switch
        0xd -> :sswitch_0
        0x1d -> :sswitch_1
    .end sparse-switch
.end method

.method public changeResponsesParser()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 897
    const/4 v0, 0x0

    .line 898
    .local v0, serverId:Ljava/lang/String;
    const/4 v1, 0x0

    .line 899
    .local v1, status:Ljava/lang/String;
    :goto_0
    const/16 v2, 0x8

    invoke-virtual {p0, v2}, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->nextTag(I)I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_0

    .line 900
    iget v2, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->tag:I

    packed-switch v2, :pswitch_data_0

    .line 908
    invoke-virtual {p0}, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->skipTag()V

    goto :goto_0

    .line 902
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 903
    goto :goto_0

    .line 905
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 906
    goto :goto_0

    .line 911
    :cond_0
    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    .line 912
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Changed contact "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " failed with status: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v2}, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->userLog([Ljava/lang/String;)V

    .line 914
    :cond_1
    return-void

    .line 900
    nop

    :pswitch_data_0
    .packed-switch 0xd
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public commandsParser()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 803
    :goto_0
    const/16 v0, 0x16

    invoke-virtual {p0, v0}, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->nextTag(I)I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    .line 804
    iget v0, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->tag:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    .line 805
    iget-object v0, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->ops:Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;

    invoke-virtual {p0, v0}, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->addParser(Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;)V

    .line 806
    iget-object v0, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->this$0:Lcom/android/exchange/adapter/ContactsSyncAdapter;

    invoke-virtual {v0}, Lcom/android/exchange/adapter/ContactsSyncAdapter;->incrementChangeCount()V

    goto :goto_0

    .line 807
    :cond_0
    iget v0, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->tag:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_1

    .line 808
    iget-object v0, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->ops:Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;

    invoke-virtual {p0, v0}, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->deleteParser(Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;)V

    .line 809
    iget-object v0, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->this$0:Lcom/android/exchange/adapter/ContactsSyncAdapter;

    invoke-virtual {v0}, Lcom/android/exchange/adapter/ContactsSyncAdapter;->incrementChangeCount()V

    goto :goto_0

    .line 810
    :cond_1
    iget v0, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->tag:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_2

    .line 811
    iget-object v0, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->ops:Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;

    invoke-virtual {p0, v0}, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->changeParser(Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;)V

    .line 812
    iget-object v0, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->this$0:Lcom/android/exchange/adapter/ContactsSyncAdapter;

    invoke-virtual {v0}, Lcom/android/exchange/adapter/ContactsSyncAdapter;->incrementChangeCount()V

    goto :goto_0

    .line 814
    :cond_2
    invoke-virtual {p0}, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->skipTag()V

    goto :goto_0

    .line 816
    :cond_3
    return-void
.end method

.method public commit()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 823
    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const-string v7, "Contacts SyncKey saved as: "

    aput-object v7, v6, v10

    const/4 v7, 0x1

    iget-object v8, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    iget-object v8, v8, Lcom/android/email/provider/EmailContent$Mailbox;->mSyncKey:Ljava/lang/String;

    aput-object v8, v6, v7

    invoke-virtual {p0, v6}, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->userLog([Ljava/lang/String;)V

    .line 824
    iget-object v6, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->ops:Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;

    sget-object v7, Landroid/provider/ContactsContract$SyncState;->CONTENT_URI:Landroid/net/Uri;

    iget-object v8, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->this$0:Lcom/android/exchange/adapter/ContactsSyncAdapter;

    iget-object v8, v8, Lcom/android/exchange/adapter/ContactsSyncAdapter;->mAccountManagerAccount:Landroid/accounts/Account;

    iget-object v9, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    iget-object v9, v9, Lcom/android/email/provider/EmailContent$Mailbox;->mSyncKey:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    invoke-static {v7, v8, v9}, Landroid/provider/SyncStateContract$Helpers;->newSetOperation(Landroid/net/Uri;Landroid/accounts/Account;[B)Landroid/content/ContentProviderOperation;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->add(Landroid/content/ContentProviderOperation;)Z

    .line 828
    iget-object v6, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->ops:Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;

    invoke-virtual {v6}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->execute()V

    .line 830
    iget-object v6, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->ops:Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;

    invoke-static {v6}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->access$400(Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;)[Landroid/content/ContentProviderResult;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 831
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 832
    .local v0, cv:Landroid/content/ContentValues;
    const-string v6, "dirty"

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 833
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v6, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->ops:Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;

    invoke-static {v6}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->access$500(Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;)I

    move-result v6

    if-ge v1, v6, :cond_1

    .line 834
    iget-object v6, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->ops:Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;

    invoke-static {v6}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->access$600(Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;)[I

    move-result-object v6

    aget v3, v6, v1

    .line 835
    .local v3, index:I
    iget-object v6, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->ops:Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;

    invoke-static {v6}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->access$400(Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;)[Landroid/content/ContentProviderResult;

    move-result-object v6

    aget-object v6, v6, v3

    iget-object v5, v6, Landroid/content/ContentProviderResult;->uri:Landroid/net/Uri;

    .line 836
    .local v5, u:Landroid/net/Uri;
    if-eqz v5, :cond_0

    .line 837
    invoke-virtual {v5}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v2

    .line 844
    .local v2, idString:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 845
    .local v4, sb:Ljava/lang/StringBuffer;
    const-string v6, "_id"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, "="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 846
    iget-object v6, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v7, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v7}, Lcom/android/exchange/adapter/ContactsSyncAdapter;->addCallerIsSyncAdapterParameter(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v6, v7, v0, v8, v9}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 833
    .end local v2           #idString:Ljava/lang/String;
    .end local v4           #sb:Ljava/lang/StringBuffer;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 853
    .end local v0           #cv:Landroid/content/ContentValues;
    .end local v1           #i:I
    .end local v3           #index:I
    .end local v5           #u:Landroid/net/Uri;
    :cond_1
    return-void
.end method

.method public deleteParser(Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;)V
    .locals 5
    .parameter "ops"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 729
    :goto_0
    const/16 v2, 0x9

    invoke-virtual {p0, v2}, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->nextTag(I)I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_1

    .line 730
    iget v2, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->tag:I

    packed-switch v2, :pswitch_data_0

    .line 745
    invoke-virtual {p0}, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->skipTag()V

    goto :goto_0

    .line 732
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 734
    .local v1, serverId:Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->getServerIdCursor(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 736
    .local v0, c:Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 737
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "Deleting "

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object v1, v2, v3

    invoke-virtual {p0, v2}, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->userLog([Ljava/lang/String;)V

    .line 738
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->delete(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 741
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v2

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v2

    .line 748
    .end local v0           #c:Landroid/database/Cursor;
    .end local v1           #serverId:Ljava/lang/String;
    :cond_1
    return-void

    .line 730
    :pswitch_data_0
    .packed-switch 0xd
        :pswitch_0
    .end packed-switch
.end method

.method public responsesParser()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 920
    :goto_0
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->nextTag(I)I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    .line 921
    iget v0, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->tag:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    .line 922
    invoke-virtual {p0}, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->addResponsesParser()V

    goto :goto_0

    .line 923
    :cond_0
    iget v0, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->tag:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    .line 924
    invoke-virtual {p0}, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->changeResponsesParser()V

    goto :goto_0

    .line 926
    :cond_1
    invoke-virtual {p0}, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->skipTag()V

    goto :goto_0

    .line 928
    :cond_2
    return-void
.end method

.method public wipe()V
    .locals 11

    .prologue
    const/4 v9, 0x0

    const-string v10, "EasContactsSyncAdapter"

    .line 354
    const-string v6, "EasContactsSyncAdapter"

    const-string v6, "CONTACTS BAD SYNC KEY"

    invoke-static {v10, v6}, Lcom/android/exchange/SyncManager;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 357
    .local v1, cvx:Landroid/content/ContentValues;
    const-string v6, "syncKey"

    const-string v7, "0"

    invoke-virtual {v1, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    sget-object v6, Lcom/android/email/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    iget-object v7, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    iget-wide v7, v7, Lcom/android/email/provider/EmailContent$Mailbox;->mId:J

    invoke-static {v6, v7, v8}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    .line 359
    .local v4, mMailboxUri:Landroid/net/Uri;
    iget-object v6, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v6, v4, v1, v9, v9}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    .line 360
    .local v5, mailboxCount:I
    const-string v6, "EasContactsSyncAdapter"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Updating Contacts mailbox with sync key 0. Count = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v10, v6}, Lcom/android/exchange/SyncManager;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    iget-object v6, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v7, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->mAccountUri:Landroid/net/Uri;

    invoke-virtual {v6, v7, v9, v9}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 363
    .local v0, contactsCount:I
    const-string v6, "EasContactsSyncAdapter"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Contacts RawContacts table rows deleted count = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v10, v6}, Lcom/android/exchange/SyncManager;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    iget-object v6, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->this$0:Lcom/android/exchange/adapter/ContactsSyncAdapter;

    sget-object v7, Landroid/provider/ContactsContract$SyncState;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v6, v7}, Lcom/android/exchange/adapter/ContactsSyncAdapter;->access$100(Lcom/android/exchange/adapter/ContactsSyncAdapter;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v3

    .line 367
    .local v3, mContactsSyncStateUri:Landroid/net/Uri;
    iget-object v6, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v6, v3, v9, v9}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 368
    .local v2, mContactsSyncStateCount:I
    const-string v6, "EasContactsSyncAdapter"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Contacts _sync_state table row deleted. rowCount = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v10, v6}, Lcom/android/exchange/SyncManager;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    return-void
.end method
