.class Lcom/android/email/activity/MessageList$MoveMessageTask;
.super Landroid/os/AsyncTask;
.source "MessageList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/MessageList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MoveMessageTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "[",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field public static final MOVE_TYPE_DELETE_ALL:I = 0x2

.field public static final MOVE_TYPE_DELETE_MULTIPLE:I = 0x1

.field public static final MOVE_TYPE_DELETE_ONE:I = 0x0

.field public static final MOVE_TYPE_MOVE:I = 0x3

.field public static final MOVE_TYPE_MOVE_TO_ANOTHER_ACCOUNT:I = 0x4

.field public static final MOVE_TYPE_RESTORE:I = 0x5


# instance fields
.field private mCloneSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mMoveAccountId:J

.field private mMoveCurMailboxId:J

.field private mMoveMailboxType:I

.field private mMoveMessageId:J

.field private mMoveTargetAccountId:J

.field private mMoveTargetMailboxId:J

.field private mMoveType:I

.field final synthetic this$0:Lcom/android/email/activity/MessageList;


# direct methods
.method public constructor <init>(Lcom/android/email/activity/MessageList;)V
    .locals 1
    .parameter

    .prologue
    .line 5363
    iput-object p1, p0, Lcom/android/email/activity/MessageList$MoveMessageTask;->this$0:Lcom/android/email/activity/MessageList;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 5364
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/email/activity/MessageList$MoveMessageTask;->mMoveType:I

    .line 5365
    return-void
.end method

.method public constructor <init>(Lcom/android/email/activity/MessageList;J)V
    .locals 1
    .parameter
    .parameter "accountId"

    .prologue
    .line 5358
    iput-object p1, p0, Lcom/android/email/activity/MessageList$MoveMessageTask;->this$0:Lcom/android/email/activity/MessageList;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 5359
    iput-wide p2, p0, Lcom/android/email/activity/MessageList$MoveMessageTask;->mMoveAccountId:J

    .line 5360
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/email/activity/MessageList$MoveMessageTask;->mMoveType:I

    .line 5361
    return-void
.end method

.method public constructor <init>(Lcom/android/email/activity/MessageList;JI)V
    .locals 1
    .parameter
    .parameter "accountId"
    .parameter "mailboxType"

    .prologue
    .line 5383
    iput-object p1, p0, Lcom/android/email/activity/MessageList$MoveMessageTask;->this$0:Lcom/android/email/activity/MessageList;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 5384
    iput-wide p2, p0, Lcom/android/email/activity/MessageList$MoveMessageTask;->mMoveAccountId:J

    .line 5385
    iput p4, p0, Lcom/android/email/activity/MessageList$MoveMessageTask;->mMoveMailboxType:I

    .line 5386
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/email/activity/MessageList$MoveMessageTask;->mMoveType:I

    .line 5387
    return-void
.end method

.method public constructor <init>(Lcom/android/email/activity/MessageList;JJ)V
    .locals 1
    .parameter
    .parameter "messageId"
    .parameter "accountId"

    .prologue
    .line 5352
    iput-object p1, p0, Lcom/android/email/activity/MessageList$MoveMessageTask;->this$0:Lcom/android/email/activity/MessageList;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 5353
    iput-wide p2, p0, Lcom/android/email/activity/MessageList$MoveMessageTask;->mMoveMessageId:J

    .line 5354
    iput-wide p4, p0, Lcom/android/email/activity/MessageList$MoveMessageTask;->mMoveAccountId:J

    .line 5355
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/email/activity/MessageList$MoveMessageTask;->mMoveType:I

    .line 5356
    return-void
.end method

.method public constructor <init>(Lcom/android/email/activity/MessageList;JJJ)V
    .locals 1
    .parameter
    .parameter "accountId"
    .parameter "targetMailboxId"
    .parameter "curMailbxId"

    .prologue
    .line 5367
    iput-object p1, p0, Lcom/android/email/activity/MessageList$MoveMessageTask;->this$0:Lcom/android/email/activity/MessageList;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 5368
    iput-wide p2, p0, Lcom/android/email/activity/MessageList$MoveMessageTask;->mMoveAccountId:J

    .line 5369
    iput-wide p4, p0, Lcom/android/email/activity/MessageList$MoveMessageTask;->mMoveTargetMailboxId:J

    .line 5370
    iput-wide p6, p0, Lcom/android/email/activity/MessageList$MoveMessageTask;->mMoveCurMailboxId:J

    .line 5371
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/email/activity/MessageList$MoveMessageTask;->mMoveType:I

    .line 5372
    return-void
.end method

.method public constructor <init>(Lcom/android/email/activity/MessageList;JJJJ)V
    .locals 1
    .parameter
    .parameter "curAccountId"
    .parameter "curMailbxId"
    .parameter "targetAccountId"
    .parameter "targetMailboxId"

    .prologue
    .line 5374
    iput-object p1, p0, Lcom/android/email/activity/MessageList$MoveMessageTask;->this$0:Lcom/android/email/activity/MessageList;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 5375
    iput-wide p2, p0, Lcom/android/email/activity/MessageList$MoveMessageTask;->mMoveAccountId:J

    .line 5376
    iput-wide p4, p0, Lcom/android/email/activity/MessageList$MoveMessageTask;->mMoveCurMailboxId:J

    .line 5377
    iput-wide p6, p0, Lcom/android/email/activity/MessageList$MoveMessageTask;->mMoveTargetAccountId:J

    .line 5378
    iput-wide p8, p0, Lcom/android/email/activity/MessageList$MoveMessageTask;->mMoveTargetMailboxId:J

    .line 5380
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/email/activity/MessageList$MoveMessageTask;->mMoveType:I

    .line 5381
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 5331
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/activity/MessageList$MoveMessageTask;->doInBackground([Ljava/lang/Void;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)[Ljava/lang/Object;
    .locals 29
    .parameter "params"

    .prologue
    .line 5400
    const/16 v23, 0x0

    .line 5401
    .local v23, result:Z
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/email/activity/MessageList$MoveMessageTask;->mMoveType:I

    move v4, v0

    packed-switch v4, :pswitch_data_0

    .line 5539
    .end local p1
    :cond_0
    :goto_0
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static/range {v23 .. v23}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    return-object v4

    .line 5405
    .restart local p1
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageList$MoveMessageTask;->this$0:Lcom/android/email/activity/MessageList;

    move-object v4, v0

    invoke-static {v4}, Lcom/android/email/activity/MessageList;->access$2000(Lcom/android/email/activity/MessageList;)Lcom/android/email/Controller;

    move-result-object v4

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/email/activity/MessageList$MoveMessageTask;->mMoveMessageId:J

    move-wide v5, v0

    const-wide/16 v7, -0x1

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/android/email/Controller;->deleteMessage(JJ)V

    .line 5406
    const/16 v23, 0x1

    .line 5408
    goto :goto_0

    .line 5411
    :pswitch_1
    new-instance v4, Ljava/util/HashSet;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageList$MoveMessageTask;->this$0:Lcom/android/email/activity/MessageList;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/email/activity/MessageList;->access$2400(Lcom/android/email/activity/MessageList;)Lcom/android/email/activity/MessageList$MessageListAdapter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/email/activity/MessageList$MessageListAdapter;->getSelectedSet()Ljava/util/Set;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/email/activity/MessageList$MoveMessageTask;->mCloneSet:Ljava/util/HashSet;

    .line 5412
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageList$MoveMessageTask;->mCloneSet:Ljava/util/HashSet;

    move-object v4, v0

    invoke-virtual {v4}, Ljava/util/HashSet;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_b

    .line 5413
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageList$MoveMessageTask;->this$0:Lcom/android/email/activity/MessageList;

    move-object v4, v0

    invoke-static {v4}, Lcom/android/email/activity/MessageList;->access$300(Lcom/android/email/activity/MessageList;)J

    move-result-wide v4

    const-wide/16 v6, -0x2

    cmp-long v4, v4, v6

    if-eqz v4, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageList$MoveMessageTask;->this$0:Lcom/android/email/activity/MessageList;

    move-object v4, v0

    invoke-static {v4}, Lcom/android/email/activity/MessageList;->access$300(Lcom/android/email/activity/MessageList;)J

    move-result-wide v4

    const-wide/16 v6, -0x4

    cmp-long v4, v4, v6

    if-eqz v4, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageList$MoveMessageTask;->this$0:Lcom/android/email/activity/MessageList;

    move-object v4, v0

    invoke-static {v4}, Lcom/android/email/activity/MessageList;->access$300(Lcom/android/email/activity/MessageList;)J

    move-result-wide v4

    const-wide/16 v6, -0x5

    cmp-long v4, v4, v6

    if-eqz v4, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageList$MoveMessageTask;->this$0:Lcom/android/email/activity/MessageList;

    move-object v4, v0

    invoke-static {v4}, Lcom/android/email/activity/MessageList;->access$300(Lcom/android/email/activity/MessageList;)J

    move-result-wide v4

    const-wide/16 v6, -0x6

    cmp-long v4, v4, v6

    if-nez v4, :cond_9

    .line 5416
    :cond_1
    new-instance v27, Ljava/util/HashSet;

    invoke-direct/range {v27 .. v27}, Ljava/util/HashSet;-><init>()V

    .line 5417
    .local v27, tempHash:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 5422
    .local v15, accountArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const/16 v28, 0x0

    .line 5423
    .local v28, tempList:Lcom/android/email/activity/MessageList$MoveMessageTask$1TempList;
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 5425
    .local v14, IdAndAccountList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/email/activity/MessageList$MoveMessageTask$1TempList;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageList$MoveMessageTask;->mCloneSet:Ljava/util/HashSet;

    move-object v4, v0

    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v18

    .end local p1
    .local v18, i$:Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Long;

    .line 5427
    .local v19, id:Ljava/lang/Long;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageList$MoveMessageTask;->this$0:Lcom/android/email/activity/MessageList;

    move-object v4, v0

    invoke-static {v4}, Lcom/android/email/activity/MessageList;->access$2000(Lcom/android/email/activity/MessageList;)Lcom/android/email/Controller;

    move-result-object v4

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lcom/android/email/Controller;->lookupAccountForMessage(J)J

    move-result-wide v25

    .line 5428
    .local v25, tempAccount:J
    new-instance v28, Lcom/android/email/activity/MessageList$MoveMessageTask$1TempList;

    .end local v28           #tempList:Lcom/android/email/activity/MessageList$MoveMessageTask$1TempList;
    invoke-direct/range {v28 .. v29}, Lcom/android/email/activity/MessageList$MoveMessageTask$1TempList;-><init>(Lcom/android/email/activity/MessageList$MoveMessageTask;)V

    .line 5429
    .restart local v28       #tempList:Lcom/android/email/activity/MessageList$MoveMessageTask$1TempList;
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    move-wide v0, v4

    move-object/from16 v2, v28

    iput-wide v0, v2, Lcom/android/email/activity/MessageList$MoveMessageTask$1TempList;->id:J

    .line 5430
    move-wide/from16 v0, v25

    move-object/from16 v2, v28

    iput-wide v0, v2, Lcom/android/email/activity/MessageList$MoveMessageTask$1TempList;->account:J

    .line 5431
    move-object v0, v14

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5432
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_3

    .line 5433
    invoke-static/range {v25 .. v26}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v15, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 5437
    :cond_3
    const/16 v17, 0x0

    .local v17, i:I
    :goto_2
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v0, v17

    move v1, v4

    if-ge v0, v1, :cond_4

    .line 5438
    move-object v0, v15

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v4, v4, v25

    if-nez v4, :cond_5

    .line 5441
    :cond_4
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v0, v17

    move v1, v4

    if-ne v0, v1, :cond_2

    .line 5442
    invoke-static/range {v25 .. v26}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v15, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 5437
    :cond_5
    add-int/lit8 v17, v17, 0x1

    goto :goto_2

    .line 5447
    .end local v17           #i:I
    .end local v19           #id:Ljava/lang/Long;
    .end local v25           #tempAccount:J
    :cond_6
    const/16 v17, 0x0

    .restart local v17       #i:I
    :goto_3
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v0, v17

    move v1, v4

    if-ge v0, v1, :cond_a

    .line 5448
    const/16 v22, 0x0

    .local v22, j:I
    :goto_4
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v0, v22

    move v1, v4

    if-ge v0, v1, :cond_8

    .line 5449
    move-object v0, v15

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    move-object v0, v14

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/email/activity/MessageList$MoveMessageTask$1TempList;

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/email/activity/MessageList$MoveMessageTask$1TempList;->account:J

    move-wide v6, v0

    cmp-long v4, v4, v6

    if-nez v4, :cond_7

    .line 5450
    move-object v0, v14

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/email/activity/MessageList$MoveMessageTask$1TempList;

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/email/activity/MessageList$MoveMessageTask$1TempList;->id:J

    move-wide v4, v0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v27

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 5448
    :cond_7
    add-int/lit8 v22, v22, 0x1

    goto :goto_4

    .line 5452
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageList$MoveMessageTask;->this$0:Lcom/android/email/activity/MessageList;

    move-object v4, v0

    invoke-static {v4}, Lcom/android/email/activity/MessageList;->access$2000(Lcom/android/email/activity/MessageList;)Lcom/android/email/Controller;

    move-result-object v4

    move-object v0, v15

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    move-object v0, v4

    move-object/from16 v1, v27

    move-wide v2, v5

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/email/Controller;->deleteMessage(Ljava/util/HashSet;J)V

    .line 5453
    invoke-virtual/range {v27 .. v27}, Ljava/util/HashSet;->clear()V

    .line 5447
    add-int/lit8 v17, v17, 0x1

    goto :goto_3

    .line 5458
    .end local v14           #IdAndAccountList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/email/activity/MessageList$MoveMessageTask$1TempList;>;"
    .end local v15           #accountArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .end local v17           #i:I
    .end local v18           #i$:Ljava/util/Iterator;
    .end local v22           #j:I
    .end local v27           #tempHash:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    .end local v28           #tempList:Lcom/android/email/activity/MessageList$MoveMessageTask$1TempList;
    .restart local p1
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageList$MoveMessageTask;->this$0:Lcom/android/email/activity/MessageList;

    move-object v4, v0

    invoke-static {v4}, Lcom/android/email/activity/MessageList;->access$2000(Lcom/android/email/activity/MessageList;)Lcom/android/email/Controller;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageList$MoveMessageTask;->mCloneSet:Ljava/util/HashSet;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/email/activity/MessageList$MoveMessageTask;->mMoveAccountId:J

    move-wide v6, v0

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/email/Controller;->deleteMessage(Ljava/util/HashSet;J)V

    .line 5460
    .end local p1
    :cond_a
    const/16 v23, 0x1

    goto/16 :goto_0

    .line 5464
    .restart local p1
    :cond_b
    const/16 v23, 0x0

    .line 5467
    goto/16 :goto_0

    .line 5470
    :pswitch_2
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/email/activity/MessageList$MoveMessageTask;->mCloneSet:Ljava/util/HashSet;

    .line 5471
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageList$MoveMessageTask;->this$0:Lcom/android/email/activity/MessageList;

    move-object v4, v0

    invoke-static {v4}, Lcom/android/email/activity/MessageList;->access$2400(Lcom/android/email/activity/MessageList;)Lcom/android/email/activity/MessageList$MessageListAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/email/activity/MessageList$MessageListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v16

    .line 5472
    .local v16, c:Landroid/database/Cursor;
    const/4 v4, -0x1

    move-object/from16 v0, v16

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 5473
    :cond_c
    :goto_5
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_e

    .line 5474
    sget-boolean v4, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v4, :cond_d

    sget-boolean v4, Lcom/android/email/Email;->DEBUG_SENSITIVE:Z

    if-eqz v4, :cond_d

    .line 5475
    new-instance v24, Ljava/lang/StringBuffer;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuffer;-><init>()V

    .line 5476
    .local v24, sbuf:Ljava/lang/StringBuffer;
    const-string v4, "MessageList >>"

    const-string v5, "id: "

    move-object/from16 v0, v24

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const/4 v6, 0x0

    move-object/from16 v0, v16

    move v1, v6

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, " | sub: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const/4 v6, 0x4

    move-object/from16 v0, v16

    move v1, v6

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 5478
    .end local v24           #sbuf:Ljava/lang/StringBuffer;
    :cond_d
    const/4 v4, 0x0

    move-object/from16 v0, v16

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_c

    .line 5479
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageList$MoveMessageTask;->mCloneSet:Ljava/util/HashSet;

    move-object v4, v0

    const/4 v5, 0x0

    move-object/from16 v0, v16

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    int-to-long v5, v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 5483
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageList$MoveMessageTask;->mCloneSet:Ljava/util/HashSet;

    move-object v4, v0

    invoke-virtual {v4}, Ljava/util/HashSet;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_f

    .line 5484
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageList$MoveMessageTask;->this$0:Lcom/android/email/activity/MessageList;

    move-object v4, v0

    invoke-static {v4}, Lcom/android/email/activity/MessageList;->access$2000(Lcom/android/email/activity/MessageList;)Lcom/android/email/Controller;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageList$MoveMessageTask;->mCloneSet:Ljava/util/HashSet;

    move-object v5, v0

    const-wide/16 v6, -0x1

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/email/Controller;->deleteMessage(Ljava/util/HashSet;J)V

    .line 5485
    const/16 v23, 0x1

    goto/16 :goto_0

    .line 5489
    :cond_f
    const/16 v23, 0x0

    goto/16 :goto_0

    .line 5495
    .end local v16           #c:Landroid/database/Cursor;
    :pswitch_3
    new-instance v4, Ljava/util/HashSet;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageList$MoveMessageTask;->this$0:Lcom/android/email/activity/MessageList;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/email/activity/MessageList;->access$2400(Lcom/android/email/activity/MessageList;)Lcom/android/email/activity/MessageList$MessageListAdapter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/email/activity/MessageList$MessageListAdapter;->getSelectedSet()Ljava/util/Set;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/email/activity/MessageList$MoveMessageTask;->mCloneSet:Ljava/util/HashSet;

    .line 5496
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageList$MoveMessageTask;->mCloneSet:Ljava/util/HashSet;

    move-object v4, v0

    invoke-virtual {v4}, Ljava/util/HashSet;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 5497
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageList$MoveMessageTask;->this$0:Lcom/android/email/activity/MessageList;

    move-object v4, v0

    invoke-static {v4}, Lcom/android/email/activity/MessageList;->access$2000(Lcom/android/email/activity/MessageList;)Lcom/android/email/Controller;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageList$MoveMessageTask;->mCloneSet:Ljava/util/HashSet;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/email/activity/MessageList$MoveMessageTask;->mMoveAccountId:J

    move-wide v6, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/email/activity/MessageList$MoveMessageTask;->mMoveTargetMailboxId:J

    move-wide v8, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/email/activity/MessageList$MoveMessageTask;->mMoveCurMailboxId:J

    move-wide v10, v0

    invoke-virtual/range {v4 .. v11}, Lcom/android/email/Controller;->moveMessage(Ljava/util/HashSet;JJJ)Z

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_10

    .line 5499
    const/16 v23, 0x1

    goto/16 :goto_0

    .line 5503
    :cond_10
    const/16 v23, 0x0

    goto/16 :goto_0

    .line 5510
    :pswitch_4
    new-instance v4, Ljava/util/HashSet;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageList$MoveMessageTask;->this$0:Lcom/android/email/activity/MessageList;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/email/activity/MessageList;->access$2400(Lcom/android/email/activity/MessageList;)Lcom/android/email/activity/MessageList$MessageListAdapter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/email/activity/MessageList$MessageListAdapter;->getSelectedSet()Ljava/util/Set;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/email/activity/MessageList$MoveMessageTask;->mCloneSet:Ljava/util/HashSet;

    .line 5511
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageList$MoveMessageTask;->mCloneSet:Ljava/util/HashSet;

    move-object v4, v0

    invoke-virtual {v4}, Ljava/util/HashSet;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 5513
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageList$MoveMessageTask;->this$0:Lcom/android/email/activity/MessageList;

    move-object v4, v0

    invoke-static {v4}, Lcom/android/email/activity/MessageList;->access$2000(Lcom/android/email/activity/MessageList;)Lcom/android/email/Controller;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageList$MoveMessageTask;->mCloneSet:Ljava/util/HashSet;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/email/activity/MessageList$MoveMessageTask;->mMoveAccountId:J

    move-wide v6, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/email/activity/MessageList$MoveMessageTask;->mMoveCurMailboxId:J

    move-wide v8, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/email/activity/MessageList$MoveMessageTask;->mMoveTargetAccountId:J

    move-wide v10, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/email/activity/MessageList$MoveMessageTask;->mMoveTargetMailboxId:J

    move-wide v12, v0

    invoke-virtual/range {v4 .. v13}, Lcom/android/email/Controller;->moveMessageToOtherAccountFolder(Ljava/util/HashSet;JJJJ)Z

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_11

    .line 5515
    const/16 v23, 0x1

    goto/16 :goto_0

    .line 5519
    :cond_11
    const/16 v23, 0x0

    goto/16 :goto_0

    .line 5526
    :pswitch_5
    new-instance v4, Ljava/util/HashSet;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageList$MoveMessageTask;->this$0:Lcom/android/email/activity/MessageList;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/email/activity/MessageList;->access$2400(Lcom/android/email/activity/MessageList;)Lcom/android/email/activity/MessageList$MessageListAdapter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/email/activity/MessageList$MessageListAdapter;->getSelectedSet()Ljava/util/Set;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/email/activity/MessageList$MoveMessageTask;->mCloneSet:Ljava/util/HashSet;

    .line 5528
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageList$MoveMessageTask;->this$0:Lcom/android/email/activity/MessageList;

    move-object v4, v0

    invoke-static {v4}, Lcom/android/email/activity/MessageList;->access$2000(Lcom/android/email/activity/MessageList;)Lcom/android/email/Controller;

    move-result-object v4

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/email/activity/MessageList$MoveMessageTask;->mMoveAccountId:J

    move-wide v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/email/activity/MessageList$MoveMessageTask;->mMoveMailboxType:I

    move v7, v0

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/email/Controller;->findOrCreateMailboxOfType(JI)J

    move-result-wide v20

    .line 5530
    .local v20, inboxMailboxId:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageList$MoveMessageTask;->mCloneSet:Ljava/util/HashSet;

    move-object v4, v0

    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v18

    .restart local v18       #i$:Ljava/util/Iterator;
    :goto_6
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_12

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Long;

    .line 5531
    .restart local v19       #id:Ljava/lang/Long;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageList$MoveMessageTask;->this$0:Lcom/android/email/activity/MessageList;

    move-object v4, v0

    invoke-static {v4}, Lcom/android/email/activity/MessageList;->access$2000(Lcom/android/email/activity/MessageList;)Lcom/android/email/Controller;

    move-result-object v4

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/email/activity/MessageList$MoveMessageTask;->mMoveAccountId:J

    move-wide v7, v0

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/android/email/Controller;->restoreMessage(JJ)V

    goto :goto_6

    .line 5533
    .end local v19           #id:Ljava/lang/Long;
    :cond_12
    const/16 v23, 0x1

    goto/16 :goto_0

    .line 5401
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 5331
    check-cast p1, [Ljava/lang/Object;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/activity/MessageList$MoveMessageTask;->onPostExecute([Ljava/lang/Object;)V

    return-void
.end method

.method protected onPostExecute([Ljava/lang/Object;)V
    .locals 10
    .parameter "param"

    .prologue
    const v9, 0x7f0b0005

    const v8, 0x7f0b0004

    const v3, 0x7f08015f

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 5544
    aget-object v2, p1, v7

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 5546
    .local v1, result:Z
    iget-object v2, p0, Lcom/android/email/activity/MessageList$MoveMessageTask;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v2}, Lcom/android/email/activity/MessageList;->access$100(Lcom/android/email/activity/MessageList;)Lcom/android/email/activity/MessageList$MessageListHandler;

    move-result-object v2

    invoke-virtual {v2, v7}, Lcom/android/email/activity/MessageList$MessageListHandler;->progressMove(Z)V

    .line 5547
    iget v2, p0, Lcom/android/email/activity/MessageList$MoveMessageTask;->mMoveType:I

    packed-switch v2, :pswitch_data_0

    .line 5672
    :cond_0
    :goto_0
    return-void

    .line 5551
    :pswitch_0
    if-ne v1, v6, :cond_0

    .line 5554
    iget-object v2, p0, Lcom/android/email/activity/MessageList$MoveMessageTask;->this$0:Lcom/android/email/activity/MessageList;

    invoke-virtual {v2}, Lcom/android/email/activity/MessageList;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-virtual {v2, v9, v6, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 5556
    .local v0, reportString:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/email/activity/MessageList$MoveMessageTask;->this$0:Lcom/android/email/activity/MessageList;

    iget-object v3, p0, Lcom/android/email/activity/MessageList$MoveMessageTask;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v3}, Lcom/android/email/activity/MessageList;->access$2400(Lcom/android/email/activity/MessageList;)Lcom/android/email/activity/MessageList$MessageListAdapter;

    move-result-object v3

    invoke-static {v3}, Lcom/android/email/activity/MessageList$MessageListAdapter;->access$3500(Lcom/android/email/activity/MessageList$MessageListAdapter;)Ljava/util/HashSet;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/HashSet;->size()I

    move-result v3

    if-lez v3, :cond_1

    move v3, v6

    :goto_1
    invoke-static {v2, v3}, Lcom/android/email/activity/MessageList;->access$2600(Lcom/android/email/activity/MessageList;Z)V

    .line 5558
    iget-object v2, p0, Lcom/android/email/activity/MessageList$MoveMessageTask;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v2}, Lcom/android/email/activity/MessageList;->access$2400(Lcom/android/email/activity/MessageList;)Lcom/android/email/activity/MessageList$MessageListAdapter;

    move-result-object v2

    iget-wide v3, p0, Lcom/android/email/activity/MessageList$MoveMessageTask;->mMoveMessageId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/email/activity/MessageList$MessageListAdapter;->removeMessage(Ljava/lang/Long;)V

    .line 5559
    iget-object v2, p0, Lcom/android/email/activity/MessageList$MoveMessageTask;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v2, v0, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_1
    move v3, v7

    .line 5556
    goto :goto_1

    .line 5567
    .end local v0           #reportString:Ljava/lang/String;
    :pswitch_1
    if-ne v1, v6, :cond_2

    .line 5570
    iget-object v2, p0, Lcom/android/email/activity/MessageList$MoveMessageTask;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v2}, Lcom/android/email/activity/MessageList;->access$2200(Lcom/android/email/activity/MessageList;)I

    move-result v2

    if-ne v2, v6, :cond_3

    .line 5573
    iget-object v2, p0, Lcom/android/email/activity/MessageList$MoveMessageTask;->this$0:Lcom/android/email/activity/MessageList;

    iget-object v3, p0, Lcom/android/email/activity/MessageList$MoveMessageTask;->this$0:Lcom/android/email/activity/MessageList;

    const v4, 0x7f080074

    invoke-virtual {v3, v4}, Lcom/android/email/activity/MessageList;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 5585
    :cond_2
    :goto_2
    iget-object v2, p0, Lcom/android/email/activity/MessageList$MoveMessageTask;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v2}, Lcom/android/email/activity/MessageList;->access$2400(Lcom/android/email/activity/MessageList;)Lcom/android/email/activity/MessageList$MessageListAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/email/activity/MessageList$MessageListAdapter;->getSelectedSet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    .line 5586
    iget-object v2, p0, Lcom/android/email/activity/MessageList$MoveMessageTask;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v2, v7}, Lcom/android/email/activity/MessageList;->access$2600(Lcom/android/email/activity/MessageList;Z)V

    goto :goto_0

    .line 5577
    :cond_3
    iget-object v2, p0, Lcom/android/email/activity/MessageList$MoveMessageTask;->this$0:Lcom/android/email/activity/MessageList;

    invoke-virtual {v2}, Lcom/android/email/activity/MessageList;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lcom/android/email/activity/MessageList$MoveMessageTask;->mCloneSet:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->size()I

    move-result v3

    new-array v4, v6, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/email/activity/MessageList$MoveMessageTask;->mCloneSet:Ljava/util/HashSet;

    invoke-virtual {v5}, Ljava/util/HashSet;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-virtual {v2, v9, v3, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 5580
    .restart local v0       #reportString:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/email/activity/MessageList$MoveMessageTask;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v2, v0, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_2

    .line 5591
    .end local v0           #reportString:Ljava/lang/String;
    :pswitch_2
    if-ne v1, v6, :cond_4

    .line 5594
    iget-object v2, p0, Lcom/android/email/activity/MessageList$MoveMessageTask;->this$0:Lcom/android/email/activity/MessageList;

    invoke-virtual {v2}, Lcom/android/email/activity/MessageList;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lcom/android/email/activity/MessageList$MoveMessageTask;->mCloneSet:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->size()I

    move-result v3

    new-array v4, v6, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/email/activity/MessageList$MoveMessageTask;->mCloneSet:Ljava/util/HashSet;

    invoke-virtual {v5}, Ljava/util/HashSet;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-virtual {v2, v9, v3, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 5597
    .restart local v0       #reportString:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/email/activity/MessageList$MoveMessageTask;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v2, v0, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 5602
    .end local v0           #reportString:Ljava/lang/String;
    :cond_4
    iget-object v2, p0, Lcom/android/email/activity/MessageList$MoveMessageTask;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v2}, Lcom/android/email/activity/MessageList;->access$2400(Lcom/android/email/activity/MessageList;)Lcom/android/email/activity/MessageList$MessageListAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/email/activity/MessageList$MessageListAdapter;->getSelectedSet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    .line 5603
    iget-object v2, p0, Lcom/android/email/activity/MessageList$MoveMessageTask;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v2, v7}, Lcom/android/email/activity/MessageList;->access$2600(Lcom/android/email/activity/MessageList;Z)V

    goto/16 :goto_0

    .line 5609
    :pswitch_3
    if-ne v1, v6, :cond_6

    .line 5611
    iget-object v2, p0, Lcom/android/email/activity/MessageList$MoveMessageTask;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v2}, Lcom/android/email/activity/MessageList;->access$2200(Lcom/android/email/activity/MessageList;)I

    move-result v2

    if-ne v2, v6, :cond_5

    .line 5618
    iget-object v2, p0, Lcom/android/email/activity/MessageList$MoveMessageTask;->this$0:Lcom/android/email/activity/MessageList;

    iget-object v3, p0, Lcom/android/email/activity/MessageList$MoveMessageTask;->this$0:Lcom/android/email/activity/MessageList;

    const v4, 0x7f080223

    invoke-virtual {v3, v4}, Lcom/android/email/activity/MessageList;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 5633
    :goto_3
    iget-object v2, p0, Lcom/android/email/activity/MessageList$MoveMessageTask;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v2}, Lcom/android/email/activity/MessageList;->access$2400(Lcom/android/email/activity/MessageList;)Lcom/android/email/activity/MessageList$MessageListAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/email/activity/MessageList$MessageListAdapter;->getSelectedSet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    .line 5634
    iget-object v2, p0, Lcom/android/email/activity/MessageList$MoveMessageTask;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v2, v7}, Lcom/android/email/activity/MessageList;->access$2600(Lcom/android/email/activity/MessageList;Z)V

    goto/16 :goto_0

    .line 5621
    :cond_5
    iget-object v2, p0, Lcom/android/email/activity/MessageList$MoveMessageTask;->this$0:Lcom/android/email/activity/MessageList;

    invoke-virtual {v2}, Lcom/android/email/activity/MessageList;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lcom/android/email/activity/MessageList$MoveMessageTask;->mCloneSet:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->size()I

    move-result v3

    new-array v4, v6, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/email/activity/MessageList$MoveMessageTask;->mCloneSet:Ljava/util/HashSet;

    invoke-virtual {v5}, Ljava/util/HashSet;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-virtual {v2, v8, v3, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 5624
    .restart local v0       #reportString:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/email/activity/MessageList$MoveMessageTask;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v2, v0, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_3

    .line 5630
    .end local v0           #reportString:Ljava/lang/String;
    :cond_6
    iget-object v2, p0, Lcom/android/email/activity/MessageList$MoveMessageTask;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v2, v3, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_3

    .line 5639
    :pswitch_4
    if-ne v1, v6, :cond_7

    .line 5641
    iget-object v2, p0, Lcom/android/email/activity/MessageList$MoveMessageTask;->this$0:Lcom/android/email/activity/MessageList;

    invoke-virtual {v2}, Lcom/android/email/activity/MessageList;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lcom/android/email/activity/MessageList$MoveMessageTask;->mCloneSet:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->size()I

    move-result v3

    new-array v4, v6, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/email/activity/MessageList$MoveMessageTask;->mCloneSet:Ljava/util/HashSet;

    invoke-virtual {v5}, Ljava/util/HashSet;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-virtual {v2, v8, v3, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 5644
    .restart local v0       #reportString:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/email/activity/MessageList$MoveMessageTask;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v2, v0, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 5650
    .end local v0           #reportString:Ljava/lang/String;
    :goto_4
    iget-object v2, p0, Lcom/android/email/activity/MessageList$MoveMessageTask;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v2}, Lcom/android/email/activity/MessageList;->access$2400(Lcom/android/email/activity/MessageList;)Lcom/android/email/activity/MessageList$MessageListAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/email/activity/MessageList$MessageListAdapter;->getSelectedSet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    .line 5651
    iget-object v2, p0, Lcom/android/email/activity/MessageList$MoveMessageTask;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v2, v7}, Lcom/android/email/activity/MessageList;->access$2600(Lcom/android/email/activity/MessageList;Z)V

    goto/16 :goto_0

    .line 5648
    :cond_7
    iget-object v2, p0, Lcom/android/email/activity/MessageList$MoveMessageTask;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v2, v3, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_4

    .line 5656
    :pswitch_5
    if-ne v1, v6, :cond_8

    .line 5658
    iget-object v2, p0, Lcom/android/email/activity/MessageList$MoveMessageTask;->this$0:Lcom/android/email/activity/MessageList;

    invoke-virtual {v2}, Lcom/android/email/activity/MessageList;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lcom/android/email/activity/MessageList$MoveMessageTask;->mCloneSet:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->size()I

    move-result v3

    new-array v4, v6, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/email/activity/MessageList$MoveMessageTask;->mCloneSet:Ljava/util/HashSet;

    invoke-virtual {v5}, Ljava/util/HashSet;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-virtual {v2, v8, v3, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 5661
    .restart local v0       #reportString:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/email/activity/MessageList$MoveMessageTask;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v2, v0, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 5667
    .end local v0           #reportString:Ljava/lang/String;
    :goto_5
    iget-object v2, p0, Lcom/android/email/activity/MessageList$MoveMessageTask;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v2}, Lcom/android/email/activity/MessageList;->access$2400(Lcom/android/email/activity/MessageList;)Lcom/android/email/activity/MessageList$MessageListAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/email/activity/MessageList$MessageListAdapter;->getSelectedSet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    .line 5668
    iget-object v2, p0, Lcom/android/email/activity/MessageList$MoveMessageTask;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v2, v7}, Lcom/android/email/activity/MessageList;->access$2600(Lcom/android/email/activity/MessageList;Z)V

    goto/16 :goto_0

    .line 5665
    :cond_8
    iget-object v2, p0, Lcom/android/email/activity/MessageList$MoveMessageTask;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v2, v3, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_5

    .line 5547
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method protected onPreExecute()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 5391
    iget-object v0, p0, Lcom/android/email/activity/MessageList$MoveMessageTask;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v0}, Lcom/android/email/activity/MessageList;->access$100(Lcom/android/email/activity/MessageList;)Lcom/android/email/activity/MessageList$MessageListHandler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageList$MessageListHandler;->progressMove(Z)V

    .line 5392
    iget-object v0, p0, Lcom/android/email/activity/MessageList$MoveMessageTask;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v0}, Lcom/android/email/activity/MessageList;->access$7800(Lcom/android/email/activity/MessageList;)Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5393
    iget-object v0, p0, Lcom/android/email/activity/MessageList$MoveMessageTask;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v0}, Lcom/android/email/activity/MessageList;->access$7800(Lcom/android/email/activity/MessageList;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 5394
    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/MessageList$MoveMessageTask;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v0}, Lcom/android/email/activity/MessageList;->access$7900(Lcom/android/email/activity/MessageList;)Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 5395
    iget-object v0, p0, Lcom/android/email/activity/MessageList$MoveMessageTask;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v0}, Lcom/android/email/activity/MessageList;->access$7900(Lcom/android/email/activity/MessageList;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 5396
    :cond_1
    return-void
.end method
