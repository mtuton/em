.class Lcom/android/email/activity/AccountFolderList$LoadAccountsTask;
.super Landroid/os/AsyncTask;
.source "AccountFolderList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/AccountFolderList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadAccountsTask"
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
.field final synthetic this$0:Lcom/android/email/activity/AccountFolderList;


# direct methods
.method private constructor <init>(Lcom/android/email/activity/AccountFolderList;)V
    .locals 0
    .parameter

    .prologue
    .line 612
    iput-object p1, p0, Lcom/android/email/activity/AccountFolderList$LoadAccountsTask;->this$0:Lcom/android/email/activity/AccountFolderList;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/email/activity/AccountFolderList;Lcom/android/email/activity/AccountFolderList$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 612
    invoke-direct {p0, p1}, Lcom/android/email/activity/AccountFolderList$LoadAccountsTask;-><init>(Lcom/android/email/activity/AccountFolderList;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 612
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/activity/AccountFolderList$LoadAccountsTask;->doInBackground([Ljava/lang/Void;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)[Ljava/lang/Object;
    .locals 10
    .parameter "params"

    .prologue
    const/4 v3, 0x0

    .line 617
    iget-object v0, p0, Lcom/android/email/activity/AccountFolderList$LoadAccountsTask;->this$0:Lcom/android/email/activity/AccountFolderList;

    invoke-static {v0}, Lcom/android/email/activity/AccountFolderList;->access$300(Lcom/android/email/activity/AccountFolderList;)Landroid/database/MatrixCursor;

    move-result-object v6

    .line 620
    .local v6, c1:Landroid/database/Cursor;
    iget-object v0, p0, Lcom/android/email/activity/AccountFolderList$LoadAccountsTask;->this$0:Lcom/android/email/activity/AccountFolderList;

    sget-object v1, Lcom/android/email/provider/EmailContent$Account;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/email/provider/EmailContent$Account;->CONTENT_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/android/email/activity/AccountFolderList;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 624
    .local v7, c2:Landroid/database/Cursor;
    iget-object v0, p0, Lcom/android/email/activity/AccountFolderList$LoadAccountsTask;->this$0:Lcom/android/email/activity/AccountFolderList;

    invoke-static {v0}, Lcom/android/email/provider/EmailContent$Account;->getDefaultAccountId(Landroid/content/Context;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    .line 627
    .local v9, defaultAccount:Ljava/lang/Long;
    iget-object v0, p0, Lcom/android/email/activity/AccountFolderList$LoadAccountsTask;->this$0:Lcom/android/email/activity/AccountFolderList;

    invoke-static {v0}, Lcom/android/email/activity/AccountFolderList;->access$400(Lcom/android/email/activity/AccountFolderList;)Landroid/database/MatrixCursor;

    move-result-object v8

    .line 628
    .local v8, c3:Landroid/database/Cursor;
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object v6, v0, v1

    const/4 v1, 0x1

    aput-object v7, v0, v1

    const/4 v1, 0x2

    aput-object v9, v0, v1

    const/4 v1, 0x3

    aput-object v8, v0, v1

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 612
    check-cast p1, [Ljava/lang/Object;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/activity/AccountFolderList$LoadAccountsTask;->onPostExecute([Ljava/lang/Object;)V

    return-void
.end method

.method protected onPostExecute([Ljava/lang/Object;)V
    .locals 8
    .parameter "params"

    .prologue
    const/4 v1, 0x1

    .line 633
    invoke-virtual {p0}, Lcom/android/email/activity/AccountFolderList$LoadAccountsTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    aget-object v0, p1, v1

    check-cast v0, Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 647
    :cond_0
    :goto_0
    return-void

    .line 638
    :cond_1
    iget-object v0, p0, Lcom/android/email/activity/AccountFolderList$LoadAccountsTask;->this$0:Lcom/android/email/activity/AccountFolderList;

    invoke-static {v0}, Lcom/android/email/activity/AccountFolderList;->access$500(Lcom/android/email/activity/AccountFolderList;)Lcom/android/email/winset/EmailListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/email/winset/EmailListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v6

    .line 639
    .local v6, oldAdapter:Landroid/widget/ListAdapter;
    if-eqz v6, :cond_2

    instance-of v0, v6, Landroid/widget/CursorAdapter;

    if-eqz v0, :cond_2

    .line 640
    check-cast v6, Landroid/widget/CursorAdapter;

    .end local v6           #oldAdapter:Landroid/widget/ListAdapter;
    const/4 v0, 0x0

    invoke-virtual {v6, v0}, Landroid/widget/CursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 644
    :cond_2
    iget-object v7, p0, Lcom/android/email/activity/AccountFolderList$LoadAccountsTask;->this$0:Lcom/android/email/activity/AccountFolderList;

    const/4 v0, 0x0

    aget-object v0, p1, v0

    check-cast v0, Landroid/database/Cursor;

    aget-object v1, p1, v1

    check-cast v1, Landroid/database/Cursor;

    const/4 v2, 0x3

    aget-object v2, p1, v2

    check-cast v2, Landroid/database/Cursor;

    iget-object v3, p0, Lcom/android/email/activity/AccountFolderList$LoadAccountsTask;->this$0:Lcom/android/email/activity/AccountFolderList;

    const/4 v4, 0x2

    aget-object v4, p1, v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static/range {v0 .. v5}, Lcom/android/email/activity/AccountFolderList$AccountsAdapter;->getInstance(Landroid/database/Cursor;Landroid/database/Cursor;Landroid/database/Cursor;Landroid/content/Context;J)Lcom/android/email/activity/AccountFolderList$AccountsAdapter;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/android/email/activity/AccountFolderList;->access$602(Lcom/android/email/activity/AccountFolderList;Lcom/android/email/activity/AccountFolderList$AccountsAdapter;)Lcom/android/email/activity/AccountFolderList$AccountsAdapter;

    .line 646
    iget-object v0, p0, Lcom/android/email/activity/AccountFolderList$LoadAccountsTask;->this$0:Lcom/android/email/activity/AccountFolderList;

    invoke-static {v0}, Lcom/android/email/activity/AccountFolderList;->access$500(Lcom/android/email/activity/AccountFolderList;)Lcom/android/email/winset/EmailListView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/activity/AccountFolderList$LoadAccountsTask;->this$0:Lcom/android/email/activity/AccountFolderList;

    invoke-static {v1}, Lcom/android/email/activity/AccountFolderList;->access$600(Lcom/android/email/activity/AccountFolderList;)Lcom/android/email/activity/AccountFolderList$AccountsAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/email/winset/EmailListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0
.end method
