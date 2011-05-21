.class Lcom/android/email/activity/SearchActivity$1;
.super Landroid/content/AsyncQueryHandler;
.source "SearchActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/SearchActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/SearchActivity;

.field final synthetic val$listView:Landroid/widget/ListView;


# direct methods
.method constructor <init>(Lcom/android/email/activity/SearchActivity;Landroid/content/ContentResolver;Landroid/widget/ListView;)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter

    .prologue
    .line 262
    iput-object p1, p0, Lcom/android/email/activity/SearchActivity$1;->this$0:Lcom/android/email/activity/SearchActivity;

    iput-object p3, p0, Lcom/android/email/activity/SearchActivity$1;->val$listView:Landroid/widget/ListView;

    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 8
    .parameter "token"
    .parameter "cookie"
    .parameter "c"

    .prologue
    const/4 v7, 0x1

    .line 271
    const/4 v0, 0x0

    .line 272
    .local v0, cursorCount:I
    if-eqz p3, :cond_0

    .line 273
    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 275
    :cond_0
    iget-object v1, p0, Lcom/android/email/activity/SearchActivity$1;->this$0:Lcom/android/email/activity/SearchActivity;

    iget-object v2, p0, Lcom/android/email/activity/SearchActivity$1;->this$0:Lcom/android/email/activity/SearchActivity;

    invoke-virtual {v2}, Lcom/android/email/activity/SearchActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0002

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    iget-object v5, p0, Lcom/android/email/activity/SearchActivity$1;->this$0:Lcom/android/email/activity/SearchActivity;

    invoke-static {v5}, Lcom/android/email/activity/SearchActivity;->access$000(Lcom/android/email/activity/SearchActivity;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-virtual {v2, v3, v0, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/email/activity/SearchActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 281
    iget-object v1, p0, Lcom/android/email/activity/SearchActivity$1;->this$0:Lcom/android/email/activity/SearchActivity;

    new-instance v2, Lcom/android/email/activity/SearchActivity$1$1;

    iget-object v3, p0, Lcom/android/email/activity/SearchActivity$1;->this$0:Lcom/android/email/activity/SearchActivity;

    invoke-direct {v2, p0, v3, p3}, Lcom/android/email/activity/SearchActivity$1$1;-><init>(Lcom/android/email/activity/SearchActivity$1;Landroid/content/Context;Landroid/database/Cursor;)V

    invoke-virtual {v1, v2}, Lcom/android/email/activity/SearchActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 356
    iget-object v1, p0, Lcom/android/email/activity/SearchActivity$1;->val$listView:Landroid/widget/ListView;

    invoke-virtual {v1, v7}, Landroid/widget/ListView;->setFocusable(Z)V

    .line 357
    iget-object v1, p0, Lcom/android/email/activity/SearchActivity$1;->val$listView:Landroid/widget/ListView;

    invoke-virtual {v1, v7}, Landroid/widget/ListView;->setFocusableInTouchMode(Z)V

    .line 358
    iget-object v1, p0, Lcom/android/email/activity/SearchActivity$1;->val$listView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->requestFocus()Z

    .line 359
    return-void
.end method
