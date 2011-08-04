.class Lcom/android/email/activity/MessageList$MailBoxAdapter;
.super Landroid/widget/ArrayAdapter;
.source "MessageList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/MessageList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MailBoxAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/activity/MessageList$MailBoxAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private inflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;[Lcom/android/email/activity/MessageList$MailBoxType;)V
    .locals 1
    .parameter "context"
    .parameter "objects"

    .prologue
    .line 4873
    const v0, 0x7f03002b

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 4874
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageList$MailBoxAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 4875
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 16
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const-wide/16 v14, -0x1

    const/4 v13, 0x0

    const/16 v11, 0x8

    const/4 v12, 0x0

    .line 4880
    invoke-virtual/range {p0 .. p1}, Lcom/android/email/activity/MessageList$MailBoxAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/email/activity/MessageList$MailBoxType;

    .line 4881
    .local v8, viewType:Lcom/android/email/activity/MessageList$MailBoxType;
    if-nez v8, :cond_0

    .line 4882
    const-string v9, "MessageList >>"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Invalid category for position:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object v0, v10

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    move-object v9, v13

    .line 4951
    .end local p0
    :goto_0
    return-object v9

    .line 4886
    .restart local p0
    :cond_0
    invoke-virtual {v8}, Lcom/android/email/activity/MessageList$MailBoxType;->getAccountKey()J

    move-result-wide v9

    cmp-long v9, v9, v14

    if-nez v9, :cond_1

    invoke-virtual {v8}, Lcom/android/email/activity/MessageList$MailBoxType;->getMailboxId()J

    move-result-wide v9

    cmp-long v9, v9, v14

    if-nez v9, :cond_1

    .line 4889
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageList$MailBoxAdapter;->inflater:Landroid/view/LayoutInflater;

    move-object v9, v0

    const v10, 0x7f030010

    move-object v0, v9

    move v1, v10

    move-object/from16 v2, p3

    move v3, v12

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v7

    .line 4890
    .local v7, v:Landroid/view/View;
    move-object v0, v7

    check-cast v0, Landroid/widget/TextView;

    move-object v6, v0

    .line 4891
    .local v6, itemView:Landroid/widget/TextView;
    invoke-virtual {v8}, Lcom/android/email/activity/MessageList$MailBoxType;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4892
    invoke-virtual {v6, v12}, Landroid/widget/TextView;->setFocusable(Z)V

    move-object v9, v7

    .line 4893
    goto :goto_0

    .line 4897
    .end local v6           #itemView:Landroid/widget/TextView;
    .end local v7           #v:Landroid/view/View;
    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v9

    if-nez v9, :cond_3

    .line 4899
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageList$MailBoxAdapter;->inflater:Landroid/view/LayoutInflater;

    move-object v9, v0

    const v10, 0x7f03002b

    invoke-virtual {v9, v10, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 4901
    new-instance v5, Lcom/android/email/activity/MessageList$MailBoxAdapter$ViewHolder;

    invoke-direct {v5}, Lcom/android/email/activity/MessageList$MailBoxAdapter$ViewHolder;-><init>()V

    .line 4903
    .local v5, holder:Lcom/android/email/activity/MessageList$MailBoxAdapter$ViewHolder;
    const v9, 0x7f070009

    move-object/from16 v0, p2

    move v1, v9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    iput-object v9, v5, Lcom/android/email/activity/MessageList$MailBoxAdapter$ViewHolder;->chip:Landroid/view/View;

    .line 4906
    const v9, 0x7f07000a

    move-object/from16 v0, p2

    move v1, v9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    move-object v1, v5

    iput-object v0, v1, Lcom/android/email/activity/MessageList$MailBoxAdapter$ViewHolder;->mailboxInfo:Landroid/widget/LinearLayout;

    .line 4908
    const v9, 0x7f0700bb

    move-object/from16 v0, p2

    move v1, v9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    move-object/from16 v0, p0

    move-object v1, v5

    iput-object v0, v1, Lcom/android/email/activity/MessageList$MailBoxAdapter$ViewHolder;->mailBoxName:Landroid/widget/TextView;

    .line 4911
    const v9, 0x7f07000d

    move-object/from16 v0, p2

    move v1, v9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    move-object v1, v5

    iput-object v0, v1, Lcom/android/email/activity/MessageList$MailBoxAdapter$ViewHolder;->accountInfo:Landroid/widget/LinearLayout;

    .line 4913
    const v9, 0x7f070007

    move-object/from16 v0, p2

    move v1, v9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    move-object/from16 v0, p0

    move-object v1, v5

    iput-object v0, v1, Lcom/android/email/activity/MessageList$MailBoxAdapter$ViewHolder;->accountName:Landroid/widget/TextView;

    .line 4915
    const v9, 0x7f0700bc

    move-object/from16 v0, p2

    move v1, v9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    move-object/from16 v0, p0

    move-object v1, v5

    iput-object v0, v1, Lcom/android/email/activity/MessageList$MailBoxAdapter$ViewHolder;->emailAddress:Landroid/widget/TextView;

    .line 4918
    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 4925
    :goto_1
    invoke-virtual {v8}, Lcom/android/email/activity/MessageList$MailBoxType;->getEmailAddress()Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_4

    .line 4927
    iget-object v9, v5, Lcom/android/email/activity/MessageList$MailBoxAdapter$ViewHolder;->chip:Landroid/view/View;

    invoke-virtual {v9, v11}, Landroid/view/View;->setVisibility(I)V

    .line 4928
    iget-object v9, v5, Lcom/android/email/activity/MessageList$MailBoxAdapter$ViewHolder;->accountInfo:Landroid/widget/LinearLayout;

    invoke-virtual {v9, v11}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 4930
    iget-object v9, v5, Lcom/android/email/activity/MessageList$MailBoxAdapter$ViewHolder;->mailBoxName:Landroid/widget/TextView;

    invoke-virtual {v8}, Lcom/android/email/activity/MessageList$MailBoxType;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4932
    iget-object v9, v5, Lcom/android/email/activity/MessageList$MailBoxAdapter$ViewHolder;->mailboxInfo:Landroid/widget/LinearLayout;

    invoke-virtual {v9, v12}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_2
    move-object/from16 v9, p2

    .line 4951
    goto/16 :goto_0

    .line 4922
    .end local v5           #holder:Lcom/android/email/activity/MessageList$MailBoxAdapter$ViewHolder;
    .restart local p0
    :cond_3
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/email/activity/MessageList$MailBoxAdapter$ViewHolder;

    .restart local v5       #holder:Lcom/android/email/activity/MessageList$MailBoxAdapter$ViewHolder;
    goto :goto_1

    .line 4936
    .end local p0
    :cond_4
    iget-object v9, v5, Lcom/android/email/activity/MessageList$MailBoxAdapter$ViewHolder;->mailboxInfo:Landroid/widget/LinearLayout;

    invoke-virtual {v9, v11}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 4939
    invoke-virtual {v8}, Lcom/android/email/activity/MessageList$MailBoxType;->getAccountKey()J

    move-result-wide v9

    long-to-int v9, v9

    if-lez v9, :cond_5

    .line 4940
    invoke-static {}, Lcom/android/email/activity/MessageList;->access$4500()[I

    move-result-object v9

    invoke-virtual {v8}, Lcom/android/email/activity/MessageList$MailBoxType;->getAccountKey()J

    move-result-wide v10

    long-to-int v10, v10

    const/4 v11, 0x1

    sub-int/2addr v10, v11

    invoke-static {}, Lcom/android/email/activity/MessageList;->access$4500()[I

    move-result-object v11

    array-length v11, v11

    rem-int/2addr v10, v11

    aget v4, v9, v10

    .line 4944
    .local v4, chipResId:I
    :goto_3
    iget-object v9, v5, Lcom/android/email/activity/MessageList$MailBoxAdapter$ViewHolder;->chip:Landroid/view/View;

    invoke-virtual {v9, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 4945
    iget-object v9, v5, Lcom/android/email/activity/MessageList$MailBoxAdapter$ViewHolder;->accountName:Landroid/widget/TextView;

    invoke-virtual {v8}, Lcom/android/email/activity/MessageList$MailBoxType;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4946
    iget-object v9, v5, Lcom/android/email/activity/MessageList$MailBoxAdapter$ViewHolder;->emailAddress:Landroid/widget/TextView;

    invoke-virtual {v8}, Lcom/android/email/activity/MessageList$MailBoxType;->getEmailAddress()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4948
    iget-object v9, v5, Lcom/android/email/activity/MessageList$MailBoxAdapter$ViewHolder;->chip:Landroid/view/View;

    invoke-virtual {v9, v12}, Landroid/view/View;->setVisibility(I)V

    .line 4949
    iget-object v9, v5, Lcom/android/email/activity/MessageList$MailBoxAdapter$ViewHolder;->accountInfo:Landroid/widget/LinearLayout;

    invoke-virtual {v9, v12}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_2

    .line 4942
    .end local v4           #chipResId:I
    :cond_5
    invoke-static {}, Lcom/android/email/activity/MessageList;->access$4500()[I

    move-result-object v9

    aget v4, v9, v12

    .restart local v4       #chipResId:I
    goto :goto_3
.end method

.method public isEnabled(I)Z
    .locals 7
    .parameter "position"

    .prologue
    const-wide/16 v5, -0x1

    const/4 v4, 0x0

    .line 4956
    invoke-virtual {p0, p1}, Lcom/android/email/activity/MessageList$MailBoxAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/MessageList$MailBoxType;

    .line 4957
    .local v0, viewType:Lcom/android/email/activity/MessageList$MailBoxType;
    if-nez v0, :cond_0

    .line 4958
    const-string v1, "MessageList >>"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid category for position:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v4

    .line 4966
    :goto_0
    return v1

    .line 4962
    :cond_0
    invoke-virtual {v0}, Lcom/android/email/activity/MessageList$MailBoxType;->getAccountKey()J

    move-result-wide v1

    cmp-long v1, v1, v5

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/android/email/activity/MessageList$MailBoxType;->getMailboxId()J

    move-result-wide v1

    cmp-long v1, v1, v5

    if-nez v1, :cond_1

    move v1, v4

    .line 4964
    goto :goto_0

    .line 4966
    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method
