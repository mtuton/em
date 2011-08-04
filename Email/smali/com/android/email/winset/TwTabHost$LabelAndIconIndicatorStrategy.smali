.class public Lcom/android/email/winset/TwTabHost$LabelAndIconIndicatorStrategy;
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
    name = "LabelAndIconIndicatorStrategy"
.end annotation


# instance fields
.field private final mIcon:Landroid/graphics/drawable/Drawable;

.field private final mLabel:Ljava/lang/CharSequence;

.field private mTextView:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/android/email/winset/TwTabHost;


# virtual methods
.method public createIndicatorView()Landroid/view/View;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 799
    iget-object v4, p0, Lcom/android/email/winset/TwTabHost$LabelAndIconIndicatorStrategy;->this$0:Lcom/android/email/winset/TwTabHost;

    invoke-virtual {v4}, Lcom/android/email/winset/TwTabHost;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "layout_inflater"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 801
    .local v1, inflater:Landroid/view/LayoutInflater;
    const/4 v2, 0x0

    .line 803
    .local v2, tabIndicator:Landroid/view/View;
    sget v4, Lcom/android/email/winset/TwTabHost;->mTabIndicatorType:I

    if-nez v4, :cond_0

    .line 804
    const v4, 0x2030011

    iget-object v5, p0, Lcom/android/email/winset/TwTabHost$LabelAndIconIndicatorStrategy;->this$0:Lcom/android/email/winset/TwTabHost;

    invoke-static {v5}, Lcom/android/email/winset/TwTabHost;->access$1000(Lcom/android/email/winset/TwTabHost;)Lcom/android/email/winset/TwTabWidget;

    move-result-object v5

    invoke-virtual {v1, v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 813
    :goto_0
    const v4, 0x2040029

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 814
    .local v3, tv:Landroid/widget/TextView;
    iget-object v4, p0, Lcom/android/email/winset/TwTabHost$LabelAndIconIndicatorStrategy;->mLabel:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 816
    iput-object v3, p0, Lcom/android/email/winset/TwTabHost$LabelAndIconIndicatorStrategy;->mTextView:Landroid/widget/TextView;

    .line 818
    const v4, 0x2040015

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 819
    .local v0, iconView:Landroid/widget/ImageView;
    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 820
    iget-object v4, p0, Lcom/android/email/winset/TwTabHost$LabelAndIconIndicatorStrategy;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 822
    return-object v2

    .line 808
    .end local v0           #iconView:Landroid/widget/ImageView;
    .end local v3           #tv:Landroid/widget/TextView;
    :cond_0
    const v4, 0x2030009

    iget-object v5, p0, Lcom/android/email/winset/TwTabHost$LabelAndIconIndicatorStrategy;->this$0:Lcom/android/email/winset/TwTabHost;

    invoke-static {v5}, Lcom/android/email/winset/TwTabHost;->access$1000(Lcom/android/email/winset/TwTabHost;)Lcom/android/email/winset/TwTabWidget;

    move-result-object v5

    invoke-virtual {v1, v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    goto :goto_0
.end method

.method public setLabelText(Ljava/lang/String;)V
    .locals 1
    .parameter "str"

    .prologue
    .line 827
    iget-object v0, p0, Lcom/android/email/winset/TwTabHost$LabelAndIconIndicatorStrategy;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 828
    return-void
.end method
