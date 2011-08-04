.class Lcom/android/email/activity/RecentList$3;
.super Ljava/lang/Object;
.source "RecentList.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/RecentList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/RecentList;


# direct methods
.method constructor <init>(Lcom/android/email/activity/RecentList;)V
    .locals 0
    .parameter

    .prologue
    .line 320
    iput-object p1, p0, Lcom/android/email/activity/RecentList$3;->this$0:Lcom/android/email/activity/RecentList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9
    .parameter "v"

    .prologue
    .line 324
    iget-object v7, p0, Lcom/android/email/activity/RecentList$3;->this$0:Lcom/android/email/activity/RecentList;

    invoke-virtual {v7}, Lcom/android/email/activity/RecentList;->getIntent()Landroid/content/Intent;

    move-result-object v4

    .line 326
    .local v4, intent:Landroid/content/Intent;
    iget-object v7, p0, Lcom/android/email/activity/RecentList$3;->this$0:Lcom/android/email/activity/RecentList;

    invoke-virtual {v7}, Lcom/android/email/activity/RecentList;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v7

    check-cast v7, Lcom/android/email/activity/RecentList$RecentListAdapter;

    invoke-virtual {v7}, Lcom/android/email/activity/RecentList$RecentListAdapter;->getCheckStates()Landroid/util/SparseBooleanArray;

    move-result-object v6

    .line 327
    .local v6, sba:Landroid/util/SparseBooleanArray;
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 329
    .local v1, checkedAddress:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-virtual {v6}, Landroid/util/SparseBooleanArray;->size()I

    move-result v7

    if-ge v2, v7, :cond_1

    .line 330
    invoke-virtual {v6, v2}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_0

    .line 331
    iget-object v7, p0, Lcom/android/email/activity/RecentList$3;->this$0:Lcom/android/email/activity/RecentList;

    invoke-virtual {v7}, Lcom/android/email/activity/RecentList;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v7

    invoke-virtual {v6, v2}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v8

    invoke-interface {v7, v8}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 332
    .local v0, c:Landroid/database/Cursor;
    const-string v7, "email"

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 329
    .end local v0           #c:Landroid/database/Cursor;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 335
    :cond_1
    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 338
    .local v3, i:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    new-instance v5, Ljava/lang/StringBuffer;

    const-string v7, ""

    invoke-direct {v5, v7}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 339
    .local v5, recents:Ljava/lang/StringBuffer;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 340
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 342
    :cond_2
    const-string v7, "recents"

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 343
    iget-object v7, p0, Lcom/android/email/activity/RecentList$3;->this$0:Lcom/android/email/activity/RecentList;

    const/4 v8, -0x1

    invoke-virtual {v7, v8, v4}, Lcom/android/email/activity/RecentList;->setResult(ILandroid/content/Intent;)V

    .line 344
    iget-object v7, p0, Lcom/android/email/activity/RecentList$3;->this$0:Lcom/android/email/activity/RecentList;

    invoke-virtual {v7}, Lcom/android/email/activity/RecentList;->finish()V

    .line 345
    return-void
.end method
