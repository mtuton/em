.class Lcom/android/email/winset/TwTabWidgetWrapper$1;
.super Ljava/lang/Object;
.source "TwTabWidgetWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/winset/TwTabWidgetWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/winset/TwTabWidgetWrapper;


# direct methods
.method constructor <init>(Lcom/android/email/winset/TwTabWidgetWrapper;)V
    .locals 0
    .parameter

    .prologue
    .line 90
    iput-object p1, p0, Lcom/android/email/winset/TwTabWidgetWrapper$1;->this$0:Lcom/android/email/winset/TwTabWidgetWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/email/winset/TwTabWidgetWrapper$1;->this$0:Lcom/android/email/winset/TwTabWidgetWrapper;

    invoke-static {v0}, Lcom/android/email/winset/TwTabWidgetWrapper;->access$100(Lcom/android/email/winset/TwTabWidgetWrapper;)Lcom/android/email/winset/TwTabHost;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/android/email/winset/TwTabWidgetWrapper$1;->this$0:Lcom/android/email/winset/TwTabWidgetWrapper;

    iget-object v1, p0, Lcom/android/email/winset/TwTabWidgetWrapper$1;->this$0:Lcom/android/email/winset/TwTabWidgetWrapper;

    invoke-static {v1}, Lcom/android/email/winset/TwTabWidgetWrapper;->access$100(Lcom/android/email/winset/TwTabWidgetWrapper;)Lcom/android/email/winset/TwTabHost;

    move-result-object v1

    iget v1, v1, Lcom/android/email/winset/TwTabHost;->mCurrentTab:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/email/winset/TwTabWidgetWrapper;->scrollToTab(IZ)V

    .line 94
    :cond_0
    return-void
.end method
