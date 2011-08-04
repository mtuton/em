.class Lcom/android/email/activity/MailboxList$MailboxListAdapter;
.super Landroid/widget/CursorAdapter;
.source "MailboxList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/MailboxList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MailboxListAdapter"
.end annotation


# instance fields
.field public final PROJECTION:[Ljava/lang/String;

.field mContext:Landroid/content/Context;

.field private mInflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/android/email/activity/MailboxList;


# direct methods
.method public constructor <init>(Lcom/android/email/activity/MailboxList;Landroid/content/Context;)V
    .locals 3
    .parameter
    .parameter "context"

    .prologue
    .line 837
    iput-object p1, p0, Lcom/android/email/activity/MailboxList$MailboxListAdapter;->this$0:Lcom/android/email/activity/MailboxList;

    .line 838
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    .line 828
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "displayName"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "unreadCount"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "type"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/email/activity/MailboxList$MailboxListAdapter;->PROJECTION:[Ljava/lang/String;

    .line 839
    iput-object p2, p0, Lcom/android/email/activity/MailboxList$MailboxListAdapter;->mContext:Landroid/content/Context;

    .line 840
    const-string v0, "layout_inflater"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/email/activity/MailboxList$MailboxListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 841
    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 15
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 845
    const/4 v11, 0x3

    move-object/from16 v0, p3

    move v1, v11

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 846
    .local v10, type:I
    invoke-static/range {p2 .. p2}, Lcom/android/email/Utility$FolderProperties;->getInstance(Landroid/content/Context;)Lcom/android/email/Utility$FolderProperties;

    move-result-object v11

    invoke-virtual {v11, v10}, Lcom/android/email/Utility$FolderProperties;->getDisplayName(I)Ljava/lang/String;

    move-result-object v9

    .line 848
    .local v9, text:Ljava/lang/String;
    if-nez v9, :cond_0

    .line 849
    const/4 v11, 0x1

    move-object/from16 v0, p3

    move v1, v11

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 851
    :cond_0
    const v11, 0x7f0700b9

    move-object/from16 v0, p1

    move v1, v11

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 852
    .local v7, nameView:Landroid/widget/TextView;
    if-eqz v9, :cond_1

    .line 853
    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 857
    :cond_1
    const/4 v9, 0x0

    .line 858
    const v11, 0x7f0700ba

    move-object/from16 v0, p1

    move v1, v11

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 859
    .local v8, statusView:Landroid/widget/TextView;
    if-eqz v9, :cond_3

    .line 860
    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 861
    const/4 v11, 0x0

    invoke-virtual {v8, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 865
    :goto_0
    const v11, 0x7f070009

    move-object/from16 v0, p1

    move v1, v11

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 870
    .local v3, chipView:Landroid/view/View;
    iget-object v11, p0, Lcom/android/email/activity/MailboxList$MailboxListAdapter;->this$0:Lcom/android/email/activity/MailboxList;

    invoke-static {v11}, Lcom/android/email/activity/MailboxList;->access$100(Lcom/android/email/activity/MailboxList;)J

    move-result-wide v11

    long-to-int v11, v11

    if-lez v11, :cond_4

    .line 871
    invoke-static {}, Lcom/android/email/activity/MailboxList;->access$600()[I

    move-result-object v11

    iget-object v12, p0, Lcom/android/email/activity/MailboxList$MailboxListAdapter;->this$0:Lcom/android/email/activity/MailboxList;

    invoke-static {v12}, Lcom/android/email/activity/MailboxList;->access$100(Lcom/android/email/activity/MailboxList;)J

    move-result-wide v12

    long-to-int v12, v12

    const/4 v13, 0x1

    sub-int/2addr v12, v13

    invoke-static {}, Lcom/android/email/activity/MailboxList;->access$600()[I

    move-result-object v13

    array-length v13, v13

    rem-int/2addr v12, v13

    aget v2, v11, v12

    .line 875
    .local v2, chipResId:I
    :goto_1
    invoke-virtual {v3, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 877
    const/4 v4, -0x1

    .line 878
    .local v4, count:I
    const/4 v11, 0x2

    move-object/from16 v0, p3

    move v1, v11

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 879
    if-eqz v9, :cond_2

    .line 880
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 882
    :cond_2
    const v11, 0x7f07004b

    move-object/from16 v0, p1

    move v1, v11

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 884
    .local v5, countView:Landroid/widget/TextView;
    if-lez v4, :cond_5

    .line 885
    sget-object v11, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v7, v11}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 886
    const/4 v11, 0x0

    invoke-virtual {v5, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 887
    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 892
    :goto_2
    packed-switch v10, :pswitch_data_0

    .line 900
    const v11, 0x7f0200c3

    invoke-virtual {v5, v11}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 904
    :goto_3
    const/4 v11, 0x2

    const/4 v12, 0x0

    const/4 v13, 0x2

    const/4 v14, 0x0

    invoke-virtual {v5, v11, v12, v13, v14}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 906
    const v11, 0x7f0700b8

    move-object/from16 v0, p1

    move v1, v11

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    .line 907
    .local v6, folderIcon:Landroid/widget/ImageView;
    invoke-static/range {p2 .. p2}, Lcom/android/email/Utility$FolderProperties;->getInstance(Landroid/content/Context;)Lcom/android/email/Utility$FolderProperties;

    move-result-object v11

    invoke-virtual {v11, v10}, Lcom/android/email/Utility$FolderProperties;->getIconIds(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    invoke-virtual {v6, v11}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 909
    return-void

    .line 863
    .end local v2           #chipResId:I
    .end local v3           #chipView:Landroid/view/View;
    .end local v4           #count:I
    .end local v5           #countView:Landroid/widget/TextView;
    .end local v6           #folderIcon:Landroid/widget/ImageView;
    :cond_3
    const/16 v11, 0x8

    invoke-virtual {v8, v11}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 873
    .restart local v3       #chipView:Landroid/view/View;
    :cond_4
    invoke-static {}, Lcom/android/email/activity/MailboxList;->access$600()[I

    move-result-object v11

    const/4 v12, 0x0

    aget v2, v11, v12

    .restart local v2       #chipResId:I
    goto :goto_1

    .line 889
    .restart local v4       #count:I
    .restart local v5       #countView:Landroid/widget/TextView;
    :cond_5
    sget-object v11, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v7, v11}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 890
    const/16 v11, 0x8

    invoke-virtual {v5, v11}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 897
    :pswitch_0
    const v11, 0x7f0200c2

    invoke-virtual {v5, v11}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_3

    .line 892
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    .line 913
    iget-object v0, p0, Lcom/android/email/activity/MailboxList$MailboxListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f03002a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
