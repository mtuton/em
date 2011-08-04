.class Lcom/android/email/activity/MessageCompose$1;
.super Ljava/lang/Object;
.source "MessageCompose.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/MessageCompose;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/MessageCompose;


# direct methods
.method constructor <init>(Lcom/android/email/activity/MessageCompose;)V
    .locals 0
    .parameter

    .prologue
    .line 891
    iput-object p1, p0, Lcom/android/email/activity/MessageCompose$1;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 10
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"

    .prologue
    const/4 v5, 0x0

    const/4 v9, 0x1

    .line 893
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$1;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageCompose;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/email/provider/EmailContent$Account;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/email/provider/EmailContent$Account;->CONTENT_PROJECTION:[Ljava/lang/String;

    const-string v3, "emailAddress=?"

    new-array v4, v9, [Ljava/lang/String;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/android/email/activity/MessageCompose$1;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-static {v8}, Lcom/android/email/activity/MessageCompose;->access$600(Lcom/android/email/activity/MessageCompose;)Landroid/widget/Spinner;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v7

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 898
    .local v6, cur:Landroid/database/Cursor;
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$1;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-static {v0, v9}, Lcom/android/email/activity/MessageCompose;->access$702(Lcom/android/email/activity/MessageCompose;I)I

    .line 899
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$1;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-static {v0}, Lcom/android/email/activity/MessageCompose;->access$800(Lcom/android/email/activity/MessageCompose;)Landroid/widget/EditText;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 900
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$1;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-static {v0}, Lcom/android/email/activity/MessageCompose;->access$800(Lcom/android/email/activity/MessageCompose;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, v5, v5, v5, v5}, Landroid/widget/EditText;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 903
    :cond_0
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 904
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$1;->this$0:Lcom/android/email/activity/MessageCompose;

    new-instance v1, Lcom/android/email/provider/EmailContent$Account;

    invoke-direct {v1}, Lcom/android/email/provider/EmailContent$Account;-><init>()V

    invoke-virtual {v1, v6}, Lcom/android/email/provider/EmailContent$Account;->restore(Landroid/database/Cursor;)Lcom/android/email/provider/EmailContent$Account;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/email/activity/MessageCompose;->access$902(Lcom/android/email/activity/MessageCompose;Lcom/android/email/provider/EmailContent$Account;)Lcom/android/email/provider/EmailContent$Account;

    .line 905
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$1;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-static {v0}, Lcom/android/email/activity/MessageCompose;->access$1000(Lcom/android/email/activity/MessageCompose;)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose$1;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-static {v1}, Lcom/android/email/activity/MessageCompose;->access$600(Lcom/android/email/activity/MessageCompose;)Landroid/widget/Spinner;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 906
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$1;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-static {v0}, Lcom/android/email/activity/MessageCompose;->access$1000(Lcom/android/email/activity/MessageCompose;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Button;->invalidate()V

    .line 910
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$1;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-static {v0}, Lcom/android/email/activity/MessageCompose;->access$1100(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/provider/EmailContent$Message;

    move-result-object v0

    iget-wide v0, v0, Lcom/android/email/provider/EmailContent$Message;->mId:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$1;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-static {v0}, Lcom/android/email/activity/MessageCompose;->access$1100(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/provider/EmailContent$Message;

    move-result-object v0

    iget-wide v0, v0, Lcom/android/email/provider/EmailContent$Message;->mAccountKey:J

    iget-object v2, p0, Lcom/android/email/activity/MessageCompose$1;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-static {v2}, Lcom/android/email/activity/MessageCompose;->access$900(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/provider/EmailContent$Account;

    move-result-object v2

    iget-wide v2, v2, Lcom/android/email/provider/EmailContent$Account;->mId:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 912
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$1;->this$0:Lcom/android/email/activity/MessageCompose;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/email/activity/MessageCompose;->access$1202(Lcom/android/email/activity/MessageCompose;Z)Z

    .line 914
    :cond_1
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$1;->this$0:Lcom/android/email/activity/MessageCompose;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/email/activity/MessageCompose;->access$1302(Lcom/android/email/activity/MessageCompose;Z)Z

    .line 916
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$1;->this$0:Lcom/android/email/activity/MessageCompose;

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose$1;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-static {v1}, Lcom/android/email/activity/MessageCompose;->access$900(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/provider/EmailContent$Account;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageCompose;->showHideGalButton(Lcom/android/email/provider/EmailContent$Account;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 924
    :goto_0
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-eq v0, v9, :cond_2

    .line 926
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 929
    :cond_2
    return-void

    .line 920
    :cond_3
    :try_start_1
    const-string v0, "Compose >>"

    const-string v1, "Exception on setOnItemSelectedListener"

    invoke-static {v0, v1}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 924
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_4

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-eq v1, v9, :cond_4

    .line 926
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 932
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    return-void
.end method
