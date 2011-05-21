.class public Lcom/android/email/activity/RecentList;
.super Landroid/app/ListActivity;
.source "RecentList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/activity/RecentList$RecentListAdapter;,
        Lcom/android/email/activity/RecentList$OutputProjection;,
        Lcom/android/email/activity/RecentList$LogProjection;
    }
.end annotation


# static fields
.field private static final MAX_RECENT_SENT_EMAIL_ADDRESS_COUNT:I = 0x1e


# instance fields
.field private selectButtonListener:Landroid/view/View$OnClickListener;

.field private selectTwSoftkeyItem:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 321
    new-instance v0, Lcom/android/email/activity/RecentList$3;

    invoke-direct {v0, p0}, Lcom/android/email/activity/RecentList$3;-><init>(Lcom/android/email/activity/RecentList;)V

    iput-object v0, p0, Lcom/android/email/activity/RecentList;->selectButtonListener:Landroid/view/View$OnClickListener;

    .line 367
    return-void
.end method

.method static synthetic access$000(Lcom/android/email/activity/RecentList;)Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/email/activity/RecentList;->selectTwSoftkeyItem:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 21
    .parameter "savedInstanceState"

    .prologue
    .line 70
    invoke-super/range {p0 .. p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 72
    const v3, 0x7f030034

    move-object/from16 v0, p0

    move v1, v3

    invoke-virtual {v0, v1}, Lcom/android/email/activity/RecentList;->setContentView(I)V

    .line 76
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/RecentList;->getListView()Landroid/widget/ListView;

    move-result-object v19

    .line 78
    .local v19, listView:Landroid/widget/ListView;
    const/4 v3, 0x0

    move-object/from16 v0, v19

    move v1, v3

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 79
    const/4 v3, 0x2

    move-object/from16 v0, v19

    move v1, v3

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 86
    const v3, 0x7f070109

    move-object/from16 v0, p0

    move v1, v3

    invoke-virtual {v0, v1}, Lcom/android/email/activity/RecentList;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .end local p1
    check-cast p1, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/email/activity/RecentList;->selectTwSoftkeyItem:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    .line 87
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/RecentList;->selectTwSoftkeyItem:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/RecentList;->selectButtonListener:Landroid/view/View$OnClickListener;

    move-object v4, v0

    invoke-virtual {v3, v4}, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/RecentList;->selectTwSoftkeyItem:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    move-object v3, v0

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->setEnabled(Z)V

    .line 92
    const v3, 0x7f070022

    move-object/from16 v0, p0

    move v1, v3

    invoke-virtual {v0, v1}, Lcom/android/email/activity/RecentList;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    .line 93
    .local v10, cancelTwSoftkeyItem:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;
    new-instance v3, Lcom/android/email/activity/RecentList$1;

    move-object v0, v3

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/email/activity/RecentList$1;-><init>(Lcom/android/email/activity/RecentList;)V

    invoke-virtual {v10, v3}, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 113
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/RecentList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "content://logs/historys"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "_id"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "number"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string v6, "contactid"

    aput-object v6, v4, v5

    const-string v5, "type=2 AND logtype=400"

    const/4 v6, 0x0

    const-string v7, "_id DESC"

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v20

    .line 182
    .local v20, logCursor:Landroid/database/Cursor;
    new-instance v6, Landroid/database/MatrixCursor;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "email"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string v5, "contactId"

    aput-object v5, v3, v4

    const/16 v4, 0x1e

    invoke-direct {v6, v3, v4}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    .line 193
    .local v6, outputCursor:Landroid/database/MatrixCursor;
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->moveToFirst()Z

    .line 194
    const/16 v17, 0x1

    .line 197
    .local v17, i:I
    new-instance v15, Ljava/util/HashSet;

    invoke-direct {v15}, Ljava/util/HashSet;-><init>()V

    .line 200
    .local v15, emailHashSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    :goto_0
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v3

    if-nez v3, :cond_1

    .line 202
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, v3

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 203
    .local v18, id:Ljava/lang/String;
    const-string v3, "number"

    move-object/from16 v0, v20

    move-object v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v20

    move v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 205
    .local v14, email:Ljava/lang/String;
    const-string v3, "contactid"

    move-object/from16 v0, v20

    move-object v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v20

    move v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    .line 219
    .local v11, contactId:J
    invoke-virtual {v15, v14}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 220
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 293
    .end local v6           #outputCursor:Landroid/database/MatrixCursor;
    .end local v11           #contactId:J
    .end local v14           #email:Ljava/lang/String;
    .end local v15           #emailHashSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v17           #i:I
    .end local v18           #id:Ljava/lang/String;
    .end local v20           #logCursor:Landroid/database/Cursor;
    :catch_0
    move-exception v3

    move-object v13, v3

    .line 294
    .local v13, e:Ljava/lang/Exception;
    new-instance v9, Landroid/app/AlertDialog$Builder;

    move-object v0, v9

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 295
    .local v9, builder:Landroid/app/AlertDialog$Builder;
    const-string v3, "Connection problem is occured"

    invoke-virtual {v9, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const-string v4, "These things happen."

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const-string v4, "Yes"

    new-instance v5, Lcom/android/email/activity/RecentList$2;

    move-object v0, v5

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/email/activity/RecentList$2;-><init>(Lcom/android/email/activity/RecentList;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 304
    invoke-virtual {v9}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 309
    .end local v9           #builder:Landroid/app/AlertDialog$Builder;
    .end local v13           #e:Ljava/lang/Exception;
    :goto_1
    return-void

    .line 223
    .restart local v6       #outputCursor:Landroid/database/MatrixCursor;
    .restart local v11       #contactId:J
    .restart local v14       #email:Ljava/lang/String;
    .restart local v15       #emailHashSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v17       #i:I
    .restart local v18       #id:Ljava/lang/String;
    .restart local v20       #logCursor:Landroid/database/Cursor;
    :cond_0
    :try_start_1
    invoke-virtual {v15, v14}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 226
    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v18, v3, v4

    const/4 v4, 0x1

    aput-object v14, v3, v4

    const/4 v4, 0x2

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v6, v3}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 233
    add-int/lit8 v17, v17, 0x1

    .line 235
    invoke-virtual {v6}, Landroid/database/MatrixCursor;->getCount()I

    move-result v3

    const/16 v4, 0x1e

    if-lt v3, v4, :cond_3

    .line 244
    .end local v11           #contactId:J
    .end local v14           #email:Ljava/lang/String;
    .end local v18           #id:Ljava/lang/String;
    :cond_1
    invoke-virtual {v6}, Landroid/database/MatrixCursor;->getCount()I

    move-result v3

    if-lez v3, :cond_2

    .line 245
    const v3, 0x7f07003d

    move-object/from16 v0, p0

    move v1, v3

    invoke-virtual {v0, v1}, Lcom/android/email/activity/RecentList;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/LinearLayout;

    .line 246
    .local v16, emptyView:Landroid/widget/LinearLayout;
    const/16 v3, 0x8

    move-object/from16 v0, v16

    move v1, v3

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 247
    const/4 v3, 0x0

    move-object/from16 v0, v19

    move v1, v3

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 278
    .end local v16           #emptyView:Landroid/widget/LinearLayout;
    :cond_2
    new-instance v2, Lcom/android/email/activity/RecentList$RecentListAdapter;

    const v5, 0x7f030035

    const/4 v3, 0x1

    new-array v7, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "email"

    aput-object v4, v7, v3

    const/4 v3, 0x1

    new-array v8, v3, [I

    const/4 v3, 0x0

    const v4, 0x7f07010a

    aput v4, v8, v3

    move-object/from16 v3, p0

    move-object/from16 v4, p0

    invoke-direct/range {v2 .. v8}, Lcom/android/email/activity/RecentList$RecentListAdapter;-><init>(Lcom/android/email/activity/RecentList;Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    .line 291
    .local v2, adapter:Landroid/widget/ListAdapter;
    move-object/from16 v0, p0

    move-object v1, v2

    invoke-virtual {v0, v1}, Lcom/android/email/activity/RecentList;->setListAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_1

    .line 239
    .end local v2           #adapter:Landroid/widget/ListAdapter;
    .restart local v11       #contactId:J
    .restart local v14       #email:Ljava/lang/String;
    .restart local v18       #id:Ljava/lang/String;
    :cond_3
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 2
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 353
    invoke-super/range {p0 .. p5}, Landroid/app/ListActivity;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V

    .line 359
    invoke-virtual {p0}, Lcom/android/email/activity/RecentList;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/RecentList$RecentListAdapter;

    invoke-virtual {p1, p3}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v1

    invoke-virtual {v0, p3, v1}, Lcom/android/email/activity/RecentList$RecentListAdapter;->setChecked(IZ)V

    .line 364
    iget-object v0, p0, Lcom/android/email/activity/RecentList;->selectTwSoftkeyItem:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->setEnabled(Z)V

    .line 366
    return-void
.end method
