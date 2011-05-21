.class Lcom/android/email/winset/TwTabHost$2;
.super Ljava/lang/Object;
.source "TwTabHost.java"

# interfaces
.implements Lcom/android/email/winset/TwTabWidget$OnTabSelectionChanged;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/winset/TwTabHost;->setup()V
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
    .line 206
    iput-object p1, p0, Lcom/android/email/winset/TwTabHost$2;->this$0:Lcom/android/email/winset/TwTabHost;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTabSelectionChanged(IZ)V
    .locals 2
    .parameter "tabIndex"
    .parameter "clicked"

    .prologue
    .line 207
    iget-object v0, p0, Lcom/android/email/winset/TwTabHost$2;->this$0:Lcom/android/email/winset/TwTabHost;

    invoke-virtual {v0, p1}, Lcom/android/email/winset/TwTabHost;->setCurrentTab(I)V

    .line 208
    if-eqz p2, :cond_0

    .line 209
    iget-object v0, p0, Lcom/android/email/winset/TwTabHost$2;->this$0:Lcom/android/email/winset/TwTabHost;

    invoke-static {v0}, Lcom/android/email/winset/TwTabHost;->access$100(Lcom/android/email/winset/TwTabHost;)Landroid/widget/FrameLayout;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->requestFocus(I)Z

    .line 211
    :cond_0
    return-void
.end method
