.class Lcom/android/email/activity/MessageList$3;
.super Ljava/lang/Object;
.source "MessageList.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/MessageList;->onListbySearch()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/MessageList;


# direct methods
.method constructor <init>(Lcom/android/email/activity/MessageList;)V
    .locals 0
    .parameter

    .prologue
    .line 1195
    iput-object p1, p0, Lcom/android/email/activity/MessageList$3;->this$0:Lcom/android/email/activity/MessageList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x3

    const/4 v2, 0x1

    .line 1198
    packed-switch p2, :pswitch_data_0

    .line 1230
    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 1231
    return-void

    .line 1201
    :pswitch_0
    iget-object v0, p0, Lcom/android/email/activity/MessageList$3;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v0}, Lcom/android/email/activity/MessageList;->access$700(Lcom/android/email/activity/MessageList;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/activity/MessageList$3;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v1}, Lcom/android/email/activity/MessageList;->access$600(Lcom/android/email/activity/MessageList;)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1202
    invoke-static {v4}, Lcom/android/email/activity/MessageList;->access$802(I)I

    .line 1203
    iget-object v0, p0, Lcom/android/email/activity/MessageList$3;->this$0:Lcom/android/email/activity/MessageList;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageList;->onResultSearchRequested()Z

    goto :goto_0

    .line 1206
    :pswitch_1
    iget-object v0, p0, Lcom/android/email/activity/MessageList$3;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v0}, Lcom/android/email/activity/MessageList;->access$900(Lcom/android/email/activity/MessageList;)Lcom/android/email/provider/EmailContent$Mailbox;

    move-result-object v0

    iget v0, v0, Lcom/android/email/provider/EmailContent$Mailbox;->mType:I

    if-nez v0, :cond_0

    .line 1208
    iget-object v0, p0, Lcom/android/email/activity/MessageList$3;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v0}, Lcom/android/email/activity/MessageList;->access$700(Lcom/android/email/activity/MessageList;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/activity/MessageList$3;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v1}, Lcom/android/email/activity/MessageList;->access$600(Lcom/android/email/activity/MessageList;)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1209
    invoke-static {v2}, Lcom/android/email/activity/MessageList;->access$802(I)I

    .line 1222
    :goto_1
    iget-object v0, p0, Lcom/android/email/activity/MessageList$3;->this$0:Lcom/android/email/activity/MessageList;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageList;->onResultSearchRequested()Z

    goto :goto_0

    .line 1211
    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/MessageList$3;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v0}, Lcom/android/email/activity/MessageList;->access$900(Lcom/android/email/activity/MessageList;)Lcom/android/email/provider/EmailContent$Mailbox;

    move-result-object v0

    iget v0, v0, Lcom/android/email/provider/EmailContent$Mailbox;->mType:I

    if-eq v0, v3, :cond_1

    iget-object v0, p0, Lcom/android/email/activity/MessageList$3;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v0}, Lcom/android/email/activity/MessageList;->access$900(Lcom/android/email/activity/MessageList;)Lcom/android/email/provider/EmailContent$Mailbox;

    move-result-object v0

    iget v0, v0, Lcom/android/email/provider/EmailContent$Mailbox;->mType:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/email/activity/MessageList$3;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v0}, Lcom/android/email/activity/MessageList;->access$900(Lcom/android/email/activity/MessageList;)Lcom/android/email/provider/EmailContent$Mailbox;

    move-result-object v0

    iget v0, v0, Lcom/android/email/provider/EmailContent$Mailbox;->mType:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_2

    .line 1214
    :cond_1
    iget-object v0, p0, Lcom/android/email/activity/MessageList$3;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v0}, Lcom/android/email/activity/MessageList;->access$700(Lcom/android/email/activity/MessageList;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/activity/MessageList$3;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v1}, Lcom/android/email/activity/MessageList;->access$600(Lcom/android/email/activity/MessageList;)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1215
    invoke-static {v3}, Lcom/android/email/activity/MessageList;->access$802(I)I

    goto :goto_1

    .line 1219
    :cond_2
    iget-object v0, p0, Lcom/android/email/activity/MessageList$3;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v0}, Lcom/android/email/activity/MessageList;->access$700(Lcom/android/email/activity/MessageList;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/activity/MessageList$3;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v1}, Lcom/android/email/activity/MessageList;->access$600(Lcom/android/email/activity/MessageList;)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1220
    invoke-static {v2}, Lcom/android/email/activity/MessageList;->access$802(I)I

    goto :goto_1

    .line 1225
    :pswitch_2
    iget-object v0, p0, Lcom/android/email/activity/MessageList$3;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v0}, Lcom/android/email/activity/MessageList;->access$700(Lcom/android/email/activity/MessageList;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/activity/MessageList$3;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v1}, Lcom/android/email/activity/MessageList;->access$600(Lcom/android/email/activity/MessageList;)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v5

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1226
    invoke-static {v5}, Lcom/android/email/activity/MessageList;->access$802(I)I

    .line 1227
    iget-object v0, p0, Lcom/android/email/activity/MessageList$3;->this$0:Lcom/android/email/activity/MessageList;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageList;->onResultSearchRequested()Z

    goto/16 :goto_0

    .line 1198
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
