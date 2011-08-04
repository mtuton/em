.class Lcom/android/email/winset/TwTabWidget$TabClickListener;
.super Ljava/lang/Object;
.source "TwTabWidget.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/winset/TwTabWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TabClickListener"
.end annotation


# instance fields
.field private final mTabIndex:I

.field final synthetic this$0:Lcom/android/email/winset/TwTabWidget;


# direct methods
.method private constructor <init>(Lcom/android/email/winset/TwTabWidget;I)V
    .locals 0
    .parameter
    .parameter "tabIndex"

    .prologue
    .line 572
    iput-object p1, p0, Lcom/android/email/winset/TwTabWidget$TabClickListener;->this$0:Lcom/android/email/winset/TwTabWidget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 573
    iput p2, p0, Lcom/android/email/winset/TwTabWidget$TabClickListener;->mTabIndex:I

    .line 574
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/email/winset/TwTabWidget;ILcom/android/email/winset/TwTabWidget$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 568
    invoke-direct {p0, p1, p2}, Lcom/android/email/winset/TwTabWidget$TabClickListener;-><init>(Lcom/android/email/winset/TwTabWidget;I)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 577
    iget-object v0, p0, Lcom/android/email/winset/TwTabWidget$TabClickListener;->this$0:Lcom/android/email/winset/TwTabWidget;

    invoke-static {v0}, Lcom/android/email/winset/TwTabWidget;->access$100(Lcom/android/email/winset/TwTabWidget;)Lcom/android/email/winset/TwTabWidget$OnTabSelectionChanged;

    move-result-object v0

    iget v1, p0, Lcom/android/email/winset/TwTabWidget$TabClickListener;->mTabIndex:I

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/android/email/winset/TwTabWidget$OnTabSelectionChanged;->onTabSelectionChanged(IZ)V

    .line 578
    return-void
.end method
