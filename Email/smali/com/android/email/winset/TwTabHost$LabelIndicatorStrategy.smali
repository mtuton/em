.class public Lcom/android/email/winset/TwTabHost$LabelIndicatorStrategy;
.super Ljava/lang/Object;
.source "TwTabHost.java"

# interfaces
.implements Lcom/android/email/winset/TwTabHost$IndicatorStrategy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/winset/TwTabHost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LabelIndicatorStrategy"
.end annotation


# instance fields
.field private final mLabel:Ljava/lang/CharSequence;

.field private mTextView:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/android/email/winset/TwTabHost;


# direct methods
.method private constructor <init>(Lcom/android/email/winset/TwTabHost;Ljava/lang/CharSequence;)V
    .locals 0
    .parameter
    .parameter "label"

    .prologue
    .line 751
    iput-object p1, p0, Lcom/android/email/winset/TwTabHost$LabelIndicatorStrategy;->this$0:Lcom/android/email/winset/TwTabHost;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 752
    iput-object p2, p0, Lcom/android/email/winset/TwTabHost$LabelIndicatorStrategy;->mLabel:Ljava/lang/CharSequence;

    .line 753
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/email/winset/TwTabHost;Ljava/lang/CharSequence;Lcom/android/email/winset/TwTabHost$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 745
    invoke-direct {p0, p1, p2}, Lcom/android/email/winset/TwTabHost$LabelIndicatorStrategy;-><init>(Lcom/android/email/winset/TwTabHost;Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public createIndicatorView()Landroid/view/View;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 756
    iget-object v3, p0, Lcom/android/email/winset/TwTabHost$LabelIndicatorStrategy;->this$0:Lcom/android/email/winset/TwTabHost;

    invoke-virtual {v3}, Lcom/android/email/winset/TwTabHost;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 758
    .local v0, inflater:Landroid/view/LayoutInflater;
    const/4 v1, 0x0

    .line 759
    .local v1, tabIndicator:Landroid/view/View;
    sget v3, Lcom/android/email/winset/TwTabHost;->mTabIndicatorType:I

    if-nez v3, :cond_0

    .line 760
    const v3, 0x2030011

    iget-object v4, p0, Lcom/android/email/winset/TwTabHost$LabelIndicatorStrategy;->this$0:Lcom/android/email/winset/TwTabHost;

    invoke-static {v4}, Lcom/android/email/winset/TwTabHost;->access$1000(Lcom/android/email/winset/TwTabHost;)Lcom/android/email/winset/TwTabWidget;

    move-result-object v4

    invoke-virtual {v0, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 769
    :goto_0
    const v3, 0x2040029

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 770
    .local v2, tv:Landroid/widget/TextView;
    iget-object v3, p0, Lcom/android/email/winset/TwTabHost$LabelIndicatorStrategy;->mLabel:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 772
    iput-object v2, p0, Lcom/android/email/winset/TwTabHost$LabelIndicatorStrategy;->mTextView:Landroid/widget/TextView;

    .line 774
    return-object v1

    .line 764
    .end local v2           #tv:Landroid/widget/TextView;
    :cond_0
    const v3, 0x2030009

    iget-object v4, p0, Lcom/android/email/winset/TwTabHost$LabelIndicatorStrategy;->this$0:Lcom/android/email/winset/TwTabHost;

    invoke-static {v4}, Lcom/android/email/winset/TwTabHost;->access$1000(Lcom/android/email/winset/TwTabHost;)Lcom/android/email/winset/TwTabWidget;

    move-result-object v4

    invoke-virtual {v0, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    goto :goto_0
.end method

.method public setLabelText(Ljava/lang/String;)V
    .locals 1
    .parameter "str"

    .prologue
    .line 779
    iget-object v0, p0, Lcom/android/email/winset/TwTabHost$LabelIndicatorStrategy;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 780
    return-void
.end method
