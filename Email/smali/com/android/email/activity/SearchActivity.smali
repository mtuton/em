.class public Lcom/android/email/activity/SearchActivity;
.super Landroid/app/ListActivity;
.source "SearchActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/activity/SearchActivity$TextViewSnippet;
    }
.end annotation


# instance fields
.field private mDateFormat:Ljava/text/DateFormat;

.field private mDayFormat:Ljava/text/DateFormat;

.field private mMailboxId:J

.field mQueryHandler:Landroid/content/AsyncQueryHandler;

.field private mTextColorPrimary:Landroid/content/res/ColorStateList;

.field private mTextColorSecondary:Landroid/content/res/ColorStateList;

.field private mTimeFormat:Ljava/text/DateFormat;

.field private searchString:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 66
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 86
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/email/activity/SearchActivity;->searchString:Ljava/lang/String;

    .line 91
    return-void
.end method

.method static synthetic access$000(Lcom/android/email/activity/SearchActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/email/activity/SearchActivity;->searchString:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/email/activity/SearchActivity;)Ljava/text/DateFormat;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/email/activity/SearchActivity;->mTimeFormat:Ljava/text/DateFormat;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/email/activity/SearchActivity;)Ljava/text/DateFormat;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/email/activity/SearchActivity;->mDateFormat:Ljava/text/DateFormat;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/email/activity/SearchActivity;)Landroid/content/res/ColorStateList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/email/activity/SearchActivity;->mTextColorPrimary:Landroid/content/res/ColorStateList;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 24
    .parameter "icicle"

    .prologue
    .line 212
    invoke-super/range {p0 .. p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 213
    const v4, 0x7f030045

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/android/email/activity/SearchActivity;->setContentView(I)V

    .line 216
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/SearchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v17

    .line 217
    .local v17, queryIntent:Landroid/content/Intent;
    const-string v4, "app_data"

    move-object/from16 v0, v17

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v12

    .line 218
    .local v12, appData:Landroid/os/Bundle;
    if-eqz v12, :cond_0

    .line 219
    const-string v4, "com.android.email.activity.MAILBOX_ID"

    invoke-virtual {v12, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    move-wide v0, v4

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/email/activity/SearchActivity;->mMailboxId:J

    .line 223
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/SearchActivity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v23

    .line 224
    .local v23, theme:Landroid/content/res/Resources$Theme;
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/SearchActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    .line 226
    .local v18, resources:Landroid/content/res/Resources;
    const/4 v4, 0x1

    new-array v4, v4, [I

    const/4 v5, 0x0

    const v6, 0x1010036

    aput v6, v4, v5

    move-object/from16 v0, v23

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v13

    .line 227
    .local v13, array:Landroid/content/res/TypedArray;
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v13, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    move-object/from16 v0, v18

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/email/activity/SearchActivity;->mTextColorPrimary:Landroid/content/res/ColorStateList;

    .line 228
    const/4 v4, 0x1

    new-array v4, v4, [I

    const/4 v5, 0x0

    const v6, 0x1010038

    aput v6, v4, v5

    move-object/from16 v0, v23

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v13

    .line 229
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v13, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    move-object/from16 v0, v18

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/email/activity/SearchActivity;->mTextColorSecondary:Landroid/content/res/ColorStateList;

    .line 233
    invoke-static/range {p0 .. p0}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/email/activity/SearchActivity;->mDateFormat:Ljava/text/DateFormat;

    .line 234
    invoke-static/range {p0 .. p0}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/email/activity/SearchActivity;->mDayFormat:Ljava/text/DateFormat;

    .line 235
    invoke-static/range {p0 .. p0}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/email/activity/SearchActivity;->mTimeFormat:Ljava/text/DateFormat;

    .line 238
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/SearchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "query"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v21

    .line 239
    .local v21, searchStringParameter:Ljava/lang/String;
    if-eqz v21, :cond_1

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    :goto_0
    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/email/activity/SearchActivity;->searchString:Ljava/lang/String;

    .line 242
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/SearchActivity;->searchString:Ljava/lang/String;

    move-object v4, v0

    invoke-static {v4}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 243
    .local v20, searchStringEsc:Ljava/lang/String;
    const-string v4, "\'"

    move-object/from16 v0, v20

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v22

    .line 244
    .local v22, startIndex:I
    const-string v4, "\'"

    move-object/from16 v0, v20

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v15

    .line 245
    .local v15, endIndex:I
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x3

    move-object/from16 v0, v19

    move v1, v4

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 246
    .local v19, sb:Ljava/lang/StringBuilder;
    const-string v4, "\'%"

    move-object/from16 v0, v19

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    add-int/lit8 v4, v22, 0x1

    move-object/from16 v0, v20

    move v1, v4

    move v2, v15

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v19

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    const-string v4, "%\'"

    move-object/from16 v0, v19

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 251
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/SearchActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    .line 253
    .local v14, cr:Landroid/content/ContentResolver;
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/SearchActivity;->getListView()Landroid/widget/ListView;

    move-result-object v16

    .line 255
    .local v16, listView:Landroid/widget/ListView;
    const/4 v4, 0x1

    move-object/from16 v0, v16

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 256
    const/4 v4, 0x1

    move-object/from16 v0, v16

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setFocusable(Z)V

    .line 257
    const/4 v4, 0x1

    move-object/from16 v0, v16

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setClickable(Z)V

    .line 259
    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 265
    const-string v4, ""

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-virtual {v0, v1}, Lcom/android/email/activity/SearchActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 268
    new-instance v4, Lcom/android/email/activity/SearchActivity$1;

    move-object v0, v4

    move-object/from16 v1, p0

    move-object v2, v14

    move-object/from16 v3, v16

    invoke-direct {v0, v1, v2, v3}, Lcom/android/email/activity/SearchActivity$1;-><init>(Lcom/android/email/activity/SearchActivity;Landroid/content/ContentResolver;Landroid/widget/ListView;)V

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/email/activity/SearchActivity;->mQueryHandler:Landroid/content/AsyncQueryHandler;

    .line 369
    sget-object v7, Lcom/android/email/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    .line 372
    .local v7, uriContent:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/SearchActivity;->mQueryHandler:Landroid/content/AsyncQueryHandler;

    move-object v4, v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    sget-object v8, Lcom/android/email/provider/EmailContent$Message;->CONTENT_PROJECTION:[Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mailboxKey=\'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/email/activity/SearchActivity;->mMailboxId:J

    move-wide v10, v0

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\' and (subject like "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v0, v9

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " or displayName like "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v0, v9

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    const-string v11, "timeStamp DESC"

    invoke-virtual/range {v4 .. v11}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    return-void

    .end local v7           #uriContent:Landroid/net/Uri;
    .end local v14           #cr:Landroid/content/ContentResolver;
    .end local v15           #endIndex:I
    .end local v16           #listView:Landroid/widget/ListView;
    .end local v19           #sb:Ljava/lang/StringBuilder;
    .end local v20           #searchStringEsc:Ljava/lang/String;
    .end local v22           #startIndex:I
    :cond_1
    move-object/from16 v4, v21

    .line 239
    goto/16 :goto_0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 395
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    return-void
.end method

.method protected onResume()V
    .locals 6

    .prologue
    .line 382
    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V

    .line 384
    iget-object v1, p0, Lcom/android/email/activity/SearchActivity;->searchString:Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/email/activity/SearchActivity;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 385
    invoke-virtual {p0}, Lcom/android/email/activity/SearchActivity;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    .line 386
    .local v0, cursorCount:I
    invoke-virtual {p0}, Lcom/android/email/activity/SearchActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0002

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/android/email/activity/SearchActivity;->searchString:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/email/activity/SearchActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 392
    .end local v0           #cursorCount:I
    :cond_0
    return-void
.end method
