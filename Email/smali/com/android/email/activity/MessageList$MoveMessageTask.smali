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
.method public constructor <init>(Lcom/android/email/activity/MessageList;JI)V
    .locals 1
    .parameter
    .parameter "accountId"
    .parameter "mailboxType"

    .prologue
    .line 6957
    iput-object p1, p0, Lcom/android/email/activity/MessageList$MoveMessageTask;->this$0:Lcom/android/email/activity/MessageList;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 6958
    iput-wide p2, p0, Lcom/android/email/activity/MessageList$MoveMessageTask;->mMoveAccountId:J

    .line 6959
    iput p4, p0, Lcom/android/email/activity/MessageList$MoveMessageTask;->mMoveMailboxType:I

    .line 6960
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/email/activity/MessageList$MoveMessageTask;->mMoveType:I

    .line 6961
    return-void
.end method

.method public constructor <init>(Lcom/android/email/activity/MessageList;JJ)V
    .locals 1
    .parameter
    .parameter "messageId"
    .parameter "accountId"

    .prologue
    .line 6921
    iput-object p1, p0, Lcom/android/email/activity/MessageList$MoveMessageTask;->this$0:Lcom/android/email/activity/MessageList;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 6922
    iput-wide p2, p0, Lcom/android/email/activity/MessageList$MoveMessageTask;->mMoveMessageId:J

    .line 6923
    iput-wide p4, p0, Lcom/android/email/activity/MessageList$MoveMessageTask;->mMoveAccountId:J

    .line 6924
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/email/activity/MessageList$MoveMessageTask;->mMoveType:I

    .line 6925
    return-void
.end method

.method public constructor <init>(Lcom/android/email/activity/MessageList;JJJ)V
    .locals 1
    .parameter
    .parameter "accountId"
    .parameter "targetMailboxId"
    .parameter "curMailbxId"

    .prologue
    .line 6941
    iput-object p1, p0, Lcom/android/email/activity/MessageList$MoveMessageTask;->this$0:Lcom/android/email/activity/MessageList;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 6942
    iput-wide p2, p0, Lcom/android/email/activity/MessageList$MoveMessageTask;->mMoveAccountId:J

    .line 6943
    iput-wide p4, p0, Lcom/android/email/activity/MessageList$MoveMessageTask;->mMoveTargetMailboxId:J

    .line 6944
    iput-wide p6, p0, Lcom/android/email/activity/MessageList$MoveMessageTask;->mMoveCurMailboxId:J

    .line 6945
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/email/activity/MessageList$MoveMessageTask;->mMoveType:I

    .line 6946
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
    .line 6948
    iput-object p1, p0, Lcom/android/email/activity/MessageList$MoveMessageTask;->this$0:Lcom/android/email/activity/MessageList;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 6949
    iput-wide p2, p0, Lcom/android/email/activity/MessageList$MoveMessageTask;->mMoveAccountId:J

    .line 6950
    iput-wide p4, p0, Lcom/android/email/activity/MessageList$MoveMessageTask;->mMoveCurMailboxId:J

    .line 6951
    iput-wide p6, p0, Lcom/android/email/activity/MessageList$MoveMessageTask;->mMoveTargetAccountId:J

    .line 6952
    iput-wide p8, p0, Lcom/android/email/activity/MessageList$MoveMessageTask;->mMoveTargetMailboxId:J

    .line 6954
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/email/activity/MessageList$MoveMessageTask;->mMoveType:I

    .line 6955
    return-void
.end method

.method public constructor <init>(Lcom/android/email/activity/MessageList;JZ)V
    .locals 1
    .parameter
    .parameter "accountId"
    .parameter "deleteAll"

    .prologue
    .line 6927
    iput-object p1, p0, Lcom/android/email/activity/MessageList$MoveMessageTask;->this$0:Lcom/android/email/activity/MessageList;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 6928
    iput-wide p2, p0, Lcom/android/email/activity/MessageList$MoveMessageTask;->mMoveAccountId:J

    .line 6930
    if-eqz p4, :cond_0

    .line 6931
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/email/activity/MessageList$MoveMessageTask;->mMoveType:I

    .line 6934
    :goto_0
    return-void

    .line 6933
    :cond_0
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/email/activity/MessageList$MoveMessageTask;->mMoveType:I

    goto :goto_0
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 6900
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/activity/MessageList$MoveMessageTask;->doInBackground([Ljava/lang/Void;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)[Ljava/lang/Object;
    .locals 30
    .parameter "params"

    .prologue
    .line 6974
    const/16 v24, 0x0

    .line 6976
    .local v24, result:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageList$MoveMessageTask;->this$0:Lcom/android/email/activity/MessageList;

    move-object v4, v0

    invoke-static {v4}, Lcom/android/email/activity/MessageList;->access$4900(Lcom/android/email/activity/MessageList;)I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageList$MoveMessageTask;->this$0:Lcom/android/email/activity/MessageList;

    move-object v4, v0

    invoke-static {v4}, Lcom/android/email/activity/MessageView$CheckNetworkInfo;->isWirelessAvailable(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 6977
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageList$MoveMessageTask;->this$0:Lcom/android/email/activity/MessageList;

    move-object v4, v0

    const v5, 0x7f0800db

    invoke-virtual {v4, v5}, Lcom/android/email/activity/MessageList;->getString(I)Ljava/lang/String;

    move-result-object v23

    .line 6978
    .local v23, message:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageList$MoveMessageTask;->this$0:Lcom/android/email/activity/MessageList;

    move-object v4, v0

    invoke-static {v4}, Lcom/android/email/activity/MessageList;->access$100(Lcom/android/email/activity/MessageList;)Lcom/android/email/activity/MessageList$MessageListHandler;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageList$MessageListHandler;->showErrorBanner(Ljava/lang/String;)V

    .line 6979
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    .line 7128
    .end local v23           #message:Ljava/lang/String;
    .end local p1
    :goto_0
    return-object v4

    .line 6981
    .restart local p1
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageList$MoveMessageTask;->this$0:Lcom/android/email/activity/MessageList;

    move-object v4, v0

    invoke-static {v4}, Lcom/android/email/activity/MessageList;->access$8800(Lcom/android/email/activity/MessageList;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->getVisibility()I

    move-result v4

    if-nez v4, :cond_1

    .line 6982
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageList$MoveMessageTask;->this$0:Lcom/android/email/activity/MessageList;

    move-object v4, v0

    invoke-static {v4}, Lcom/android/email/activity/MessageList;->access$100(Lcom/android/email/activity/MessageList;)Lcom/android/email/activity/MessageList$MessageListHandler;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/email/activity/MessageList$MessageListHandler;->showErrorBanner(Ljava/lang/String;)V

    .line 6985
    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/email/activity/MessageList$MoveMessageTask;->mMoveType:I

    move v4, v0

    packed-switch v4, :pswitch_data_0

    .line 7075
    .end local p1
    :cond_2
    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/email/activity/MessageList$MoveMessageTask;->mMoveType:I

    move v4, v0

    if-eqz v4, :cond_3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/email/activity/MessageList$MoveMessageTask;->mMoveType:I

    move v4, v0

    const/4 v5, 0x1

    if-eq v4, v5, :cond_3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/email/activity/MessageList$MoveMessageTask;->mMoveType:I

    move v4, v0

    const/4 v5, 0x2

    if-ne v4, v5, :cond_12

    .line 7076
    :cond_3
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static/range {v24 .. v24}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    goto :goto_0

    .line 6988
    .restart local p1
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageList$MoveMessageTask;->this$0:Lcom/android/email/activity/MessageList;

    move-object v4, v0

    invoke-static {v4}, Lcom/android/email/activity/MessageList;->access$2200(Lcom/android/email/activity/MessageList;)Lcom/android/email/Controller;

    move-result-object v4

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/email/activity/MessageList$MoveMessageTask;->mMoveMessageId:J

    move-wide v5, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/email/activity/MessageList$MoveMessageTask;->mMoveAccountId:J

    move-wide v7, v0

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/android/email/Controller;->deleteMessage(JJ)Z

    move-result v24

    .line 6990
    goto :goto_1

    .line 6993
    :pswitch_1
    new-instance v4, Ljava/util/HashSet;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageList$MoveMessageTask;->this$0:Lcom/android/email/activity/MessageList;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/email/activity/MessageList;->access$2700(Lcom/android/email/activity/MessageList;)Lcom/android/email/activity/MessageList$MessageListAdapter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/email/activity/MessageList$MessageListAdapter;->getSelectedSet()Ljava/util/Set;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/email/activity/MessageList$MoveMessageTask;->mCloneSet:Ljava/util/HashSet;

    .line 6994
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageList$MoveMessageTask;->mCloneSet:Ljava/util/HashSet;

    move-object v4, v0

    invoke-virtual {v4}, Ljava/util/HashSet;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_d

    .line 6995
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageList$MoveMessageTask;->this$0:Lcom/android/email/activity/MessageList;

    move-object v4, v0

    invoke-static {v4}, Lcom/android/email/activity/MessageList;->access$200(Lcom/android/email/activity/MessageList;)J

    move-result-wide v4

    const-wide/16 v6, -0x2

    cmp-long v4, v4, v6

    if-eqz v4, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageList$MoveMessageTask;->this$0:Lcom/android/email/activity/MessageList;

    move-object v4, v0

    invoke-static {v4}, Lcom/android/email/activity/MessageList;->access$200(Lcom/android/email/activity/MessageList;)J

    move-result-wide v4

    const-wide/16 v6, -0x4

    cmp-long v4, v4, v6

    if-eqz v4, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageList$MoveMessageTask;->this$0:Lcom/android/email/activity/MessageList;

    move-object v4, v0

    invoke-static {v4}, Lcom/android/email/activity/MessageList;->access$200(Lcom/android/email/activity/MessageList;)J

    move-result-wide v4

    const-wide/16 v6, -0x5

    cmp-long v4, v4, v6

    if-eqz v4, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageList$MoveMessageTask;->this$0:Lcom/android/email/activity/MessageList;

    move-object v4, v0

    invoke-static {v4}, Lcom/android/email/activity/MessageList;->access$200(Lcom/android/email/activity/MessageList;)J

    move-result-wide v4

    const-wide/16 v6, -0x6

    cmp-long v4, v4, v6

    if-nez v4, :cond_c

    .line 6998
    :cond_4
    new-instance v28, Ljava/util/HashSet;

    invoke-direct/range {v28 .. v28}, Ljava/util/HashSet;-><init>()V

    .line 6999
    .local v28, tempHash:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 7004
    .local v15, accountArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const/16 v29, 0x0

    .line 7005
    .local v29, tempList:Lcom/android/email/activity/MessageList$MoveMessageTask$1TempList;
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 7007
    .local v14, IdAndAccountList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/email/activity/MessageList$MoveMessageTask$1TempList;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageList$MoveMessageTask;->mCloneSet:Ljava/util/HashSet;

    move-object v4, v0

    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v18

    .end local p1
    .local v18, i$:Ljava/util/Iterator;
    :cond_5
    :goto_2
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Long;

    .line 7009
    .local v19, id:Ljava/lang/Long;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageList$MoveMessageTask;->this$0:Lcom/android/email/activity/MessageList;

    move-object v4, v0

    invoke-static {v4}, Lcom/android/email/activity/MessageList;->access$2200(Lcom/android/email/activity/MessageList;)Lcom/android/email/Controller;

    move-result-object v4

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lcom/android/email/Controller;->lookupAccountForMessage(J)J

    move-result-wide v26

    .line 7010
    .local v26, tempAccount:J
    new-instance v29, Lcom/android/email/activity/MessageList$MoveMessageTask$1TempList;

    .end local v29           #tempList:Lcom/android/email/activity/MessageList$MoveMessageTask$1TempList;
    invoke-direct/range {v29 .. v30}, Lcom/android/email/activity/MessageList$MoveMessageTask$1TempList;-><init>(Lcom/android/email/activity/MessageList$MoveMessageTask;)V

    .line 7011
    .restart local v29       #tempList:Lcom/android/email/activity/MessageList$MoveMessageTask$1TempList;
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    move-wide v0, v4

    move-object/from16 v2, v29

    iput-wide v0, v2, Lcom/android/email/activity/MessageList$MoveMessageTask$1TempList;->id:J

    .line 7012
    move-wide/from16 v0, v26

    move-object/from16 v2, v29

    iput-wide v0, v2, Lcom/android/email/activity/MessageList$MoveMessageTask$1TempList;->account:J

    .line 7013
    move-object v0, v14

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7014
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_6

    .line 7015
    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v15, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 7019
    :cond_6
    const/16 v17, 0x0

    .local v17, i:I
    :goto_3
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v0, v17

    move v1, v4

    if-ge v0, v1, :cond_7

    .line 7020
    move-object v0, v15

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v4, v4, v26

    if-nez v4, :cond_8

    .line 7023
    :cond_7
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v0, v17

    move v1, v4

    if-ne v0, v1, :cond_5

    .line 7024
    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v15, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 7019
    :cond_8
    add-int/lit8 v17, v17, 0x1

    goto :goto_3

    .line 7029
    .end local v17           #i:I
    .end local v19           #id:Ljava/lang/Long;
    .end local v26           #tempAccount:J
    :cond_9
    const/16 v17, 0x0

    .restart local v17       #i:I
    :goto_4
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v0, v17

    move v1, v4

    if-ge v0, v1, :cond_2

    .line 7030
    const/16 v22, 0x0

    .local v22, j:I
    :goto_5
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v0, v22

    move v1, v4

    if-ge v0, v1, :cond_b

    .line 7031
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

    if-nez v4, :cond_a

    .line 7032
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

    move-object/from16 v0, v28

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 7030
    :cond_a
    add-int/lit8 v22, v22, 0x1

    goto :goto_5

    .line 7034
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageList$MoveMessageTask;->this$0:Lcom/android/email/activity/MessageList;

    move-object v4, v0

    invoke-static {v4}, Lcom/android/email/activity/MessageList;->access$2200(Lcom/android/email/activity/MessageList;)Lcom/android/email/Controller;

    move-result-object v4

    move-object v0, v15

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    move-object v0, v4

    move-object/from16 v1, v28

    move-wide v2, v5

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/email/Controller;->deleteMessage(Ljava/util/HashSet;J)Z

    move-result v24

    .line 7035
    invoke-virtual/range {v28 .. v28}, Ljava/util/HashSet;->clear()V

    .line 7029
    add-int/lit8 v17, v17, 0x1

    goto :goto_4

    .line 7040
    .end local v14           #IdAndAccountList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/email/activity/MessageList$MoveMessageTask$1TempList;>;"
    .end local v15           #accountArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .end local v17           #i:I
    .end local v18           #i$:Ljava/util/Iterator;
    .end local v22           #j:I
    .end local v28           #tempHash:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    .end local v29           #tempList:Lcom/android/email/activity/MessageList$MoveMessageTask$1TempList;
    .restart local p1
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageList$MoveMessageTask;->this$0:Lcom/android/email/activity/MessageList;

    move-object v4, v0

    invoke-static {v4}, Lcom/android/email/activity/MessageList;->access$2200(Lcom/android/email/activity/MessageList;)Lcom/android/email/Controller;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageList$MoveMessageTask;->mCloneSet:Ljava/util/HashSet;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/email/activity/MessageList$MoveMessageTask;->mMoveAccountId:J

    move-wide v6, v0

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/email/Controller;->deleteMessage(Ljava/util/HashSet;J)Z

    move-result v24

    goto/16 :goto_1

    .line 7045
    :cond_d
    const/16 v24, 0x0

    .line 7048
    goto/16 :goto_1

    .line 7051
    :pswitch_2
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/email/activity/MessageList$MoveMessageTask;->mCloneSet:Ljava/util/HashSet;

    .line 7052
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageList$MoveMessageTask;->this$0:Lcom/android/email/activity/MessageList;

    move-object v4, v0

    invoke-static {v4}, Lcom/android/email/activity/MessageList;->access$2700(Lcom/android/email/activity/MessageList;)Lcom/android/email/activity/MessageList$MessageListAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/email/activity/MessageList$MessageListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v16

    .line 7053
    .local v16, c:Landroid/database/Cursor;
    const/4 v4, -0x1

    move-object/from16 v0, v16

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 7054
    :cond_e
    :goto_6
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_10

    .line 7055
    sget-boolean v4, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v4, :cond_f

    sget-boolean v4, Lcom/android/email/Email;->DEBUG_SENSITIVE:Z

    if-eqz v4, :cond_f

    .line 7056
    new-instance v25, Ljava/lang/StringBuffer;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuffer;-><init>()V

    .line 7057
    .local v25, sbuf:Ljava/lang/StringBuffer;
    const-string v4, "MessageList >>"

    const-string v5, "id: "

    move-object/from16 v0, v25

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

    .line 7059
    .end local v25           #sbuf:Ljava/lang/StringBuffer;
    :cond_f
    const/4 v4, 0x0

    move-object/from16 v0, v16

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_e

    .line 7060
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

    goto :goto_6

    .line 7064
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageList$MoveMessageTask;->mCloneSet:Ljava/util/HashSet;

    move-object v4, v0

    invoke-virtual {v4}, Ljava/util/HashSet;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_11

    .line 7065
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageList$MoveMessageTask;->this$0:Lcom/android/email/activity/MessageList;

    move-object v4, v0

    invoke-static {v4}, Lcom/android/email/activity/MessageList;->access$2200(Lcom/android/email/activity/MessageList;)Lcom/android/email/Controller;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageList$MoveMessageTask;->mCloneSet:Ljava/util/HashSet;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/email/activity/MessageList$MoveMessageTask;->mMoveAccountId:J

    move-wide v6, v0

    const/4 v8, 0x1

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/android/email/Controller;->deleteMessage(Ljava/util/HashSet;JZ)Z

    move-result v24

    goto/16 :goto_1

    .line 7069
    :cond_11
    const/16 v24, 0x1

    goto/16 :goto_1

    .line 7079
    .end local v16           #c:Landroid/database/Cursor;
    .end local p1
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageList$MoveMessageTask;->this$0:Lcom/android/email/activity/MessageList;

    move-object v4, v0

    invoke-static {v4}, Lcom/android/email/activity/MessageView$CheckNetworkInfo;->isWirelessAvailable(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_13

    .line 7080
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageList$MoveMessageTask;->this$0:Lcom/android/email/activity/MessageList;

    move-object v4, v0

    const v5, 0x7f0800db

    invoke-virtual {v4, v5}, Lcom/android/email/activity/MessageList;->getString(I)Ljava/lang/String;

    move-result-object v23

    .line 7081
    .restart local v23       #message:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageList$MoveMessageTask;->this$0:Lcom/android/email/activity/MessageList;

    move-object v4, v0

    invoke-static {v4}, Lcom/android/email/activity/MessageList;->access$100(Lcom/android/email/activity/MessageList;)Lcom/android/email/activity/MessageList$MessageListHandler;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageList$MessageListHandler;->showErrorBanner(Ljava/lang/String;)V

    .line 7082
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    goto/16 :goto_0

    .line 7084
    .end local v23           #message:Ljava/lang/String;
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageList$MoveMessageTask;->this$0:Lcom/android/email/activity/MessageList;

    move-object v4, v0

    invoke-static {v4}, Lcom/android/email/activity/MessageList;->access$8800(Lcom/android/email/activity/MessageList;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->getVisibility()I

    move-result v4

    if-nez v4, :cond_14

    .line 7085
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageList$MoveMessageTask;->this$0:Lcom/android/email/activity/MessageList;

    move-object v4, v0

    invoke-static {v4}, Lcom/android/email/activity/MessageList;->access$100(Lcom/android/email/activity/MessageList;)Lcom/android/email/activity/MessageList$MessageListHandler;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/email/activity/MessageList$MessageListHandler;->showErrorBanner(Ljava/lang/String;)V

    .line 7088
    :cond_14
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/email/activity/MessageList$MoveMessageTask;->mMoveType:I

    move v4, v0

    packed-switch v4, :pswitch_data_1

    .line 7128
    :goto_7
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static/range {v24 .. v24}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    goto/16 :goto_0

    .line 7092
    :pswitch_3
    new-instance v4, Ljava/util/HashSet;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageList$MoveMessageTask;->this$0:Lcom/android/email/activity/MessageList;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/email/activity/MessageList;->access$2700(Lcom/android/email/activity/MessageList;)Lcom/android/email/activity/MessageList$MessageListAdapter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/email/activity/MessageList$MessageListAdapter;->getSelectedSet()Ljava/util/Set;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/email/activity/MessageList$MoveMessageTask;->mCloneSet:Ljava/util/HashSet;

    .line 7093
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageList$MoveMessageTask;->mCloneSet:Ljava/util/HashSet;

    move-object v4, v0

    invoke-virtual {v4}, Ljava/util/HashSet;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_15

    .line 7094
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageList$MoveMessageTask;->this$0:Lcom/android/email/activity/MessageList;

    move-object v4, v0

    invoke-static {v4}, Lcom/android/email/activity/MessageList;->access$2200(Lcom/android/email/activity/MessageList;)Lcom/android/email/Controller;

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

    move-result v24

    goto :goto_7

    .line 7098
    :cond_15
    const/16 v24, 0x1

    .line 7101
    goto :goto_7

    .line 7104
    :pswitch_4
    new-instance v4, Ljava/util/HashSet;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageList$MoveMessageTask;->this$0:Lcom/android/email/activity/MessageList;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/email/activity/MessageList;->access$2700(Lcom/android/email/activity/MessageList;)Lcom/android/email/activity/MessageList$MessageListAdapter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/email/activity/MessageList$MessageListAdapter;->getSelectedSet()Ljava/util/Set;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/email/activity/MessageList$MoveMessageTask;->mCloneSet:Ljava/util/HashSet;

    .line 7105
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageList$MoveMessageTask;->mCloneSet:Ljava/util/HashSet;

    move-object v4, v0

    invoke-virtual {v4}, Ljava/util/HashSet;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_16

    .line 7106
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageList$MoveMessageTask;->this$0:Lcom/android/email/activity/MessageList;

    move-object v4, v0

    invoke-static {v4}, Lcom/android/email/activity/MessageList;->access$2200(Lcom/android/email/activity/MessageList;)Lcom/android/email/Controller;

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

    move-result v24

    goto/16 :goto_7

    .line 7110
    :cond_16
    const/16 v24, 0x1

    .line 7113
    goto/16 :goto_7

    .line 7116
    :pswitch_5
    new-instance v4, Ljava/util/HashSet;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageList$MoveMessageTask;->this$0:Lcom/android/email/activity/MessageList;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/email/activity/MessageList;->access$2700(Lcom/android/email/activity/MessageList;)Lcom/android/email/activity/MessageList$MessageListAdapter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/email/activity/MessageList$MessageListAdapter;->getSelectedSet()Ljava/util/Set;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/email/activity/MessageList$MoveMessageTask;->mCloneSet:Ljava/util/HashSet;

    .line 7118
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageList$MoveMessageTask;->this$0:Lcom/android/email/activity/MessageList;

    move-object v4, v0

    invoke-static {v4}, Lcom/android/email/activity/MessageList;->access$2200(Lcom/android/email/activity/MessageList;)Lcom/android/email/Controller;

    move-result-object v4

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/email/activity/MessageList$MoveMessageTask;->mMoveAccountId:J

    move-wide v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/email/activity/MessageList$MoveMessageTask;->mMoveMailboxType:I

    move v7, v0

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/email/Controller;->findOrCreateMailboxOfType(JI)J

    move-result-wide v20

    .line 7120
    .local v20, inboxMailboxId:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageList$MoveMessageTask;->mCloneSet:Ljava/util/HashSet;

    move-object v4, v0

    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v18

    .restart local v18       #i$:Ljava/util/Iterator;
    :goto_8
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_17

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Long;

    .line 7121
    .restart local v19       #id:Ljava/lang/Long;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageList$MoveMessageTask;->this$0:Lcom/android/email/activity/MessageList;

    move-object v4, v0

    invoke-static {v4}, Lcom/android/email/activity/MessageList;->access$2200(Lcom/android/email/activity/MessageList;)Lcom/android/email/Controller;

    move-result-object v4

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/email/activity/MessageList$MoveMessageTask;->mMoveAccountId:J

    move-wide v7, v0

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/android/email/Controller;->restoreMessage(JJ)V

    goto :goto_8

    .line 7123
    .end local v19           #id:Ljava/lang/Long;
    :cond_17
    const/16 v24, 0x1

    goto/16 :goto_7

    .line 6985
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 7088
    :pswitch_data_1
    .packed-switch 0x3
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 6900
    check-cast p1, [Ljava/lang/Object;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/activity/MessageList$MoveMessageTask;->onPostExecute([Ljava/lang/Object;)V

    return-void
.end method

.method protected onPostExecute([Ljava/lang/Object;)V
    .locals 9
    .parameter "param"

    .prologue
    const v6, 0x7f0b0004

    const v4, 0x7f08017a

    const v3, 0x7f080177

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 7133
    aget-object v2, p1, v8

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 7135
    .local v1, result:Z
    iget-object v2, p0, Lcom/android/email/activity/MessageList$MoveMessageTask;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v2}, Lcom/android/email/activity/MessageList;->access$100(Lcom/android/email/activity/MessageList;)Lcom/android/email/activity/MessageList$MessageListHandler;

    move-result-object v2

    invoke-virtual {v2, v8}, Lcom/android/email/activity/MessageList$MessageListHandler;->progressMove(Z)V

    .line 7136
    iget v2, p0, Lcom/android/email/activity/MessageList$MoveMessageTask;->mMoveType:I

    packed-switch v2, :pswitch_data_0

    .line 7271
    :goto_0
    return-void

    .line 7140
    :pswitch_0
    if-ne v1, v7, :cond_1

    .line 7143
    iget-object v2, p0, Lcom/android/email/activity/MessageList$MoveMessageTask;->this$0:Lcom/android/email/activity/MessageList;

    invoke-virtual {v2}, Lcom/android/email/activity/MessageList;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0005

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-virtual {v2, v3, v7, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 7145
    .local v0, reportString:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/email/activity/MessageList$MoveMessageTask;->this$0:Lcom/android/email/activity/MessageList;

    iget-object v3, p0, Lcom/android/email/activity/MessageList$MoveMessageTask;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v3}, Lcom/android/email/activity/MessageList;->access$2700(Lcom/android/email/activity/MessageList;)Lcom/android/email/activity/MessageList$MessageListAdapter;

    move-result-object v3

    invoke-static {v3}, Lcom/android/email/activity/MessageList$MessageListAdapter;->access$1100(Lcom/android/email/activity/MessageList$MessageListAdapter;)Ljava/util/HashSet;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/HashSet;->size()I

    move-result v3

    if-lez v3, :cond_0

    move v3, v7

    :goto_1
    invoke-static {v2, v3}, Lcom/android/email/activity/MessageList;->access$2900(Lcom/android/email/activity/MessageList;Z)V

    .line 7147
    iget-object v2, p0, Lcom/android/email/activity/MessageList$MoveMessageTask;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v2}, Lcom/android/email/activity/MessageList;->access$2700(Lcom/android/email/activity/MessageList;)Lcom/android/email/activity/MessageList$MessageListAdapter;

    move-result-object v2

    iget-wide v3, p0, Lcom/android/email/activity/MessageList$MoveMessageTask;->mMoveMessageId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/email/activity/MessageList$MessageListAdapter;->removeMessage(Ljava/lang/Long;)V

    .line 7148
    iget-object v2, p0, Lcom/android/email/activity/MessageList$MoveMessageTask;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v2, v0, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_0
    move v3, v8

    .line 7145
    goto :goto_1

    .line 7153
    .end local v0           #reportString:Ljava/lang/String;
    :cond_1
    iget-object v2, p0, Lcom/android/email/activity/MessageList$MoveMessageTask;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v2, v4, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 7160
    :pswitch_1
    if-ne v1, v7, :cond_3

    .line 7163
    iget-object v2, p0, Lcom/android/email/activity/MessageList$MoveMessageTask;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v2}, Lcom/android/email/activity/MessageList;->access$2500(Lcom/android/email/activity/MessageList;)I

    move-result v2

    if-ne v2, v7, :cond_2

    .line 7166
    iget-object v2, p0, Lcom/android/email/activity/MessageList$MoveMessageTask;->this$0:Lcom/android/email/activity/MessageList;

    iget-object v3, p0, Lcom/android/email/activity/MessageList$MoveMessageTask;->this$0:Lcom/android/email/activity/MessageList;

    const v4, 0x7f08007e

    invoke-virtual {v3, v4}, Lcom/android/email/activity/MessageList;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 7181
    :goto_2
    iget-object v2, p0, Lcom/android/email/activity/MessageList$MoveMessageTask;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v2}, Lcom/android/email/activity/MessageList;->access$2700(Lcom/android/email/activity/MessageList;)Lcom/android/email/activity/MessageList$MessageListAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/email/activity/MessageList$MessageListAdapter;->getSelectedSet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    .line 7182
    iget-object v2, p0, Lcom/android/email/activity/MessageList$MoveMessageTask;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v2, v8}, Lcom/android/email/activity/MessageList;->access$2900(Lcom/android/email/activity/MessageList;Z)V

    goto/16 :goto_0

    .line 7170
    :cond_2
    iget-object v2, p0, Lcom/android/email/activity/MessageList$MoveMessageTask;->this$0:Lcom/android/email/activity/MessageList;

    invoke-virtual {v2}, Lcom/android/email/activity/MessageList;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0005

    iget-object v4, p0, Lcom/android/email/activity/MessageList$MoveMessageTask;->mCloneSet:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/HashSet;->size()I

    move-result v4

    new-array v5, v7, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/android/email/activity/MessageList$MoveMessageTask;->mCloneSet:Ljava/util/HashSet;

    invoke-virtual {v6}, Ljava/util/HashSet;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 7173
    .restart local v0       #reportString:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/email/activity/MessageList$MoveMessageTask;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v2, v0, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_2

    .line 7179
    .end local v0           #reportString:Ljava/lang/String;
    :cond_3
    iget-object v2, p0, Lcom/android/email/activity/MessageList$MoveMessageTask;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v2, v4, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_2

    .line 7187
    :pswitch_2
    if-ne v1, v7, :cond_4

    .line 7190
    iget-object v2, p0, Lcom/android/email/activity/MessageList$MoveMessageTask;->this$0:Lcom/android/email/activity/MessageList;

    invoke-virtual {v2}, Lcom/android/email/activity/MessageList;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0005

    iget-object v4, p0, Lcom/android/email/activity/MessageList$MoveMessageTask;->mCloneSet:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/HashSet;->size()I

    move-result v4

    new-array v5, v7, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/android/email/activity/MessageList$MoveMessageTask;->mCloneSet:Ljava/util/HashSet;

    invoke-virtual {v6}, Ljava/util/HashSet;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 7193
    .restart local v0       #reportString:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/email/activity/MessageList$MoveMessageTask;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v2, v0, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 7201
    .end local v0           #reportString:Ljava/lang/String;
    :goto_3
    iget-object v2, p0, Lcom/android/email/activity/MessageList$MoveMessageTask;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v2}, Lcom/android/email/activity/MessageList;->access$2700(Lcom/android/email/activity/MessageList;)Lcom/android/email/activity/MessageList$MessageListAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/email/activity/MessageList$MessageListAdapter;->getSelectedSet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    .line 7202
    iget-object v2, p0, Lcom/android/email/activity/MessageList$MoveMessageTask;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v2, v8}, Lcom/android/email/activity/MessageList;->access$2900(Lcom/android/email/activity/MessageList;Z)V

    goto/16 :goto_0

    .line 7199
    :cond_4
    iget-object v2, p0, Lcom/android/email/activity/MessageList$MoveMessageTask;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v2, v4, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_3

    .line 7208
    :pswitch_3
    if-ne v1, v7, :cond_6

    .line 7210
    iget-object v2, p0, Lcom/android/email/activity/MessageList$MoveMessageTask;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v2}, Lcom/android/email/activity/MessageList;->access$2500(Lcom/android/email/activity/MessageList;)I

    move-result v2

    if-ne v2, v7, :cond_5

    .line 7217
    iget-object v2, p0, Lcom/android/email/activity/MessageList$MoveMessageTask;->this$0:Lcom/android/email/activity/MessageList;

    iget-object v3, p0, Lcom/android/email/activity/MessageList$MoveMessageTask;->this$0:Lcom/android/email/activity/MessageList;

    const v4, 0x7f08024f

    invoke-virtual {v3, v4}, Lcom/android/email/activity/MessageList;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 7232
    :goto_4
    iget-object v2, p0, Lcom/android/email/activity/MessageList$MoveMessageTask;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v2}, Lcom/android/email/activity/MessageList;->access$2700(Lcom/android/email/activity/MessageList;)Lcom/android/email/activity/MessageList$MessageListAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/email/activity/MessageList$MessageListAdapter;->getSelectedSet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    .line 7233
    iget-object v2, p0, Lcom/android/email/activity/MessageList$MoveMessageTask;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v2, v8}, Lcom/android/email/activity/MessageList;->access$2900(Lcom/android/email/activity/MessageList;Z)V

    goto/16 :goto_0

    .line 7220
    :cond_5
    iget-object v2, p0, Lcom/android/email/activity/MessageList$MoveMessageTask;->this$0:Lcom/android/email/activity/MessageList;

    invoke-virtual {v2}, Lcom/android/email/activity/MessageList;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lcom/android/email/activity/MessageList$MoveMessageTask;->mCloneSet:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->size()I

    move-result v3

    new-array v4, v7, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/email/activity/MessageList$MoveMessageTask;->mCloneSet:Ljava/util/HashSet;

    invoke-virtual {v5}, Ljava/util/HashSet;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-virtual {v2, v6, v3, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 7223
    .restart local v0       #reportString:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/email/activity/MessageList$MoveMessageTask;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v2, v0, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_4

    .line 7229
    .end local v0           #reportString:Ljava/lang/String;
    :cond_6
    iget-object v2, p0, Lcom/android/email/activity/MessageList$MoveMessageTask;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v2, v3, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_4

    .line 7238
    :pswitch_4
    if-ne v1, v7, :cond_7

    .line 7240
    iget-object v2, p0, Lcom/android/email/activity/MessageList$MoveMessageTask;->this$0:Lcom/android/email/activity/MessageList;

    invoke-virtual {v2}, Lcom/android/email/activity/MessageList;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lcom/android/email/activity/MessageList$MoveMessageTask;->mCloneSet:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->size()I

    move-result v3

    new-array v4, v7, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/email/activity/MessageList$MoveMessageTask;->mCloneSet:Ljava/util/HashSet;

    invoke-virtual {v5}, Ljava/util/HashSet;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-virtual {v2, v6, v3, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 7243
    .restart local v0       #reportString:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/email/activity/MessageList$MoveMessageTask;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v2, v0, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 7249
    .end local v0           #reportString:Ljava/lang/String;
    :goto_5
    iget-object v2, p0, Lcom/android/email/activity/MessageList$MoveMessageTask;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v2}, Lcom/android/email/activity/MessageList;->access$2700(Lcom/android/email/activity/MessageList;)Lcom/android/email/activity/MessageList$MessageListAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/email/activity/MessageList$MessageListAdapter;->getSelectedSet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    .line 7250
    iget-object v2, p0, Lcom/android/email/activity/MessageList$MoveMessageTask;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v2, v8}, Lcom/android/email/activity/MessageList;->access$2900(Lcom/android/email/activity/MessageList;Z)V

    goto/16 :goto_0

    .line 7247
    :cond_7
    iget-object v2, p0, Lcom/android/email/activity/MessageList$MoveMessageTask;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v2, v3, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_5

    .line 7255
    :pswitch_5
    if-ne v1, v7, :cond_8

    .line 7257
    iget-object v2, p0, Lcom/android/email/activity/MessageList$MoveMessageTask;->this$0:Lcom/android/email/activity/MessageList;

    invoke-virtual {v2}, Lcom/android/email/activity/MessageList;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lcom/android/email/activity/MessageList$MoveMessageTask;->mCloneSet:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->size()I

    move-result v3

    new-array v4, v7, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/email/activity/MessageList$MoveMessageTask;->mCloneSet:Ljava/util/HashSet;

    invoke-virtual {v5}, Ljava/util/HashSet;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-virtual {v2, v6, v3, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 7260
    .restart local v0       #reportString:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/email/activity/MessageList$MoveMessageTask;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v2, v0, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 7266
    .end local v0           #reportString:Ljava/lang/String;
    :goto_6
    iget-object v2, p0, Lcom/android/email/activity/MessageList$MoveMessageTask;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v2}, Lcom/android/email/activity/MessageList;->access$2700(Lcom/android/email/activity/MessageList;)Lcom/android/email/activity/MessageList$MessageListAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/email/activity/MessageList$MessageListAdapter;->getSelectedSet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    .line 7267
    iget-object v2, p0, Lcom/android/email/activity/MessageList$MoveMessageTask;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v2, v8}, Lcom/android/email/activity/MessageList;->access$2900(Lcom/android/email/activity/MessageList;Z)V

    goto/16 :goto_0

    .line 7264
    :cond_8
    iget-object v2, p0, Lcom/android/email/activity/MessageList$MoveMessageTask;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v2, v3, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_6

    .line 7136
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

    .line 6965
    iget-object v0, p0, Lcom/android/email/activity/MessageList$MoveMessageTask;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v0}, Lcom/android/email/activity/MessageList;->access$100(Lcom/android/email/activity/MessageList;)Lcom/android/email/activity/MessageList$MessageListHandler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageList$MessageListHandler;->progressMove(Z)V

    .line 6966
    iget-object v0, p0, Lcom/android/email/activity/MessageList$MoveMessageTask;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v0}, Lcom/android/email/activity/MessageList;->access$8600(Lcom/android/email/activity/MessageList;)Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 6967
    iget-object v0, p0, Lcom/android/email/activity/MessageList$MoveMessageTask;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v0}, Lcom/android/email/activity/MessageList;->access$8600(Lcom/android/email/activity/MessageList;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 6968
    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/MessageList$MoveMessageTask;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v0}, Lcom/android/email/activity/MessageList;->access$8700(Lcom/android/email/activity/MessageList;)Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 6969
    iget-object v0, p0, Lcom/android/email/activity/MessageList$MoveMessageTask;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v0}, Lcom/android/email/activity/MessageList;->access$8700(Lcom/android/email/activity/MessageList;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 6970
    :cond_1
    return-void
.end method
