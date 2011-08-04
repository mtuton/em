.class Lcom/android/email/activity/RecentList$RecentListAdapter;
.super Landroid/widget/SimpleCursorAdapter;
.source "RecentList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/RecentList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RecentListAdapter"
.end annotation


# instance fields
.field private mCheckStates:Landroid/util/SparseBooleanArray;

.field final synthetic this$0:Lcom/android/email/activity/RecentList;


# direct methods
.method public constructor <init>(Lcom/android/email/activity/RecentList;Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V
    .locals 6
    .parameter
    .parameter "context"
    .parameter "layout"
    .parameter "c"
    .parameter "from"
    .parameter "to"

    .prologue
    .line 370
    iput-object p1, p0, Lcom/android/email/activity/RecentList$RecentListAdapter;->this$0:Lcom/android/email/activity/RecentList;

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    .line 371
    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    .line 373
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-interface {p4}, Landroid/database/Cursor;->getCount()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/util/SparseBooleanArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/email/activity/RecentList$RecentListAdapter;->mCheckStates:Landroid/util/SparseBooleanArray;

    .line 374
    return-void
.end method


# virtual methods
.method public getCheckStates()Landroid/util/SparseBooleanArray;
    .locals 1

    .prologue
    .line 407
    iget-object v0, p0, Lcom/android/email/activity/RecentList$RecentListAdapter;->mCheckStates:Landroid/util/SparseBooleanArray;

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 379
    invoke-super {p0, p1, p2, p3}, Landroid/widget/SimpleCursorAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 380
    .local v1, v:Landroid/view/View;
    const v2, 0x7f07015f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 381
    .local v0, cb:Landroid/widget/CheckBox;
    iget-object v2, p0, Lcom/android/email/activity/RecentList$RecentListAdapter;->mCheckStates:Landroid/util/SparseBooleanArray;

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 394
    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 395
    iget-object v2, p0, Lcom/android/email/activity/RecentList$RecentListAdapter;->this$0:Lcom/android/email/activity/RecentList;

    invoke-static {v2}, Lcom/android/email/activity/RecentList;->access$000(Lcom/android/email/activity/RecentList;)Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->setEnabled(Z)V

    .line 399
    :cond_0
    return-object v1
.end method

.method public setChecked(IZ)V
    .locals 1
    .parameter "position"
    .parameter "isChecked"

    .prologue
    .line 402
    iget-object v0, p0, Lcom/android/email/activity/RecentList$RecentListAdapter;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 403
    invoke-virtual {p0}, Lcom/android/email/activity/RecentList$RecentListAdapter;->notifyDataSetChanged()V

    .line 404
    return-void
.end method
