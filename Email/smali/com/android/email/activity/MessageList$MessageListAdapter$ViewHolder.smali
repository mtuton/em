.class Lcom/android/email/activity/MessageList$MessageListAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "MessageList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/MessageList$MessageListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolder"
.end annotation


# instance fields
.field attachmentView:Landroid/widget/ImageView;

.field chipView:Landroid/view/View;

.field dateView:Landroid/widget/TextView;

.field displaynameView:Landroid/widget/TextView;

.field favoriteView:Landroid/widget/ImageView;

.field followUpFlagView:Landroid/widget/ImageView;

.field itemType:I

.field mEncryptedView:Landroid/widget/ImageView;

.field mSignView:Landroid/widget/ImageView;

.field mSmsView:Landroid/widget/ImageView;

.field priorityView:Landroid/widget/ImageView;

.field selectedView:Landroid/widget/ImageView;

.field subjectView:Landroid/widget/TextView;

.field textSize:I

.field final synthetic this$1:Lcom/android/email/activity/MessageList$MessageListAdapter;

.field threadupdownView:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/android/email/activity/MessageList$MessageListAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 8158
    iput-object p1, p0, Lcom/android/email/activity/MessageList$MessageListAdapter$ViewHolder;->this$1:Lcom/android/email/activity/MessageList$MessageListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
