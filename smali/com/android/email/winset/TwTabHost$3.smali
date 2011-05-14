.class Lcom/android/email/winset/TwTabHost$3;
.super Ljava/lang/Object;
.source "TwTabHost.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/winset/TwTabHost;->setCurrentTab(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/winset/TwTabHost;


# direct methods
.method constructor <init>(Lcom/android/email/winset/TwTabHost;)V
    .locals 0
    .parameter

    .prologue
    .line 458
    iput-object p1, p0, Lcom/android/email/winset/TwTabHost$3;->this$0:Lcom/android/email/winset/TwTabHost;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 459
    iget-object v0, p0, Lcom/android/email/winset/TwTabHost$3;->this$0:Lcom/android/email/winset/TwTabHost;

    invoke-static {v0}, Lcom/android/email/winset/TwTabHost;->access$400(Lcom/android/email/winset/TwTabHost;)Lcom/android/email/winset/TwTabWidgetWrapper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/winset/TwTabHost$3;->this$0:Lcom/android/email/winset/TwTabHost;

    iget v1, v1, Lcom/android/email/winset/TwTabHost;->mCurrentTab:I

    invoke-virtual {v0, v1}, Lcom/android/email/winset/TwTabWidgetWrapper;->scrollToTab(I)V

    .line 460
    return-void
.end method
