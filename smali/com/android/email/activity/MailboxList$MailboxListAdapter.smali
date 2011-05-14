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
.field public final COLUMN_DISPLAY_NAME:I

.field public final COLUMN_TYPE:I

.field public final COLUMN_UNREAD_COUNT:I

.field public final PROJECTION:[Ljava/lang/String;

.field mContext:Landroid/content/Context;

.field private mInflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/android/email/activity/MailboxList;


# direct methods
.method public constructor <init>(Lcom/android/email/activity/MailboxList;Landroid/content/Context;)V
    .locals 6
    .parameter
    .parameter "context"

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 818
    iput-object p1, p0, Lcom/android/email/activity/MailboxList$MailboxListAdapter;->this$0:Lcom/android/email/activity/MailboxList;

    .line 819
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    .line 809
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const-string v1, "displayName"

    aput-object v1, v0, v3

    const-string v1, "unreadCount"

    aput-object v1, v0, v4

    const-string v1, "type"

    aput-object v1, v0, v5

    iput-object v0, p0, Lcom/android/email/activity/MailboxList$MailboxListAdapter;->PROJECTION:[Ljava/lang/String;

    .line 811
    iput v3, p0, Lcom/android/email/activity/MailboxList$MailboxListAdapter;->COLUMN_DISPLAY_NAME:I

    .line 812
    iput v4, p0, Lcom/android/email/activity/MailboxList$MailboxListAdapter;->COLUMN_UNREAD_COUNT:I

    .line 813
    iput v5, p0, Lcom/android/email/activity/MailboxList$MailboxListAdapter;->COLUMN_TYPE:I

    .line 820
    iput-object p2, p0, Lcom/android/email/activity/MailboxList$MailboxListAdapter;->mContext:Landroid/content/Context;

    .line 821
    const-string v0, "layout_inflater"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/email/activity/MailboxList$MailboxListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 822
    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 15
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 826
    const/4 v11, 0x3

    move-object/from16 v0, p3

    move v1, v11

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 827
    .local v10, type:I
    invoke-static/range {p2 .. p2}, Lcom/android/email/Utility$FolderProperties;->getInstance(Landroid/content/Context;)Lcom/android/email/Utility$FolderProperties;

    move-result-object v11

    invoke-virtual {v11, v10}, Lcom/android/email/Utility$FolderProperties;->getDisplayName(I)Ljava/lang/String;

    move-result-object v9

    .line 829
    .local v9, text:Ljava/lang/String;
    if-nez v9, :cond_0

    .line 830
    const/4 v11, 0x1

    move-object/from16 v0, p3

    move v1, v11

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 832
    :cond_0
    const v11, 0x7f070094

    move-object/from16 v0, p1

    move v1, v11

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 833
    .local v7, nameView:Landroid/widget/TextView;
    if-eqz v9, :cond_1

    .line 834
    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 838
    :cond_1
    const/4 v9, 0x0

    .line 839
    const v11, 0x7f070095

    move-object/from16 v0, p1

    move v1, v11

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 840
    .local v8, statusView:Landroid/widget/TextView;
    if-eqz v9, :cond_3

    .line 841
    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 842
    const/4 v11, 0x0

    invoke-virtual {v8, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 846
    :goto_0
    const v11, 0x7f070009

    move-object/from16 v0, p1

    move v1, v11

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 851
    .local v3, chipView:Landroid/view/View;
    iget-object v11, p0, Lcom/android/email/activity/MailboxList$MailboxListAdapter;->this$0:Lcom/android/email/activity/MailboxList;

    invoke-static {v11}, Lcom/android/email/activity/MailboxList;->access$100(Lcom/android/email/activity/MailboxList;)J

    move-result-wide v11

    long-to-int v11, v11

    if-lez v11, :cond_4

    .line 852
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

    .line 856
    .local v2, chipResId:I
    :goto_1
    invoke-virtual {v3, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 858
    const/4 v4, -0x1

    .line 859
    .local v4, count:I
    const/4 v11, 0x2

    move-object/from16 v0, p3

    move v1, v11

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 860
    if-eqz v9, :cond_2

    .line 861
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 863
    :cond_2
    const v11, 0x7f070041

    move-object/from16 v0, p1

    move v1, v11

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 865
    .local v5, countView:Landroid/widget/TextView;
    if-lez v4, :cond_5

    .line 866
    sget-object v11, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v7, v11}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 867
    const/4 v11, 0x0

    invoke-virtual {v5, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 868
    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 873
    :goto_2
    packed-switch v10, :pswitch_data_0

    .line 881
    const v11, 0x7f0200b4

    invoke-virtual {v5, v11}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 885
    :goto_3
    const/4 v11, 0x2

    const/4 v12, 0x0

    const/4 v13, 0x2

    const/4 v14, 0x0

    invoke-virtual {v5, v11, v12, v13, v14}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 887
    const v11, 0x7f070093

    move-object/from16 v0, p1

    move v1, v11

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    .line 888
    .local v6, folderIcon:Landroid/widget/ImageView;
    invoke-static/range {p2 .. p2}, Lcom/android/email/Utility$FolderProperties;->getInstance(Landroid/content/Context;)Lcom/android/email/Utility$FolderProperties;

    move-result-object v11

    invoke-virtual {v11, v10}, Lcom/android/email/Utility$FolderProperties;->getIconIds(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    invoke-virtual {v6, v11}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 890
    return-void

    .line 844
    .end local v2           #chipResId:I
    .end local v3           #chipView:Landroid/view/View;
    .end local v4           #count:I
    .end local v5           #countView:Landroid/widget/TextView;
    .end local v6           #folderIcon:Landroid/widget/ImageView;
    :cond_3
    const/16 v11, 0x8

    invoke-virtual {v8, v11}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 854
    .restart local v3       #chipView:Landroid/view/View;
    :cond_4
    invoke-static {}, Lcom/android/email/activity/MailboxList;->access$600()[I

    move-result-object v11

    const/4 v12, 0x0

    aget v2, v11, v12

    .restart local v2       #chipResId:I
    goto :goto_1

    .line 870
    .restart local v4       #count:I
    .restart local v5       #countView:Landroid/widget/TextView;
    :cond_5
    sget-object v11, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v7, v11}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 871
    const/16 v11, 0x8

    invoke-virtual {v5, v11}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 878
    :pswitch_0
    const v11, 0x7f0200b3

    invoke-virtual {v5, v11}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_3

    .line 873
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
    .line 894
    iget-object v0, p0, Lcom/android/email/activity/MailboxList$MailboxListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f030023

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
