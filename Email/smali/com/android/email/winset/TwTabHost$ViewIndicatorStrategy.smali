.class Lcom/android/email/winset/TwTabHost$ViewIndicatorStrategy;
.super Ljava/lang/Object;
.source "TwTabHost.java"

# interfaces
.implements Lcom/android/email/winset/TwTabHost$IndicatorStrategy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/winset/TwTabHost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewIndicatorStrategy"
.end annotation


# instance fields
.field private final mView:Landroid/view/View;

.field final synthetic this$0:Lcom/android/email/winset/TwTabHost;


# direct methods
.method private constructor <init>(Lcom/android/email/winset/TwTabHost;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter "view"

    .prologue
    .line 754
    iput-object p1, p0, Lcom/android/email/winset/TwTabHost$ViewIndicatorStrategy;->this$0:Lcom/android/email/winset/TwTabHost;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 755
    iput-object p2, p0, Lcom/android/email/winset/TwTabHost$ViewIndicatorStrategy;->mView:Landroid/view/View;

    .line 756
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/email/winset/TwTabHost;Landroid/view/View;Lcom/android/email/winset/TwTabHost$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 750
    invoke-direct {p0, p1, p2}, Lcom/android/email/winset/TwTabHost$ViewIndicatorStrategy;-><init>(Lcom/android/email/winset/TwTabHost;Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public createIndicatorView()Landroid/view/View;
    .locals 1

    .prologue
    .line 759
    iget-object v0, p0, Lcom/android/email/winset/TwTabHost$ViewIndicatorStrategy;->mView:Landroid/view/View;

    return-object v0
.end method

.method public setLabelText(Ljava/lang/String;)V
    .locals 0
    .parameter "str"

    .prologue
    .line 764
    return-void
.end method
