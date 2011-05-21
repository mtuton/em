.class Lcom/android/email/activity/SearchActivity$1$1;
.super Landroid/widget/CursorAdapter;
.source "SearchActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/SearchActivity$1;->onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/email/activity/SearchActivity$1;


# direct methods
.method constructor <init>(Lcom/android/email/activity/SearchActivity$1;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 346
    iput-object p1, p0, Lcom/android/email/activity/SearchActivity$1$1;->this$1:Lcom/android/email/activity/SearchActivity$1;

    invoke-direct {p0, p2, p3}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 16
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 284
    const v14, 0x7f07010e

    move-object/from16 v0, p1

    move v1, v14

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object v0, v2

    check-cast v0, Landroid/widget/TextView;

    move-object v13, v0

    .line 285
    .local v13, titleView:Landroid/widget/TextView;
    const v14, 0x7f07007d

    move-object/from16 v0, p1

    move v1, v14

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object v0, v2

    check-cast v0, Landroid/widget/TextView;

    move-object v3, v0

    .line 286
    .local v3, dateView:Landroid/widget/TextView;
    const v14, 0x7f07010f

    move-object/from16 v0, p1

    move v1, v14

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/email/activity/SearchActivity$TextViewSnippet;

    move-object v0, v2

    check-cast v0, Lcom/android/email/activity/SearchActivity$TextViewSnippet;

    move-object v9, v0

    .line 288
    .local v9, snippetView:Lcom/android/email/activity/SearchActivity$TextViewSnippet;
    const/4 v14, 0x1

    move-object/from16 v0, p3

    move v1, v14

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 289
    const/4 v14, 0x3

    move-object/from16 v0, p3

    move v1, v14

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/SearchActivity$1$1;->this$1:Lcom/android/email/activity/SearchActivity$1;

    move-object v15, v0

    iget-object v15, v15, Lcom/android/email/activity/SearchActivity$1;->this$0:Lcom/android/email/activity/SearchActivity;

    invoke-static {v15}, Lcom/android/email/activity/SearchActivity;->access$000(Lcom/android/email/activity/SearchActivity;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v9, v14, v15}, Lcom/android/email/activity/SearchActivity$TextViewSnippet;->setText(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    const/4 v14, 0x2

    move-object/from16 v0, p3

    move v1, v14

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    .line 293
    .local v11, timestamp:J
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, v11, v12}, Ljava/util/Date;-><init>(J)V

    .line 294
    .local v2, date:Ljava/util/Date;
    const-string v10, ""

    .line 296
    .local v10, text:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/email/Utility;->isDateToday(Ljava/util/Date;)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 297
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/SearchActivity$1$1;->this$1:Lcom/android/email/activity/SearchActivity$1;

    move-object v14, v0

    iget-object v14, v14, Lcom/android/email/activity/SearchActivity$1;->this$0:Lcom/android/email/activity/SearchActivity;

    invoke-static {v14}, Lcom/android/email/activity/SearchActivity;->access$100(Lcom/android/email/activity/SearchActivity;)Ljava/text/DateFormat;

    move-result-object v14

    invoke-virtual {v14, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v10

    .line 301
    :goto_0
    invoke-virtual {v3, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 305
    const/4 v14, 0x4

    move-object/from16 v0, p3

    move v1, v14

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    if-eqz v14, :cond_1

    const/4 v14, 0x1

    move v4, v14

    .line 306
    .local v4, flagread:Z
    :goto_1
    if-eqz v4, :cond_2

    .line 307
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/SearchActivity$1$1;->this$1:Lcom/android/email/activity/SearchActivity$1;

    move-object v14, v0

    iget-object v14, v14, Lcom/android/email/activity/SearchActivity$1;->this$0:Lcom/android/email/activity/SearchActivity;

    invoke-static {v14}, Lcom/android/email/activity/SearchActivity;->access$300(Lcom/android/email/activity/SearchActivity;)Landroid/content/res/ColorStateList;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 308
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0200c3

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    move-object/from16 v0, p1

    move-object v1, v14

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 319
    :goto_2
    const/4 v14, 0x0

    move-object/from16 v0, p3

    move v1, v14

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 320
    .local v7, rowid:J
    const/16 v14, 0xc

    move-object/from16 v0, p3

    move v1, v14

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 323
    .local v5, mailboxKeyId:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/SearchActivity$1$1;->this$1:Lcom/android/email/activity/SearchActivity$1;

    move-object v14, v0

    iget-object v14, v14, Lcom/android/email/activity/SearchActivity$1;->val$listView:Landroid/widget/ListView;

    new-instance v15, Lcom/android/email/activity/SearchActivity$1$1$1;

    invoke-direct/range {v15 .. v16}, Lcom/android/email/activity/SearchActivity$1$1$1;-><init>(Lcom/android/email/activity/SearchActivity$1$1;)V

    invoke-virtual {v14, v15}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 343
    return-void

    .line 299
    .end local v4           #flagread:Z
    .end local v5           #mailboxKeyId:J
    .end local v7           #rowid:J
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/SearchActivity$1$1;->this$1:Lcom/android/email/activity/SearchActivity$1;

    move-object v14, v0

    iget-object v14, v14, Lcom/android/email/activity/SearchActivity$1;->this$0:Lcom/android/email/activity/SearchActivity;

    invoke-static {v14}, Lcom/android/email/activity/SearchActivity;->access$200(Lcom/android/email/activity/SearchActivity;)Ljava/text/DateFormat;

    move-result-object v14

    invoke-virtual {v14, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v10

    goto :goto_0

    .line 305
    :cond_1
    const/4 v14, 0x0

    move v4, v14

    goto :goto_1

    .line 311
    .restart local v4       #flagread:Z
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/SearchActivity$1$1;->this$1:Lcom/android/email/activity/SearchActivity$1;

    move-object v14, v0

    iget-object v14, v14, Lcom/android/email/activity/SearchActivity$1;->this$0:Lcom/android/email/activity/SearchActivity;

    invoke-static {v14}, Lcom/android/email/activity/SearchActivity;->access$300(Lcom/android/email/activity/SearchActivity;)Landroid/content/res/ColorStateList;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 312
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0200c5

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    move-object/from16 v0, p1

    move-object v1, v14

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    .line 347
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 348
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v2, 0x7f03003b

    const/4 v3, 0x0

    invoke-virtual {v0, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 349
    .local v1, v:Landroid/view/View;
    return-object v1
.end method
