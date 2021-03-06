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

.field mMailboxIdAsString:Ljava/lang/String;

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
    .line 337
    iput-object p1, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->this$0:Lcom/android/exchange/adapter/ContactsSyncAdapter;

    .line 338
    invoke-direct {p0, p2, p3}, Lcom/android/exchange/adapter/AbstractSyncParser;-><init>(Ljava/io/InputStream;Lcom/android/exchange/adapter/AbstractSyncAdapter;)V

    .line 331
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->mBindArgument:[Ljava/lang/String;

    .line 334
    new-instance v0, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;

    iget-object v1, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->this$0:Lcom/android/exchange/adapter/ContactsSyncAdapter;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;-><init>(Lcom/android/exchange/adapter/ContactsSyncAdapter;Lcom/android/exchange/adapter/ContactsSyncAdapter$1;)V

    iput-object v0, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->ops:Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;

    .line 339
    sget-object v0, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p1, v0}, Lcom/android/exchange/adapter/ContactsSyncAdapter;->access$100(Lcom/android/exchange/adapter/ContactsSyncAdapter;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->mAccountUri:Landroid/net/Uri;

    .line 340
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
    .line 685
    const/4 v0, 0x0

    .line 686
    .local v0, body:Ljava/lang/String;
    :goto_0
    const/16 v1, 0x44a

    invoke-virtual {p0, v1}, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->nextTag(I)I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    .line 687
    iget v1, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->tag:I

    packed-switch v1, :pswitch_data_0

    .line 692
    invoke-virtual {p0}, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->skipTag()V

    goto :goto_0

    .line 689
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 690
    goto :goto_0

    .line 695
    :cond_0
    return-object v0

    .line 687
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
    .line 659
    :goto_0
    const/16 v0, 0x55

    invoke-virtual {p0, v0}, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->nextTag(I)I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 660
    iget v0, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->tag:I

    packed-switch v0, :pswitch_data_0

    .line 665
    invoke-virtual {p0}, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->skipTag()V

    goto :goto_0

    .line 662
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->addGroup(Landroid/content/Entity;Ljava/lang/String;)V

    goto :goto_0

    .line 668
    :cond_0
    return-void

    .line 660
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
    .line 671
    .local p1, children:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    const/16 v0, 0x57

    invoke-virtual {p0, v0}, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->nextTag(I)I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    .line 672
    iget v0, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->tag:I

    packed-switch v0, :pswitch_data_0

    .line 679
    invoke-virtual {p0}, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->skipTag()V

    goto :goto_0

    .line 674
    :pswitch_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v1, 0x8

    if-ge v0, v1, :cond_0

    .line 675
    invoke-virtual {p0}, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 682
    :cond_1
    return-void

    .line 672
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
    .line 721
    iget-object v0, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->mBindArgument:[Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 722
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
    .line 715
    iget-object v0, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->mBindArgument:[Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 716
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
    .line 371
    const/4 v14, 0x0

    .line 372
    .local v14, fileAs:Ljava/lang/String;
    const/4 v6, 0x0

    .line 373
    .local v6, prefix:Ljava/lang/String;
    const/4 v7, 0x0

    .line 374
    .local v7, firstName:Ljava/lang/String;
    const/4 v8, 0x0

    .line 375
    .local v8, lastName:Ljava/lang/String;
    const/4 v9, 0x0

    .line 376
    .local v9, middleName:Ljava/lang/String;
    const/4 v10, 0x0

    .line 377
    .local v10, suffix:Ljava/lang/String;
    const/16 v28, 0x0

    .line 378
    .local v28, companyName:Ljava/lang/String;
    const/4 v12, 0x0

    .line 379
    .local v12, yomiFirstName:Ljava/lang/String;
    const/4 v13, 0x0

    .line 380
    .local v13, yomiLastName:Ljava/lang/String;
    const/16 v43, 0x0

    .line 381
    .local v43, yomiCompanyName:Ljava/lang/String;
    const/16 v39, 0x0

    .line 382
    .local v39, title:Ljava/lang/String;
    const/16 v29, 0x0

    .line 383
    .local v29, department:Ljava/lang/String;
    const/16 v36, 0x0

    .line 384
    .local v36, officeLocation:Ljava/lang/String;
    new-instance v30, Lcom/android/exchange/adapter/ContactsSyncAdapter$Address;

    invoke-direct/range {v30 .. v30}, Lcom/android/exchange/adapter/ContactsSyncAdapter$Address;-><init>()V

    .line 385
    .local v30, home:Lcom/android/exchange/adapter/ContactsSyncAdapter$Address;
    new-instance v41, Lcom/android/exchange/adapter/ContactsSyncAdapter$Address;

    invoke-direct/range {v41 .. v41}, Lcom/android/exchange/adapter/ContactsSyncAdapter$Address;-><init>()V

    .line 386
    .local v41, work:Lcom/android/exchange/adapter/ContactsSyncAdapter$Address;
    new-instance v37, Lcom/android/exchange/adapter/ContactsSyncAdapter$Address;

    invoke-direct/range {v37 .. v37}, Lcom/android/exchange/adapter/ContactsSyncAdapter$Address;-><init>()V

    .line 387
    .local v37, other:Lcom/android/exchange/adapter/ContactsSyncAdapter$Address;
    new-instance v26, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasBusiness;

    invoke-direct/range {v26 .. v26}, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasBusiness;-><init>()V

    .line 388
    .local v26, business:Lcom/android/exchange/adapter/ContactsSyncAdapter$EasBusiness;
    new-instance v38, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasPersonal;

    invoke-direct/range {v38 .. v38}, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasPersonal;-><init>()V

    .line 389
    .local v38, personal:Lcom/android/exchange/adapter/ContactsSyncAdapter$EasPersonal;
    new-instance v27, Ljava/util/ArrayList;

    invoke-direct/range {v27 .. v27}, Ljava/util/ArrayList;-><init>()V

    .line 390
    .local v27, children:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 391
    .local v17, emails:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/exchange/adapter/ContactsSyncAdapter$UntypedRow;>;"
    new-instance v33, Ljava/util/ArrayList;

    invoke-direct/range {v33 .. v33}, Ljava/util/ArrayList;-><init>()V

    .line 392
    .local v33, ims:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/exchange/adapter/ContactsSyncAdapter$UntypedRow;>;"
    new-instance v31, Ljava/util/ArrayList;

    invoke-direct/range {v31 .. v31}, Ljava/util/ArrayList;-><init>()V

    .line 393
    .local v31, homePhones:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/exchange/adapter/ContactsSyncAdapter$UntypedRow;>;"
    new-instance v42, Ljava/util/ArrayList;

    invoke-direct/range {v42 .. v42}, Ljava/util/ArrayList;-><init>()V

    .line 394
    .local v42, workPhones:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/exchange/adapter/ContactsSyncAdapter$UntypedRow;>;"
    if-nez p3, :cond_0

    .line 395
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->newContact(Ljava/lang/String;)V

    .line 398
    :cond_0
    :goto_0
    const/16 v4, 0x1d

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->nextTag(I)I

    move-result v4

    const/4 v5, 0x3

    if-eq v4, v5, :cond_1

    .line 399
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->tag:I

    move v4, v0

    sparse-switch v4, :sswitch_data_0

    .line 593
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->skipTag()V

    goto :goto_0

    .line 401
    :sswitch_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->getValue()Ljava/lang/String;

    move-result-object v7

    .line 402
    goto :goto_0

    .line 404
    :sswitch_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->getValue()Ljava/lang/String;

    move-result-object v8

    .line 405
    goto :goto_0

    .line 407
    :sswitch_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->getValue()Ljava/lang/String;

    move-result-object v9

    .line 408
    goto :goto_0

    .line 410
    :sswitch_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->getValue()Ljava/lang/String;

    move-result-object v14

    .line 411
    goto :goto_0

    .line 413
    :sswitch_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->getValue()Ljava/lang/String;

    move-result-object v10

    .line 414
    goto :goto_0

    .line 416
    :sswitch_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->getValue()Ljava/lang/String;

    move-result-object v28

    .line 417
    goto :goto_0

    .line 419
    :sswitch_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->getValue()Ljava/lang/String;

    move-result-object v39

    .line 420
    goto :goto_0

    .line 424
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

    .line 428
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

    .line 431
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

    .line 434
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

    .line 437
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

    .line 440
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

    .line 444
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

    .line 447
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

    .line 450
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

    .line 453
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

    .line 456
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

    .line 459
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

    .line 464
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

    .line 467
    :sswitch_14
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->getValue()Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, v41

    iput-object v0, v1, Lcom/android/exchange/adapter/ContactsSyncAdapter$Address;->city:Ljava/lang/String;

    goto/16 :goto_0

    .line 470
    :sswitch_15
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->getValue()Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, v41

    iput-object v0, v1, Lcom/android/exchange/adapter/ContactsSyncAdapter$Address;->country:Ljava/lang/String;

    goto/16 :goto_0

    .line 473
    :sswitch_16
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->getValue()Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, v41

    iput-object v0, v1, Lcom/android/exchange/adapter/ContactsSyncAdapter$Address;->code:Ljava/lang/String;

    goto/16 :goto_0

    .line 476
    :sswitch_17
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->getValue()Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, v41

    iput-object v0, v1, Lcom/android/exchange/adapter/ContactsSyncAdapter$Address;->state:Ljava/lang/String;

    goto/16 :goto_0

    .line 479
    :sswitch_18
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->getValue()Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, v41

    iput-object v0, v1, Lcom/android/exchange/adapter/ContactsSyncAdapter$Address;->street:Ljava/lang/String;

    goto/16 :goto_0

    .line 482
    :sswitch_19
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->getValue()Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, v30

    iput-object v0, v1, Lcom/android/exchange/adapter/ContactsSyncAdapter$Address;->city:Ljava/lang/String;

    goto/16 :goto_0

    .line 485
    :sswitch_1a
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->getValue()Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, v30

    iput-object v0, v1, Lcom/android/exchange/adapter/ContactsSyncAdapter$Address;->country:Ljava/lang/String;

    goto/16 :goto_0

    .line 488
    :sswitch_1b
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->getValue()Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, v30

    iput-object v0, v1, Lcom/android/exchange/adapter/ContactsSyncAdapter$Address;->code:Ljava/lang/String;

    goto/16 :goto_0

    .line 491
    :sswitch_1c
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->getValue()Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, v30

    iput-object v0, v1, Lcom/android/exchange/adapter/ContactsSyncAdapter$Address;->state:Ljava/lang/String;

    goto/16 :goto_0

    .line 494
    :sswitch_1d
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->getValue()Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, v30

    iput-object v0, v1, Lcom/android/exchange/adapter/ContactsSyncAdapter$Address;->street:Ljava/lang/String;

    goto/16 :goto_0

    .line 497
    :sswitch_1e
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->getValue()Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, v37

    iput-object v0, v1, Lcom/android/exchange/adapter/ContactsSyncAdapter$Address;->city:Ljava/lang/String;

    goto/16 :goto_0

    .line 500
    :sswitch_1f
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->getValue()Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, v37

    iput-object v0, v1, Lcom/android/exchange/adapter/ContactsSyncAdapter$Address;->country:Ljava/lang/String;

    goto/16 :goto_0

    .line 503
    :sswitch_20
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->getValue()Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, v37

    iput-object v0, v1, Lcom/android/exchange/adapter/ContactsSyncAdapter$Address;->code:Ljava/lang/String;

    goto/16 :goto_0

    .line 506
    :sswitch_21
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->getValue()Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, v37

    iput-object v0, v1, Lcom/android/exchange/adapter/ContactsSyncAdapter$Address;->state:Ljava/lang/String;

    goto/16 :goto_0

    .line 509
    :sswitch_22
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->getValue()Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, v37

    iput-object v0, v1, Lcom/android/exchange/adapter/ContactsSyncAdapter$Address;->street:Ljava/lang/String;

    goto/16 :goto_0

    .line 513
    :sswitch_23
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->childrenParser(Ljava/util/ArrayList;)V

    goto/16 :goto_0

    .line 517
    :sswitch_24
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->getValue()Ljava/lang/String;

    move-result-object v43

    .line 518
    goto/16 :goto_0

    .line 520
    :sswitch_25
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->getValue()Ljava/lang/String;

    move-result-object v12

    .line 521
    goto/16 :goto_0

    .line 523
    :sswitch_26
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->getValue()Ljava/lang/String;

    move-result-object v13

    .line 524
    goto/16 :goto_0

    .line 527
    :sswitch_27
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->getValue()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->addNickname(Landroid/content/Entity;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 531
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

    .line 534
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

    .line 537
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

    .line 540
    :sswitch_2b
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->getValue()Ljava/lang/String;

    move-result-object v29

    .line 541
    goto/16 :goto_0

    .line 543
    :sswitch_2c
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->getValue()Ljava/lang/String;

    move-result-object v6

    .line 544
    goto/16 :goto_0

    .line 548
    :sswitch_2d
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->getValue()Ljava/lang/String;

    move-result-object v36

    .line 549
    goto/16 :goto_0

    .line 551
    :sswitch_2e
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->getValue()Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, v26

    iput-object v0, v1, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasBusiness;->customerId:Ljava/lang/String;

    goto/16 :goto_0

    .line 554
    :sswitch_2f
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->getValue()Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, v26

    iput-object v0, v1, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasBusiness;->governmentId:Ljava/lang/String;

    goto/16 :goto_0

    .line 557
    :sswitch_30
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->getValue()Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, v26

    iput-object v0, v1, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasBusiness;->accountName:Ljava/lang/String;

    goto/16 :goto_0

    .line 562
    :sswitch_31
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->getValue()Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, v38

    iput-object v0, v1, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasPersonal;->anniversary:Ljava/lang/String;

    goto/16 :goto_0

    .line 565
    :sswitch_32
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->getValue()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->addBirthday(Landroid/content/Entity;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 568
    :sswitch_33
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->getValue()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->addWebpage(Landroid/content/Entity;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 572
    :sswitch_34
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->getValue()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->addPhoto(Landroid/content/Entity;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 576
    :sswitch_35
    invoke-direct/range {p0 .. p0}, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->bodyParser()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->addNote(Landroid/content/Entity;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 579
    :sswitch_36
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->getValue()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->addNote(Landroid/content/Entity;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 583
    :sswitch_37
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->this$0:Lcom/android/exchange/adapter/ContactsSyncAdapter;

    move-object v4, v0

    const/4 v5, 0x1

    invoke-static {v4, v5}, Lcom/android/exchange/adapter/ContactsSyncAdapter;->access$202(Lcom/android/exchange/adapter/ContactsSyncAdapter;Z)Z

    .line 584
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->categoriesParser(Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;Landroid/content/Entity;)V

    goto/16 :goto_0

    .line 589
    :sswitch_38
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->skipTag()V

    goto/16 :goto_0

    .line 598
    :cond_1
    const/4 v11, 0x0

    .line 599
    .local v11, name:Ljava/lang/String;
    if-nez v7, :cond_2

    if-eqz v8, :cond_b

    .line 600
    :cond_2
    if-nez v7, :cond_9

    .line 601
    move-object v11, v8

    :cond_3
    :goto_1
    move-object/from16 v4, p2

    move-object/from16 v5, p3

    .line 611
    invoke-virtual/range {v4 .. v14}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->addName(Landroid/content/Entity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 613
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->addBusiness(Landroid/content/Entity;Lcom/android/exchange/adapter/ContactsSyncAdapter$EasBusiness;)V

    .line 614
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->addPersonal(Landroid/content/Entity;Lcom/android/exchange/adapter/ContactsSyncAdapter$EasPersonal;)V

    .line 616
    const-string v18, "vnd.android.cursor.item/email_v2"

    const/16 v19, -0x1

    const/16 v20, 0x3

    move-object/from16 v15, p2

    move-object/from16 v16, p3

    invoke-virtual/range {v15 .. v20}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->addUntyped(Landroid/content/Entity;Ljava/util/ArrayList;Ljava/lang/String;II)V

    .line 617
    const-string v21, "vnd.android.cursor.item/im"

    const/16 v22, -0x1

    const/16 v23, 0x3

    move-object/from16 v18, p2

    move-object/from16 v19, p3

    move-object/from16 v20, v33

    invoke-virtual/range {v18 .. v23}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->addUntyped(Landroid/content/Entity;Ljava/util/ArrayList;Ljava/lang/String;II)V

    .line 618
    const-string v21, "vnd.android.cursor.item/phone_v2"

    const/16 v22, 0x1

    const/16 v23, 0x2

    move-object/from16 v18, p2

    move-object/from16 v19, p3

    move-object/from16 v20, v31

    invoke-virtual/range {v18 .. v23}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->addUntyped(Landroid/content/Entity;Ljava/util/ArrayList;Ljava/lang/String;II)V

    .line 620
    const-string v21, "vnd.android.cursor.item/phone_v2"

    const/16 v22, 0x3

    const/16 v23, 0x2

    move-object/from16 v18, p2

    move-object/from16 v19, p3

    move-object/from16 v20, v42

    invoke-virtual/range {v18 .. v23}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->addUntyped(Landroid/content/Entity;Ljava/util/ArrayList;Ljava/lang/String;II)V

    .line 623
    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_4

    .line 624
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->addChildren(Landroid/content/Entity;Ljava/util/ArrayList;)V

    .line 627
    :cond_4
    invoke-virtual/range {v41 .. v41}, Lcom/android/exchange/adapter/ContactsSyncAdapter$Address;->hasData()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 628
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

    .line 631
    :cond_5
    invoke-virtual/range {v30 .. v30}, Lcom/android/exchange/adapter/ContactsSyncAdapter$Address;->hasData()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 632
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

    .line 635
    :cond_6
    invoke-virtual/range {v37 .. v37}, Lcom/android/exchange/adapter/ContactsSyncAdapter$Address;->hasData()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 636
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

    .line 640
    :cond_7
    if-eqz v28, :cond_8

    .line 641
    const/16 v20, 0x1

    move-object/from16 v18, p2

    move-object/from16 v19, p3

    move-object/from16 v21, v28

    move-object/from16 v22, v39

    move-object/from16 v23, v29

    move-object/from16 v24, v43

    move-object/from16 v25, v36

    invoke-virtual/range {v18 .. v25}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->addOrganization(Landroid/content/Entity;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 645
    :cond_8
    if-eqz p3, :cond_c

    .line 648
    invoke-virtual/range {p3 .. p3}, Landroid/content/Entity;->getSubValues()Ljava/util/ArrayList;

    move-result-object v35

    .line 649
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

    .line 651
    .local v34, ncv:Landroid/content/Entity$NamedContentValues;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->this$0:Lcom/android/exchange/adapter/ContactsSyncAdapter;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/ContactsSyncAdapter;->dataUriFromNamedContentValues(Landroid/content/Entity$NamedContentValues;)Landroid/net/Uri;

    move-result-object v40

    .line 652
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

    .line 602
    .end local v32           #i$:Ljava/util/Iterator;
    .end local v34           #ncv:Landroid/content/Entity$NamedContentValues;
    .end local v35           #ncvList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/Entity$NamedContentValues;>;"
    .end local v40           #u:Landroid/net/Uri;
    :cond_9
    if-nez v8, :cond_a

    .line 603
    move-object v11, v7

    goto/16 :goto_1

    .line 605
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

    .line 607
    :cond_b
    if-eqz v28, :cond_3

    .line 608
    move-object/from16 v11, v28

    goto/16 :goto_1

    .line 656
    :cond_c
    return-void

    .line 399
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
    .line 699
    const/4 v0, 0x0

    .line 700
    .local v0, serverId:Ljava/lang/String;
    :goto_0
    const/4 v1, 0x7

    invoke-virtual {p0, v1}, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->nextTag(I)I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    .line 701
    iget v1, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->tag:I

    sparse-switch v1, :sswitch_data_0

    .line 709
    invoke-virtual {p0}, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->skipTag()V

    goto :goto_0

    .line 703
    :sswitch_0
    invoke-virtual {p0}, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 704
    goto :goto_0

    .line 706
    :sswitch_1
    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->addData(Ljava/lang/String;Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;Landroid/content/Entity;)V

    goto :goto_0

    .line 712
    :cond_0
    return-void

    .line 701
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
    .line 854
    const/4 v3, 0x0

    .line 855
    .local v3, serverId:Ljava/lang/String;
    const/4 v1, 0x0

    .line 856
    .local v1, clientId:Ljava/lang/String;
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 857
    .local v2, cv:Landroid/content/ContentValues;
    :goto_0
    const/4 v4, 0x7

    invoke-virtual {p0, v4}, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->nextTag(I)I

    move-result v4

    const/4 v5, 0x3

    if-eq v4, v5, :cond_0

    .line 858
    iget v4, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->tag:I

    packed-switch v4, :pswitch_data_0

    .line 869
    invoke-virtual {p0}, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->skipTag()V

    goto :goto_0

    .line 860
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->getValue()Ljava/lang/String;

    move-result-object v3

    .line 861
    goto :goto_0

    .line 863
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 864
    goto :goto_0

    .line 866
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->getValue()Ljava/lang/String;

    goto :goto_0

    .line 874
    :cond_0
    if-eqz v1, :cond_1

    if-nez v3, :cond_2

    .line 892
    :cond_1
    :goto_1
    return-void

    .line 876
    :cond_2
    invoke-direct {p0, v1}, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->getClientIdCursor(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 878
    .local v0, c:Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 879
    const-string v4, "sourceid"

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 880
    const-string v4, "dirty"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 881
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

    .line 887
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

    .line 890
    :cond_3
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception v4

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v4

    .line 858
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
    .line 764
    const/4 v10, 0x0

    .line 765
    .local v10, serverId:Ljava/lang/String;
    const/4 v8, 0x0

    .line 766
    .local v8, entity:Landroid/content/Entity;
    :goto_0
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->nextTag(I)I

    move-result v1

    const/4 v3, 0x3

    if-eq v1, v3, :cond_2

    .line 767
    iget v1, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->tag:I

    sparse-switch v1, :sswitch_data_0

    .line 794
    invoke-virtual {p0}, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->skipTag()V

    goto :goto_0

    .line 769
    :sswitch_0
    invoke-virtual {p0}, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->getValue()Ljava/lang/String;

    move-result-object v10

    .line 770
    invoke-direct {p0, v10}, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->getServerIdCursor(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 772
    .local v7, c:Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 775
    sget-object v1, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    invoke-interface {v7, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-static {v1, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    .line 777
    .local v2, uri:Landroid/net/Uri;
    const-string v1, "entity"

    invoke-static {v2, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 779
    iget-object v1, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    invoke-static {v1}, Landroid/provider/ContactsContract$RawContacts;->newEntityIterator(Landroid/database/Cursor;)Landroid/content/EntityIterator;

    move-result-object v9

    .line 781
    .local v9, entityIterator:Landroid/content/EntityIterator;
    invoke-interface {v9}, Landroid/content/EntityIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 782
    invoke-interface {v9}, Landroid/content/EntityIterator;->next()Ljava/lang/Object;

    move-result-object v11

    move-object v0, v11

    check-cast v0, Landroid/content/Entity;

    move-object v8, v0

    .line 784
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

    .line 787
    .end local v2           #uri:Landroid/net/Uri;
    .end local v9           #entityIterator:Landroid/content/EntityIterator;
    :cond_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v1

    .line 791
    .end local v7           #c:Landroid/database/Cursor;
    :sswitch_1
    invoke-virtual {p0, v10, p1, v8}, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->addData(Ljava/lang/String;Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;Landroid/content/Entity;)V

    goto :goto_0

    .line 797
    :cond_2
    return-void

    .line 767
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
    .line 895
    const/4 v0, 0x0

    .line 896
    .local v0, serverId:Ljava/lang/String;
    const/4 v1, 0x0

    .line 897
    .local v1, status:Ljava/lang/String;
    :goto_0
    const/16 v2, 0x8

    invoke-virtual {p0, v2}, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->nextTag(I)I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_0

    .line 898
    iget v2, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->tag:I

    packed-switch v2, :pswitch_data_0

    .line 906
    invoke-virtual {p0}, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->skipTag()V

    goto :goto_0

    .line 900
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 901
    goto :goto_0

    .line 903
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 904
    goto :goto_0

    .line 909
    :cond_0
    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    .line 910
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

    .line 912
    :cond_1
    return-void

    .line 898
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
    .line 801
    :goto_0
    const/16 v0, 0x16

    invoke-virtual {p0, v0}, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->nextTag(I)I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    .line 802
    iget v0, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->tag:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    .line 803
    iget-object v0, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->ops:Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;

    invoke-virtual {p0, v0}, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->addParser(Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;)V

    .line 804
    iget-object v0, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->this$0:Lcom/android/exchange/adapter/ContactsSyncAdapter;

    invoke-virtual {v0}, Lcom/android/exchange/adapter/ContactsSyncAdapter;->incrementChangeCount()V

    goto :goto_0

    .line 805
    :cond_0
    iget v0, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->tag:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_1

    .line 806
    iget-object v0, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->ops:Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;

    invoke-virtual {p0, v0}, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->deleteParser(Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;)V

    .line 807
    iget-object v0, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->this$0:Lcom/android/exchange/adapter/ContactsSyncAdapter;

    invoke-virtual {v0}, Lcom/android/exchange/adapter/ContactsSyncAdapter;->incrementChangeCount()V

    goto :goto_0

    .line 808
    :cond_1
    iget v0, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->tag:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_2

    .line 809
    iget-object v0, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->ops:Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;

    invoke-virtual {p0, v0}, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->changeParser(Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;)V

    .line 810
    iget-object v0, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->this$0:Lcom/android/exchange/adapter/ContactsSyncAdapter;

    invoke-virtual {v0}, Lcom/android/exchange/adapter/ContactsSyncAdapter;->incrementChangeCount()V

    goto :goto_0

    .line 812
    :cond_2
    invoke-virtual {p0}, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->skipTag()V

    goto :goto_0

    .line 814
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

    .line 821
    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const-string v7, "Contacts SyncKey saved as: "

    aput-object v7, v6, v10

    const/4 v7, 0x1

    iget-object v8, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    iget-object v8, v8, Lcom/android/email/provider/EmailContent$Mailbox;->mSyncKey:Ljava/lang/String;

    aput-object v8, v6, v7

    invoke-virtual {p0, v6}, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->userLog([Ljava/lang/String;)V

    .line 822
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

    .line 826
    iget-object v6, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->ops:Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;

    invoke-virtual {v6}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->execute()V

    .line 828
    iget-object v6, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->ops:Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;

    invoke-static {v6}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->access$400(Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;)[Landroid/content/ContentProviderResult;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 829
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 830
    .local v0, cv:Landroid/content/ContentValues;
    const-string v6, "dirty"

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 831
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v6, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->ops:Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;

    invoke-static {v6}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->access$500(Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;)I

    move-result v6

    if-ge v1, v6, :cond_1

    .line 832
    iget-object v6, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->ops:Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;

    invoke-static {v6}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->access$600(Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;)[I

    move-result-object v6

    aget v3, v6, v1

    .line 833
    .local v3, index:I
    iget-object v6, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->ops:Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;

    invoke-static {v6}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->access$400(Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;)[Landroid/content/ContentProviderResult;

    move-result-object v6

    aget-object v6, v6, v3

    iget-object v5, v6, Landroid/content/ContentProviderResult;->uri:Landroid/net/Uri;

    .line 834
    .local v5, u:Landroid/net/Uri;
    if-eqz v5, :cond_0

    .line 835
    invoke-virtual {v5}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v2

    .line 842
    .local v2, idString:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 843
    .local v4, sb:Ljava/lang/StringBuffer;
    const-string v6, "_id"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, "="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 844
    iget-object v6, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v7, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v7}, Lcom/android/exchange/adapter/ContactsSyncAdapter;->addCallerIsSyncAdapterParameter(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v6, v7, v0, v8, v9}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 831
    .end local v2           #idString:Ljava/lang/String;
    .end local v4           #sb:Ljava/lang/StringBuffer;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 851
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
    .line 727
    :goto_0
    const/16 v2, 0x9

    invoke-virtual {p0, v2}, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->nextTag(I)I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_1

    .line 728
    iget v2, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->tag:I

    packed-switch v2, :pswitch_data_0

    .line 743
    invoke-virtual {p0}, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->skipTag()V

    goto :goto_0

    .line 730
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 732
    .local v1, serverId:Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->getServerIdCursor(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 734
    .local v0, c:Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 735
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "Deleting "

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object v1, v2, v3

    invoke-virtual {p0, v2}, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->userLog([Ljava/lang/String;)V

    .line 736
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->delete(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 739
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v2

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v2

    .line 746
    .end local v0           #c:Landroid/database/Cursor;
    .end local v1           #serverId:Ljava/lang/String;
    :cond_1
    return-void

    .line 728
    :pswitch_data_0
    .packed-switch 0xd
        :pswitch_0
    .end packed-switch
.end method

.method public moveResponseParser()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 816
    return-void
.end method

.method public responsesParser()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 918
    :goto_0
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->nextTag(I)I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    .line 919
    iget v0, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->tag:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    .line 920
    invoke-virtual {p0}, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->addResponsesParser()V

    goto :goto_0

    .line 921
    :cond_0
    iget v0, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->tag:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    .line 922
    invoke-virtual {p0}, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->changeResponsesParser()V

    goto :goto_0

    .line 924
    :cond_1
    invoke-virtual {p0}, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->skipTag()V

    goto :goto_0

    .line 926
    :cond_2
    return-void
.end method

.method public wipe()V
    .locals 11

    .prologue
    const/4 v9, 0x0

    const-string v10, "EasContactsSyncAdapter"

    .line 352
    const-string v6, "EasContactsSyncAdapter"

    const-string v6, "CONTACTS BAD SYNC KEY"

    invoke-static {v10, v6}, Lcom/android/exchange/SyncManager;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 355
    .local v1, cvx:Landroid/content/ContentValues;
    const-string v6, "syncKey"

    const-string v7, "0"

    invoke-virtual {v1, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    sget-object v6, Lcom/android/email/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    iget-object v7, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    iget-wide v7, v7, Lcom/android/email/provider/EmailContent$Mailbox;->mId:J

    invoke-static {v6, v7, v8}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    .line 357
    .local v4, mMailboxUri:Landroid/net/Uri;
    iget-object v6, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v6, v4, v1, v9, v9}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    .line 358
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

    .line 360
    iget-object v6, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v7, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->mAccountUri:Landroid/net/Uri;

    invoke-virtual {v6, v7, v9, v9}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 361
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

    .line 364
    iget-object v6, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->this$0:Lcom/android/exchange/adapter/ContactsSyncAdapter;

    sget-object v7, Landroid/provider/ContactsContract$SyncState;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v6, v7}, Lcom/android/exchange/adapter/ContactsSyncAdapter;->access$100(Lcom/android/exchange/adapter/ContactsSyncAdapter;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v3

    .line 365
    .local v3, mContactsSyncStateUri:Landroid/net/Uri;
    iget-object v6, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v6, v3, v9, v9}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 366
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

    .line 368
    return-void
.end method
