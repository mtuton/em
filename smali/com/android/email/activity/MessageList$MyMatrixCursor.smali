.class Lcom/android/email/activity/MessageList$MyMatrixCursor;
.super Landroid/database/MatrixCursor;
.source "MessageList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/MessageList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyMatrixCursor"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/MessageList;


# direct methods
.method public constructor <init>(Lcom/android/email/activity/MessageList;[Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "columnNames"

    .prologue
    .line 7354
    iput-object p1, p0, Lcom/android/email/activity/MessageList$MyMatrixCursor;->this$0:Lcom/android/email/activity/MessageList;

    .line 7355
    invoke-direct {p0, p2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 7356
    return-void
.end method

.method public constructor <init>(Lcom/android/email/activity/MessageList;[Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter "columnNames"
    .parameter "initialCapacity"

    .prologue
    .line 7350
    iput-object p1, p0, Lcom/android/email/activity/MessageList$MyMatrixCursor;->this$0:Lcom/android/email/activity/MessageList;

    .line 7351
    invoke-direct {p0, p2, p3}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    .line 7352
    return-void
.end method


# virtual methods
.method public requery()Z
    .locals 1

    .prologue
    .line 7361
    iget-object v0, p0, Lcom/android/email/activity/MessageList$MyMatrixCursor;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v0}, Lcom/android/email/activity/MessageList;->access$2400(Lcom/android/email/activity/MessageList;)Lcom/android/email/activity/MessageList$MessageListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/email/activity/MessageList$MessageListAdapter;->onContentChanged()V

    .line 7362
    invoke-super {p0}, Landroid/database/MatrixCursor;->requery()Z

    move-result v0

    return v0
.end method
