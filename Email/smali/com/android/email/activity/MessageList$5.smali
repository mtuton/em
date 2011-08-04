.class Lcom/android/email/activity/MessageList$5;
.super Ljava/lang/Object;
.source "MessageList.java"

# interfaces
.implements Lcom/sec/android/touchwiz/widget/TwIndexScrollView$OnIndexSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/MessageList;->onAddIndexScroll()V
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
    .line 1983
    iput-object p1, p0, Lcom/android/email/activity/MessageList$5;->this$0:Lcom/android/email/activity/MessageList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onIndexSelected(I)V
    .locals 1
    .parameter "positionOfData"

    .prologue
    .line 1985
    iget-object v0, p0, Lcom/android/email/activity/MessageList$5;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v0}, Lcom/android/email/activity/MessageList;->access$1200(Lcom/android/email/activity/MessageList;)Lcom/android/email/winset/EmailListView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/email/winset/EmailListView;->setSelection(I)V

    .line 1986
    return-void
.end method
